FROM debian:buster

COPY ./config/conf.sql /tmp/conf.sql


RUN apt update -y;\
    apt install mariadb-server -y; service mysql start;\
    chown -R mysql:mysql /var/lib/mysql;\
    sed -i "s/#port/port/" /etc/mysql/mariadb.conf.d/50-server.cnf;\
    chmod 777 /var/run/mysqld;\
    sed -i "s/127.0.0.1/0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf;\
    mysql -u root < /tmp/conf.sql;

ENTRYPOINT [ "mysqld_safe" ]