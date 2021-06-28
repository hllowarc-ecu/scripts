#!/bin/bash

# run script passwordCheck.sh
~/student/scripts/portfolio/week2/passwordCheck.sh

#check exit code of passwordCheck script if access is granted then
#present the folllowing menu

	if [ $? = 0 ]; then
        
        echo "1) Create a folder"
		echo "2) Copy a folder"
		echo "3) Set a password"
        echo "4) Calculator"
        echo "5) Create Week Folders"
        echo "6) Check Filenames"
        echo "7) Download a file"
		echo "8) Exit"

		read n

        #Until the user enters 8 (exit) the following will loop
        until [ $n = "8" ];
        do

        #when the user selects a number the corresponding scripts below will run
        case $n in
			1)~/student/scripts/portfolio/week2/foldermaker.sh;; 
			2)~/student/scripts/portfolio/week2/foldercopier.sh;; 
			3)~/student/scripts/portfolio/week2/setPassword.sh;; 
			4)~/student/scripts/portfolio/week3/calculator.sh;;
            5)~/student/scripts/portfolio/week3/megafolder.sh;;
            6)~/student/scripts/portfolio/week3/filenames.sh;;
            7)~/student/scripts/portfolio/week3/downloader.sh;;
            8)break;;
			*)echo -e "Please pick a number between 1 and 8"
        esac

		echo "1) Create a folder"
		echo "2) Copy a folder"
		echo "3) Set a password"
        echo "4) Calculator"
        echo "5) Create Week Folders"
        echo "6) Check Filenames"
        echo "7) Download a file"
		echo "8) Exit" 
        read n     
        done
#if the password is in correct the following message is displayed 
    else
		echo "Goodbye!" #if access is denied then this appears
	fi 