#!/bin/bash

OLD=FOO
NEW=BAR
DIR=$1

usage(){
    echo "USAGE: sh $0 <DIR_NAME>"
    exit 1
}

[ $# -lt 1 ] && usage

if [ -d $DIR ]; then
    find $DIR -type f -name "*.conf" -exec sed -i.bak "s/$OLD/$NEW/g" {} +
    #find $DIR -type f -name "*.conf" -exec sed -i.bak "s/$OLD/$NEW/g" {} +
    exit 0
    else 
        echo "$DIR is not available"
        exit 1
fi