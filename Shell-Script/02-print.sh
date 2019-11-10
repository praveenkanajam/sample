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

## sometimes we need coloures to printed while printing the text to grab the user attention.


## syntax for colour enaling : echo -e "\e[COLOURmText" 
## in the above COLOUR one of the number shown below 

#COLOUR         FORGROUND       BACKGROUND
#RED                31              41
#GREEN              32              42
#YELLOW             33              43
#BLUE               34              44
#MAGNETA            35              45
#CYAN               36              46

echo -e "\e[31mRED"
echo -e "\e[32m\tGREEN"
echo -e "\e[33m\t\tYELLOW"
echo -e "\e[34m\t\t\tBLUE"
echo -e "\e[35m\t\t\t\tMAGNETA"
echo -e "\e[36m\t\t\t\t\tCYAN"

## colours always follows we have enable but not disabled. 
## To disable the colour use 0(zero) in the place of colour
echo -e "\e[36m Colour start \e[0m colour end"