FROM debian:bullseye

RUN apt-get update && apt-get -y upgrade -y  && apt-get install -y wget

RUN apt-get install -y php7.4-fpm

RUN wget https://wordpress.org/wordpress-6.4.2.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4.2.tar.gz 
RUN chown -R root:root /var/www/wordpress

COPY conf/wordpress.conf /var/www/wp-config.php

EXPOSE 9000