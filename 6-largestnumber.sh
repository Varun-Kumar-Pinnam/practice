#!/bin/bash
max="$1"
for number in "$@"
do
       
        if [ "$number" -gt "$max" ];then
            echo "$number"
        fi
done