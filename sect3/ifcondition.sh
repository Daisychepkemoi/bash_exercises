#! /bin/bash

# echo "if condition"
# read -p "input first number " number1

# read  -p "input second number " number2

# if [ $number1 -eq $number2 ]; then
# 	echo "they are equal"
# else
# 	echo "they are NOT the same"
# fi

# echo "continue"


# read -p "input first string " number1

# read  -p "input second string " number2

# if [ $number1 == $number2 ]; then
# 	echo "they are equal"
# else
# 	echo "they are NOT the same"
# fi
# echo "continue"

# read -p "input first string " string_inout



# if [ -z $string_inout ]; then
# 	echo "they are empty"
# 	exit
# else
# 	echo "they are NOT the empty"
# fi
# echo "continue"

myfile=2.txt
myfile2=332.txt
writable=file_name_1.sh
readbale=readable.sh
directory=newfolder
executable=2.txt
folder=newfolder
# if [ -e $myfile ]; then
# 	#statements
# 	echo "my file exists"
# fi
# if [ ! -e $myfile2 ]; then
# 	echo "myfile2 does not exists"
# fi


if [ -r $readbale ]; then
	#statements
	echo "my file is readablw"
fi
if [  -d $readbale ]; then
	echo "myfile2 is a directory "
fi


if [  -w $readbale ]; then
	echo "myfile2 is a writable n"
fi
if [  -x $readbale ]; then
	echo "myfile2 is a executable n"
fi

if [  -s $readbale ]; then
	echo "myfile2 is not empty n"
fi
if [  -f newfolder ]; then
	echo "myfile2 is a regular file"
fi

echo hello