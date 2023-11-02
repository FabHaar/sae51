#!/bin/bash

file="/etc/mysql/conf.d/mysql.cnf"
if grep -Fxq "[client]" "$file" && grep -Fxq "password=foo" "$file"; then
    echo "Les lignes existent déjà dans le fichier."
else
    echo "[client]" >> "$file"
    echo "password=foo" >> "$file"
    echo "Les lignes ont été ajoutées au fichier."
fi
