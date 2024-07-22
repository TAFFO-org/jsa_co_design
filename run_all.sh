python3 ./analyze.py ./build
python3 ./analyze_results.py ./build/
python3 ./parse_data.py . ./clean
python3 ./predict_model.py .
python3 ./calc_derivatives.py .
python3 ./eval_predict.py .
python3 ./plot_pareto_predict.py .
