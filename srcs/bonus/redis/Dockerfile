FROM debian:buster

RUN apt-get update && apt-get install -y redis\
	&& sed -i 's/# bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis/redis.conf\
	&& service redis start;

ENTRYPOINT redis-server --protected-mode no