#!/bin/bash

# colours
blue='\033[0;34m'
red='\033[0;31m'
white='\033[1;37m'
nc='\033[0m' #default colour

# run passwordCheck.sh
../week2/passwordCheck.sh
exit_code=$?

# menu to run scripts
if [ $exit_code -eq 0 ]; then
    while true; do
        echo -e "${blue}1. Create a folder${nc}"
        echo -e "${blue}2. Copy a folder${nc}"
        echo -e "${blue}3. Set password${nc}"
        echo -e "${blue}4. Calculator${nc}"
        echo -e "${blue}5. Create Week Folders${nc}"
        echo -e "${blue}6. Check Filenames${nc}"
        echo -e "${blue}7. Download a File${nc}"
        echo -e "${white}8. Exit${nc}"
        
        read -p "Enter your choice [1-8]: " choice
        
        case $choice in
            1)
                ../week2/foldermaker.sh
                ;;
            2)
                ../week2/folderCopier.sh
                ;;
            3)
                ../week2/setPassword.sh
                ;;
            4)
                ./calculator.sh
                ;;
            5)
                ./foldermaker.sh
                ;;
            6)
                ./filenames.sh
                ;;
            7)
                ./internetDownloader.sh
                ;;
            8)
                echo -e "${white}Goodbye!${nc}"
                exit 0
                ;;
            *)
                echo "Invalid option selected."
                ;;
        esac
        
        echo #spacing
        read -p "Press enter to continue..."
        clear
    done
else
    echo -e "${red}Access Denied${nc}"
    exit 1
fi 