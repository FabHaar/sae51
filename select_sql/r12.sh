#!/bin/bash
echo "Machines sur lequelles Jean Neymar a fait de la maintenance en 2021 :"
mysql -u root -p 'foo' -h 127.0.0.1 --port=3306 sae51 < r12.sql
