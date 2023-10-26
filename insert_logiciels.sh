#!/bin/bash

function insert_logiciels {
	tail -n +2 "logiciels.csv" | while IFS=";" read -r nom id_machine version licence;
	do
		mysql -u root -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO logiciels (nom, id_machine, version, licence) VALUES ('$nom', '$id_machine', '$version', '$licence');
EOF
	done
}

insert_logiciels

echo "insertion des logiciels terminée"	
