FROM debian:buster

RUN apt-get update && apt-get upgrade -y \
	&& apt-get -y install mariadb-server

COPY ./config/conf.sql /usr/local/bin/

COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /usr/local/bin/conf.sql \
	&& chown -R mysql:mysql /var/lib/mysql;\
	mkdir -p /var/run/mysqld && \
    chmod 777 /var/run/mysqld &&\
    mysql -u root < /usr/local/bin/conf.sql;

ENTRYPOINT [ "mysqld_safe" ]