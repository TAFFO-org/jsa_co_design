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

pd.options.display.max_columns = None

def main(argv):
    in_dir = os.path.abspath(argv[0])
    build_dir = f"{in_dir}/results_simulation"
    area_path = f"{in_dir}/areaData/areaResults.csv"
    prebuild_dir = f"{in_dir}/build"
    raw_sim_dir = f"{in_dir}/results_simulation"
    out_dir = os.path.abspath(argv[1])
    results_path = f"{out_dir}"

    build_dir2 = f"{in_dir}/build"
    stats_summary2 = pd.read_csv(f'{build_dir2}/summary/stats_summary.csv')
    sim_results = stats_summary2[['bench', 'scale', 'mode', 'mantissa', 'float_type',
                                  'rel_err', 'output_size', 'float_op_count_default', 'kernel_float_op_count_default', 'var_max', 'compile_time']]

    float_ops_distr = stats_summary2.loc[
        (stats_summary2['float_type'] == 'float32') & (stats_summary2['scale'] == 1),
        ['dyn_fdiv', 'dyn_fmul', 'dyn_fadd', 'dyn_fsub']
    ].agg('sum')
    kernel_float_ops_distr = stats_summary2.loc[
        (stats_summary2['float_type'] == 'float32') & (stats_summary2['scale'] == 1),
        ['kernel_dyn_fdiv', 'kernel_dyn_fmul', 'kernel_dyn_fadd', 'kernel_dyn_fsub']
    ].agg('sum')
    print(float_ops_distr)
    print(float_ops_distr / float_ops_distr.agg('sum'))
    print(kernel_float_ops_distr)
    print(kernel_float_ops_distr / kernel_float_ops_distr.agg('sum'))


    double_data = read_double_output(prebuild_dir)
    print(double_data)
    raw_data = read_sim_output(raw_sim_dir)
    # print(raw_data)

    for index, row in raw_data.iterrows():
        # print(row['bench'])
        print(row['bench'], row['scale'], row['arch'])
        double_output = double_data[(double_data['bench'] == row['bench']) &
                                    (double_data['scale'] == row['scale'])].iloc[0]['data']
        # sim_output = raw_data[(raw_data['bench'] == row['bench']) &
        #                       (raw_data['hw_sw_config'] == row['hw_sw_config'])].iloc[0]['data']
        sim_output = row['data']
        error_double = ComputeDifference(sim_output, double_output).iloc[0]['rel_err']
        # print(row['bench'], row['scale'], row['arch'])
        # print("simulated")
        # print(sim_output)
        # print("double")
        # print(double_output)
        # joined_data.iloc[index]['rel_err_double'] = error_double
        # print(error_double)
        raw_data.at[index, 'rel_err_double'] = error_double
        # raw_data.at[index, 'float_op_count_default'] = stats_summary2[stats_summary2['bench'] == row['bench']].iloc[0]['float_op_count_default']

    # print(raw_data)
    stats_summary = merge_sim_run(sim_results, raw_data)

    area_data = read_area(area_path)
    stats_summary = stats_summary.join(area_data.set_index('arch'), on='arch')

    stats_summary.drop(columns=['data'], inplace=True)
    # print(stats_summary)
    stats_summary.to_csv(f"{out_dir}/full_sim_summary.csv", index=False)


def merge_sim_run(sim_results, run_results):
    sim_results['float_type_equivalent'] = sim_results['float_type']
    run_results['float_type_equivalent'] = run_results['fpu_conf']
    run_results.loc[run_results['float_type_equivalent'] == 'noFPU', 'float_type_equivalent'] = 'float32'
    result = run_results.merge(sim_results, how='left', validate='m:m',
                               left_on=['bench', 'scale', 'float_type_equivalent', 'taffo_conf'],
                               right_on=['bench', 'scale', 'float_type_equivalent', 'mode'])
    result.rename(columns={
        'rel_err_double': 'rel_err_run',
        'rel_err': 'rel_err_sim',
    }, inplace=True)
    result.drop(columns=['float_type', 'mode'], inplace=True)
    result.reset_index()
    return result

