all: up

build:
	docker compose -f srcs/docker-compose.yml --env-file srcs/.env up -d

stop:
	docker compose -f srcs/docker-compose.yml stop

remove:
	docker compose -f srcs/docker-compose.yml down --rmi all --volumes

re: