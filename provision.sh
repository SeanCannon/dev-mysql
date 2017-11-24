#!/usr/bin/env bash

echo "### Granting permissions on the '${MYSQL_USER}' user so our Node app can talk to the MySQL server on the Docker container..."
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL ON *.* TO \"'${MYSQL_USER}'\"@\"%\" IDENTIFIED BY \"'${MYSQL_PASSWORD}'\" WITH GRANT OPTION; FLUSH PRIVILEGES;"
