FROM debian:bullseye

RUN apt update ; apt install -y nginx 

COPY  ./srcs/requirements/bonus/static_website/index.html /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]