#!/bin/bash

FILE_NAME=$1

if [ -f $FILE_NAME ]; then 
    echo "$FILE_NAME is available"
     if [ -r $FILE_NAME ]; then 
        echo "$FILE_NAME is readable"
    fi
    if [ -w $FILE_NAME ]; then
        echo "$FILE_NAME is writeable"
    fi
else
    echo "$FILE_NAME is not available"
fi

