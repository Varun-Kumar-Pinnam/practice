#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
length=$1

usage(){
    echo -e "$Y USAGE: sh $0 <password length> $N"
    exit 1
}
 
if  [ $# -lt 1 ]; then 
        usage 
    elif [[ ! "$length" =~ ^[0-9]+$ ]]; then
            echo -e "Password input $R "$length" $N must be a number"
            exit 1
    elif [ "$length" -lt 10 ]; then 
            echo -e "$R password length should be 10 characters $N"
            exit 1
fi

echo "$length"

# Character sets 
    UPPER="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    LOWER="abcdefghijklmnopqrstuvwxyz"
    NUMBERS="0123456789"
    SPECIAL="!@#&$"

# one charcater from each set
PASSWORD="$(
    echo "${UPPER:RANDOM%${#UPPER}:1}"
    echo "${LOWER:RANDOM%${#LOWER}:1}"
    echo "${NUMBER:RANDOM%${#NUMBER}:1}"
    echo "${SPECIAL:RANDOM%${#SPECIAL}:1}"
)"

#remaining characters
REMAINING="$(($length -4))"

echo "$REMAINING"

# ALL="$UPPER$LOWER$NUMBER$SPECIAL"

# for(( i=0; i<$remaining; i++ ));
#     do
#     password+="${ALL:RANDOM%${#ALL}:1}"
#     done



