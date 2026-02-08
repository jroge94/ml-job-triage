.PHONY: setup test lint type train predict clean


// Install dependencies for development
setup:
	python -m pip install -U pip
	pip install -e ".[dev]"

// Run tests

test:
	pytest -q --disable-warnings --maxfail=1

lint:
	ruff check .

type:
	mypy src/jobtriage || true

train:
	jobtriage pipeline --in examples/sample_logs --out artifacts --train

predict:
	jobtriage pipeline --in examples/sample_logs --out artifacts --predict

clean:
	rm -rf artifacts/*
	touch artifacts/.gitkeep

