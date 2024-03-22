FROM debian:bullseye

RUN apt-get update && apt-get upgrade -y && apt install -y nginx openssl curl vim

RUN mkdir -p /etc/nginx/ssl && mkdir -p /var/run/nginx

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -out /etc/nginx/ssl/ssl.crt \
	-keyout /etc/nginx/ssl/ssl.key \
	-subj "/C=PT/ST=Lisbon/L=Lisbon/ON=42Lisboa/CN=gade-alm.42.fr/"

COPY conf/default.conf /etc/nginx/conf.d/nginx.conf

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
