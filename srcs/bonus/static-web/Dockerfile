FROM debian:buster

RUN	apt-get update && apt-get install -y nginx

COPY ./src/simple.html /var/www/html/index.php

CMD ["nginx", "-g" , "daemon off;"]