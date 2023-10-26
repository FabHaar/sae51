#!/bin/bash

#Connection au SGBD pour la création de la base de données à partir du fichie build_db.sql
mysql -u root -h 127.0.0.1 --port=3306 < build_db.sql
