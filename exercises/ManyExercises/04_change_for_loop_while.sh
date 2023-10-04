#!/bin/bash
# Listing the planets.

for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
  echo $planet  # Each planet on a separate line.
done

echo "planets listed successfully"

for planet in "Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
    # All planets on same line.
    # Entire 'list' enclosed in quotes creates a single variable.
    # Why? Whitespace incorporated into the variable.

do
 echo "planest in one line $planet"
done

echo; echo "Whoops! Pluto is no longer a planet!"



echo "****************************"
cho "using for loop"
#planets=('Mercury ' 'Venus' ' Earth' 'Mars' 'Jupiter' 'Saturn' 'Uranu' 'Neptune' 'Pluto')
planets=("Mercury" "Venus" "Earth" "Mars" "Jupiter" "Saturn" "Uranus" "Neptune" "Pluto")
# shellcheck disable=SC1073
echo "${planets[0]} <<<>>><<<>>"



i=0

while [ $i -lt ${#planets[@]} ] ; do
  echo ${planets[$i]}
  i=$(($i+1))
done

echo "****************************"
echo "using until loop"
 j=0

until (( $j > ${#planets[@]} )) ; do
  echo ${planets[$j]}
    j=$(($j+1))
done