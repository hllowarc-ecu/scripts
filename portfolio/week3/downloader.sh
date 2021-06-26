#!/bin/bash

#user types in url of page to download or types exit to quit
read -p "Please type the URL of a file to download or type 'exit' to quit: " userinput

#the following loop occurs until user types exit
until  [ "$userinput" == "exit" ];
do
#prompt for destination to download file too 
echo "Destination Folder to download it to: "
read fname
wget -P "$fname" "$userinput";
read -p "Please type the URL of a file to download or type 'exit' to quit: " userinput
done   
