#!/bin/bash

echo "User Accounts with /bin/bash shell:"
echo "================================="
echo -e "Username\t\tUserID\t\tGroupID\t\tHome\t\t\tShell"
echo "================================="

# read /etc/passwd and format with awk, only show users with /bin/bash shell
awk -F: '$7 == "/bin/bash" {
    # Format each line into columns
    printf "%-20s %-10s %-10s %-20s %s\n", $1, $3, $4, $6, $7
}' /etc/passwd

echo "================================="
