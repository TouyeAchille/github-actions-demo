install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
  
lint:
	pylint --disable=R,C hello.py

format:
	black *.py

test:
	pytest -vv --cov=myproj test_hello.py

all: install format lint test 
