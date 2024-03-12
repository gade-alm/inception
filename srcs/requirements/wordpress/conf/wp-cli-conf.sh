wp core download --allow-root

wp config create --allow-root --path=/var/www/wordpress	\
			--dbname=$SQL_DATABASE \
			--dbuser=$SQL_USER \
			--dbpass=$SQL_PASSWORD \
