FROM debian:bullseye

RUN apt-get update && apt-get -y upgrade -y  && apt-get install -y curl wget
RUN  apt install -y curl php-fpm php-mysql php-curl php-gd php-mbstring php-xml \
	php-xmlrpc php-soap php-intl php-zip mariadb-client

RUN wget https://wordpress.org/wordpress-6.4.2.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4.2.tar.gz 

RUN chmod -R 755 /var/www/wordpress
RUN chown -R www-data:www-data /var/www/wordpress
RUN sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 9000|g' /etc/php/7.4/fpm/pool.d/www.conf

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php

COPY conf/wp-cli-conf.sh /etc/wp-cli-conf.sh

RUN chmod +x /etc/wp-cli-conf.sh

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["/etc/wp-cli-conf.sh"]


