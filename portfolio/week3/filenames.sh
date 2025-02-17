#!/bin/bash

#loop through each line
while IFS= read -r line; do
    if [ -n "$line" ]; then
        if [ -f "$line" ]; then
            echo "$line: That file exists"
        elif [ -d "$line" ]; then
            echo "$line: That's a directory"
        else
            echo "$line: I don't know what that is!"
        fi
    fi
done < filenames.txt
