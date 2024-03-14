if [ ! -f "/var/www/html/wp-config.php" ]; then
	cd /var/www/html && wp core download --allow-root &&
	wp config create --allow-root --path=/var/www/wordpress	\
			--dbname=$SQL_DATABASE \
			--dbuser=$SQL_USER \
			--dbpass=$SQL_PASSWORD \
			--dbhost=mariadb
			&&
	wp core install --url=${WORDPRESS_URL}/wordpress --title=${WORDPRESS_TITLE} --admin-user=${WORDPRESS_USER} --admin-password=${WORDPRESS_PASSWORD} --admin-email=${WORDPRESS_EMAIL} --allow-root
else
	echo "THE DB ALREADY EXISTS!"
	
fi
