#!/bin/bash

loop=10
declare -A prev

echo ===========================
echo $loop DIFFERENT RANDOM NUMBERS
echo ===========================


for ((count=1 ; count <= loop ; count++))
do
    numb=$[1+RANDOM%10]
    while [ "${prev[$numb]}" ]
    do
        numb=$[1+RANDOM%10]
    done ;
    echo $numb
    prev[$numb]=1
done