def parse_hw_sw_config_string(hw_conf_string):
    arch = re.search("results_(.*?)_.*?", hw_conf_string).group(1)
    # taffo_conf = re.search(".*?_([^_]*?)$", hw_conf_string).group(1)
    fpu_conf = re.search("results_.*?_([^_]*?)$", hw_conf_string).group(1)
    hw_sw_config = re.search("results_(.*?)", hw_conf_string).group(1)
    hw_float_support = int(not (fpu_conf == 'noFPU'))
    hw_fixed_support = int('Zm' in arch)
    row = {
        'fpu_conf': fpu_conf,
        'arch': f"{fpu_conf}_{arch}",
        # 'hw_sw_config': hw_sw_config,
        'hw_float_support': hw_float_support,
        'hw_fixed_support': hw_fixed_support,
    }
    row_df = pd.DataFrame([row])
    return row_df

def parse_bench_config_string(bench_conf_string):
    result = re.search("(?:dynamicPower\-executionTime|outputVariables|simulationTime)_(\d+?)_([^_]*?)_([^_]*?)\.txt",
                       bench_conf_string)
    arch = result.group(3)
    taffo_conf = result.group(2)
    scale = int(result.group(1))
    row = {
        # 'arch': arch,
        'taffo_conf': taffo_conf,
        'scale': scale,
    }
    row_df = pd.DataFrame([row])
    return row_df


def read_sim_output(data_path):
    raw_data_df = pd.DataFrame()
    power_time_df = pd.DataFrame()
    sim_time_df = pd.DataFrame()
    dir_list = listdir(data_path)
    for hw_conf_string in dir_list:
        hw_sw_conf = parse_hw_sw_config_string(hw_conf_string)
        conf_dir = f"{data_path}/{hw_conf_string}"
        confs_list = listdir(conf_dir)
        for bench_conf_string in confs_list:
            bench_conf = parse_bench_config_string(bench_conf_string)
            bench_conf = bench_conf.join(hw_sw_conf)
            file_path = f'{data_path}/{hw_conf_string}/{bench_conf_string}'
            if bench_conf_string.startswith('outputVariables'):
                res = read_raw_data(file_path, bench_conf)
                raw_data_df = pd.concat([raw_data_df, res], ignore_index=True)
            if bench_conf_string.startswith('dynamicPower-executionTime'):
                res = read_metric(file_path, bench_conf)
                power_time_df = pd.concat([power_time_df, res], ignore_index=True)
            if bench_conf_string.startswith('simulationTime'):
                res = read_simulation_time(file_path, bench_conf)
                sim_time_df = pd.concat([sim_time_df, res], ignore_index=True)
    data = raw_data_df.merge(power_time_df, how='left')
    data = data.merge(sim_time_df, how='left')
    data['energy'] = data['time'] * data['dynamic_pwr']
    data['hw_sw_config'] = data['arch'] + "_" + data['taffo_conf']
    return data

def read_raw_data(raw_file_path, bench_conf):
    data = pd.DataFrame()
    with open(raw_file_path) as f:
        for line in f:
            line = line.strip()
            parts = line.split(" ")
            if len(parts) == 0: continue
            bench = parts[0]
            regular_data = np.array([parse_hex_float(n) for n in parts[1:]])
            data_row1 = {
                'bench': bench,
                'data': regular_data
            }
            row_df = pd.DataFrame([data_row1]).merge(bench_conf, how='cross')
            data = pd.concat([data, row_df], ignore_index=True)
    return data

def parse_hex_float(hex_string):
    clean = hex_string.removeprefix('0x')
    return struct.unpack('!f', bytes.fromhex(clean))[0]

