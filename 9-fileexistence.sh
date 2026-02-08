#!/bin/bash

FILE_NAME=$1

usage(){
    echo "USAGE: sh $0 <filename>"
    exit 1
}

[ $# -lt 1 ] && usage

# if [ -d $FILE_NAME ]; then
#     list=$(ls -lrt $FILE_NAME)
#     echo "It's a dierectory \n $list"
# fi

if [ ! -e $FILE_NAME ]; then
        echo "$FILE_NAME is not exists"
        exit 1
    elif [ -d $FILE_NAME ] ; then
        list=$(ls -lrt $FILE_NAME)
        echo -e "It's a dierectory \n $list"
        exit 1
    elif [ -s $FILE_NAME ]; then
        echo "$FILE_NAME is an empty file"
        exit 1
    elif [ -f $FILE_NAME ]; then
        echo "$FILE_NAME is available at $PWD"
        [ -r $FILE_NAME ] && echo "$FILE_NAME is readable" || echo "$FILE_NAME is not readable"
        [ -w $FILE_NAME ] && echo "$FILE_NAME is writable" || echo "$FILE_NAME is not writable"
fi



