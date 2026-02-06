#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
DIR=$1
OLD="FOO"
NEW="BAR"

usage(){
    echo "USAGE: sh $0 <DIR_NAME>"
    exit 1
}

[ $# -lt 1 ] && usage

if [ -d $DIR ]; then 
    find $DIR -type f -name "*.conf" -exec sed "s/$OLD/$NEW/g" {} +
    exit 0
else
    echo -e "Directory $R $DIR $N is not available"
    exit 1
fi