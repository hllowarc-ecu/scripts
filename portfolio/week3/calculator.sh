#!/bin/bash

#variables for colours
BLUE="\033[34m"
GREEN="\e[92m"
RED="\e[31m"
PURPLE="\033[35m"
NORMAL="\e[0m"

#clears terminal colours so colours can be applied to conditions
LASTARG="${@: -1}"
if [ "${LASTARG}" == "--nocolor" ];
then
    BLUE=""
    GREEN=""
    RED=""
    PURPLE=""
    NORMAL=""
fi

#asks user to in put in two different numbers
echo "Enter two numbers >"
read a
read b

#provides menu to choose operation and colour codes the operation 
echo "Enter Choice:"${NORMAL}
echo -e ${BLUE}"1. Add"${NORMAL}
echo -e ${GREEN}"2. Subtract"${NORMAL}
echo -e ${RED}"3. Multiply"${NORMAL}
echo -e ${PURPLE}"4. Division"${NORMAL}
read ch

#runs users choice through bc (CLI Calculator) and returns in relevant colour
case $ch in
    1)res=`echo $a + $b | bc`
    echo -e "Result= ${BLUE}$res${NORMAL}"
    ;;
    2)res=`echo $a - $b | bc`
    echo -e "Result= ${GREEN}$res${NORMAL}"
    ;;
    3)res=`echo $a \* $b | bc`
    echo -e "Result= ${RED}$res${NORMAL}"
    ;;
    4)res=`echo $a / $b | bc`
    echo -e "Result= ${Purple}$res${NORMAL}"
    ;;
esac
