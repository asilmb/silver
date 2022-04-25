up: docker-up
build: docker-up-build
down: docker-down
restart: down up

docker-up:
	docker-compose up -d

docker-up-build:
	docker-compose up -d --build

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-stop:
	docker-compose stop

platform-composer-install:
	docker-compose exec -T php sh -c 'composer install --no-interaction'

platform-composer-update:
	docker-compose exec -T php sh -c 'composer update --no-interaction'