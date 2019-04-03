VENV_NAME?=$$HOME/.venv/python3_test_env
USERNAME?=duynguyenhoang
hello:
	@echo Hello Make

venv:
	@echo "Create new virtual environment"
	@test -d $(VENV_NAME) || virtualenv -p python3 $(VENV_NAME)

	. $(VENV_NAME)/bin/activate; \
	which python; \
	which pip; \
	pip install -Ur requirements.txt

run: venv
	. $(VENV_NAME)/bin/activate; \
	python github_user.py $(USERNAME)
