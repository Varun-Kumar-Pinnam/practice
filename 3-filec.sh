#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
FILE_NAME=$1

usage(){
    echo -e " $Y USAGE : $0 <filename>"
}

[ $# -lt 1 ] && usage

if [ ! -e $FILE_NAME ];then
        echo " $FILE_NAME is not exists "
        exit 1

    elif [ ! -r $FILE_NAME ];then
        echo "permission denied to read the file"
        exit 2

    elif [ ! -s $FILE_NAME ]; then
        echo " $FILE_NAME is available but its empty"
        exit 0
    
    elif [ ! -f $FILE_NAME ];then
        echo " Number of lines : $(wc -l < $FILE_NAME)"
        echo " Number of words : $(wc -w < $FILE_NAME)"
        echo " Number of charcters : $(wc -c < $FILE_NAME)"
        exit 0

    else
        echo " Not a regular file "
        exit 4
fi 