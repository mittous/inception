#!/bin/bash

sleep 10

sed -i -e 's/listen =.*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
cd /var/www/html/wordpress


cat wp-config-sample.php > wp-config.php
# wp config create \
#     --dbname=my_database \
#     --dbuser=mittous \
#     --dbpass=123 \
#     --dbhost=mariadb --allow-root --path=/var/www/html/wordpress
# sed -i "s/define('DB_NAME', 'database_name_here');/define('DB_NAME', 'my_database');/g" /var/www/html/wordpress/wp-config.php
# sed -i "s/define('DB_USER', 'username_here');/define('DB_USER', 'mittous');/g" /var/www/html/wordpress/wp-config.php
# sed -i "s/define('DB_PASSWORD', 'password_here');/define('DB_PASSWORD', '123');/g" /var/www/html/wordpress/wp-config.php
# sed -i "s/define('DB_HOST', 'localhost');/define('DB_HOST', 'mariadb');/g" /var/www/html/wordpress/wp-config.php

# sed -i "s/define('DB_NAME', 'database_name_here');/define('DB_NAME', 'my_database');/" /var/www/html/wordpress/wp-config-sample.php
# sed -i "s/define('DB_USER', 'username_here');/define('DB_USER', 'mittous');/" /var/www/html/wordpress/wp-config.php
# sed -i "s/define('DB_PASSWORD', 'password_here');/define('DB_PASSWORD', '123');/" /var/www/html/wordpress/wp-config.php
# sed -i "s/define('DB_HOST', 'localhost');/define('DB_HOST', 'mariadb');/" /var/www/html/wordpress/wp-config.php

# chown -R www-data:www-data /var/www/html/wordpress
# chmod -R 755 /var/www/html/wordpress

wp config set DB_NAME my_database --allow-root --path=/var/www/html/wordpress
wp config set DB_USER mittous --allow-root --path=/var/www/html/wordpress
wp config set DB_PASSWORD 123 --allow-root --path=/var/www/html/wordpress
wp config set DB_HOST mariadb --allow-root --path=/var/www/html/wordpress

# wp core install \
#     --url=localhost \
#     --title=ft_server \
#     --admin_user=mittous \
#     --admin_password=123 \
#     --allow-root --path=/var/www/html/wordpress

wp core install --url=localhost --title=ft_server --admin_user=mittous --admin_password=123 --admin_email=mit.tous@gmail.com --skip-email --allow-root --path=/var/www/html/wordpress

wp user create wa7ed wa7ed@gmail.com --role=editor --user_pass=masso9ekch --allow-root --path=/var/www/html/wordpress

mkdir -p /run/php

php-fpm7.3 -F
