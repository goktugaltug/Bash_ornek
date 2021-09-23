#!/bin/bash


declare -A prev

for ((count=1 ; count <= 10 ; count++))
do
    numb=$[1+RANDOM%10]
    while [ "${prev[$numb]}" ]
    do
        numb=$[1+RANDOM%10]
    done ;
    echo $numb
    prev[$numb]=1
done

