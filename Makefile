lint:
	(\
		. venv/bin/activate; \
		venv/bin/black .; \
	)

test: lint
	( \
		. venv/bin/activate; \
		export TELEGRAM_BOT_TOKEN="TEST_TOKEN"; \
		export TELEGRAM_CHAT_ID="TEST_CHAT_ID"; \
		export TELEGRAM_TOPIC_ID="TEST_TOPIC_ID"; \
		python -m pytest; \
	)

install:
	( \
		python3 -m venv venv; \
		. venv/bin/activate; \
		pip install --upgrade pip; \
		pip install -r requirements.txt; \
	)

run:
	( \
		. venv/bin/activate; \
		gunicorn --chdir src main:app -k uvicorn.workers.UvicornWorker; \
	)
	

build-local:
	docker build . -t gpetb

commit-all:
ifdef m
	black .
	git add .
	git commit -m "${m}"
endif

push-all:
ifdef m
	black .
	git add .
	git commit -m "${m}"
	git push
endif
