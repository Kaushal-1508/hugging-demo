install:
	python3 -m pip install --upgrade pip
	python3 -m pip install -r requirements.txt
test:
	python -m pytest -vv mlop.py
format:
	black *.py
lint:
	pylint --disable=R,C *.py
all: install lint test
