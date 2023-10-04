#! /bin/bash

echo "this is a for loop test"

number=1
while [ $number -le 3 ] ;do
	number=$((number+2))
	echo "this is the number $number"
done
