#!/bin/bash

word="As Soon As Possible"
x='some
thing'



IN="bla@some.com;john@home.com"

for i in $(${IN//;/ }) ; do
  echo $i
done

