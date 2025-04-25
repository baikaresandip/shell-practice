#!/bin/bash

echo "Enter the folder name: "
read foldername

echo "Number of folder you want to create: "
read num

# return if empty
if [[ ! $foldername || ! $num ]]; then
    echo "Please enter both foldername and number."
    exit 1
fi

# validate number is correct
if [[ "$num" =~ ^[0-9]+$ ]]; then
  
  for (( i=1; i<=$num; i++ )); do
    sudo mkdir "$foldername-$i"
  done

else
  echo "Invalid number. Please enter only numbers."
fi


