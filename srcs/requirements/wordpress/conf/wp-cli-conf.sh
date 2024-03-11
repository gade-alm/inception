sleep 2;

wp config create --allow-root --path=/var/www/wordpress	\
			--dbname=$WORDPRESS_DATABASE \
			--dbuser=$WORDPRESS_USER \
			--dbpass=$WORDPRESS_PASSWORD \
