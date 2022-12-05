#!/bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
sed -i -e 's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
wp core download --path="/var/www/html"  --allow-root
chown -R www-data:www-data /var/www/html
wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MYSQL_host --path=/var/www/html --allow-root --skip-check
wp core install --url=$url --title=$title --admin_user=$admin_user --admin_password=$admin_password --admin_email=$admin_email --allow-root --path=/var/www/html
wp user create achraf muteallfocus7@gmail.com --user_pass=$MYSQL_PASSWORD --role=author --allow-root --path=/var/www/html/
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F
