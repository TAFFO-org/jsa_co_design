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
from vega_datasets import data


pd.options.display.max_columns = None
pd.set_option('mode.chained_assignment', None)

def main(argv):
    in_dir = os.path.abspath(argv[0])
    build_dir = f"{in_dir}/build"
    data_dir = f"{in_dir}/clean"
    pareto_results = pd.read_csv(f'{data_dir}/pareto_results.csv')
    pareto_refine_results = pd.read_csv(f'{data_dir}/pareto_refine_results.csv')
    pareto_expanded_results = pd.read_csv(f'{data_dir}/pareto_expanded_results.csv')
    pareto_refine_expanded_results = pd.read_csv(f'{data_dir}/pareto_refine_expanded_results.csv')
    run_sim_merged = pd.read_csv(f'{data_dir}/full_derived_sim_summary.csv')

    plot_sim_time_ops(run_sim_merged, f"{data_dir}/scatter_")
    save_bench_features(run_sim_merged, data_dir)
    plot_heat_energy_per_op(run_sim_merged, f"{data_dir}/heat_")
    plot_energy_per_op_summary(run_sim_merged, f"{data_dir}/box")
    plot_pareto_percent(pareto_results, f"{data_dir}/scatter")
    plot_pareto_percent(pareto_refine_results, f"{data_dir}/scatter_refined")
    plot_gain(pareto_refine_expanded_results, f"{data_dir}/box_")
    plot_error_resource_tradeoff(pareto_refine_expanded_results, f"{data_dir}/line_gain_")
    # plot_pareto_front(pareto_refine_expanded_results, f"{data_dir}/line_pareto_")
    plot_pareto_percent_cdf(pareto_refine_results, f"{data_dir}/density")
    plot_pareto_scale_err(pareto_refine_results, f"{data_dir}/scatter")
    plot_pareto_selection(pareto_expanded_results, f"{data_dir}/scatter")
    plot_pareto_selection_heat(pareto_expanded_results, f"{data_dir}/heat")
    plot_pareto_selection(pareto_refine_expanded_results, f"{data_dir}/scatter_refine")
    plot_pareto_selection_heat(pareto_refine_expanded_results, f"{data_dir}/heat_refine")
    plot_pareto_diff(pareto_refine_expanded_results, f"{data_dir}/box")
    plot_pareto_diff_distr(pareto_refine_expanded_results, f"{data_dir}/density")
    plot_simulation_error(run_sim_merged, f"{data_dir}/box")
    plot_error_prediction_error(run_sim_merged, f"{data_dir}/hist")
    plot_compile_time(run_sim_merged, f"{data_dir}/box")
    plot_run_time(run_sim_merged, f"{data_dir}/box")


