FROM debian:buster 

RUN apt-get update \
	&& apt-get -y install mariadb-server mariadb-client 

COPY ./tools/start.sh . 

RUN chmod 777 ./start.sh

#RUN userdel mysql
#RUN sudo useradd -u 999 mysql

#RUN mkdir -p /data/mysql
#RUN chown -R mysql:mysql /data/mysql
#RUN ./start.sh 


#CMD bash /run.sh
#sinon ne le conteneur se ferme
EXPOSE 3306

CMD mysqld_safe --verbose