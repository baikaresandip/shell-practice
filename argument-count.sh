#!/bin/bash

<< COMMAND

This program checks the number of arguents are sent to the bash command
Here we are using special param to check the count i.e. $#

COMMAND

count=$#

echo "You have entered $count arguments."

echo "I received below arguments:"

for (( i=1; i <= $count; i++ )); do
    echo "Argument $i is: " ${!i}
done 

# Receive all arguments as array and print 
i=1
for arg in "$@"; do
    echo "  Argument $i: $arg"
    i=$((i+1))
done

