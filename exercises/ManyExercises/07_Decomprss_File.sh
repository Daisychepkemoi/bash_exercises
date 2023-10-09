#! /bin/bash
#
#Automatically Decompressing Files
#Given a list of filenames as input, this script queries each target file (parsing the output of the file command)
#for the type of compression used on it.
#Then the script automatically invokes the appropriate decompression command
# (gunzip, bunzip2, unzip, uncompress, or whatever).
#If a target file is not compressed, the script emits a warning message,
# but takes no other action on that particular file.

#gzip -v data.csv  - compress
#gzip -v9 data.csv - uncompress
#gunzip -k file.gz - uncompress
#tar czvf archive.tar.gz *.csv  - compress
#tar xvf archive.tar.gz - uncompress
#tar -xvzf textcommandcompressed.tar.gz -C/Users/daisychepkemoi/Documents/personalprojects/bashcommands/DAISY
#pigz -v9 data.csv - compress
#unpigz -v data.csv.gz - decompress
#tar cvf archive.tar.gz --use-compress-program=pigz *.csv - compress
#unpigz -v archive.tar.gz - decompress
#tar xvf archive.tar - decompress
#bzip2  input.txt.bz2 - compress
#bzip2 -t input.txt.bz2 - decompress
#unzip latest.zip - decompress
current_dir=/Users/daisychepkemoi/Documents/personalprojects/bashcommands
uncompressed_dir=uncompressedfiles
cd $current_dir

mkdir $uncompressed_dir
ls $current_dir/$uncompressed_dir/
for i in ./* ; do

  if [[ $(file $i | grep  compressed) ]] ; then
    input_file_name=$i

    my_filename="${input_file_name%.*}"

    my_extension="${input_file_name##*.}"

    if [[ $i == *".gz" ]] ; then
      if [[ $i == *".tar.gz" ]] ; then
        tar -xvzf $i -C ${current_dir}/$uncompressed_dir
        echo "file $i extracted successfully"
      else

        cd ${uncompressed_dir}
        gunzip -kf ${current_dir}/$i
        ls ${current_dir}/$uncompressed_dir
        echo "file $i extracted successfully"
        cd ..
      fi
    elif [[ $i == *".bz2" ]] ; then

      cd $uncompressed_dir
      bzip2 -t ${current_dir}/$i
      echo "file $i extracted successfully"
      cd ..

 fi

fi


#  if
done