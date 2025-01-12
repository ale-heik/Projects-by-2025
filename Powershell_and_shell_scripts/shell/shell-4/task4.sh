#!/bin/bash

#funtion
network_information() {
        ip_addr=$(ip addr show | grep 'inet' | awk '{print $2}' | cut -d/ -f1 | grep -v '127.0.0.1')
        hostname=$(hostname)

        if [ -n "$ip_addr" ]; then
                echo "Your IP address is "$ip_addr""
                echo "Your hostname is "$hostname""
        else
                echo "Unable to find IP address"
        fi

        logger -t "network-information" "IP address: $ip_addr"
        logger -t "network-information" "Hostname: $hostname"
}

network_information