FROM debian:buster

COPY config/conf.sql conf.sql
RUN	apt-get	update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server \
	&& service mysql start \
	&& mysql < conf.sql

EXPOSE 3306

COPY ./tools/mariadb.sh /usr/local/bin/
COPY ./conf/wordpress.sql /usr/local/bin/
RUN chmod +x /usr/local/bin/mariadb.sh
RUN chmod +x /usr/local/bin/wordpress.sql

ENTRYPOINT [ "/usr/local/bin/mariadb.sh" ]

#Command to launch mariadb and enable the database to listen globally - also can be put on mysqldump.cnf file
CMD ["mysqld", "--bind-address=0.0.0.0"]