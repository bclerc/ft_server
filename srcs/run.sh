
#! /bin/bash
echo "Launching Mariadb service ..."
service mysql start
newUser='admin'
newDbPassword='admin'
newDb='wordpress'
host=localhost
 
echo 'Set autoindex'
sed -i 's/INDEX/'"$autoindex"'/g' /etc/nginx/conf.d/default.conf
echo 'Create user and wordpress database'
commands="CREATE DATABASE \`${newDb}\`;CREATE USER '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT USAGE ON *.* TO '${newUser}'@'${host}';GRANT ALL privileges ON \`${newDb}\`.*
TO '${newUser}'@'${host}';FLUSH PRIVILEGES;" || echo 'Database already set'

echo "${commands}" | /usr/bin/mysql -u root
echo "Launch php service"
service php7.3-fpm start
echo "PHP is running ..."
echo "Running ..."
nginx -g 'daemon off;'