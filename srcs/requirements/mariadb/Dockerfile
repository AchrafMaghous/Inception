FROM debian:buster

COPY config/conf.sql my.sql
RUN	apt-get	update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server \
	&& service mysql start \
	&& mysql < config/conf.sql

EXPOSE 3306

CMD ["mysqld_safe"]