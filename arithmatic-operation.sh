#!/bin/bash

# Write a Bash script that takes three numbers as command-line arguments with operator and performs basic 
# arithmetic operations (+, -, *, /) on them. Handle the case where the second number is zero (division by zero).


# Check if exactly 3 arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <number1> <operator> <number2>"
    echo "Supported operators: + - * /"
    exit 1
fi

num1=$1
operator=$2
num2=$3

case $operator in
    +) result=$(( num1 + num2 ))
        ;;
    -) result=$(( num1 - num2 ))
        ;;
    \*) result=$(( num1 * num2 ))
        ;;
    /)
        # Check for division by zero
        if [ $num2 -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
            exit 1
        fi
        result=$((num1 / num2))
        ;;
esac

echo "$1 $2 $3 = $result"