#! /bin/bash

echo "ready to check articles for file name"

# cd project1
rm -r project1/filesThatMatch
mkdir project1/filesThatMatch

echo "Directory created successfully !"
checkFileforMatchingString(){
	if  grep  -q "Rooney" $i ; then
		echo "match found! on file $i"
		echo $( grep -n -q "Rooney" $i )
		
		cp $i filesThatMatch/$i

	else
			echo "No match found"
	fi
}

checkwhatFile()
{
	for i in ./* ; do
		if [ -d $i ] ; then 
			
			echo "this is a directory $i"
			cd $i
			checkwhatFile
		else
			checkFileforMatchingString
		fi
	done
}
checkwhatFile








