#!/bin/bash
echo "Utilisateurs ayant une machine HP : "
mysql -u root -h 127.0.0.1 --port=3306 sae51 < r8.sql
