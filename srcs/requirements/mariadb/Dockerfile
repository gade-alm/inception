FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt-get install mariadb-server -y && apt-get install systemd -y

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/script.sh /etc/script.sh

RUN chmod +x /etc/script.sh

EXPOSE 3306

RUN /etc/script.sh