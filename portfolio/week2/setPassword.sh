#!/bin/bash

#User Specifies Folder Name
read -p "specify folder name: " folderName

# Asks user to set a password in silent mode 
read -sp "set password: " password

#stores the users hashed password in a file called secret.txt
echo $password | sha256sum  > secret.txt
