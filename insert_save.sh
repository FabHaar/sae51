#!/bin/bash

# Chemin vers les fichiers CSV
utilisateurs="utilisateurs.csv"
machines="machines.csv"
techniciens="techniciens.csv"
interventions="interventions.csv"
logiciels="logiciels.csv"

# Commande MySQL pour l'insertion
MYSQL_COMMAND="mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51"

# Fonction pour exécuter la requête d'insertion
function insert_techniciens {
	$MYSQL_COMMAND << EOF
	START TRANSACTION;
	LOAD DATA LOCAL INFILE '$techniciens' 
	INTO TABLE techniciens 
	FIELDS TERMINATED BY ';' 
	LINES TERMINATED BY '\n' 
	IGNORE 1 ROWS;
	COMMIT;
EOF
}

# Exécute la fonction
insert_techniciens

echo "Insertion des données de techniciens terminée."
