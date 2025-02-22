#!/bin/bash

echo "1. All sed statements:"
grep -r "sed" .

echo -e "\n2. Lines starting with 'm':"
grep -r "^m" .

echo -e "\n3. Lines containing three digit numbers:"
grep -r "[0-9]\{3\}" .

echo -e "\n4. Echo statements with three or more words:"
grep -r "echo.*[[:space:]].*[[:space:]].*[[:space:]]" .

echo -e "\n5. Good password patterns (at least 8 chars, mix of upper/lower/numbers/symbols):"
grep -r "^.*(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}.*$" . 