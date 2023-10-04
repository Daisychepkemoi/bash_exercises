#! /bin/bash

echo "this is a for loop test"

read -p "enter choice" choice

case $choice in 
	1)
		echo "hello case 1"
		;;
	2) 
		echo "hello case 2"
		;;
	*) echo "this is the default value"

esac

case $choice in 
	"hello")
		echo "hello case 1"
		;;
	*".txt") 
		echo "hello case 2"
		;;
	*) echo "this is the default value"

esac