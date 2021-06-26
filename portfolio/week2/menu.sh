#!/bin/bash

# run script passwordCheck.sh
./passwordCheck.sh

#check exit code of passwordCheck script if access is granted then

	if [ $? = 0 ]; then
		echo "1) Create a folder"
		echo "2) Copy a folder"
		echo "3) Set a password"
		echo "4) Exit" 
	
		read n
		case $n in
			1)./foldermaker.sh;; #if 1 is selected then this script is run 
			2)./foldercopier.sh;; # if 2 is selected then this script is run
			3)./setPassword.sh;; # if 3 is selected then this script is run
			4)exit;;
			*)echo -e "Please pick a number between 1 and 4"
		esac
	else
		echo "Goodbye!" #if access is denied then this appears
	fi

