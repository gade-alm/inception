#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ];
then
	cd /var/www/html && wp core download --allow-root
	wp config create	--allow-root \
											--dbname=$SQL_DATABASE \
											--dbuser=$SQL_USER \
											--dbpass=$SQL_PASSWORD \
											--dbhost=mariadb
	wp core install --url=${WORDPRESS_URL} --title=${WORDPRESS_TITLE} \
										--admin_user=${WORDPRESS_USER} \
										--admin_password=${WORDPRESS_PASSWORD} \
										--admin_email=${WORDPRESS_EMAIL} \
										--allow-root
	wp user create $WORDPRESS_NEW_USER $WORDPRESS_NEW_EMAIL --user_pass=$WORDPRESS_NEW_PASS --allow-root
	mkdir -p /run/php/
else
	echo "WP-CONFIG ALREADY CREATED!"
fi

exec /usr/sbin/php-fpm7.4 -F -R
