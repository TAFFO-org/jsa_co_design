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
pd.set_option('mode.chained_assignment', None)

def main(argv):
    in_dir = os.path.abspath(argv[0])
    build_dir = f"{in_dir}/build"
    data_dir = f"{in_dir}/clean"
    # stats_summary = pd.read_csv(f'{build_dir}/summary/stats_summary.csv')
    # stats_summary = stats_summary[~stats_summary['bench'].isin(['cholesky', 'durbin', 'gramschmidt', 'trisolv'])]
    # stats_summary2 = pd.read_csv(f'{data_dir}/full_sim_summary.csv')
    # stats_summary2 = stats_summary2[~stats_summary2['bench'].isin(['cholesky', 'durbin', 'gramschmidt', 'trisolv'])]
    # energy_data = pd.read_csv(f'{data_dir}/box_energy_per_op.csv')
    # energy_per_op = energy_data.groupby('arch_taffo_conf')['energy_per_op'].describe().unstack('arch_taffo_conf')['mean'].to_frame('energy_per_op').reset_index()
    # pred_summary = pd.read_csv(f'{data_dir}/predictions_summary.csv')

    # sim_results = stats_summary[['bench', 'scale', 'mode', 'mantissa', 'float_type', 'rel_err', 'output_size', 'float_op_count_default', 'var_max', 'compile_time']]
    # run_results = stats_summary2[['bench', 'scale', 'hw_sw_config', 'fpu_conf', 'taffo_conf', 'arch', 'lut', 'ff', 'dsp', 'hw_float_support', 'hw_fixed_support', 'energy', 'rel_err_double', 'time', 'sim_time']]
    # merged = merge_sim_run(sim_results, run_results, energy_per_op)
    # merged = merged[~merged['taffo_conf'].isin(['mixed'])]
    # print(merged)
    # loaded_model = pickle.load(open(f'{data_dir}/error_model.pkl', 'rb'))
    # merged['ml_error'] = predict_error_ml(merged, loaded_model)
    #
    # merged.to_csv(f"{data_dir}/run_sim_merged_summary.csv", index=False)
    merged = pd.read_csv(f'{data_dir}/full_derived_sim_summary.csv')
    np.random.seed(42)
    train_bench = np.array(["syrk", "ludcmp", "2mm", "mvt", "syr2k", "atax", "gemver"])
    train_set = merged[merged['bench'].isin(train_bench)]
    test_set = merged[~merged['bench'].isin(train_bench)]
    calculate_pareto(test_set, f"{data_dir}")


    # actual = pred_summary.merge(run_results, how='left', on=['bench', 'hw_sw_config', 'arch', 'taffo_conf'], validate='1:1')
    # print(actual)
    # plot_rel_err_error(actual, f"{data_dir}/box")
    # plot_energy_error(actual, f"{data_dir}/box")

def predict_error_ml(stats_summary, model):
    x = stats_summary[[
        'taffo_conf',
        # 'hw_float_support',
        # 'hw_fixed_support',
        'mantissa',
        'output_size',
        'float_op_count_default',
        'var_max',
    ]]

    x['output_size'] = np.log2(x['output_size'])
    x['float_op_count_default'] = np.log2(x['float_op_count_default'])
    x['var_max'] = np.log2(x['var_max'])
    x_err = x[x.isin([np.nan, np.inf, -np.inf]).any(1)]
    print(x_err)

    transformer = make_column_transformer(
        (OneHotEncoder(drop='first'), ['taffo_conf']),
        (StandardScaler(), ['mantissa', 'output_size', 'float_op_count_default', 'var_max']),
        remainder='passthrough')

    transformed = transformer.fit_transform(x)
    transformed_df = pd.DataFrame(
        transformed,
        columns=transformer.get_feature_names_out()
    )
    result = model.predict(transformed_df)
    f = lambda t: 2 ** t
    vfunc = np.vectorize(f)
    return vfunc(result)


