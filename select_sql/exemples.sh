#!/bin/bash
echo "Exemples : "
nb=$(ls r*.sh | wc -l)
for (( c=1; c<=$nb; c++ ))
do
	echo $'\n'"Lanceement de l'exemple n°$c"
	./r$c.sh
	sleep 4
done
echo "Fin des exemples."
