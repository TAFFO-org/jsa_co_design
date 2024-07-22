#!/usr/bin/python3

from decimal import *
import sys
import pandas as pd
import os
from os import listdir
from os.path import isfile, join, isdir
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
from io import StringIO
import math
from pandas.api.types import CategoricalDtype
from decimal import *
import matplotlib.ticker as mtick
import re
import oapackage
from ComplexRadar import ComplexRadar
from altair import *
import altair as alt
from altair_saver import save
from subprocess import Popen
import struct
from sklearn.preprocessing import OneHotEncoder
from sklearn.preprocessing import Normalizer
from sklearn.preprocessing import StandardScaler
from sklearn.preprocessing import FunctionTransformer
from sklearn import linear_model
from sklearn import svm
from sklearn import tree
from sklearn.ensemble import GradientBoostingRegressor
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
from sklearn.compose import make_column_transformer
from sklearn.pipeline import make_pipeline
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import cross_validate
from sklearn.model_selection import LeaveOneOut
from sklearn.model_selection import KFold
from sklearn.model_selection import GridSearchCV
from sklearn.pipeline import Pipeline
from sklearn.metrics import mean_squared_error
import pickle
import warnings


pd.options.display.max_columns = None
pd.set_option('mode.chained_assignment', None)

def train_model(df, taffo_mode, data_dir):
    stats_summary = df[(df['taffo_conf'] == taffo_mode) & (df['hw_fixed_support'] == 0)]
    x = stats_summary[[
        'mantissa',
        'output_size',
        'float_op_count_default',
        'var_max',
    ]]

    y = stats_summary[[
        'rel_err_run',
    ]]
    y['rel_err_run'].fillna(1, inplace=True)
    y['rel_err_run'] = y['rel_err_run'].apply(lambda x: 1 if (x > 1.0 or x < -1.0) else x)
    y['rel_err_run'] = np.log2(y['rel_err_run']) #+ 2**-4
    transformer = make_column_transformer(
        (make_pipeline(FunctionTransformer(func=np.log2, feature_names_out="one-to-one"), StandardScaler()),
         ['output_size', 'float_op_count_default', 'var_max']),
        (StandardScaler(), ['mantissa']),
        remainder='drop')

    transformed = transformer.fit_transform(x)
    transformed_df = pd.DataFrame(
        transformed,
        columns=transformer.get_feature_names_out()
    )
    # print(transformed_df)
    # transformed_df.info()
    y.info()
    y = y['rel_err_run']
    # param_grid = {
    #     'C': [1000, 2000, 3000],
    #     'epsilon': [0.1, 0.2, 0.3, 0.5],
    #     # 'degree': [2],
    #     # 'gamma': [1, 0.1, 0.01, 0.001, 0.0001],
    #     'gamma':['auto', 'scale'],
    #     'kernel': ['linear']
    # }
    param_grid = {
        'alpha': [0.5, 1, 2, 4, 8, 16, 32, 48, 56]
    }
    # grid = GridSearchCV(svm.SVR(), param_grid, refit = True, cv=5, verbose = 0,n_jobs=-1,scoring='r2')
    grid = GridSearchCV(linear_model.Ridge(), param_grid, refit = True, cv=5, verbose = 0,n_jobs=-1,scoring='r2')
    # fitting the model for grid search
    grid.fit(transformed_df, y)
    # print best parameter after tuning
    print(grid.best_params_)
    # kfold_validation=KFold(10)
    model=linear_model.Ridge(**grid.best_params_)
    cv_results = cross_validate(model, transformed_df, y, cv=5, return_estimator=True)
    print(cv_results['test_score'])
    model.fit(transformed_df, y)
    pred = model.predict(transformed_df)
    print(f"{taffo_mode} train {taffo_mode} mse:", mean_squared_error(y, pred))
    print(pd.DataFrame(zip(transformed_df.columns, model.coef_)))
    print('intercept', model.intercept_)
    # print('n_support', model.n_support_)
    pickle.dump(model, open(f'{data_dir}/error_model_{taffo_mode}.pkl', 'wb'))
    pickle.dump(transformer, open(f'{data_dir}/error_transformer_{taffo_mode}.pkl', 'wb'))
    # loaded_model = pickle.load(open(f'{data_dir}/error_model_float.pkl', 'rb'))
    # print(result)

def main(argv):
    in_dir = os.path.abspath(argv[0])
    build_dir = f"{in_dir}/build"
    data_dir = f"{in_dir}/clean"
    stats_summary = pd.read_csv(f'{data_dir}/full_sim_summary.csv')
    np.random.seed(42)
    train_bench = np.array(["syrk", "ludcmp", "2mm", "mvt", "syr2k", "atax", "gemver"])
    train_set = stats_summary[stats_summary['bench'].isin(train_bench)]
    test_set = stats_summary[~stats_summary['bench'].isin(train_bench)]
    train_model(train_set, 'float', data_dir)
    train_model(train_set, 'fixed', data_dir)
    print(f"train benchs:", set(train_bench))
    print(f"test benchs:", set(stats_summary['bench'].unique()) - set(train_bench))
    predict_error_ml(test_set, data_dir)


def predict_error_ml(stats_summary, data_dir):
    float_model = pickle.load(open(f'{data_dir}/error_model_float.pkl', 'rb'))
    float_transformer = pickle.load(open(f'{data_dir}/error_transformer_float.pkl', 'rb'))
    fixed_model = pickle.load(open(f'{data_dir}/error_model_fixed.pkl', 'rb'))
    fixed_transformer = pickle.load(open(f'{data_dir}/error_transformer_fixed.pkl', 'rb'))

    float_x = stats_summary[stats_summary['taffo_conf'] == 'float']
    fixed_x = stats_summary[stats_summary['taffo_conf'] == 'fixed']
    trans_float_x = float_transformer.transform(float_x)
    trans_fixed_x = fixed_transformer.transform(fixed_x)
    pred_float = float_model.predict(trans_float_x)
    pred_fixed = fixed_model.predict(trans_fixed_x)
    # print(pred_float)
    # print(pred_fixed)
    print('test float mse:', mean_squared_error(float_x['rel_err_run'], pred_float))
    print('test fixed mse:', mean_squared_error(fixed_x['rel_err_run'], pred_fixed))


if __name__ == "__main__":
    main(sys.argv[1:])