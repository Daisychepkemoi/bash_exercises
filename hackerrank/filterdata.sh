#! /bin/bash


# directoryname=files$(date +%Y%m%d%H%M%S)
directoryname="files"

# rm -r $directoryname
mkdir $directoryname

read -p "whats the file extension ypu want filtered? "  extension

for i in $(find -f . | grep $extension) ; do
	if [[ $i  != "./${directoryname}/"* ]] ; then 
	
		cat $i | while read LINE; do
		extract4values=$(echo $LINE |cut -c1-4)
	    echo $LINE >> ${directoryname}/file00_${extract4values}.txt
	    sort ${directoryname}/file00_${extract4values}.txt -o ${directoryname}/file00_${extract4values}.txt
	   
       done
	  echo "Scanning done successfully! ${i}"
	fi
done