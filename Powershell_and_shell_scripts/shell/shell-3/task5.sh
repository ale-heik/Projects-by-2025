#!/bin/bash

#funktio
calculate() {
        if [ "$1" == "+" ]; then
                echo "Sum: $(($2 + $3))"

        elif [ "$1" == "-" ]; then
                echo "Subtract: $(($2 - $3))"

        elif [ "$1" == "*" ]; then
                echo "Myltiply: $(($2 * $3))"

        elif [ "$1" == "/" ]; then
                if [ "$3" -eq 0 ]; then
                        echo "division by error is not allowed"
                else
                        echo "Divide: $(($2 / $3))"
                fi
        else
                echo "Invalid operation"
        fi
}

#loop
while true; do
        echo "Type 'exit' to quit"
        read -p "Define operation +, -, /, *: " operation

        if [ "$operation" == "exit" ]; then
                break

        fi

        read -p "Give first value: " A
        read -p "Give second value: " B

        result=$(calculate "$operation" "$A" "$B")

        echo "$result"
done

