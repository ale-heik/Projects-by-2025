#!/bin/bash

if [ $# -ne 2 ]; then
        echo "You need to use port and page values. example: <new_port> <new_index>"
        exit 1
fi

new_port=$1
new_index=$2
file="example.conf"

value_change() {
        sed -i "s/listen         80 default_server;/listen         $new_port default_server;/" "$file"
        sed -i "s/listen         \[::\]:80 default_server;/listen         \[::\]:$new_port default_server;/" "$file"

        sed -i "s/index          index.html;/index          $new_index;/" "$file"

        echo "New port value $new_port"
        echo "New index value $new_index"
}

value_change
