# This is command "launcher". Used to launch training, model, tests, etc... #

#################### PACKAGE ACTIONS ###################

reinstall_package:
	@pip uninstall -y greeenwashing || :
	@pip install -e .

run_preprocess:
	python -c 'from neet.interface.main import preprocess; preprocess(source_type="train"); preprocess(source_type="val")'

run_train:
	python -c 'from neet.interface.main import train; train()'

run_pred:
	python -c 'from neet.interface.main import pred; pred()'

run_evaluate:
	python -c 'from neet.interface.main import evaluate; evaluate()'

run_all: run_preprocess run_train run_pred run_evaluate

run_model: run_all

#################### TESTS ###################

test:
	@pytest -v tests
