#!/bin/bash


#Backwards Listing
#Write a script that echoes itself to stdout, but backwards.

read -p "please input string to reverse " input_string

echo  $input_string | rev
