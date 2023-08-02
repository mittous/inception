FROM debian:buster

RUN apt update ; apt install -y nginx ;

RUN apt-get update && apt-get install -y openssl ;

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/imitous_private_key.key \
    -out /etc/ssl/certs/imittous_self_signed_Certif.crt \
    -subj "/CN=imittous.42.fr" ;

RUN chmod +x /etc/ssl/private/imitous_private_key.key ;
RUN chmod +x /etc/ssl/certs/imittous_self_signed_Certif.crt ;

RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/

RUN mkdir -p /var/www/html/imittous; 
RUN echo "imittous" > /var/www/html/imittous/index.html 

RUN chmod +x /var/www/html/imittous/index.html
RUN chmod -R 755 /var/www/html/imittous
CMD ["nginx", "-g", "daemon off;"]

# COPY index.html /var/www/html