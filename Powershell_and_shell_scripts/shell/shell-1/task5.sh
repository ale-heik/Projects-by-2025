#!/bin/bash

# Tarkista, että käyttäjä on antanut kolme argumenttia
if [ "$#" -ne 3 ]; then
    echo "Virhe: Anna tarkalleen 3 tiedostonimeä argumenttina."
    exit 1
fi

# Alustetaan lista poistetuista tiedostoista
deleted_files=""

# Käydään läpi kaikki kolme tiedostonimeä ja poistetaan ne
for file in "$@"; do
    filepath="$HOME/$file"
    if [ -f "$filepath" ]; then
        rm "$filepath"
        deleted_files="$deleted_files $file"
    else
        echo "Tiedostoa '$file' ei ole olemassa kotihakemistossa."
    fi
done

# Tulostetaan poistettujen tiedostojen lista
if [ -n "$deleted_files" ]; then
    echo "I deleted the following files:$deleted_files"
else
    echo "Ei tiedostoja poistettu."
fi
