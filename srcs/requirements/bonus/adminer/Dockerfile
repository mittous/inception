FROM debian:bullseye

RUN apt-get update && apt-get install php php-fpm php-mysql wget -y

# RUN mkdir -p /var/www/html/my_adminer

# WORKDIR /my_adminer
RUN mkdir -p /var/www/html

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/index.php

# RUN chown -R www-data:www-data /var/www/html/adminer.php
# RUN chmod 755 /var/www/html/adminer.php

CMD ["php", "-S", "0.0.0.0:8081", "-t", "/var/www/html" ]
