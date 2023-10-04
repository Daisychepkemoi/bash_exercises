#! /bin/bash

mkdir files
cd files
read -p "enter file prefixnames : " prefix
for i in {1..9} ;do
		touch ${prefix}_$i.txt
		touch ${prefix}_$i.jpg
		touch ${prefix}_$i.png
done
ls

echo "******************files created successfully *************"
extension=""

while [[ $extension != "j"  && $extension != "t" ]] ; do
	
	read -p "enter file prefixnames : " extensions
	extension=$extensions
	
done

count=1
read -p "please enter the new prefixvalue :" prefix_rename_value
for i in ./* ; do
			
			if [[ "$extension" == "j" ]]; then
				if [[ "$i" == *".jpg" || "$i" == *"png" ]] ; then
						echo "new expected name is ${prefix_rename_value}_${i//.\/}"
						mv $i ${prefix_rename_value}_${i//.\/}
						count=$((count+1))
				fi
			else 
				if [[ "$i" == *".txt"  ]] ; then
					mv $i ${prefix_rename_value}_${i//.\/}
					count=$((count+1))
				fi
			fi
done
	
	

ls

