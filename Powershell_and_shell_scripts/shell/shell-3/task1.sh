#!/bin/bash

index=()

while true; do
        read -p "Give some value of type 'exit': " value

        if [ "$value" == "exit" ]; then
                break

        fi

        index+=("$value")
done

for i in "${!index[@]}"; do
        echo "$i: ${index[$i]}"
done