def merge_sim_run(sim_results, run_results, energy_per_op):
    sim_results['float_type_equivalent'] = sim_results['float_type']
    run_results['float_type_equivalent'] = run_results['fpu_conf']
    run_results.loc[run_results['float_type_equivalent'] == 'noFPU', 'float_type_equivalent'] = 'float32'
    result = run_results.merge(sim_results, how='left', validate='m:m',
                      left_on=['bench', 'scale', 'float_type_equivalent', 'taffo_conf'],
                      right_on=['bench', 'scale', 'float_type_equivalent', 'mode'])
    result = result.merge(energy_per_op, how='left', validate='m:1',
                               left_on=['hw_sw_config'],
                               right_on=['arch_taffo_conf'])
    result.rename(columns={
        'rel_err_double': 'rel_err_run',
        'rel_err': 'rel_err_sim',
    }, inplace=True)
    result.drop(columns=['float_type', 'mode', 'arch_taffo_conf'], inplace=True)
    print(result)
    result['rel_err_pred'] = result.apply(lambda x: float_size_error(x.mantissa, x.float_op_count_default, x.output_size, x.bench, x.scale, x.hw_sw_config), axis=1)
    result['rel_err_pred_formal'] = result.apply(lambda x: rel_err_pred_formal(x.mantissa, x.float_op_count_default, x.output_size, x.var_max, x.taffo_conf, x.bench, x.scale, x.hw_sw_config), axis=1)
    result['fix_err_eq_fl_err'] = result.apply(lambda x: fixed_eq_float_size(x.mantissa), axis=1)
    result['energy_pred'] = result['float_op_count_default'] * result['energy_per_op']
    result['lut_share'] = result['lut'] / 63400.0
    result['ff_share'] = result['ff'] / 126800.0
    result['dsp_share'] = result['dsp'] / 240.0
    result['max_area_share'] = result[["lut_share", "ff_share", "dsp_share"]].max(axis=1)
    # result['viable'] = (result['fl_err'] <= result['err']) & ((confs['taffo_conf'] == 'float') | (confs['max_var_range'] <= confs['fix_err_eq_fl_err']))
    result.reset_index()
    return result

def float_size_error(mantissa, num_op, out_dim, bench, scale, arch):
    print(mantissa, num_op, out_dim, bench, scale, arch)
    logn = np.ceil(np.log2(num_op))
    # used to be
    rel_err = logn - int(mantissa) - np.log2(out_dim)
    # rel_err = logn - int(mantissa) - np.log2(out_dim) - mantissa/8 - 2
    return np.power(2, rel_err)

def rel_err_pred_formal(mantissa, num_op, out_dim, var_max, taffo_conf, bench, scale, arch):
    print(mantissa, num_op, out_dim, bench, scale, arch)
    rel_err = 100
    if  taffo_conf == 'float':
        logn = np.ceil(np.log2(num_op))
        rel_err = logn - int(mantissa) - np.log2(out_dim)
    else:
        rel_err = math.max(np.log2(var_max) - 31, -int(mantissa))
    return np.power(2, rel_err)

def fixed_eq_float_size(mantissa):
    # used to be
    # num_size = 31 - int(mantissa)
    num_size = 31 - int(mantissa)/1 + 12
    return np.power(2, num_size)

def plot_rel_err_error(summary, results_path):
    summary['rel_err_error'] = np.log10(np.abs(summary['rel_err_pred'] - summary['rel_err']))
    df = summary[summary['taffo_conf'] == 'float']
    # print(df)
    print(df.groupby('arch')['rel_err_error'].describe())
    df.to_csv(f"{results_path}_rel_err_err_summary.csv", index=False)


    bars = alt.Chart(df).mark_boxplot().encode(
        x=alt.X('rel_err_error', title='log10(rel_err_err)'),
        y=alt.Y('arch', title=None),
        color=alt.Color('taffo_conf', legend=alt.Legend(direction="vertical")),
    ).properties(title='log10(rel_err prediction error)')

    both = bars #+ texts

    both.save(f'{results_path}_rel_err_err_summary.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_rel_err_err_summary.svg')

def plot_energy_error(summary, results_path):
    summary['energy_error'] = ((summary['energy_pred'] - summary['energy']) / summary['energy']) * 100
    df = summary
    # df['fpu_taffo_conf'] = df['arch'] + "_" + df['taffo_conf']
    # df = summary[summary['taffo_conf'] == 'float']
    # print(df)
    print(df.groupby('hw_sw_config')['energy_error'].describe())
    df.to_csv(f"{results_path}_energy_err_summary.csv", index=False)


    bars = alt.Chart(df).mark_boxplot(extent=1.5).encode(
        x=alt.X('energy_error', title='energy prediction error (%)'),
        y=alt.Y('hw_sw_config', title=None, axis=alt.Axis(labelExpr="join(slice(split(datum.value, '_'), 0, 2), '_')")),
        color=alt.Color('taffo_conf', legend=alt.Legend(direction="vertical")),
    ).properties(title='energy prediction error (%)')

    both = bars #+ texts

    both.save(f'{results_path}_energy_err_summary.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_energy_err_summary.svg')


