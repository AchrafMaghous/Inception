FROM debian:buster

COPY ./config/conf.sql /tmp/conf.sql

COPY ./config/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN apt update -y;\
    apt install mariadb-server -y; service mysql start;\
    chown -R mysql:mysql /var/lib/mysql;\
    chmod 777 /var/run/mysqld;\
    mysql -u root < /tmp/conf.sql; 

ENTRYPOINT [ "mysqld_safe" ]