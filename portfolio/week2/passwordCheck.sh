#!/bin/bash

#prompt user to enter password
read -sp "Enter Password: " pass_var1

#hash new password and check it against the hash in the file secret.txt
if [ "$(echo $pass_var1 | sha256sum)" == "$(cat ~/student/scripts/portfolio/week2/secret.txt)" ]; then
	printf "\n >> Access Granted <<\n"
       	exit 0    
else
	printf "\n XX Access Denied XX\n"
	exit 1
fi 
