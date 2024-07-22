This is the code accompanying the article "Design-time methodology for optimizing mixed-precision CPU architectures on FPGA".

# Data analysis
To rerun the analysis:
```bash
./run_all.sh
```

# Results

In directory *clean* there are available csv files with analyzed data and visualizations.

*clean/pareto_refine_expanded_results.csv* contains the selected pareto-optimal configurations.

# Other relevant repositories
TAFFO: https://github.com/TAFFO-org/TAFFO/tree/jsa_co_design (benchmarks directory test/polybench-riscv)
Mantissa truncation simulator: https://github.com/TAFFO-org/LAMPSimulator 