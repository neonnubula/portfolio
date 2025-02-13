#!/bin/bash

#ask user to name folder
read -p "Enter the folder name: " folderName

mkdir "$folderName"

#ask user for password
read -s -p "Enter a secret password: " password

# hash the password
passwordHash=$(echo "$password" | sha256sum)

#save hash to file
echo "$passwordHash" > "$folderName/secret.txt"
