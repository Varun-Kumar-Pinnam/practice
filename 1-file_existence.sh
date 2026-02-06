#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
FILE_NAME=$1

usage(){
    echo "USAGE: sh $0 <file_name>"
    exit 1
}

[ $# -lt 1 ] && usage;

if [ -d "$FILE_NAME" ]; then
    echo "List of files available at $FILE_NAME:"
    ls -lrt "$FILE_NAME"

    elif [ -f "$FILE_NAME" ]; then  
            echo -e "$G $FILE_NAME is available $N "

            [ -r "$FILE_NAME" ] && echo -e "$G $FILE_NAME is readable $N" || echo -e "$R $FILE_NAME is not readable$N "
            [ -w "$FILE_NAME" ] && echo -e "$G $FILE_NAME is writable $N" || echo -e "$R $FILE_NAME is not writable$N "
    else
            echo -e "$R $FILE_NAME is not available $N"
fi
