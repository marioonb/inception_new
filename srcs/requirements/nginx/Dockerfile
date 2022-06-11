FROM debian:buster
# Installation nginx + openssl sinon ma CMD openssl n'est pas reconnue
RUN apt-get update \
	&& apt-get -y install nginx \
	&& apt-get -y install openssl

COPY ./tools/start.sh .
COPY ./tools/default.conf .
COPY ./tools/index.nginx-debian.html .

# generer le certificat SSL
RUN mkdir -p /etc/nginx/ssl 
RUN openssl req -x509 -nodes -days 365 -subj "/C=FR/ST=Paris/L=Paris/O=42/OU=42Paris/CN=mbelorge_inception" -newkey rsa:2048 -keyout /etc/nginx/ssl/mbelorge.42.fr.key -out /etc/nginx/ssl/mbelorge.42.fr.crt;
RUN mv default.conf /etc/nginx/sites-available/default
#pas besoin de faire le lien symbolique vers site enabled, se fait tout seul (probablement dans la config nginx)
#RUN ln -s etc/nginx/sites-available/default etc/nginx/sites-enabled


#ne marche pas, probablement erreur avec le volume, se met si index.php par wordpress non demandé
RUN mv index.nginx-debian.html /var/www/html/index.nginx-debian.html

#pour sortir afficher les logs
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

#juste pour test
#RUN chmod 777 -R /var/www 
#RUN chown -R www-data:www-data /var/www/

#CMD bash /start.sh
EXPOSE 443

CMD nginx -g 'daemon off;'