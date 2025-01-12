#!/bin/bash

read -p "Ensimmainen numero: " A
read -p "Toinen numero: " B

C=$((A + B))
D=$((A - B))
E=$((A * B))

echo "add: $C"
echo "add: $D"
echo "add: $E"