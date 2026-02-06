#!/bin/bash

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
            echo "$FILE_NAME is available"

            [ -r "$FILE_NAME" ] && echo "$FILE_NAME is readable" || echo "$FILE_NAME is not readable "
            [ -w "$FILE_NAME" ] && echo "$FILE_NAME is writable" || echo "$FILE_NAME is not writable "

    else
            echo "$FILE_NAME is not available"
    

fi
