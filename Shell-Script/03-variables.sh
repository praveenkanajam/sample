#!/bin/bash

## To declare a variable we use VAR=DATA
            ## EX: a=10,b=red
## In shell by default their is no data types.
## a=10,10 is not a number for interpretor, it is just a string.
## for the beginers it is easy to learn shell, no need to declare the data types.
## a=true, not a boolian, it is a string
## a=abc, not a character, but it is string.

## when your data having some special characters then provide input in quotes.. Double is preferred
echo block 1:
a=10
echo a = $a
b=30
echo b = $b

echo block 2:

c=*.sh
echo c = $c

## for block 2 output shown as list of files wit the extension .sh
echo block 3:
d=*
echo d = $d

## for block 3 output shown as list of all files in this folder as similar to ls command

echo block 4:
static_date=10-11-2019
echo -e "Today date is $static_date, but this will show the same date in tomarrow also.\nDue to this we had declared date as string, it will not change automatically"

echo block 4:

## to get the date dynamically when the script is executed we need to use command substitution.
## syntax : VARIABLE=$(COMMAND) OR VAR=`COMMAND`

Dynamic_Date=$(date +%F)
Dynamic_time=$(date +%T)
echo "dynamic date is $Dynamic_Date"
echo "dynamic date and time is $Dynamic_time"

echo block 5: 
echo access a varilable from cli, by default is will not work, we need to export 
echo using the syntax # export variable=variable name, then it will work in script also.
echo hear i am exporting the varilabe, ex : # export country=INDIA, in the below i am calling the variable

echo -e "\e[32m\t\tCountry is : $country\e[0m"