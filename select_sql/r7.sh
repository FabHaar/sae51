#!/bin/bash
echo "Logiciels installés sur la machine de M. Duchmoll :"
mysql -u root -p 'foo' -h 127.0.0.1 --port=3306 sae51 < r7.sql
