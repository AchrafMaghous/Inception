all: clean build

build:
	mkdir -p /home/achraf/data/mysql
	mkdir -p /home/achraf/data/wordpress
	docker-compose -f srcs/docker-compose.yml up --build

stop:
	docker-compose -f srcs/docker-compose.yml down

up:
	docker-compose -f srcs/docker-compose.yml up

clean:
	rm -rf /home/achraf/data/mysql
	rm -rf /home/achraf/data/wordpress
	docker-compose -f srcs/docker-compose.yml down -v
.PHONY: all clean build stop up