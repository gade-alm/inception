all: build

build:
	docker compose -f srcs/docker-compose.yml --env-file srcs/.env up -d --build

stop:
	docker compose -f srcs/docker-compose.yml stop

remove:
	docker compose -f srcs/docker-compose.yml down --rmi all --volumes

#only if need full reset
fullremove:
	docker system prune -a --volumes --force
	docker compose -f srcs/docker-compose.yml down --rmi all --volumes

re: