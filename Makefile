dc-dev := docker compose --env-file ./.env.local -p dev -f ./.docker/docker-compose.yml

.PHONY: dev
dev: .env.local
	APP_URL=[REPLACEME] $(dc-dev) up
