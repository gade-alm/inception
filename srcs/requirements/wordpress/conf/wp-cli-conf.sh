sleep 5;

wp config create --allow-root --path=/var/www/wordpress	\
			--dbname=$WORDPRESS_DB \
			--dbuser=$WORDPRESS_USER
