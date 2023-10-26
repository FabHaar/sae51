#!/bin/bash

function insert_interventions {
	tail -n +2 "interventions.csv" | while IFS=";" read -r id_technicien date_intervention id_machine action;
	do
		mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO techniciens (id_technicien, date_intervention, id_machine, action) VALUES ('$id_technicien', '$date_intervention', '$id_machine', '$action');
EOF
	done
}

insert_interventions

echo "insertion des interventions terminée"	
