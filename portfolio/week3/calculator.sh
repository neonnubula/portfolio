#!/bin/bash

#colours
red='\033[31m'
green='\033[32m'
blue='\033[34m'
purple='\033[35m'

# input
read -p "enter first interger: " operand1
read -p "enter operation (+,-,*,/): " op
read -p "enter second interger: " operand2

#process request
if [ "$op" = "+" ]; then
    result=$((operand1 + operand2))
    echo -e "${blue}$operand1 + $operand2 = $result"
elif [ "$op" = "-" ]; then
    result=$((operand1 - operand2))
    echo -e "${green}$operand1 - $operand2 = $result"
elif [ "$op" = "*" ]; then
    result=$((operand1 * operand2))
    echo -e "${red}$operand1 * $operand2 = $result"
elif [ "$op" = "/" ]; then
    if [ "$operand2" -eq 0 ]; then
        echo "error: divison by zero = undefined"
        exit 1
    else
        result=$((operand1 / operand2))
        echo -e "${purple}$operand1 / $operand2 = $result"
    fi
else
    echo "invalid operator"
    exit 1
fi