#!/bin/bash

function insert_techniciens {
	tail -n +2 "techniciens.csv" | while IFS=";" read -r nom prenom;
	do
		mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO techniciens (nom, prenom) VALUES ('$nom', '$prenom');
EOF
	done
}

insert_techniciens

echo "insertion des techniciens terminée"	
