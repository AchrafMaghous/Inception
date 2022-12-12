FROM debian:buster

RUN	apt-get update && apt-get install -y adminer\
	&& mkdir -p /var/www/html/adminer

WORKDIR /var/www/html/

COPY ./conf/adminer.conf /etc/adminer.conf