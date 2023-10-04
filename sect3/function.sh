#! /bin/bash

# echo "this is a for loop test"



# function_name () {
#   echo "Parameter #1 is ${1}"

# }
# function_name "arg1"

# getcasevalue(){
	
# 	echo "$2 Parameter ee#1 is555"
# 	echo "$1 Parameter ee#1 is"
# }
# getcasevalue "daisy" "33"


# echo "***********************"

function_return(){
	echo "hello $1"
	return 444
}

function_return "memo"

echo $function_return