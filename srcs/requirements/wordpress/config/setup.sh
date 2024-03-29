#!/bin/sh

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
sed -i -e 's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
wp core download --path="/var/www/html"  --allow-root
chown -R www-data:www-data /var/www/html
wp config create --dbname=$MYSQL_DATABASE --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=$MYSQL_host --path=/var/www/html --allow-root --skip-check
wp core install --url=$DOMAIN_NAME --title=$TITLE --admin_user=$WP_ADMIN --admin_password=$WP_PASS --admin_email=$WP_EMAIL --allow-root --path=/var/www/html
wp user create achraf muteallfocus7@gmail.com --user_pass=$MYSQL_PASSWORD --role=author --allow-root --path=/var/www/html/
echo "define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
define('WP_REDIS_DISABLED', false);" >> /var/www/html/wp-config.php
service php7.3-fpm start
wp plugin install redis-cache --path=/var/www/html --allow-root
wp plugin activate redis-cache --path=/var/www/html --allow-root
echo "\$redis_server = array(
     'host'     => '127.0.0.1',
     'port'     => 6379,
     'auth'     => '12345',
     'database' => 0,
 );" >> /var/www/html/wp-config.php
wp redis enable --path=/var/www/html --allow-root
service php7.3-fpm stop
php-fpm7.3 -F
