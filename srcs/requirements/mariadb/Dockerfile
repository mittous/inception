FROM debian:buster

RUN apt update && apt install -y mariadb-server

COPY db.sh .

RUN chmod +x db.sh

ENTRYPOINT ["./db.sh" ]