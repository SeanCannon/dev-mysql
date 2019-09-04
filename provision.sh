#!/usr/bin/env bash

echo "### Granting permissions on the '${MYSQL_USER}' user so our Node app can talk to the MySQL server on the Docker container..."
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "
SET GLOBAL local_infile = true;
CREATE USER '${!MYSQL_USER}'@'%' IDENTIFIED BY '${!MYSQL_PASSWORD}';
GRANT ALL ON *.* TO '${!MYSQL_USER}'@'%' WITH GRANT OPTION;
ALTER USER root IDENTIFIED WITH mysql_native_password BY '${!MYSQL_ROOT_PASSWORD}';
ALTER USER '${!MYSQL_USER}'@'%' IDENTIFIED WITH mysql_native_password BY '${!MYSQL_PASSWORD}';
FLUSH PRIVILEGES;"
