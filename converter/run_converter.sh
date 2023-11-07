#!/bin/bash

mkdir -p shared/
cp *.dbml shared/
cp gen_sql.sh shared/

docker run --rm -it \
	--workdir /srv \
	--name sae51-ub \
	--mount type=bind, sources=$(pwd)/shared, target=/srv \
	img_sae51

apt-get -y install imagemagick

cd shared
for a in *.svg
do
	name=${a%.svg}
	echo "converting $name"
	convert $a $name.png
done
