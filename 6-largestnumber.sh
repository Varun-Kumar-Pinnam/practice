#!/bin/bash
max=""
for number in $@
do
        max=$number
        if [[ "$max" -gt "$number" ]];then
            echo "$max"
        fi
done