#!/bin/bash

read -p "Anna kopioitava tiedostopolku: " A
read -p "Anna kohdepolku: " B

if [ -f "$A" ]; then
        cp "$A" "$B"
        echo "'$A' kopioitu kohteeseen '$B'"
else
        echo "Tioedostoa '$A' ei ole olemassa"
fi
