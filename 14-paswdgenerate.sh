#!/bin/bash

length=$1

if [[ ! $length =~ ^[0-9]+$ ]]; then 
        echo "please input only numeric value"
        exit 1
    elif [[ $length -lt 10 ]]; then 
        echo "Password length should be 10 characters"
        exit 1
fi 

#character set 
UPPER="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
LOWER="abcdefghijklmnopqrstuvwxyz"
NUMBERS="0123456789"
SPECIAL="!@#$%^&"

ALL=$UPPER$LOWER$NUMBERS$SPECIAL

# each character from each set 
PASSWORD="${UPPER:RANDOM%${#UPPER}:1}"
PASSWORD+="${LOWER:RANDOM%${#LOWER}:1}"
PASSWORD+="${NUMBERS:RANDOM%${#NUMBERS}:1}"
PASSWORD+="${SPECIAL:RANDOM%${#SPECIAL}:1}"

REMAINING=$((length - 4))

echo "$REMAINING"

for (( i=0;i<REMAINING;i++))
do
    PASSWORD+="${ALL:RANDOM%${#ALL}:1}"
done

echo "$PASSWORD"

