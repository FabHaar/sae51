#!/bin/bash

techniciens="techniciens.csv"

#BDD_connection="mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51"

function insert_techniciens {
	mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51 << EOF
	START TRANSACTION;
	LOAD DATA LOCAL INFILE '$techniciens'
	INTO TABLE techniciens
	FIELDS TERMINATED BY ';'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
	COMMIT;
EOF
}

insert_techniciens

echo "c'est bon"
