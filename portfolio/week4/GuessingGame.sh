#!/bin/bash 
   
ANSWER=42
#This function prints a given error   
printError()     
{
    echo -e "\033[31mERROR:\033[0m $1" 
} 
      
#This function prints a response based on an series of conditions
getNumber() 
      
{
    read -p "$1: "
    while [ $REPLY != $ANSWER ]; do
    if (( $REPLY < $2 || $REPLY > $3 )); then
        #prints an error if the number isn't between 1 & 100
        printError "Input must be between $2 and $3"
        read -p "$1: "
      
    elif (( $REPLY < $ANSWER )); then
        #Print Too Low 
        echo "Too Low!"
        read -p "$1: "
    else
        #Print Too High 
        echo "Too High!"
        read -p "$1: "  
    fi
    done    
}

#this is the start of the Script        
echo "Lets play a game" 
      
getNumber "please type a number between 1 and 100" 1 100 
      
echo "Correct!!!.......Thanks for Playing" 
      
