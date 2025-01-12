#!/bin/bash

count_objects() {
        local directories=("$@")
        local object_count

        for dir in "${directories[@]}"; do

                if [ -d "$dir" ]; then
                        object_count=$(ls -1 "$dir" | wc -l)
                        echo "Number of objects in a given directory '$dir': $object_count"

                else
                        echo "Directory called '$dir' does not exist"
                fi
        done
}

directories=()

while true; do
        read -p "Enter a directorypath or type 'exit': " directory

        if [ "$directory" == "exit" ]; then
                break

        fi

        directories+=("$directory")
        
done


count_objects "${directories[@]}"