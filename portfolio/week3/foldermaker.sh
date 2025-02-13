#!/bin/bash

read -p "Type the name of the folder you want to create: " folderName
targetPath="./portfolio"


mkdir "$targetPath/$folderName"