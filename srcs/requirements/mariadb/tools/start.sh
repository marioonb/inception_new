service mysql start

#mysql -u root -e "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_MDP}';"
mysql -u root -e "CREATE USER 'mbelorge'@'%' IDENTIFIED BY 'motdepasse';"
mysql -u root -e "CREATE DATABASE wordpress;"
#mysql -u root -e "USE wordpress; GRANT ALL PRIVILEGES ON * TO '${DB_USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root -e "USE wordpress; GRANT ALL PRIVILEGES ON * TO 'mbelorge'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;"
mysql -u root -e "alter user 'root'@'localhost' identified by 'motdepasse'";

#SELECT user FROM mysql.user;