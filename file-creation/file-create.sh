#!/bin/bash

echo "Please enter the file name to create: "
read filename

if [[ ! $filename ]];then
	echo "filename not entred."	
	exit 1
fi


sudo touch $filename

if [[ -f $filename ]]; then
	echo "File $filename created"
fi