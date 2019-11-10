#!/bin/bash

## read a value from user input we need to use read command: read name
read name1
echo $name1

## read a value from user and with some comment using the command : read -p "comment" variable 
read -p "Enter your name 2" name2
echo "Name entered is $name2" 