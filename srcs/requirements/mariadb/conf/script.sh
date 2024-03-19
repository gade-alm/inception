#!/bin/bash

if [ ! -d "/var/lib/mysql/$SQL_DATABASE" ];

then
    service mariadb start;
    sleep 3;

    mysql -u root -e "CREATE DATABASE \`${SQL_DATABASE}\`;"
    mysql -u root -e "CREATE USER \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
    mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO \`${SQL_USER}\`@'%';"
    mysql -u root -e "FLUSH PRIVILEGES";

    mysqladmin -u root password "$SQL_PASSWORD"
    mysqladmin -u root -p"$SQL_ROOT_PASSWORD" shutdown
else
    echo    "DATABASE ALREADY EXISTS!"
fi

exec mysqld_safe --bind-address=*
