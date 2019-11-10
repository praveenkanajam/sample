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
echo "Today date is $static_date, but this will show the same date in tomarrow also.\\n due to this we had declred date as string, it will not change automatically"