def calculate_pareto(stats_summary, results_path):
    # stats_summary = stats_summary[stats_summary['taffo_conf'] == 'float']
    max_vals = stats_summary.std()
    mean_vals = stats_summary.mean()
    benchs = stats_summary['bench'].unique()
    scales = stats_summary['scale'].unique()
    errs = np.array([0.01, 0.001, 0.0001, 0.00001], dtype=np.float64)
    pareto_results = pd.DataFrame()
    pareto_refine_results = pd.DataFrame()
    pareto_expanded_results = pd.DataFrame()
    pareto_refine_expanded_results = pd.DataFrame()
    for b in benchs:
        for s in scales:
            for e in errs:
                print(f"{b}: scale: {s} error: {e}")

                df_sim = stats_summary[
                    (stats_summary['bench'] == b) &
                    (stats_summary['scale'] == s) &
                    ((stats_summary['rel_err_run'] <= e))]
                if (df_sim.empty): continue
                # df_sim.loc[:, 'rel_err_run'] = df_sim.rel_err_double.apply(np.log10).apply(np.round, 0)
                df_sim['rel_err_run'].replace([np.inf, -np.inf, np.nan], 10e-10, inplace=True)
                # df.loc[:, 'energy'] = df.energy.divide(1000000).apply(np.round, 0)
                # df['energy'].replace([np.inf, -np.inf, np.nan], 0, inplace=True)
                # print(df)

                pareto_sim=oapackage.ParetoDoubleLong()
                for index, row in df_sim.iterrows():
                    w=oapackage.doubleVector((-row['energy'], -row['max_area_share']))
                    pareto_sim.addvalue(w, index)
                # pareto_sim.show(verbose=1)
                lst_sim=np.array(pareto_sim.allindices())
                # print(lst_sim)
                # result = df.loc[lst, ['bench', 'hw_sw_config', 'energy', 'rel_err_double', 'lut', 'ff', 'dsp']]
                # print(result)

                df_pred = stats_summary[
                    (stats_summary['bench'] == b) &
                    (stats_summary['scale'] == s) &
                    ((stats_summary['ml_error'] <= e))]
                # df_pred['viable'] = (((df_pred['rel_err_pred'] <= e)) &
                #                      ((df_pred['taffo_conf'] == 'float') |
                #                       (df_pred['var_max'] <= df_pred['fix_err_eq_fl_err'])))
                # df_pred = df_pred[df_pred['viable']]
                # df_pred.loc[:, 'rel_err_pred'] = df_pred.rel_err_double.apply(np.log10).apply(np.round, 0)
                # df_pred['rel_err_run'].replace([np.inf, -np.inf, np.nan], 10e-10, inplace=True)
                # df.loc[:, 'energy'] = df.energy.divide(1000000).apply(np.round, 0)
                # df['energy'].replace([np.inf, -np.inf, np.nan], 0, inplace=True)
                # print(df)

                pareto_pred=oapackage.ParetoDoubleLong()
                for index, row in df_pred.iterrows():
                    w=oapackage.doubleVector((-row['energy_pred'], -row['max_area_share']))
                    pareto_pred.addvalue(w, index)
                # pareto_pred.show(verbose=1)
                lst_pred=np.array(pareto_pred.allindices())
                # print(lst_pred)

                common = (set(lst_sim) & set(lst_pred))
                common_percent = 0 if len(lst_sim) == 0 else len(common) / len(lst_sim)

                lst_all = np.unique(np.concatenate((lst_sim, lst_pred)))
                all_confs = stats_summary.loc[lst_all, :]
                all_confs['target_err'] = e
                all_confs['in_sim'] = all_confs.apply(lambda x: (1 if x.name in lst_sim else 0), axis=1)
                all_confs['in_pred'] = all_confs.apply(lambda x: (1 if x.name in lst_pred else 0), axis=1)
                all_confs['err_lt_target'] = all_confs['ml_error'] < e
                sim_confs = all_confs[all_confs['in_sim'] == 1]
                all_confs = all_confs.apply(lambda x: dist_to_nearest(x, sim_confs, max_vals, mean_vals), axis=1)
                pareto_expanded_results = pd.concat([pareto_expanded_results, all_confs])

                row_dict = {
                    'bench': b,
                    'scale': s,
                    'target_rel_err': e,
                    'pareto_sim': lst_sim,
                    'pareto_pred': lst_pred,
                    'common_percent': common_percent,
                }

                row_df = pd.DataFrame([row_dict])
                pareto_results = pd.concat([pareto_results, row_df])

                # refine pareto set
                df_sim_full = stats_summary[
                    (stats_summary['bench'] == b) &
                    (stats_summary['scale'] == s) ]
                df_sim_full['in_sim'] = df_sim_full.apply(lambda x: (1 if x.name in lst_sim else 0), axis=1)
                df_sim_full['in_pred'] = df_sim_full.apply(lambda x: (1 if x.name in lst_pred else 0), axis=1)
                df_pred_part = df_sim_full[df_sim_full['in_pred'] == 1]
                explore = df_sim_full[(df_sim_full['ml_error'] <= e) & (df_sim_full['in_pred'] != 1)]
                explore.sort_values(by='energy_pred', ascending=True, inplace=True)
                df_refine = pd.concat([df_pred_part, explore.head(2)])
                df_refine['rel_err_sim'].replace([np.inf, -np.inf, np.nan], 10e-10, inplace=True)
                df_refine.loc[df_refine['taffo_conf'] == 'float', 'rel_err_sim'] = df_refine['ml_error']
                df_refine = df_refine[df_refine['rel_err_sim'] <= e]

                pareto_refine=oapackage.ParetoDoubleLong()
                for index, row in df_refine.iterrows():
                    w=oapackage.doubleVector((-row['energy_pred'], -row['max_area_share']))
                    pareto_refine.addvalue(w, index)
                # pareto_sim.show(verbose=1)
                lst_refine=np.array(pareto_refine.allindices())
                # print(lst_refine)

                common_refine = (set(lst_sim) & set(lst_refine))
                common_refine_percent = 0 if len(lst_sim) == 0 else len(common_refine) / len(lst_sim)

                lst_refine_all = np.unique(np.concatenate((lst_sim, lst_refine)))
                all_refine_confs = stats_summary.loc[lst_refine_all, :]
                all_refine_confs['target_err'] = e
                all_refine_confs['in_sim'] = all_refine_confs.apply(lambda x: (1 if x.name in lst_sim else 0), axis=1)
                all_refine_confs['in_pred'] = all_refine_confs.apply(lambda x: (1 if x.name in lst_refine else 0), axis=1)
                all_refine_confs['err_lt_target'] = all_refine_confs['rel_err_run'] < e
                sim_refine_confs = all_refine_confs[all_refine_confs['in_sim'] == 1]
                all_refine_confs = all_refine_confs.apply(lambda x: dist_to_nearest(x, sim_refine_confs, max_vals, mean_vals), axis=1)
                pareto_refine_expanded_results = pd.concat([pareto_refine_expanded_results, all_refine_confs])

                row_refine_dict = {
                    'bench': b,
                    'scale': s,
                    'target_rel_err': e,
                    'pareto_sim': lst_sim,
                    'pareto_pred': lst_refine,
                    'common_percent': common_refine_percent,
                }
                # print(row_refine_dict)

                row_refine_df = pd.DataFrame([row_refine_dict])
                pareto_refine_results = pd.concat([pareto_refine_results, row_refine_df])


    pareto_results.to_csv(f"{results_path}/pareto_results.csv", index=False)
    pareto_refine_results.to_csv(f"{results_path}/pareto_refine_results.csv", index=False)
    pareto_expanded_results.to_csv(f"{results_path}/pareto_expanded_results.csv", index=False)
    pareto_refine_expanded_results.to_csv(f"{results_path}/pareto_refine_expanded_results.csv", index=False)

