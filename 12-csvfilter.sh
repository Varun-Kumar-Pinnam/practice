#!/bin/bash

INPUT_FILE=$1
OUTPUT_FILE=ERROR.txt

usage(){
    echo "USAGE: sh $0 <DIR_NAME>"
    exit 1
}

[ $# -lt 1 ] && usage

if [ "$INPUT_FILE" == *.csv ]; then 
        awk -F ',' 'NR==1 || /ERROR/' "$INPUT_FILE" >> $OUTPUT_FILE
        exit 0

        else
            echo "$INPUT_FILE is not a csv file"
            exit 1
fi
