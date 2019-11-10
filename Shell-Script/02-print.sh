#!/bin/bash
## to print a message on the screen we user printf comand or echo command
echo hellow world

## to print a message on multiple lines
#  in the below \n is escape sequence which prints new lines.
# to enable escape sequence we need to use the an option -e to echo command
# when you enable the escape sequences in echo command, always provide input in double quotes.
echo "to print in new line"
echo -e "Hellow\nWorld" 

## to print tab space we have to use \t escape sequence
echo "tab space"
echo -e "India\tTelangana\tHyderabad"


