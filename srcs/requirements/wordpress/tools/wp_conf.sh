#!/bin/bash


#wp core download --allow-root
#wp core config --dbname="$DB_NAME" --dbuser="$DB_USER" --dbpass="$DB_MDP" --dbhost="$DB_HOST":"$DB_PORT" --dbprefix='wp_' --allow-root
#wp core install --url="$WP_USER.42.fr" --titl="$WP_ADMIN inception website" --admin_user="$WP_ADMIN" --admin_password="$WP_MDP_ADMIN" --admin_email="$WP_ADMIN@student.42.fr" --allow-root
#wp user create $WP_USER "$WP_USER"@randomuser.com --role='subscriber' --user_pass="$WP_MDP_USER" --allow-root
#wp option update comment_registration 1 --allow-root

exec /usr/sbin/php-fpm7.3 -F
#service php7.3-fpm start