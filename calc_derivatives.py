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
from sklearn import linear_model
from sklearn import svm
from sklearn import tree
from sklearn.ensemble import GradientBoostingRegressor
from sklearn.model_selection import train_test_split
from sklearn import preprocessing
from sklearn.compose import make_column_transformer
from sklearn.model_selection import cross_val_score
from sklearn.model_selection import cross_validate
from sklearn.model_selection import LeaveOneOut
from sklearn.model_selection import KFold
import pickle

pd.options.display.max_columns = None

canonic_names = {
    'bfloat16_IMFZm': 'IMZmFbfloat16',
    'bfloat16_IMF': 'IMFbfloat16',
    'float19_IMFZm': 'IMZmFfloat19',
    'float19_IMF': 'IMFfloat19',
    'float24_IMFZm': 'IMZmFfloat24',
    'float24_IMF': 'IMFfloat24',
    'float32_IMF': 'IMFfloat32',
    'float32_IMFZm': 'IMZmFfloat32',
    'noFPU_IMZm': 'IMZm',
    'noFPU_IM': 'IM',
}

def main(argv):
    in_dir = os.path.abspath(argv[0])
    build_dir = f"{in_dir}/clean"
    stats_summary = pd.read_csv(f'{build_dir}/full_sim_summary.csv')
    stats_summary = stats_summary[~stats_summary['bench'].isin(['covariance', 'adi', 'ftdt-2d'])]

    stats_summary = save_energy_per_op_summary(stats_summary, f"{build_dir}/box")
    stats_summary = calc_derivatives(stats_summary, build_dir)
    stats_summary = calc_gain(stats_summary)
    stats_summary['canon_arch'] = stats_summary['arch'].map(canonic_names)
    print(stats_summary)
    stats_summary.to_csv(f"{build_dir}/full_derived_sim_summary.csv", index=False)

def calc_gain(stats_summary):
    result = stats_summary
    result['rel_err_run'].replace([0], 10e-10, inplace=True)
    base = result[result['hw_sw_config'] == 'float32_IMF_float']
    base = base[['bench', 'scale', 'time', 'energy', 'rel_err_run', 'lut', 'ff', 'dsp']]
    base = base.add_prefix('base_')
    result = result.merge(base, how='left', left_on=['bench', 'scale'], right_on=['base_bench', 'base_scale'])
    # result['energy_gain'] = result['energy'] - result['base_energy']
    # result['time_gain'] = result['time'] - result['base_time']
    # result['error_gain'] = result['rel_err_run'] - result['base_rel_err_run']
    # result['lut_gain'] = result['lut'] - result['base_lut']
    # result['ff_gain'] = result['ff'] - result['base_ff']
    # result['dsp_gain'] = result['dsp'] - result['base_dsp']

    result['energy_gain_rel'] = result['energy']/result['base_energy']
    result['time_gain_rel'] = result['time']/result['base_time']
    result['error_gain_rel'] = result['rel_err_run']/result['base_rel_err_run']
    result['lut_gain_rel'] = result['lut']/result['base_lut']
    result['ff_gain_rel'] = result['ff']/result['base_ff']
    result['dsp_gain_rel'] = result['dsp']/result['base_dsp']
    result = result.drop(columns=['base_bench', 'base_scale', 'base_time', 'base_energy', 'base_rel_err_run', 'base_lut', 'base_ff', 'base_dsp'])
    return result


def save_energy_per_op_summary(stats_summary, results_path):
    df = stats_summary
    df = df[['bench', 'arch', 'taffo_conf', 'hw_sw_config', 'energy', 'float_op_count_default', 'kernel_float_op_count_default']]
    df['energy_per_op'] = df['energy'] / df['kernel_float_op_count_default']

    # df.replace(to_replace = 0, value = 1E-10, inplace=True)
    print(df)
    df.to_csv(f"{results_path}_energy_per_op.csv", index=False)
    np.random.seed(42)
    train_bench = np.array(["syrk", "ludcmp", "2mm", "mvt", "syr2k", "atax", "gemver"])
    train_set = df[df['bench'].isin(train_bench)]
    test_set = df[~df['bench'].isin(train_bench)]
    energy_df = train_set[['hw_sw_config', 'energy_per_op']].replace([np.inf, -np.inf], np.nan).dropna(subset = ['energy_per_op'])
    # q_low = energy_df["energy_per_op"].quantile(0.01)
    q_hi  = energy_df.groupby('hw_sw_config', as_index=False)["energy_per_op"].quantile(0.99, numeric_only=True)
    print('high q', q_hi)
    q_hi = q_hi.rename(columns={'energy_per_op': 'energy_per_op_q99'})
    energy_df = energy_df.merge(q_hi)
    print(energy_df)
    # print('low q', q_low)

    energy_df = energy_df[(energy_df["energy_per_op"] < energy_df["energy_per_op_q99"])]
    energy_per_op = train_set.groupby('hw_sw_config')['energy_per_op'].describe().unstack('hw_sw_config')['50%'].to_frame('energy_per_op').reset_index()
    stats_summary = stats_summary.merge(energy_per_op, how='left', validate='m:1',
                          left_on=['hw_sw_config'],
                          right_on=['hw_sw_config'])
    return stats_summary

