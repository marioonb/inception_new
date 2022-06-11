#include le .env
SRC =		./srcs/docker-compose.yml
				
NAME = 			inception
all:			$(NAME)

$(NAME): #build des images precisée dans yaml docker compose
				sudo mkdir -p /home/$(USER)/data/mariadb
				sudo mkdir -p /home/$(USER)/data/wordpress	
				docker-compose -f $(SRC) build
				docker-compose -f $(SRC) up -d 
# --remove-orphans

# arrete les conteneurs et efface les images nginx, wordpress et nginx
clean:
				docker-compose -f $(SRC) down 
				docker rmi mariadb
				docker rmi -f wordpress
				docker rmi nginx
		
fclean:			clean
				rm -rf $(NAME)

# stop le cinteneur worpress et efface l'image 				
wpclean:
				docker stop wordpress
				docker rmi -f wordpress

# stop le conteneur nginx et efface l'image
nginxclean:
				docker stop nginx
				docker rmi -f nginx

# supprime les volume
vclean:
	docker volume rm srcs_db_data
	docker volume rm srcs_wp_data

# supprime les volumes et les données stockée
vfclean:	vclean
			rm -rf /home/$(USER)/data/wordpress/* /home/$(USER)/data/mariadb/*

# efface tout
ffclean: 		fclean vfclean

# affiche les volumes, images et conteneurs
v:
		echo "\033[0;34m \\n**** VOLUMES ****\\n \033[0m"; docker volume ls ; echo "\033[0;34m \\n**** IMAGES **** \\n \033[0m" ; docker images ; echo "\033[0;34m \\n**** CONTAINERS **** \\n \033[0m" ; docker ps ; echo "\\n"

# entre dans le conteneur NGINX
nginx:
		docker exec -it nginx bash

# entre dans le conteneur wordpress
wordpress:
		docker exec -it wordpress bash

# entre dans le conteneur maria db
mariadb:
		docker exec -it mariadb bash

.PHONY:			all, clean, fclean, wpclean, nginxclean, vclean, vfclean, ffclean, v, nginx, wordpress, mariadb