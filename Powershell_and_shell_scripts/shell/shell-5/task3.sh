#!/bin/bash

#onko syöte oikea
if [ $# -eq 0 ]; then
    echo "Error! write bash s5task3.sh 'cars.csv'"
    exit 1
fi

#lisäys
new_entry() {
        read -p "Manufacturer: " Manufacturer
        read -p "Model: " Model
        read -p "Color: " Color
        read -p "Year: " Year

        echo "$Manufacturer,$Model,$Color,$Year" >> "$file"
}

file="cars.csv"

#luetaan tiedosto
{
    read
    while IFS=, read -r manufacturer model year color; do
        echo "--- Line $((++line_number)) ---"
        echo "Manufacturer: $manufacturer"
        echo "Model: $model"
        echo "Color: $color"
        echo "Year: $year"
    done
} < "$file"

read -p "Do you want to add new entry (Y/N): " entry

if [ $entry == Y ]; then
        new_entry
        echo "New entry added"
fi
