#!/bin/bash

FILE_NAME=$1

usage(){
    echo "USAGE: sh $0 <file_name>"
    exit 1
}

if [ $# -lt 1 ]; then
    usage
fi

if [ -f "$FILE_NAME" ]; then 
    echo "$FILE_NAME is available"
    #  if [ -r $FILE_NAME ]; then 
    #     echo "$FILE_NAME is readable"
    # fi
    # if [ -w $FILE_NAME ]; then
    #     echo "$FILE_NAME is writeable"
    # fi
#...checking permission level

    [ -r "$FILE_NAME" ] && echo "$FILE_NAME is readable || echo "$FILE_NAME is not readable 
    [ -w $FILE_NAME ] && echo "$FILE_NAME is writable || echo "$FILE_NAME is not writable 

else
    echo "$FILE_NAME is not available"
fi


