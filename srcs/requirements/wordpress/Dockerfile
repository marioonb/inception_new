FROM debian:buster 

# met a jour atp-get
# install wget pour récupérer wordpress, install curl si besoin de WP-cli  install de vim pour # modif dans le conteneur. #attention préciser 7.4 pour php-fpm car sinon install 7.3 et plus de support fin d'annee 2021 / ok sauf qu'il trouve pas le package
#voir version 8 ? 
RUN apt-get update \
    && apt-get -y install wget curl \
    && apt-get -y install php7.3 php-mysqli php-fpm mariadb-client
    #&& apt-get -y install vim


#obligé sinon erreur de php non trouvable
RUN mkdir /run/php/

# installation de Wcli pour utiliser WP et cofigurer wordpress en ligne de commande
#RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#RUN chmod +x wp-cli.phar
#RUN mv wp-cli.phar /usr/local/bin/wp

#copie de mon script pour installer wordpress
COPY ./tools/wp_conf.sh .
RUN chmod +x wp_conf.sh

#copie de mes fichiers de configuration wordpress dans le conteneur
COPY ./tools/wp-config.php .
COPY ./tools/index.php .

#j'en sais rien
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d

EXPOSE 9000

CMD ["/wp_conf.sh"]








