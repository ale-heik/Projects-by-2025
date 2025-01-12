#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error! write bash s5task2.sh 'cars.csv'"
    exit 1
fi

file="cars.csv"

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