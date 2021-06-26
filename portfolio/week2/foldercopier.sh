#!/bin/bash 

read -p "Name of the folder to copy: " folderName  

#if the name is a valid directory 
if [ -d "$folderName" ]; then
	read -p "Name of the destination folder: " newFolderName  
	cp -r "$folderName" "$newFolderName"  
else
	#Print error
	echo "I couldn't find that folder"    
fi 
     
