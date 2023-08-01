#!/bin/bash
sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS my_database;"
mysql -e "CREATE USER IF NOT EXISTS 'mittous'@'%' IDENTIFIED BY '123';"
mysql -e "GRANT ALL PRIVILEGES ON my_database.* to 'mittous'@'%';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin -u root shutdown

mysqld_safe