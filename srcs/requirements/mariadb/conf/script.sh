service mysql start;

mysql -e "CREATE DATABASE IF NOT EXISTS \'$INCEPTIONDB\';"

mysql -e "CREATE USER IF NOT EXISTS \'$MYSQL_USER\'@\'localhost\' IDENTIFIED BY \'$MYSQL_PASSWORD\';"

mysql -e "GRANT ALL PRIVILEGES ON \'$INCEPTIONDB\' TO \'$MYSQL_USER\'@\'localhost\' IDENTIFIED BY \'$MYSQL_PASSWORD\';"

mysql -e "ALTER USER \'root\'@\'localhost\' IDENTIFIED BY \'${SQL_ROOT_PASSWORD}\';"

mysql -e "FLUSH PRIVILEGES";

mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

exec mysqld_safe