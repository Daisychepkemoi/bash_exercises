#!/bin/bash

read -p "What is the input string? :" input_string


if [ -z $input_string ] ; then
  echo "user must enter something into the program"
else
  echo $input_string | wc -c
fi

