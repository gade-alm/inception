FROM debian:bullseye

RUN apt-get update && apt-get -y upgrade -y  && apt-get install -y wget

RUN apt-get install -y php7.4-fpm

RUN wget https://wordpress.org/wordpress-6.4.2.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4.2.tar.gz 
RUN chown -R root:root /var/www/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY conf/wordpress.conf /var/www/wp-config.php

COPY conf/wp-cli-conf.sh /etc/wp-cli-conf.sh

RUN chmod +x /etc/wp-cli-conf.sh

RUN ./etc/wp-cli-conf.sh

EXPOSE 9000