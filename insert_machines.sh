#!/bin/bash

function insert_machines {
	tail -n +2 "machines.csv" | while IFS=";" read -r marque os ram date_achat id_utilisateur;
	do
		mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO machines (marque, os, ram, date_achat, id_utilisateur) VALUES ('$marque', '$os', '$ram', '$date_achat', '$id_utilisateur');
EOF
	done
}

insert_machines

echo "insertion des machines terminée"	
