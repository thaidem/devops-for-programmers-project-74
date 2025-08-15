setup:
	docker compose run --rm app make setup

up-exist:
	docker compose up --abort-on-container-exist

start:
	docker compose up

down:
	docker compose down

test-app:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit

ci-build:
	docker compose -f docker-compose.yml build app

push:
	docker compose -f docker-compose.yml push app

up-development:
	docker run -p 8090:8080 -e NODE_ENV=development dementy/devops-for-programmers-project-74 make dev
