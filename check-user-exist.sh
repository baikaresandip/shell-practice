#!/bin/bash

# Comments
<< COMMAND
============================= Task ========================
Create a Bash script that prompts the user for their username and 
checks if that username exists on the system. 
If the user exists, display their home directory; 
otherwise, display an error message.

COMMAND

# this loop will run while the user not entres the username
while true; do
    read -p "Please Enter username: " username
    
    # check if username is empty
    if [[ ! -z "$username" ]]; then
        break
    fi
done 

dir_path="/home/$username"

if [[ ! -d "$dir_path" ]]; then
    echo "Error: User with Directory '$dir_path' does NOT exist!" >&2
    exit 1
else
    echo "Hey, user exist and here is his directory: " $dir_path
fi
