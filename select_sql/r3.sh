#!/bin/bash
echo "Machines HP achetées entre 2019 et 2020 :"
mysql -u root -h 127.0.0.1 --port=3306 sae51 < r3.sql
