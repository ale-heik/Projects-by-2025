#!/bin/bash

#functon
url_ping() {
        local url=$1
        if ping -c 1 "$url" > /dev/nyll2>$1; then
                return 0
        else
                return 1
        fi
}

read -p "Give URL address to ping: " given

#function call
url_ping="$given"
exit_code=$?

#outcome prin
if [ $exit_code -eq 0 ]; then
        echo "Ping is successfull"

else
        echo "Ping wasn't successfull"
fi