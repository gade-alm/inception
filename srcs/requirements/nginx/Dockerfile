FROM debian:oldstable

RUN apt-get -y upgrade && apt-get update -y && apt-get -y install nginx && apt-get -y install openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/ssl.crt \
	-keyout /etc/nginx/ssl/ssl.key \
	-subj "/C=PT/ST=Lisbon/L=Lisbon/ON=42Lisboa/CN=gade-alm.42.fr/"

RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD [ "nginx", "-g", "daemon off;" ]