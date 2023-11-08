#!/bin/bash

mysql -u root -p'foo' -h 127.0.0.1 --port=3306 sae51 < "purge.sql"

docker stop SQL_Server

docker rm SQL_Server

rm -r shared/
