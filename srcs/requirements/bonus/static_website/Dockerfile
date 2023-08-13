FROM debian:bullseye

RUN apt update ; apt install -y nginx 

COPY  index.html /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]