#!/bin/bash

wget https://fr.wordpress.org/latest-fr_FR.tar.gz

# extration avec -C pour dire dans quel dossier mettre les fichiers wordpress
tar -xzf latest-fr_FR.tar.gz -C /var/www
rm latest-fr_FR.tar.gz

mv index.php /var/www/wordpress/index.php
mv wp-config.php /var/www/wordpress/wp-config.php
chown -R www-data:www-data /var/www/wordpress
#wp core download --allow-root
#wp core config --dbname="$DB_NAME" --dbuser="$DB_USER" --dbpass="$DB_MDP" --dbhost="$DB_HOST":"$DB_PORT" --dbprefix='wp_' --allow-root
#wp core install --url="$WP_USER.42.fr" --titl="$WP_ADMIN inception website" --admin_user="$WP_ADMIN" --admin_password="$WP_MDP_ADMIN" --admin_email="$WP_ADMIN@student.42.fr" --allow-root
#wp user create $WP_USER "$WP_USER"@randomuser.com --role='subscriber' --user_pass="$WP_MDP_USER" --allow-root
#wp option update comment_registration 1 --allow-root

exec /usr/sbin/php-fpm7.3 -F
#service php7.3-fpm start