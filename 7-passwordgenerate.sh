#!/bin/bash
length=$1

usage(){
    echo "USAGE: sh $0 <password length>"
    exit 1
}

[ $# -lt 1 ] && usage

#Character sets 
UPPER="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
LOWER="abcdefghijklmnopqrstuvwxyz"
NUMBERS="0123456789"
SPECIAL="!@#$&"

#one charcater from each set
password="$(
    echo "${UPPER:RANDOM%$(#UPPER):1}
)"