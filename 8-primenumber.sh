#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
num=$1

usage(){
    echo -e "$Y USAGE: sh $0 <Number> $N"
    exit 1
}
 
if  [ $# -lt 1 ]; then 
        usage 
    elif [[ ! $num =~ ^[0-9]+$ ]]; then
            echo -e "num $R "$num" $N must be a number"
            exit 1
    elif [[ $num -le 1 ]]; then
            echo -e "$num is not a prime member"
            exit 1
fi

for (( i=2; i*i<=num; i++ ));do 
    if (( num % i == 0 )); then 
        echo -e "$Y $num is not a prime number $N"
        exit 0
    fi
done

echo -e "$G $num $Y is prime number $N"