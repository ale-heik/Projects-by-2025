#!/bin/bash

file="animal.txt"

touch "$file"

while true; do
        read -p "Give some value or type 'exit': " values

        if [ "$values" == "exit" ]; then
                break

        fi

        echo "$values" >> "$file"
done

echo "Every given value to $file"
cat "$file"

