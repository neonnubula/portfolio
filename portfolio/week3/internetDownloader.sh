#!/bin/bash

#loop until user quits, downloading url file each time
while true; do
    read -p "please type a website URL to download or 'exit' to quit: " url
    
    if [ "$url" = "exit" ]; then
        break
    fi
    
    read -p "type the download location: " location
    
    wget -P "$location" "$url"
done
