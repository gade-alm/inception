FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y mariadb-server mariadb-client

COPY script.sh /etc/script.sh

RUN chmod +x /etc/script.sh

RUN ./etc/script.sh

EXPOSE 3306