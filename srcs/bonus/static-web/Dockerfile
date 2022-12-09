FROM debian:buster

RUN	apt-get update && apt-get install -y nginx\
	&& sed -i 's/80/81' /etc/nginx/sites-available/default

COPY ./src/simple.html /var/www/html/index.html

CMD ["nginx", "-g" , "daemon off;"]