#!/bin/bash
echo "Nombre de machines DELL"
mysql -u root -h 127.0.0.1 --port=3306 sae51 < r4.sql
