#!/bin/bash

read -p "Anna tiedostonimi: " A

if [ -d "$A" ]; then
        count=$(ls -1 "$A" | wc -l)
        echo "Tiedostossa '$A' on $count esinettä."
else
        echo "Tiedostoa ei ole olemassa"
fi