def calc_derivatives(stats_summary, model_dir):
    result = stats_summary
    result['rel_err_pred'] = result.apply(lambda x: float_size_error(x.mantissa, x.float_op_count_default, x.output_size, x.bench, x.scale, x.hw_sw_config), axis=1)
    result['rel_err_pred_formal'] = result.apply(lambda x: rel_err_pred_formal(x.mantissa, x.float_op_count_default, x.output_size, x.var_max, x.taffo_conf, x.bench, x.scale, x.hw_sw_config), axis=1)
    result['fix_err_eq_fl_err'] = result.apply(lambda x: fixed_eq_float_size(x.mantissa), axis=1)
    result['energy_pred'] = result['float_op_count_default'] * result['energy_per_op']
    result['lut_share'] = result['lut'] / 63400.0
    result['ff_share'] = result['ff'] / 126800.0
    result['dsp_share'] = result['dsp'] / 240.0
    result['max_area_share'] = result[["lut_share", "ff_share", "dsp_share"]].max(axis=1)
    result['ml_error'] = predict_error_ml(result, model_dir)
    return result

def float_size_error(mantissa, num_op, out_dim, bench, scale, arch):
    print(mantissa, num_op, out_dim, bench, scale, arch)
    logn = np.ceil(np.log2(num_op))
    # used to be
    # rel_err = logn - int(mantissa) - np.floor(np.log2(out_dim))
    rel_err = logn - int(mantissa) - np.log2(out_dim) - mantissa/8 - 2
    return np.power(2, rel_err)

def rel_err_pred_formal(mantissa, num_op, out_dim, var_max, taffo_conf, bench, scale, arch):
    print(mantissa, num_op, out_dim, bench, scale, arch)
    rel_err = 100
    if  taffo_conf == 'float':
        logn = np.ceil(np.log2(num_op))
        rel_err = logn - int(mantissa) - np.log2(out_dim)
    else:
        rel_err = np.max([np.log2(var_max), float(mantissa)]) - 31
    return np.power(2, rel_err)

def fixed_eq_float_size(mantissa):
    # used to be
    # num_size = 31 - int(mantissa)
    num_size = 31 - int(mantissa)/1 + 4
    return np.power(2, num_size)

def predict_error_ml(stats_summary, data_dir):
    # x = stats_summary[[
    #     'taffo_conf',
    #     # 'hw_float_support',
    #     # 'hw_fixed_support',
    #     'mantissa',
    #     'output_size',
    #     'float_op_count_default',
    #     'var_max',
    # ]]
    #
    # x['output_size'] = np.log2(x['output_size'])
    # x['float_op_count_default'] = np.log2(x['float_op_count_default'])
    # x['var_max'] = np.log2(x['var_max'])
    # x_err = x[x.isin([np.nan, np.inf, -np.inf]).any(1)]
    # print(x_err)
    #
    # transformer = make_column_transformer(
    #     (OneHotEncoder(drop='first'), ['taffo_conf']),
    #     (StandardScaler(), ['mantissa', 'output_size', 'float_op_count_default', 'var_max']),
    #     remainder='passthrough')
    #
    # transformed = transformer.fit_transform(x)
    # transformed_df = pd.DataFrame(
    #     transformed,
    #     columns=transformer.get_feature_names_out()
    # )
    # result = model.predict(transformed_df)
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
    f = lambda t: 2 ** t
    vfunc = np.vectorize(f)
    float_err_pred = vfunc(pred_float)
    fixed_err_pred = vfunc(pred_fixed)
    float_x['ml_error'] = float_err_pred
    fixed_x['ml_error'] = fixed_err_pred
    result = float_x.append(fixed_x, ignore_index = False).sort_index()
    # print(result)
    return result['ml_error']

def eval_model(t, float_transformer):
    if t['taffo_conf'] == 'float':
        float_transformer.transform

if __name__ == "__main__":
    main(sys.argv[1:])