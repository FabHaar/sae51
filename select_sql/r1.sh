#!/bin/bash
echo "Liste de toutes les machines de la marque HP : "
mysql -u root -h 127.0.0.1 --port=3306 sae51 < r1.sql
