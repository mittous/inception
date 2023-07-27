FROM debian:buster

RUN apt update ; apt install -y nginx ;

RUN apt-get update && apt-get install -y openssl ;

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/imitous_private_key.key \
    -out /etc/ssl/certs/imittous_self_signed_Certif.crt \
    -subj "/CN=imittous.42.fr" ;
RUN rm /etc/nginx/nginx.conf
COPY Nginx.conf /etc/nginx/

# COPY index.html /var/www/html