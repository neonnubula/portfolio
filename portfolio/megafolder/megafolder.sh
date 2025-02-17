#!/bin/bash

#if there aren't two arguments to the script
if (( $#!=2 )); then
    #print an error and exit

    echo "error, provide two numnbers" && exit 1

fi 

#for every number between the first argument and the last

for ((i=$1;i<=$2;i++))

do 

    #create a new folder for that number

    echo "creating director number $i"

    mkdir "week $i"

done