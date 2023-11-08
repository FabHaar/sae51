#!/bin/bash

for a in *.dbml
do
	name=${a%.dbml}
	echo "processing $name"
	dbml2sql $a --mysql > $name.sql
	dbml-renderer $a $name.svg
done

#dbml-renderer -i example.dbml -o output.svg
