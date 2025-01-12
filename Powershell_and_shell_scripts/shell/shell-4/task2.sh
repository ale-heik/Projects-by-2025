#!/bin/bash

#random numbers
rand1=$RANDOM
rand2=$RANDOM
rand3=$RANDOM

echo "$rand1"
echo "$rand2"
echo "$rand3"

#Syslog
logger -p user.info "$rand1"
logger -p user.info "$rand2"
logger -p user.info "$rand3"
