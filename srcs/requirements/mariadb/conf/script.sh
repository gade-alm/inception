#!/bin/bash
service mariadb start;

sleep 5;

mysql -u root -e "CREATE DATABASE \`${SQL_DATABASE}\`;"
mysql -u root -e "CREATE USER \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO \`${SQL_USER}\`@'%';"
mysql -u root -e "FLUSH PRIVILEGES";

mysqladmin -u root password "$SQL_PASSWORD"
mysqladmin -u root -p"$SQL_ROOT_PASSWORD" shutdown

exec mysqld_safe --bind-address=*
