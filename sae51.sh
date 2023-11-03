#!/bin/bash

#ETAPE 1 :
docker volume create V_BDD

#ETAPE 2 :
echo "Création du conteneur du SGBD"
docker run --name SQL_Server \
	-p 3306:3306 \
	-v V_BDD:/var/lib/mysql \
	--env MYSQL_ROOT_PASSWORD=foo \
	-d mysql

echo "Le sgbd prend un petit moment pour être accessible, veuillez patienter un instant"	
sleep 40          #attente du socket ready

#ETAPE intermediaire :
echo "vérification des prérequis à la connexion"
sudo ./bypass_warning.sh

#ETAPE 3 :
echo "Création de la base de données sur le SGBD..."
./create_db.sh

#ETAPE 4 :
echo "Remplissage de la bas de données"
./filldb.sh

cd select_sql
#ETAPE 5 :
echo "Exemples : "


