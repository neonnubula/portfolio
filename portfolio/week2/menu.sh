#!/bin/bash

# Run passwordCheck.sh and capture the exit code
./passwordCheck.sh
exit_code=$?

#menu selection & run scripts
if [ $exit_code -eq 0 ]; then
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set password"
    read -p "Enter your choice [1-3]: " choice
    if [ "$choice" -eq 1 ]; then
        ./folderCreator.sh
    elif [ "$choice" -eq 2 ]; then
        ./folderCopier.sh
    elif [ "$choice" -eq 3 ]; then
        ./setPassword.sh
    else
        echo "Invalid option selected."
        exit 1
    fi
else
    echo "Access Denied"
    exit 1
fi