#!/bin/bash

#ETAPE 1 :
docker volume create V_BDD

#ETAPE 2 :
#docker run --name SQL_Server -p 3306:3306 -v V_BDD:/var/lib/mysql -d Serveur_SQL
echo "Création du conteneur du SGBD"
docker run --name SQL_Server \
	-p 3306:3306 \
	-v V_BDD:/var/lib/mysql \
	--env MYSQL_ROOT_PASSWORD=foo \
	-d mysql

echo "Le sgbd prend un petit moment pour être accessible, veuillez patienter un instant"	
sleep 40          #attente du socket ready

#ETAPE 3 :
echo "Création de la base de données sur le SGBD..."
./create_db.sh

./insert_utilisateurs.sh
./insert_techniciens.sh
./insert_machines.sh
./insert_logiciels.sh
./insert_interventions.sh

#docker exec -it SQL_Server bash -c "[COMMAND]"
