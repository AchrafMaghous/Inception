all: clean build

build:
	mkdir -p /home/acmaghou/data/mysql
	mkdir -p /home/acmaghou/data/wordpress
	docker-compose -f srcs/docker-compose.yml up --build

stop:
	docker-compose -f srcs/docker-compose.yml down

up:
	docker-compose -f srcs/docker-compose.yml up

clean:
	rm -rf /home/acmaghou/data/mysql
	rm -rf /home/acmaghou/data/wordpress
	docker-compose -f srcs/docker-compose.yml down -v
.PHONY: all clean build stop up