#!/bin/bash

#ETAPE 1 :
#docker build -t Serveur_SQL -f Dockerfile_1 .


#ETAPE 2 :
docker volume create V_BDD

#ETAPE 3 :
#docker run --name SQL_Server -p 3306:3306 -v V_BDD:/var/lib/mysql -d Serveur_SQL
docker run --name SQL_Server \
	-p 3306:3306 \
	-v V_BDD:/var/lib/mysql \
	--env MYSQL_ROOT_PASSWORD=foo \
	-d mysql
	
sleep 40          #attente du a l'initialisation de la machine.

#ETAPE 5 :
./create_db.sh

#docker exec -it SQL_Server bash -c "[COMMAND]"
