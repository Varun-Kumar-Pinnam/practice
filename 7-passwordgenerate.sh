#!/bin/bash
length=$1

# usage(){
#     echo "USAGE: sh $0 <password length>"
#     exit 1
# }


[ $# -lt 1 ] && echo "USAGE: sh $0 <password length>"
exit 1

[ $length -lt 10 ] && echo "password should be 10 characters"
echo "$length"
exit 1



# Character sets 
    UPPER="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    LOWER="abcdefghijklmnopqrstuvwxyz"
    NUMBERS="0123456789"
    SPECIAL="!@#&$"

# one charcater from each set
password="$(
    echo "${UPPER:RANDOM%${#UPPER}:1}"
    echo "${LOWER:RANDOM%${#LOWER}:1}"
    echo "${NUMBER:RANDOM%${#NUMBER}:1}"
    echo "${SPECIAL:RANDOM%${#SPECIAL}:1}"
)"

#remaining characters
remaining="$($length -4)"

ALL="$UPPER$LOWER$NUMBER$SPECIAL"

for(( i=0; i<$remaining; i++ ));
    do
    password+="${ALL:RANDOM%${#ALL}:1}"
    done



