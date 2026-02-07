#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
INPUT_FILE=$1
OUTPUT_FILE="ERROR.txt"

usage(){
    echo "USAGE: sh $0 <FILE_NAME>"
    exit 1
}

[ $# -lt 1 ] && usage

if [ "$INPUT_FILE" == *.csv ];then 
        # Filter ERROR lines (append)
        awk -F ',' 'NR==1 || /ERROR/ ' $INPUT_FILE >> $OUTPUT_FILE
        echo "✅ ERROR lines saved to $OUTPUT_FILE"
        exit 0
else    
        echo "Its not a csv file"
fi

