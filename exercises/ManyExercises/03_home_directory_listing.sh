#!/bin/bash
#Home Directory Listing
#Perform a recursive directory listing on the user's home directory and save the information to a file. Compress the file, have the script prompt the user to insert a USB flash drive, then press ENTER.
# Finally, save the file to the flash drive after making certain the flash drive has properly mounted by parsing the output of df.
# Note that the flash drive must be unmounted before it is removed.
cd /Users/daisychepkemoi/Documents/personalprojects
ls -R > home_dir_info.txt
cat home_dir_info.txt
tar -cf  home_dir_info_comp.tar home_dir_info.txt
ls


#THIS IS INCOMPLETE