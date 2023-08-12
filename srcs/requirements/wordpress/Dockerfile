# FROM debian:buster

# # Install PHP-FPM and other dependencies
# RUN apt-get update && apt-get install php php-fpm php-mysql wget -y

# # Install wp-cli
# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -O /usr/local/bin/wp
# RUN chmod +x /usr/local/bin/wp

# # Set the working directory
# WORKDIR /var/www/html/wordpress

# # Download WordPress using wp-cli
# RUN wp core download --allow-root

# # Copy the setup script to the container
# COPY wp.sh /wp.sh

# # Give execute permission to the script
# RUN chmod +x /wp.sh
# RUN mkdir -p /run/php
# RUN chown -R www-data:www-data /run/php
# # Expose port 9000 (if you're planning to use PHP-FPM with Nginx, for example)
# EXPOSE 9000

# # Set the entrypoint to run the WordPress setup script
# ENTRYPOINT ["/wp.sh"]







FROM debian:buster

RUN apt-get update && apt-get install php php-fpm php-mysql wget -y

RUN wget  https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/html/wordpress

COPY wp.sh .

RUN chmod +x wp.sh

RUN wp core download --allow-root --path=/var/www/html/wordpress

EXPOSE 9000

ENTRYPOINT ["./wp.sh" ]
