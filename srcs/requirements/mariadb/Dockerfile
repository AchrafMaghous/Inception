FROM debian:buster

COPY config/conf.sql conf.sql
RUN	apt-get	update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server \
	&& service mysql start \
	&& mysql < conf.sql

EXPOSE 3306

CMD ["mysqld", "--bind-address=0.0.0.0"]