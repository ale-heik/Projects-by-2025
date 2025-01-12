#!/bin/bash

read -p "Anna tietiedostolle nimi: " A

B=$(date +"%Y-%m-%d")

filename="${A}_${B}.txt"

touch "$HOME/$filename"

echo "Tiedosto '$filename' on luotu kotihakemistoosi"

