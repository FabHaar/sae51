#!/bin/bash

#rfonction pour emplir la base de données

function insert_utilisateurs {
	tail -n +2 "utilisateurs.csv" | while IFS=";" read -r nom prenom;
	do
		mysql -u root -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO utilisateurs (nom, prenom) VALUES ('$nom', '$prenom');
EOF
	done
	
echo "insertion des utilisateurs terminée"	

}


function insert_techniciens {
	tail -n +2 "techniciens.csv" | while IFS=";" read -r nom prenom;
	do
		mysql -u root -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO techniciens (nom, prenom) VALUES ('$nom', '$prenom');
EOF
	done
	
echo "insertion des techniciens terminée"	


}


function insert_machines {
	tail -n +2 "machines.csv" | while IFS=";" read -r marque os ram date_achat id_utilisateur;
	do
		mysql -u root -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO machines (marque, os, ram, date_achat, id_utilisateur) VALUES ('$marque', '$os', '$ram', '$date_achat', '$id_utilisateur');
EOF
	done
	
echo "insertion des machines terminée"	

}

function insert_logiciels {
	tail -n +2 "logiciels.csv" | while IFS=";" read -r nom id_machine version licence;
	do
		mysql -u root -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO logiciels (nom, id_machine, version, licence) VALUES ('$nom', '$id_machine', '$version', '$licence');
EOF
	done
	
echo "insertion des logiciels terminée"	

}


function insert_interventions {
	tail -n +2 "interventions.csv" | while IFS=";" read -r id_technicien date_intervention id_machine action;
	do
		mysql -u root -h 127.0.0.1 --port=3306 sae51 << EOF
		INSERT INTO interventions (id_technicien, date_intervention, id_machine, action) VALUES ('$id_technicien', '$date_intervention', '$id_machine', '$action');
EOF
	done
	
echo "insertion des interventions terminée"	

}


#appel des fonctions pour remplir la base de donnée
insert_utilisateurs
insert_techniciens
insert_machines
insert_logiciels
insert_interventions
