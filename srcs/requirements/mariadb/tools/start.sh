service mysql start

mysql -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_MPD}';"
mysql -u root -e "CREATE DATABASE '${DB_NAME}';"
mysql -u root -e "USE '${DB_NAME}'; GRANT ALL PRIVILEGES ON * TO '${WP_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root -e "alter user 'root'@'localhost' identified by 'password'";