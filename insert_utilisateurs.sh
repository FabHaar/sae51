#!/bin/bash

function insert_utilisateurs {
	tail -n +2 "utilisateurs.csv" | while IFS=";" read -r nom prenom;
	do
		mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO utilisateurs (nom, prenom) VALUES ('$nom', '$prenom');
EOF
	done
}

insert_utilisateurs

echo "insertion des utilisateurs terminée"	
