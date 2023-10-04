#! /bin/bash

echo "this is a for loop test"
read -p "please enter file extension you eant to view" extension
count=0
for i in ./renamedir/files/* ; do
	
	if [[ "$i" == *"."${extension} ]] ; then
		count=$((count+1))
		
	fi

done
echo "number of files with extension .$extension is $count"

# solution from the tutor
count=0
for i in ./*.txt; do
			ls
	
		count=$((count+1))
		echo "*** $count"
		
	

done
echo "number of files with extension .$extension is $count"
