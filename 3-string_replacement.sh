#!/bin/bash

DIR=$1
OLD="FOO"
NEW="BAR"

usage(){
    echo "USAGE: sh $0 <DIR_NAME>"
    exit 1
}

if [ -d $DIR ]; then 
    find $DIR -type f -name "*.conf" -execu sed "s/$OLD/$NEW/g" {} +
    exit 0
else
    echo "%DIR is not available
    exit
fi