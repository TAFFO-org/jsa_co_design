This is the code accompanying the article "Design-time methodology for optimizing mixed-precision CPU architectures on FPGA".

# Data analysis
To rerun the analysis:
```bash
./run_all.sh
```

# Results

In directory *clean* there are available csv files with analyzed data and visualizations.

*clean/pareto_refine_expanded_results.csv* contains the selected pareto-optimal configurations.

# Description of the directories

- areaData - contains the area characteristics of the CPU designs
- build - contains the compiled files for the polybench benchmarks
- clean - contains the results of the analysis (data and charts)
- results_simulation - contains the results of running the gate-level simulation for the benchmarks from the build directory

# Other relevant repositories
TAFFO: https://github.com/TAFFO-org/TAFFO/tree/jsa_co_design (benchmarks directory test/polybench-riscv)
Mantissa truncation simulator: https://github.com/TAFFO-org/LAMPSimulator 