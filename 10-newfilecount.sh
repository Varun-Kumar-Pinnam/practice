#!/bin/bash

FILE_NAME=$1

usage(){
    echo "USAGE:sh $0 <FILE NAME>"
    exit 1
}

[ $# -lt 1 ] && usage;

# if [ ! -e $FILE_NAME ]; then
#         echo "$FILE_NAME is not exists"
#         exit 1
#     elif [ ! -r $FILE_NAME ]; then
#         echo"$FILE_NAME is not accessable"
#         exit 1
#     elif [ ! -s $FILE_NAME ]; then 
#         echo "$FILE_NAME is an empty file"
#         exit 0
#     elif [ -f $FILE_NAME ]; then 
#         echo "The number of line in $FILE_NAME: $(wc -l < $FILE_NAME)"
#         echo "The number of words in $FILE_NAME: $(wc -w < $FILE_NAME)"
#         echo "The number of characters in $FILE_NAME: $(wc -m < $FILE_NAME)"
#         exit 0
#     else 
#         echo "$FILE_NAME is not a regular file"
# fi



