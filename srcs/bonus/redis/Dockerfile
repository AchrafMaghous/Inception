FROM debian:buster

RUN apt-get update && apt-get install -y redis-server\
	sed -i "s/127.0.0.1/0.0.0.0/" /etc/redis/redis.conf;

ENTRYPOINT [ "./redis-server --protected-mode no" ]