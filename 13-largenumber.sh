#!/bin/bash

max=$1

if [[ ! $max =~ ^[0-9]+$ ]]; then 
    echo "please input only numeric value"
    exit1
fi

echo "$max"