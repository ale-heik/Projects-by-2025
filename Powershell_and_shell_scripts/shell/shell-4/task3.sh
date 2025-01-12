#!bin/bash

#ask input
read -p "Input program tou want to install (cowsay etc.): " program

#update package list
sudo apt update

#install package
sudo apt install -y "$program"

if [ $? -eq 0 ]; then
        echo "$program installation was successfull"
        exit 0
else
        echo "Error, unable to install package"
        exit 111
fi
