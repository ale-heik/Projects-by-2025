#!/bin/bash

read -p "Enter username: " username

id -u $username &> /dev/null

if [ $? -eq 0 ]; then
        echo "User already exists."
else
        sudo useradd $username -m -s /bin/bash

        if [ $? -eq 0 ]; then
                echo "User created successfully"
        else
                echo "Failed to create '$username'"
        fi
fi