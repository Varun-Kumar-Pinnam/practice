#!/bin/bash

max=$1

if [[ ! $max =~ ^[0-9]+$ ]]; then 
    echo "please input only numeric value"
    exit 1
fi

for number in $@
do
    if [[ number -gt $max ]]; then
        max=$number
    fi
done

echo "$max"