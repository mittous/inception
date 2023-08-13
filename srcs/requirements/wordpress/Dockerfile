FROM debian:bullseye

RUN apt-get update && apt-get install php php-fpm7.4 php-mysql wget -y

RUN wget  https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/html/wordpress

COPY wp.sh .

RUN chmod +x wp.sh

RUN wp core download --allow-root --path=/var/www/html/wordpress

EXPOSE 9000

ENTRYPOINT ["./wp.sh" ]
