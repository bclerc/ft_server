
#! /bin/bash
service mysql start
newUser='admin'
newDbPassword='admin'
newDb='wordpress'
host=localhost
 
/usr/bin/mysql -u root -p "CREATE DATABASE \`${newDb}\`;CREATE USER '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT USAGE ON *.* TO '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT ALL privileges ON \`${newDb}\`.*
TO '${newUser}'@'${host}';FLUSH PRIVILEGES;"

/usr/bin/mysql -u root -p