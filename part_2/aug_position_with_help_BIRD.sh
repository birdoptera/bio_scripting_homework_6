#!/bin/bash

#I can't make a new directory called part_2 because I ALREADY HAVE ONE!?!?!?
#Anyway

if [ "$1" == "-h" ] ; then

    echo "Usage: program to reverse the order of three arguments. Use three arguments and then they will be spat back at you in reverse order. Enjoy "
    exit 0
fi

echo $3
echo $2
echo $1

