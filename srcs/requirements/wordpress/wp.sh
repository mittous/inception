#!/bin/bash

sleep 10

wp config create \
    --dbname=my_database \
    --dbuser=mittous \
    --dbpass=123 \
    --dbhost=mariadb --allow-root --path=/var/www/html/wordpress

php-fpm7.3 -F