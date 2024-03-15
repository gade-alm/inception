#!/bin/bash	
	wp cli update --yes --allow-root
	wp core download --allow-root
	wp config create	--allow-root \
											--dbname=$SQL_DATABASE \
											--dbuser=$SQL_USER \
											--dbpass=$SQL_PASSWORD \
											--dbhost=mariadb:3306
	wp core install --url=${WORDPRESS_URL}/wordpress --title=${WORDPRESS_TITLE} --admin-user=${WORDPRESS_USER} --admin-password=${WORDPRESS_PASSWORD} --admin-email=${WORDPRESS_EMAIL} --allow-root
	mkdir -p /run/php/
	exec /usr/sbin/php-fpm7.4 -F -R

