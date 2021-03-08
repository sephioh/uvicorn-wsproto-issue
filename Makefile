.PHONY: websockets wsproto batch-connections check-tasks


websockets:
	pipenv run uvicorn main:app --reload --ws websockets

wsproto:
	pipenv run uvicorn main:app --reload --ws wsproto

batch-connections:
	pipenv run python client.py batch

check-tasks:
	pipenv run python client.py get-ongoing-tasks
