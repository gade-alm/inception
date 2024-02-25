all: up

build:
	docker compose -f srcs/docker-compose.yml up -d

stop:
	docker compose -f srcs/docker-compose.yml stop

remove:
	docker compose -f srcs/docker-compose.yml down --rmi all --volumes

re: