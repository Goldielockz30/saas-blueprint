.PHONY: dev test fmt

dev:
	uvicorn backend.src.main:app --reload

test:
	pytest -q

fmt:
	python -m black backend tests


# Minimal example
