FROM debian:buster

RUN apt-get update && apt-get upgrade -y \
	&& apt-get install mariadb-server \
	&& mariadb-client && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/run/mysqld \
&& chown -R mysql:mysql /var/run/mysqld \
&& chmod 777 /var/run/mysqld

EXPOSE 3306

COPY ./config/conf.sql /usr/local/bin/

RUN chmod +x /usr/local/bin/conf.sql

CMD [ "mysqld" ]