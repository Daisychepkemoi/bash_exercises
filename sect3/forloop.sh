#! /bin/bash

echo "this is a for loop test"

for i in {1..5}; do
	#statements
	echo "excuting $i"
done


for i in {1,"test","daisy", 5}; do
	#statements
	echo "excuting wher eit has strings $i"
done


for i in {1,3,4}; do
	#statements
	echo "excuting where its seorated by commas $i"
done


for i in ./*; do
	#statements
	echo "excuting where its on list commands '$i'"
done
