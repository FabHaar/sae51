#!/bin/bash
echo "Logiciels installés sur la machine 10 :"
mysql -u root -h 127.0.0.1 --port=3306 sae51 < r6.sql
