#!/bin/bash
max="$1"
for number in "$@"
do
       
        if [ "$number" -gt "$max" ];then
            max="$number"
        fi

done
        echo $max