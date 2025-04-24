#!/bin/bash

echo "Enter any number to print the multiplication table:"
read num

for (( i=1; i<= 10; i++ )); do
    echo "$i*$num =  " $((i*num))
done