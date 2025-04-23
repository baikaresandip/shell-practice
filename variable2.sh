#!/bin/bash
echo What is your name?
read MY_NAME
echo "Hello $MY_NAME - hope you're well."


<< COMMAND
here you can use 
multiline command

COMMAND

echo "What is your surname?" 
read  SURNAME

echo "$MY_NAME your surname is $SURNAME"
