FROM debian:buster

RUN	apt-get update && apt-get install -y adminer wget\
	&& mkdir -p /var/www/html/adminer\
	&& wget https://www.adminer.org/latest.php -O /var/www/html/adminer/index.php\
	&& sed -i  's/80/8080/g' /etc/apache2/ports.conf\
	&& a2enconf adminer && service apache2 restart

CMD ["apachectl", "-D", "FOREGROUND"]