FROM debian:bullseye

RUN apt-get update && apt-get install php php-fpm php-mysql wget -y

RUN mkdir -p /var/www/html

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/index.php


CMD ["php", "-S", "0.0.0.0:8080", "-t", "/var/www/html" ]
