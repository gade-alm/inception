FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y mariadb-server

COPY conf/script.sh /etc/script.sh

RUN chmod +x /etc/script.sh

EXPOSE 3306

ENTRYPOINT ["/bin/bash", "./etc/script.sh"]
