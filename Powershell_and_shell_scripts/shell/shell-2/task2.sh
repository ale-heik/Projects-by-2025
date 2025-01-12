#!/bin/bash

if [ -f /etc/hosts ];then
        echo "/etc/hosts available"

        if [ -w /etc/hosts ]; then
                echo "You have permission to edit file"
        else
                echo "Permission denied"
        fi
else
        echo "etc/hosts not found"
fi
