service mysql start


echo Salut 
#chown -R mysql:mysql /var/lib/mysql

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_WP_NAME;"
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$DB_MDP';"
echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_MDP' WITH GRANT OPTION;"
echo "FLUSH PRIVILEGES;"
mysqladmin -u root password $ROOT_PWD