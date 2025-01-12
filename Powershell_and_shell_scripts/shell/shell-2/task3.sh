#!/bin/bash

read -p "Write path here: " given

for path in "$given"; do
        if [ -f "$path" ]; then
                echo "$path: file"
        elif [ -d "$path" ]; then
                echo "$path: directory"
        else
                echo "$path: domethuinh else"
        fi
done
