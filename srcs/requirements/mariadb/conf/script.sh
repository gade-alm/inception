service mariadb start;

sleep 2;

# mysql -u root -e "CREATE DATABASE IF NOT EXISTS $MARIADATABASE;"
# mysql -u root -e "CREATE USER IF NOT EXISTS $MARIAUSER IDENTIFIED BY $MARIAPASSWORD;"
# mysql -u root -e "GRANT ALL PRIVILENGES ON $MARIADATABASE TO $MARIAUSER IDENTIFIED BY $MARIAPASSWORD;"
# mysql -u root -e FLUSH PRIVILEGES; 
# service mariadb stop;

# exec mysqld_safe --bind-address=localhost
