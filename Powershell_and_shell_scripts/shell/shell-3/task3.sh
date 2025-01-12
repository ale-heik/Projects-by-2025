#!/bin/bash

count_objects() {
        local dir=$1
        local object_count

        if [ -d "$dir" ]; then
                object_count=$(ls -1 "$dir" | wc -l)
                echo "Number of objects in a given directory '$dir': $object_count"

        else
                echo "Directory called '$dir' does not exist"
        fi
}

read -p "Enter the directory path: " directory

count_objects "$directory"