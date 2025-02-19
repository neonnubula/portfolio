#!/bin/bash

#function to get number between 1 and 100
function getNumber() {
    read -p "Enter a number between 1 and 100: " number
    
    # check if number valid
    if [[ ! $number =~ ^[0-9]+$ ]]; then
        echo "Error: Please enter a valid number"
        return 1
    fi
    
    # check if number in range
    if [ $number -lt 1 ] || [ $number -gt 100 ]; then
        echo "Error: Number must be between 1 and 100"
        return 1
    fi
    
    return 0
}

# main loop
while true; do
    # user input
    getNumber
    
    # if getNumber returns error, continue 
    if [ $? -ne 0 ]; then
        continue
    fi
    
    # check  guess
    if [ $number -eq 42 ]; then
        echo "Correct!"
        break
    elif [ $number -lt 42 ]; then
        echo "Too Low!"
    else
        echo "Too High!"
    fi
done
