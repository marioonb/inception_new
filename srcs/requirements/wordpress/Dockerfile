FROM debian:buster 

#met a jour atp-get
# install wget
# wget pour recuperer wordpress
RUN apt-get update \
    && apt-get -y install wget curl \
    && apt-get -y install php7.3 php-mysqli php-fpm mariadb-client \
    && wget https://fr.wordpress.org/latest-fr_FR.tar.gz \
	&& tar -xzf latest-fr_FR.tar.gz \
    && apt-get -y install vim


#oblige sinon erreur de php non trouvable
RUN mkdir /run/php/

# installation de Wcli pour utiliser WP et cofigurer wordpress en ligne de commande
#RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN chmod +x wp-cli.phar
#RUN mv wp-cli.phar /usr/local/bin/wp

#RUN mkdir -p /var/www/wordpress
#WORKDIR /var/www/wordpress
#RUN mkdir -p /var/run/php-fpm

COPY ./tools/wp-config.php /var/www/wordpress/wp-config.php
COPY ./tools/index.php /var/www/wordpress/index.php

COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d

COPY ./tools/wp_conf.sh ./
RUN chmod +x wp_conf.sh

#RUN mkdir /var/www/html
#RUN chown -R www-data:www-data /var/www/wordpress/
#RUN find /var/www/wordpress -type d -exec chmod u+rwx {} +
#RUN find /var/www/html -type f -exec chmod u+rw {} +
#RUN mv index.php /var/www/html/index.php


RUN chown -R www-data:www-data /var/www/wordpress
RUN find /var/www/wordpress -type d -exec chmod u+rwx {} +
#RUN find /var/www/wordpress -type f -exec chmod u+rw {} +

#attention préciser 7.4 pour php-fpm car sinon install 7.3 et plus de support fin d'annee 2021 / ok sauf qu'il trouve pas le package
#voir version 8 ? 
WORKDIR /var/www/wordpress
#CMD php7.3-fpm start
#CMD bash /wp_start.sh
#CMD ["bash", "wp-start.sh"]
EXPOSE 9000

CMD ["/wp_conf.sh"]