def read_double_output(prebuild_dir):
    data = pd.DataFrame()
    double_configs_file_path = f'{prebuild_dir}/double_configurations.csv'
    double_configs = pd.read_csv(double_configs_file_path, sep=",",
                                 names=["bench", "input_size", "scaling", "job_file_base"])
    for index, config in double_configs.iterrows():
        bench = config['bench']
        input_size = config['input_size']
        scaling = int(config['scaling'])
        job_file_base = config['job_file_base']
        bench_results_path = f"{job_file_base}.csv"
        regular_data = np.fromiter(ReadValues(bench_results_path), dtype=object, count=-1)
        data_row1 = {
            'bench': bench,
            'data': regular_data,
            'scale': scaling
        }
        row_df = pd.DataFrame([data_row1])
        data = pd.concat([data, row_df], ignore_index=True)
    return data

def ReadValues(filename):
    with open(filename, 'r') as f:
        l = f.readline()
        while l != '':
            for v in l.strip().split():
                if v != '':
                    yield v
            l = f.readline()

def ComputeDifference(taffo_values, float_values):
    abs_err = []
    rel_err = []
    max_abs = 0
    max_rel = 0
    for float_value,taffo_value in zip(float_values, taffo_values):
        float_value = float(float_value)
        taffo_value = float(taffo_value)
        if (float_value == 0 or taffo_value == 0):
            continue
        tmp = abs(taffo_value-float_value)
        abs_err.append(tmp)
        rel_err.append(tmp/abs(float_value))
        max_abs = max(max_abs, tmp)
        max_rel = max(max_rel, tmp/abs(float_value))
    abs_err = np.mean(abs_err)
    rel_err = np.mean(rel_err)
    e_perc_order = np.ceil(np.log10(float(rel_err)))
    if np.isinf(e_perc_order):
        e_perc_order = -25 # min error
    e_abs_order = np.ceil(np.log10(float(abs_err)))

    row = {
        'e_perc_order': e_perc_order,
        'e_abs_order': e_abs_order,
        'output_size': float_values.size,
        "rel_err": rel_err,
        "max_rel": max_rel,
        "abs_err": abs_err,
        "max_abs": max_abs
    }
    row_df = pd.DataFrame([row])
    return row_df

def read_area(area_path):
    df = pd.read_csv(area_path,
                     header=0,
                     sep=',',
                     skipinitialspace=True,
                     names=['name1', 'name2', 'lut', 'ff', 'dsp', 'arch'],
                     dtype={'lut': np.float64, 'ff': np.float64, 'dsp': np.float64, 'arch': str})
    df.drop(columns=['name1', 'name2'], inplace=True)
    return df

def read_error(data_path):
    return pd.read_csv(data_path,
                       header=0,
                       sep='\t',
                       skipinitialspace=True,
                       names=['rel_err', 'rel_sq_err'],
                       dtype={'rel_err': np.float64, 'rel_sq_err': np.float64})

def read_metric(data_path, bench_conf):
    df = pd.read_csv(data_path,
                     header=None,
                     sep='|',
                     skipinitialspace=True,
                     names=['bench',
                            'name1',
                            'dynamic_pwr',
                            'time']
                     )
    df.drop(columns=['name1'], inplace=True)
    df['dynamic_pwr'] = df['dynamic_pwr'].astype(np.float64)
    df['time'] = df['time'].str.extract(r'\(DURATION (\d+)\)').astype(np.float64)
    df['bench'] = df['bench'].str.strip()
    df = df.merge(bench_conf, how='cross')
    return df

def read_simulation_time(data_path, bench_conf):
    df = pd.read_csv(data_path,
                     header=None,
                     sep=' ',
                     skipinitialspace=True,
                     names=['bench',
                            'sim_time']
                     )
    df['sim_time'] = df['sim_time'].astype(np.float64)
    df['bench'] = df['bench'].str.strip()
    df = df.merge(bench_conf, how='cross')
    return df

def waitForResponse(x):
    out, err = x.communicate()
    if x.returncode < 0:
        r = "Popen returncode: " + str(x.returncode)
        raise OSError(r)

if __name__ == "__main__":
    main(sys.argv[1:])