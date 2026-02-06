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

if [ ! -f $FILE_NAME ]; then
        echo -e "$R $FILE_NAME is not available $N"
        exit 1
    elif [ ! -s $FILE_NAME ]; then
            echo -e "$G $FILE_NAME exists $R but its an empty file $N"
            exit 0
    elif [-f "$FILE_NAME" ]; then
            echo -e "$Y The number of lines in $G $FILE_NAME: $(wc -l < "$FILE_NAME") $N"
            echo -e "$Y The number of words in $G $FILE_NAME: $(wc -w < "$FILE_NAME") $N"
            echo -e "$Y The number of characters in $G $FILE_NAME: $(wc -m < "$FILE_NAME") $N"
            exit 0
    else 
        echo " file is not a regular file "
fi 














# if [[ -f "$FILE_NAME" && -s "$FILE_NAME" ]]; then

#     echo -e "$Y The number of lines in $G $FILE_NAME: $(wc -l < "$FILE_NAME") $N"
#     echo -e "$Y The number of words in $G $FILE_NAME: $(wc -w < "$FILE_NAME") $N"
#     echo -e "$Y The number of characters in $G $FILE_NAME: $(wc -m < "$FILE_NAME") $N"
       
#       else
#             echo -e "$R $FILE_NAME is not available/empty $N"
# fi

 
