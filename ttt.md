redis:
      image: wp_redis:mine
      container_name: redis:mine
      build: ./bonus/redis
      ports:
      network:
        -network
      restart: on-failure



<!-- wp plugin install redis-cache --path=/var/www/html --allow-root -->
<!-- wp plugin activate redis-cache --path=/var/www/html --allow-root -->
<!-- wp redis enable --path=/var/www/html --allow-root -->
