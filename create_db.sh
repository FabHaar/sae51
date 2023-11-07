#!/bin/bash
file=$(ls -gotR shared/*.sql | head -n 1 | awk '{print $4}')

#Connection au SGBD pour la création de la base de données à partir du fichier sql le plus récent provenant de schema dbml
mysql -u root -h 127.0.0.1 --port=3306 < shared/$file.sql