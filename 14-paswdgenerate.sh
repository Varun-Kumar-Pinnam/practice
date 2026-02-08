#!/bin/bash

length=$1

if [[ ! $max =~ ^[0-9]+$ ]]; then 
        echo "please input only numeric value"
        exit 1
    elif [[ $length -lt 10]];then 
        echo "Password length should be 10 characters"
        exit 1
fi 

echo "$length"

