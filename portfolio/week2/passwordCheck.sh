#!/bin/bash

# get pwd
read -sp "Enter secret password: " userPassword

# hash the secret pwd
userHash=$(echo -n "$userPassword" | sha256sum | awk '{print $1}')

# get pwd from file
storedHash=$(cat secret.txt)

# check pwd
if [ "$userHash" == "$storedHash" ]; then
  echo "Access Granted"
  exit 0
else
  echo "Access Denied"
  exit 1
fi 