#! /bin/bash

echo "this is a division by 2,3,5 loop test"

read -p "enter the number to be tested :" number
# number=30
divisible(){

if [ $(($number % 3)) == 0  -o $(($number% 2)) == 0 -o  $(($number% 5)) == 0 ] ; then
	echo "number is divisible "
else
	echo "number is not divisible by either 2,3,5"
fi

}
divisible

divisible_for_loop(){
	for i in {2,3,5} ; do
		if [ $(($number % $i)) == 0 ] ; then
			echo "number is divisible by $i"
		else
			echo "number is not divisible by $i"
		fi
	done
}
divisible_for_loop
