#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
input=$1

usage(){
    echo -e "$Y USAGE: sh $0 <Number> $N"
    exit 1
}
 
if  [ $# -lt 1 ]; then 
        usage 
    elif [[ ! $input =~ ^[0-9]+$ ]]; then
            echo -e "Input $R "$input" $N must be a number"
            exit 1
    elif [[ input <= 1 ]]; then
            echo -e "$input is not a prime member"
            exit 1
fi

for (( i=2; i*i<=num; i++ ));do 
    if (( num % i == 0 )); then 
        echo "$Y $input is not a prime number $N"
        exit 0
done

echo "$G $input $Y is prime number $N"