def plot_sim_time_ops(stats_summary, results_path):
    df = stats_summary.dropna(subset=['sim_time'], how='all')
    df['sim_time'] = (df['sim_time'] / 60)

    bars = alt.Chart(df).mark_circle().encode(
        x=alt.X('sim_time', title="Gate-level simulation time (minutes)"),
        y=alt.Y('float_op_count_default', title='FP operations count')
    ).properties(width=300, height=240)

    both = bars + bars.transform_regression('sim_time', 'float_op_count_default').mark_line(color='orange')

    both.save(f'{results_path}_float_ops_time.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_float_ops_time.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_float_ops_time.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_energy_per_op_summary(stats_summary, results_path):
    df = stats_summary[stats_summary['scale'] == 1]
    df['energy_per_op_distr'] = df['energy'] / df['kernel_float_op_count_default'] / 10**6
    # df.replace(to_replace = 0, value = 1E-10, inplace=True)
    # print(df)
    # df.to_csv(f"{results_path}_energy_per_op.csv", index=False)


    bars = alt.Chart(df).mark_boxplot(extent='min-max').encode(
        x=alt.X('energy_per_op_distr', title="uJ"),
        y=alt.Y('hw_sw_config', title=None,
                # axis=alt.Axis(labelExpr="join(slice(split(datum.value, '_'), 0, 2), '_')"),
                sort=alt.EncodingSortField(
                    field='energy_per_op_distr',
                    op='median',
                    order='ascending'
                )),
        color=alt.Color('taffo_conf', legend=alt.Legend(direction="vertical")),
    ).properties(title='Energy per op')

    # texts = bars.mark_text(
    #     align='left',
    #     baseline='middle',
    #     dx=3  # Nudges text to right so it doesn't appear on top of the bar
    # ).encode(
    #     text='taffo_conf:N'
    # )

    both = bars #+ texts

    both.save(f'{results_path}_energy_per_op_summary.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_energy_per_op_summary.svg')
    #
    x = Popen(['/usr/bin/inkscape', f'{results_path}_energy_per_op_summary.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_heat_energy_per_op(df2, results_path):
    median = df2.groupby(['canon_arch', 'taffo_conf']).agg({'energy_per_op': 'median'}).reset_index()
    median['energy_per_op'] /= 10**3
    # print(median)
    latex_df = median.pivot(
        columns='taffo_conf', index='canon_arch', values='energy_per_op'
    ).reset_index()

    # latex_df['arch'] = latex_df['arch'].str.replace('_','\_')

    latex = latex_df.to_latex(
        index=False,float_format="{:.1f}".format, escape=False,
        header = ['\\bfseries{CPU configuration}', '\\bfseries{fixed (nJ)}', '\\bfseries{float (nJ)}']
    )
    print(latex)
    f = open(f'{results_path}energy_per_op.tex', "w")
    f.write(latex)
    f.close()


    heat = alt.Chart(median).mark_rect().encode(
        x=alt.X('taffo_conf:N'),
        y=alt.Y('canon_arch:N'),
        color=alt.Color('energy_per_op:Q')
        .scale(scheme='darkblue')
    )

    text = heat.mark_text(baseline='middle').encode(
        text=alt.Text('energy_per_op:Q', format=".1f"),
        color=alt.condition(
            (alt.datum.energy_per_op < 0.4 * median['energy_per_op'].max()),
            alt.value('white'),
            alt.value('black')
        )
    )

    heatmap = (heat + text).properties(title='Energy per op (nJ)', width=450, height=270)

    both = heatmap

    both.save(f'{results_path}energy_per_op.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}energy_per_op.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}energy_per_op.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_pareto_front(df2, results_path):
    df1 = df2[(df2['in_pred'] == 1)]
    chart = alt.Chart(df1).mark_line(point=True).encode(
        x=alt.X('energy_gain_rel', scale=alt.Scale(type='log', zero=False), title='Energy'),
        y=alt.Y('max_area_share', scale=alt.Scale(zero=False), axis=alt.Axis(format='%'), title='Area share'),
        color=alt.Color('target_err:N').scale(scheme='category10'),
        # strokeDash='bench',
        shape='target_err:N',
    ).facet(
        facet='bench:N',
        columns=2
    )

    chart.save(f'{results_path}_energy_area.png', engine="altair_saver", scale_factor=2.0)
    save(chart, f'{results_path}_energy_area.svg')
    x = Popen(['/usr/bin/inkscape', f'{results_path}_energy_area.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_error_resource_tradeoff(df2, results_path):
    df1 = df2[(df2['in_pred'] == 1)]
    median_records = pd.DataFrame()
    target_err = df1['target_err'].unique()
    benchs = df1['bench'].unique()
    for err in target_err:
        for b in benchs:
            df_err = df1[(df1['target_err'] == err) & (df1['bench'] == b)]
            m = df_err[df_err['energy_gain_rel']==df_err['energy_gain_rel'].quantile(interpolation='nearest')]
            median_records = pd.concat([median_records, m])

    energy = alt.Chart(median_records).mark_line().encode(
        x=alt.X('target_err', scale=alt.Scale(type='log', zero=False), axis=alt.Axis(format="%", tickCount=4), title='Target relative error'),
        y=alt.Y('energy_gain_rel', scale=alt.Scale(zero=False), axis=alt.Axis(format='%'), title='Energy (median)'),
        color=alt.Color('bench').scale(scheme='category10'),
        # strokeDash='bench',
        shape='bench',
    ).configure_point(
        size=150
    )

    lut = alt.Chart(median_records).mark_line().encode(
        x=alt.X('target_err', scale=alt.Scale(type='log', zero=False), axis=alt.Axis(format="%", tickCount=4), title='Target relative error'),
        y=alt.Y('lut_gain_rel', scale=alt.Scale(zero=False), axis=alt.Axis(format='%'), title='Median LUT reduction'),
        color=alt.Color('bench').scale(scheme='category10'),
        # strokeDash='bench',
        shape='bench',
    ).configure_point(
        size=150
    )

    ff = alt.Chart(median_records).mark_line().encode(
        x=alt.X('target_err', scale=alt.Scale(type='log', zero=False), axis=alt.Axis(format="%", tickCount=4), title='Target relative error'),
        y=alt.Y('ff_gain_rel', scale=alt.Scale(zero=False), axis=alt.Axis(format='%'), title='Median FF reduction'),
        color=alt.Color('bench').scale(scheme='category10'),
        # strokeDash='bench',
        shape='bench',
    ).configure_point(
        size=150
    )

    dsp = alt.Chart(median_records).mark_line().encode(
        x=alt.X('target_err', scale=alt.Scale(type='log', zero=False), axis=alt.Axis(format="%", tickCount=4), title='Target relative error'),
        y=alt.Y('dsp_gain_rel', scale=alt.Scale(zero=False), axis=alt.Axis(format='%'), title='Median DSP reduction'),
        color=alt.Color('bench').scale(scheme='category10'),
        # strokeDash='bench',
        shape='bench',
    ).configure_point(
        size=150
    )

    area_share = alt.Chart(median_records).mark_line().encode(
        x=alt.X('target_err', scale=alt.Scale(type='log', zero=False), axis=alt.Axis(format="%", tickCount=4), title='Target relative error'),
        y=alt.Y('max_area_share', scale=alt.Scale(zero=False), axis=alt.Axis(format='%'), title='Median area share reduction'),
        color=alt.Color('bench').scale(scheme='category10'),
        # strokeDash='bench',
        shape='bench',
    ).configure_point(
        size=150
    )

    charts = [('energy', energy), ('lut', lut), ('ff', ff), ('dsp', dsp), ('area_share', area_share)]

    for name, chart in charts:
        chart.save(f'{results_path}_{name}.png', engine="altair_saver", scale_factor=2.0)
        save(chart, f'{results_path}_{name}.svg')
        x = Popen(['/usr/bin/inkscape', f'{results_path}_{name}.svg',
                   '--export-type=pdf'])
        try:
            waitForResponse(x)
        except OSError as e:
            return False

def plot_gain(df1, results_path):
    df = df1
    df_sim = df[df['in_sim'] == 1]
    df_pred = df[(df['in_pred'] == 1)]

    energy_sim = boxplot(df_sim, 'energy_gain_rel', 'best')
    energy_pred = boxplot(df_pred, 'energy_gain_rel', 'prediction')
    error_sim = boxplot(df_sim, 'error_gain_rel', 'best')
    error_pred = boxplot(df_pred, 'error_gain_rel', 'prediction')
    lut_sim = boxplot(df_sim, 'lut_gain_rel', 'best', 'linear')
    lut_pred = boxplot(df_pred, 'lut_gain_rel', 'prediction', 'linear')
    ff_sim = boxplot(df_sim, 'ff_gain_rel', 'best', 'linear')
    ff_pred = boxplot(df_pred, 'ff_gain_rel', 'prediction', 'linear')
    dsp_sim = boxplot(df_sim, 'dsp_gain_rel', 'best', 'linear')
    dsp_pred = boxplot(df_pred, 'dsp_gain_rel', 'prediction', 'linear')


    # energy_pred = alt.Chart(df_pred).mark_boxplot(extent=1.5).encode(
    #     x=alt.X("energy_gain_rel", scale=alt.Scale(type='log')),
    #     y=alt.datum('prediction'),
    #     color=alt.datum('prediction')
    # )
    #
    # error_sim = alt.Chart(df_sim).mark_boxplot(extent=1.5).encode(
    #     x=alt.X("error_gain_rel", scale=alt.Scale(type='log')),
    #     y=alt.datum('best'),
    #     color=alt.datum('best')
    # )
    #
    # error_pred = alt.Chart(df_pred).mark_boxplot(extent=1.5).encode(
    #     x=alt.X("error_gain_rel", scale=alt.Scale(type='log')),
    #     y=alt.datum('prediction'),
    #     color=alt.datum('prediction')
    # )

    energy = (alt.layer(energy_sim, energy_pred))
    error = (alt.layer(error_sim, error_pred))
    lut = (alt.layer(lut_sim, lut_pred))
    ff = (alt.layer(ff_sim, ff_pred))
    dsp = (alt.layer(dsp_sim, dsp_pred))
    chart = energy & error & lut & ff & dsp

    chart.save(f'{results_path}_gain.png', engine="altair_saver", scale_factor=2.0)
    save(chart, f'{results_path}_gain.svg')

def boxplot(df, metric, yname, scale_type='log'):
    return alt.Chart(df).mark_boxplot(extent='min-max').encode(
        x=alt.X(metric, scale=alt.Scale(type=scale_type, zero=False)),
        y=alt.datum(yname),
        color=alt.datum(yname)
    )
def plot_error_prediction_error(df1, results_path):
    np.random.seed(42)
    train_bench = np.random.choice(np.sort(df1['bench'].unique()), size=7, replace=False)
    train_set = df1[df1['bench'].isin(train_bench)]
    test_set = df1[~df1['bench'].isin(train_bench)]
    df = test_set
    df['rel_err_run'].replace(0, 10e-10, inplace=True)
    df['ml_prediction_error'] = np.log10(df['ml_error']/df['rel_err_run'])
    df['sim_prediction_error'] = np.log10(df['rel_err_sim']/df['rel_err_run'])
    df['form_prediction_error'] = np.log10(df['rel_err_pred_formal']/df['rel_err_run'])
    #
    df_fixed = df[df['taffo_conf'] == 'fixed']
    df_float = df[df['taffo_conf'] == 'float']
    float_plot = subplot_pred_error(df_float, [-2.5, 2.5]).properties(title=f"float")
    fixed_plot = subplot_pred_error(df_fixed, [-6, 6]).properties(title=f"fixed")
    chart = alt.vconcat()#.properties(title=f"Error prediction error (log10)")
    chart &= fixed_plot
    chart &= float_plot

    chart.save(f'{results_path}_err_pred_err.png', engine="altair_saver", scale_factor=2.0)
    save(chart, f'{results_path}_err_pred_err.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_err_pred_err.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def subplot_pred_error(df, extent):
    df = df.rename(columns={
        'ml_prediction_error': "Linear model",
        'sim_prediction_error': "Simple simulation",
        'form_prediction_error': "Static formula"
    })
    # print(df)
    base = alt.Chart(df).transform_fold(
        ['Linear model', 'Simple simulation', 'Static formula'],
        as_ = ['Method', 'value']
    ).transform_density(
        density='value',
        bandwidth=0.15,
        groupby=['Method'],
        extent= extent,
        counts = False,
        steps=200
    ).mark_line().encode(
        alt.X('value:Q', title='log10(error(error estimate))'),
        alt.Y('density:Q'),
        alt.Color('Method:N', legend=alt.Legend(orient='top-left')),
        alt.StrokeDash('Method:N'),
    ).properties(width=300, height=100)
    return base

def save_bench_features(df, results_path):
    df = df[['bench', 'output_size', 'float_op_count_default']]
    df = df.drop_duplicates(subset=['bench'])
    df.to_csv(f"{results_path}/bench_ops_out_size.csv", index=False)

    latex = df.to_latex(
        index=False,float_format="{:.0f}".format, escape=False,
        header = ['\\bfseries{Benchmark}', '\\bfseries{Output size}', '\\bfseries{\#float ops}']
    )
    print(latex)
    f = open(f'{results_path}/bench_ops_out_size.tex', "w")
    f.write(latex)
    f.close()

def plot_simulation_error(df, results_path):
    # df = df[df['scale'] == 1]
    df['rel_err_run'].replace(0, 10e-10, inplace=True)
    df['simulation_error'] = np.log10(df['rel_err_sim']/df['rel_err_run'])
    print(df)

    all_confs = ['bfloat16_IMFZm_fixed', 'bfloat16_IMF_fixed', 'bfloat16_IMF_float',
                 'float19_IMFZm_fixed', 'float19_IMF_fixed', 'float19_IMF_float',
                 'float24_IMFZm_fixed', 'float24_IMF_fixed', 'float24_IMF_float',
                 'float32_IMFZm_fixed', 'float32_IMF_fixed', 'float32_IMF_float',
                 'noFPU_IMZm_fixed', 'noFPU_IM_fixed', 'noFPU_IM_float',]

    benchs = df['bench'].unique()
    df = df[df['hw_sw_config'].isin(all_confs)]

    bars = alt.Chart(df).mark_boxplot(extent=1.5).encode(
        x=alt.X('simulation_error', title='log10(sim_rel_err/run_rel_err)'),
        y=alt.Y('bench', title=None, scale=alt.Scale(domain=benchs)),
        # color=alt.Color('taffo_conf', legend=alt.Legend(direction="vertical")),
    ).properties(title='Simulation error (log10)')

    heat = alt.Chart(df).mark_rect().transform_aggregate(
        mean_err='mean(simulation_error)',
        groupby=['bench', 'hw_sw_config']
    ).encode(
        x=alt.X('bench:O', title='log10(sim_rel_err/run_rel_err)', scale=alt.Scale(domain=benchs)),
        y=alt.Y('hw_sw_config:O', title=None, scale=alt.Scale(domain=all_confs)),
        color=alt.Color('mean_err:Q')
        .scale(scheme='darkblue')
    )

    text = heat.mark_text(baseline='middle').encode(
        text=alt.Text('mean_err:Q', format=".1f"),
        color=alt.condition(
            (alt.datum.mean_err <0.7),
            alt.value('white'),
            alt.value('black')
        )
    )

    heatmap = (heat + text).properties(title='Simulation error (log10)', width=450, height=270)

    both = bars | heatmap

    both.save(f'{results_path}_simulation_error.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_simulation_error.svg')


def plot_run_time(df2, results_path):
    df = df2.dropna(subset=['sim_time'], how='all')
    print(f"average simulation time: {df['sim_time'].mean()}")
    df['sim_time'] = (df['sim_time'] / 60)
    # df = df[df['taffo_conf'] == 'fixed']
    bars = alt.Chart(df).mark_boxplot(extent="min-max").encode(
        x=alt.X('sim_time', title="Gate-level simulation time (minutes)", axis=alt.Axis(values=list(range(0, 280, 10)))),
        y=alt.Y('bench', title=None),
        # color=alt.Color('taffo_conf', legend=alt.Legend(direction="vertical")),
    ).properties(width=300, height=240)

    both = bars #+ texts

    both.save(f'{results_path}_gate_run_time.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_gate_run_time.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_gate_run_time.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_compile_time(df, results_path):
    df.dropna(subset=['compile_time'], how='all', inplace=True)
    print(f"average compilation time: {df['compile_time'].mean()}")
    # df = df[df['taffo_conf'] == 'fixed']
    bars = alt.Chart(df).mark_boxplot(extent="min-max").encode(
        x=alt.X('compile_time', title="compilation time (ms)"),
        y=alt.Y('bench', title=None),
        # color=alt.Color('taffo_conf', legend=alt.Legend(direction="vertical")),
    )#.properties(title='Compilation time')

    both = bars #+ texts

    both.save(f'{results_path}_compile_time.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_compile_time.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_compile_time.svg',
                   '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False


def plot_pareto_percent(df, results_path):
    df['common_percent'] = df['common_percent']

    bins = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1]
    domain = [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0]
    df['binned_common'] = pd.cut(df['common_percent'], pd.IntervalIndex.from_breaks(bins, closed='left')).apply(lambda x: x.left)
    print(df[["common_percent", 'binned_common']])

    heat = alt.Chart(df).transform_joinaggregate(
        total='count(*)',
        groupby=['bench']
    ).transform_calculate(
        pct='1/datum.total'
    ).mark_rect(invalid=None).encode(
        x=alt.X('binned_common:N', title='share of exact matches',
                scale=alt.Scale(domain=domain), axis=alt.Axis(format='.0%', tickBand='extent', bandPosition=0)),
        y=alt.Y('bench', title=None),
        color=alt.Color('sum(pct):Q', legend=None)
        .scale(scheme='blues')
    )

    # heat.transformed_data()

    text = heat.transform_aggregate(
        my_sum_pct='sum(pct)',
        groupby=['bench', 'binned_common']
    ).mark_text(baseline='middle', align='center').encode(
        text=alt.Text('my_sum_pct:Q', format=".1%", bandPosition=0.5),
        x2=alt.X2('binned_common_end:N'),
        color=alt.condition(
            (alt.datum.my_sum_pct >= 0.4),
            alt.value('white'),
            alt.value('black')
        )
    )

    both = (heat + text).properties(title='', width=400, height=170)

    both.save(f'{results_path}_pareto_correct.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_pareto_correct.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_pareto_correct.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_pareto_percent_cdf(df, results_path):
    # df['common_percent'] = df['common_percent'] * 100
    bars = alt.Chart(df).transform_density(
        'common_percent',
        groupby=['bench'],
        as_=['common_percent', 'density'],
        # extent=[0, 100],
    ).mark_area().encode(
        x=alt.X('common_percent', title='percent of pareto confs identified'),
        y=alt.Y('density:Q', title=None),
        row=alt.Row('bench', title=None, spacing=0, header=alt.Header(labelAngle=0, labelAlign='left'))
        # color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
        # size='count()'
    ).properties(title='Density of percent of pareto confs identified', height=40).configure_range(
        category={'scheme': 'tableau20'}
    )
    both = bars #+ texts
    both.save(f'{results_path}_pareto_correct_dist.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_pareto_correct_dist.svg')

def plot_pareto_scale_err(df, results_path):

    bars = alt.Chart(df).mark_circle().encode(
        x=alt.X('scale', scale=alt.Scale(type='log')),
        y=alt.Y('target_rel_err', scale=alt.Scale(type='log')),
        # color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
        size='common_percent'
    ).properties(title='pareto confs identified')


    both = bars #+ texts

    both.save(f'{results_path}_pareto_correct_scale_err.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_pareto_correct_scale_err.svg')

def subplot_bench_selection(df, bench_name, domain):
    df.loc[df['value'] < 0.001, 'value'] = np.nan
    df.replace(0, np.nan, inplace=True)
    bench_heat = alt.Chart(df).mark_rect(invalid=None).encode(
        y=alt.Y(f"canon_hw_sw_config:N", title=None, sort=domain),
        x=alt.X('variable', title=None, sort=[
            'Ground truth',
            'Predicted',
            'True positive',
            'False negative',
            'False positive',
            'Error > target',
        ], axis=alt.Axis(labelAngle=-25, orient='top')),
        color=alt.Color('value:Q', legend=None)
        .scale(scheme='blues')
    )

    mid_value = df['value'].max() * 0.4

    bench_count = bench_heat.mark_text(baseline='middle', align='center').encode(
        text=alt.Text('value:Q', format=".1%", bandPosition=0.5),
        color=alt.condition(
            (alt.datum.value >= mid_value),
            alt.value('white'),
            alt.value('black')
        )
    )

    heatmap = (bench_heat + bench_count).properties(title='', width=250, height=300)
    return heatmap

def plot_pareto_selection_heat(df1, results_path):
    df = df1
    df_sim = df[df['in_sim'] == 1]
    df_pred = df[df['in_pred'] == 1]
    df_err_gt_target = df[(df['in_pred'] == 1) & (df['err_lt_target'] == False)]
    df_true_positive = df[(df['in_pred'] == 1) & (df['in_sim'] == 1)]
    # df_true_negative = df[(df['in_pred'] == 0) & (df['in_sim'] == 0)]
    df_false_positive = df[(df['in_pred'] == 1) & (df['in_sim'] == 0)]
    df_false_negative = df[(df['in_pred'] == 0) & (df['in_sim'] == 1)]

    df1['err_gt_target'] = 0
    df1.loc[df1.index.isin(df_err_gt_target.index), 'err_gt_target'] = 1
    df1['true_positive'] = 0
    df1.loc[df1.index.isin(df_true_positive.index), 'true_positive'] = 1
    df1['false_positive'] = 0
    df1.loc[df1.index.isin(df_false_positive.index), 'false_positive'] = 1
    df1['false_negative'] = 0
    df1.loc[df1.index.isin(df_false_negative.index), 'false_negative'] = 1

    df1['canon_hw_sw_config'] = df1['canon_arch'] + '_' + df['taffo_conf']

    all_confs = [
        'IMZmFbfloat16_float',
        'IMZmFbfloat16_fixed',
        'IMFbfloat16_float',
        'IMFbfloat16_fixed',
        'IMZmFfloat19_float',
        'IMZmFfloat19_fixed',
        'IMFfloat19_float',
        'IMFfloat19_fixed',
        'IMZmFfloat24_float',
        'IMZmFfloat24_fixed',
        'IMFfloat24_float',
        'IMFfloat24_fixed',
        'IMZmFfloat32_float',
        'IMZmFfloat32_fixed',
        'IMFfloat32_float',
        'IMFfloat32_fixed',
        'IMZm_float',
        'IMZm_fixed',
        'IM_float',
        'IM_fixed',
    ]

    for bench in ['3mm']:
        bench_df = df1[df1['bench'] == bench]
        bench_df = bench_df[[
            'canon_hw_sw_config', 'in_sim', 'in_pred', 'err_gt_target', 'true_positive', 'false_positive', 'false_negative'
        ]]
        total = bench_df['in_sim'].sum()
        bench_df['in_sim'] /= total
        bench_df['in_pred'] /= total
        bench_df['err_gt_target'] /= total
        bench_df['true_positive'] /= total
        bench_df['false_positive'] /= total
        bench_df['false_negative'] /= total
        bench_df = pd.melt(bench_df, id_vars=['canon_hw_sw_config'],
                           value_vars=[
                               'in_sim', 'in_pred', 'err_gt_target', 'true_positive', 'false_positive', 'false_negative'
                           ])
        bench_df = bench_df.groupby(['canon_hw_sw_config', 'variable']).agg({'value': 'sum'}).reset_index()
        bench_df = bench_df.replace({'variable': {
            'in_sim': 'Ground truth',
            'in_pred': 'Predicted',
            'err_gt_target': 'Error > target',
            'true_positive': 'True positive',
            'false_positive': 'False positive',
            'false_negative': 'False negative',
        }})
        print(bench_df)
        both = subplot_bench_selection(bench_df, bench, all_confs)

    both.save(f'{results_path}_pareto_selection.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_pareto_selection.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_pareto_selection.svg',
               '--export-type=pdf', '--export-area-drawing', '--vacuum-defs'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_pareto_selection(df, results_path):
    df_sim = df[df['in_sim'] == 1]
    df_pred = df[df['in_pred'] == 1]
    df_err_gt_target = df[(df['in_pred'] == 1) & (df['err_lt_target'] == False)]
    df_true_positive = df[(df['in_pred'] == 1) & (df['in_sim'] == 1)]
    # df_true_negative = df[(df['in_pred'] == 0) & (df['in_sim'] == 0)]
    df_false_positive = df[(df['in_pred'] == 1) & (df['in_sim'] == 0)]
    df_false_negative = df[(df['in_pred'] == 0) & (df['in_sim'] == 1)]

    cats = df['hw_sw_config'].unique()
    cats = np.sort(cats)
    print(cats)

    tpr = len(df_true_positive) / len(df_sim)
    err_gt_target_rate = len(df_err_gt_target) / len(df_sim)
    # tnr = len(df_true_negative) / len(df_pred)
    fpr = len(df_false_positive) / len(df_sim)
    fnr = len(df_false_negative) / len(df_sim)
    recall = tpr / (tpr + fnr)
    precision = tpr / (tpr + fpr)
    f1_score = 2 * (precision * recall) / (precision + recall)
    print(f"True positive & {tpr:.2%} \\\\")
    # print(f"True negative & {tnr} \\\\")
    print(f"False positive & {fpr:.2%} \\\\")
    print(f"False negative & {fnr:.2%} \\\\")
    print(f"Recall & {recall:.2%} \\\\")
    print(f"Precision & {precision:.2%} \\\\")
    print(f"F1 score & {f1_score:.2%} \\\\")
    print(f"Error > target & {err_gt_target_rate:.2%} \\\\")

    # all_confs = df['hw_sw_config'].unique()
    all_confs = [
        'bfloat16_IMFZm_fixed',
        'bfloat16_IMF_fixed',
        'bfloat16_IMFZm_float',
        'bfloat16_IMF_float',
        'float19_IMFZm_fixed',
        'float19_IMF_fixed',
        'float19_IMFZm_float',
        'float19_IMF_float',
        'float24_IMFZm_fixed',
        'float24_IMF_fixed',
        'float24_IMFZm_float',
        'float24_IMF_float',
        'float32_IMFZm_fixed',
        'float32_IMFZm_float',
        'float32_IMF_float',
        'float32_IMF_fixed',
        'noFPU_IMZm_fixed',
        'noFPU_IMZm_float',
        'noFPU_IM_fixed',
        'noFPU_IM_float',
    ]

    # all_confs = ['bfloat16_IMFZm_fixed', 'bfloat16_IMF_fixed', 'bfloat16_IMF_float',
    #  'float19_IMFZm_fixed', 'float19_IMF_fixed', 'float19_IMF_float',
    #  'float24_IMFZm_fixed', 'float24_IMF_fixed', 'float24_IMF_float',
    #  'float32_IMFZm_fixed', 'float32_IMF_fixed', 'float32_IMF_float',
    #  'noFPU_IMZm_fixed', 'noFPU_IM_fixed', 'noFPU_IM_float',]


    # print(all_confs)
    scale = alt.Scale(domain=all_confs)
    sim_chart = alt.Chart(df_sim).mark_circle().encode(
        x=alt.X('bench', title=None),
        y=alt.Y('hw_sw_config', title=None, scale=scale),
        color=alt.Color('bench'),
        size='count()'
    ).properties(title='Ground Truth')

    pred_chart = alt.Chart(df_pred).mark_circle().encode(
        x=alt.X('bench', title=None),
        y=alt.Y('hw_sw_config', title=None, scale=scale),
        color=alt.Color('bench'),
        size='count()'
    ).properties(title='Prediction')

    # print(df_err_gt_target)
    pred_err_gt_chart = alt.Chart(df_err_gt_target).mark_circle().encode(
        x=alt.X('bench', title=None),
        y=alt.Y('hw_sw_config', title=None, scale=scale),
        color=alt.Color('bench'),
        size='count()'
    ).properties(title='Prediction with too big rel_error')

    true_positive_chart = alt.Chart(df_true_positive).mark_circle().encode(
        x=alt.X('bench', title=None),
        y=alt.Y('hw_sw_config', title=None, scale=scale),
        color=alt.Color('bench'),
        size='count()'
    ).properties(title='True Positive')

    false_positive_chart = alt.Chart(df_false_positive).mark_circle().encode(
        x=alt.X('bench', title=None),
        y=alt.Y('hw_sw_config', title=None, scale=scale),
        color=alt.Color('bench'),
        size='count()'
    ).properties(title='False Positive')

    false_negative_chart = alt.Chart(df_false_negative).mark_circle().encode(
        x=alt.X('bench', title=None),
        y=alt.Y('hw_sw_config', title=None, scale=scale),
        color=alt.Color('bench'),
        size='count()'
    ).properties(title='False Negative')


    both = (pred_chart | sim_chart | true_positive_chart) & (false_negative_chart | false_positive_chart | pred_err_gt_chart)
    both = both.configure_range(
        category={'scheme': 'tableau20'}
    ).configure_legend(
        orient='top'
    )

    both.save(f'{results_path}_pareto_selection.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_pareto_selection.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_pareto_selection.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def plot_pareto_diff(df, results_path):
    df['rel_err_diff_log'] = np.log10(df['rel_err_diff'])
    # df_pred = df[(df['in_pred'] == 1) & (df['err_lt_target'] == True)]
    # df_pred_err_gt_target = df[(df['in_pred'] == 1) & (df['err_lt_target'] == False)]
    df_pred = df[df['in_pred'] == 1]

    rel_err_diff = alt.Chart(df_pred).mark_circle().encode(
        x=alt.X('rel_err_diff_log'),
        y=alt.Y('bench', title=None),
        color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
        size='count()'
    ).properties(title='Relative error diff (log)')

    # rel_err_diff_gt = alt.Chart(df_pred).mark_circle().encode(
    #     x=alt.X('rel_err_diff_log'),
    #     y=alt.Y('bench', title=None),
    #     color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
    # ).properties(title='Relative error diff > target (log)')


    energy_diff = alt.Chart(df_pred).mark_circle().encode(
        x=alt.X('energy_diff'),
        y=alt.Y('bench', title=None),
        color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
        size='count()'
    ).properties(title='Energy diff')

    lut_diff = alt.Chart(df_pred).mark_circle().encode(
        x=alt.X('lut_diff'),
        y=alt.Y('bench', title=None),
        color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
        size='count()'
    ).properties(title='LUT diff')

    ff_diff = alt.Chart(df_pred).mark_circle().encode(
        x=alt.X('ff_diff'),
        y=alt.Y('bench', title=None),
        color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
        size='count()'
    ).properties(title='FF diff')

    dsp_diff = alt.Chart(df_pred).mark_circle().encode(
        x=alt.X('dsp_diff'),
        y=alt.Y('bench', title=None),
        color=alt.Color('bench', legend=alt.Legend(direction="vertical")),
        size='count()'
    ).properties(title='DSP diff')


    both = (rel_err_diff | energy_diff) & (lut_diff | ff_diff | dsp_diff)
    both = both.configure_range(
        category={'scheme': 'tableau20'}
    )

    both.save(f'{results_path}_pareto_diff.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_pareto_diff.svg')


def subplot_metric_diff_distr(df1, metric, bins, domain, xtitle, format):
    df = df1
    binned_metric_name = f"{metric}_bin"
    df[binned_metric_name] = pd.cut(df[metric], pd.IntervalIndex.from_breaks(bins, closed='left')).apply(lambda x: x.left)

    rel_err_heat = alt.Chart(df).transform_joinaggregate(
        total='count(*)',
        groupby=['bench']
    ).transform_calculate(
        pct='1/datum.total'
    ).mark_rect(invalid=None).encode(
        x=alt.X(f"{binned_metric_name}:N", title=xtitle,
                scale=alt.Scale(domain=domain), axis=alt.Axis(format=format, tickBand='extent', bandPosition=0, labelAngle=0)),
        y=alt.Y('bench', title=None),
        color=alt.Color('sum(pct):Q', legend=None)
        .scale(scheme='blues')
    )

    rel_err_text = rel_err_heat.transform_aggregate(
        my_sum_pct='sum(pct)',
        groupby=['bench', binned_metric_name]
    ).mark_text(baseline='middle', align='center').encode(
        text=alt.Text('my_sum_pct:Q', format=".1%", bandPosition=0.5),
        x2=alt.X2(f"{binned_metric_name}:N"),
        color=alt.condition(
            (alt.datum.my_sum_pct >= 0.4),
            alt.value('white'),
            alt.value('black')
        )
    )

    rel_err_diff = (rel_err_heat + rel_err_text).properties(title='', width=400, height=160)
    return rel_err_diff

def plot_pareto_diff_distr(df, results_path):
    df['rel_err_diff_log'] = np.log10(df['rel_err_diff'])
    # df_pred = df[(df['in_pred'] == 1) & (df['err_lt_target'] == True)]
    # df_pred_err_gt_target = df[(df['in_pred'] == 1) & (df['err_lt_target'] == False)]
    df_pred = df[df['in_pred'] == 1]
    row_height = 70
    row_width = 220
    row_spacing = 8

    rel_err_diff = subplot_metric_diff_distr(
        df,
        'rel_err_diff_log',
        [-5, -4, -2, -1, -0.5, 0, 0.02, 0.5, 1, 2, 4, 5],
        [-4, -2, -1, -0.5, 0, 0.02, 0.5, 1, 2, 4],
        'Ratio of relative error (log10)',
        '.2f'
    )

    energy_diff = subplot_metric_diff_distr(
        df,
        'energy_diff',
        [0.7, 0.95, 1, 1.05, 1.1, 1.2, 2, 25],
        [0.7, 0.95, 1, 1.05, 1.1, 1.2, 2],
        'Ratio of energy',
        '.0%'
    )

    lut_diff = subplot_metric_diff_distr(
        df,
        'lut_diff',
        [0.9, 0.95, 1, 1.05, 1.1, 1.2, 1.3, 2],
        [0.95, 1, 1.05, 1.1, 1.2, 1.3],
        'Ratio of LUT',
        '.0%'
    )

    ff_diff = subplot_metric_diff_distr(
        df,
        'ff_diff',
        [0.9, 0.95, 1, 1.05, 1.1, 1.2, 1.3, 2],
        [0.95, 1, 1.05, 1.1, 1.2, 1.3],
        'Ratio of FF',
        '.0%'
    )

    dsp_diff = subplot_metric_diff_distr(
        df,
        'dsp_diff',
        [0.5, 1, 1.05, 1.5, 2, 2.5, 3],
        [0.5, 1, 1.05, 1.5, 2, 2.5],
        'Ratio of DSP',
        '.0%'
    )

    both = (rel_err_diff & energy_diff & lut_diff & ff_diff & dsp_diff)
    # both = both.configure_range(
    #     category={'scheme': 'tableau20'}
    # )

    both.save(f'{results_path}_pareto_diff_distr.png', engine="altair_saver", scale_factor=2.0)
    save(both, f'{results_path}_pareto_diff_distr.svg')

    x = Popen(['/usr/bin/inkscape', f'{results_path}_pareto_diff_distr.svg',
               '--export-type=pdf'])
    try:
        waitForResponse(x)
    except OSError as e:
        return False

def waitForResponse(x):
    out, err = x.communicate()
    if x.returncode < 0:
        r = "Popen returncode: " + str(x.returncode)
        raise OSError(r)

if __name__ == "__main__":
    main(sys.argv[1:])