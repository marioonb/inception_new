#!/bin/bash

wget https://fr.wordpress.org/latest-fr_FR.tar.gz

# extration avec -C pour dire dans quel dossier mettre les fichiers wordpress
tar -xzf latest-fr_FR.tar.gz -C /var/www

# y ajouter mes configurations 
mv index.php /var/www/wordpress/index.php
mv wp-config.php /var/www/wordpress/wp-config.php

#supprimer le tar et copier le dossier dans html
rm latest-fr_FR.tar.gz && cp -rf /var/www/wordpress/* /var/www/html

exec /usr/sbin/php-fpm7.3 -F
#service php7.3-fpm start