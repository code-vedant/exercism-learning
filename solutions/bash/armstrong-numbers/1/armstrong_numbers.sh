#!/usr/bin/env bash
num=$1
temp=$num
sum=0
digits=${#num}

while [ $temp -gt 0 ]
do
    digit=$((temp % 10))
    sum=$((sum + digit ** digits))
    temp=$((temp / 10))
done

if [ "$sum" -eq "$num" ]; then
    echo "true"
else
    echo "false"
fi