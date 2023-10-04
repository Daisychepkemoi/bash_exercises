#! /bin/bash
#Changing the line spacing of a text file
#Write a script that reads each line of a target file,
# then writes the line back to stdout,
# but with an extra blank line following. This has the effect of double-spacing the file.
#
#Include all necessary code to check whether the script gets the necessary command-line argument (a filename),
# and whether the specified file exists.
#
#When the script runs correctly, modify it to triple-space the target file.
#
#Finally, write a script to remove all blank lines from the target file, single-spacing it.

cd files
ls
filename=file_01.txt
rm newfile.txt
echo "file removed successfully!!!"
touch newfile.txt
if [[ -f $filename &&  -e $filename && -s $filename ]] ; then

   cat $filename |  while read -r line; do
        echo $line >> newfile.txt
        echo "" >> newfile.txt  # first line
        echo "" >> newfile.txt #second line
    done

else
  echo " file does not exist"
fi

cat newfile.txt
echo "******************************"
newfilename=newfile.txt
rm newfile_nospace.txt
echo "file removed successfully!!!"
touch newfile_nospace.txt

if [[ -f $newfilename && -s $newfilename ]] ; then

   cat $newfilename |  while read -r line; do
        if [[ ! -z $line ]] ;then
           echo ${k}${line} >> newfile_nospace.txt

        fi

    done


else
  echo " file does not exist"
fi