def dist_to_nearest(row, df, max_vals, mean_vals):
    # print(max_vals)
    point = np.array([
        (row.rel_err_run - mean_vals['rel_err_run'])/max_vals['rel_err_run'],
        (row.energy - mean_vals['energy'])/max_vals['energy'],
        (row.lut - mean_vals['lut'])/max_vals['lut'],
        (row.ff - mean_vals['ff'])/max_vals['ff'],
        (row.dsp - mean_vals['dsp'])/max_vals['dsp']]
    )

    min_dist = None
    min_row = None
    for _, row1 in df.iterrows():
        p1 = np.array([
            (row1.rel_err_run - mean_vals['rel_err_run'])/max_vals['rel_err_run'],
            (row1.energy - mean_vals['energy'])/max_vals['energy'],
            (row1.lut - mean_vals['lut'])/max_vals['lut'],
            (row1.ff - mean_vals['ff'])/max_vals['ff'],
            (row1.dsp - mean_vals['dsp'])/max_vals['dsp']]
        )
        dist = eu_dist(point, p1)
        if (min_dist is None) or (min_dist > dist):
            min_dist = dist
            min_row = row1
    if min_row is not None:
        row['min_dist'] = min_dist
        row['rel_err_diff'] = row.rel_err_run / (min_row.rel_err_run if min_row.rel_err_run != 0 else 10e-10)
        row['energy_diff'] = row.energy / min_row.energy
        row['lut_diff'] = row.lut / min_row.lut
        row['ff_diff'] = row.ff / min_row.ff
        row['dsp_diff'] = row.dsp / min_row.dsp
    else:
        row['min_dist'] = None
        row['rel_err_diff'] = None
        row['energy_diff'] = None
        row['lut_diff'] = None
        row['ff_diff'] = None
        row['dsp_diff'] = None
    return row

def eu_dist(a, b):
    return np.linalg.norm(a-b)

if __name__ == "__main__":
    main(sys.argv[1:])