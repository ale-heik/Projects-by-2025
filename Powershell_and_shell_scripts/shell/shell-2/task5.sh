#!/bin/bash

while true; do
        read -p "Define operation +, -, /, *: " operation
        echo "type 'exit' to quit"

        if [ "$operation" == "exit" ]; then
                break

        fi

        read -p "Give first value: " A
        read -p "Give second value: " B

        calculate=$(expr "$A" "$operation" "$B")

        echo "$calculate"
done
