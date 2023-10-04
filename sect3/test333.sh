#! /bin/bash
number1=2
number3=6
echo "sum $((number1+number3))"
echo "multiply $((number1*number3)) "
echo "division $((number3/number1))"
echo " remainder $((number1*4%number3))"
echo "power $((number1**number3))"


echo "increase variable"

number1=$((number1+1))
echo "increased number1 $number1"

number2=10


# echo "plusplus number1 $((number2++))"

echo "plusplus number1 $((++number2))"

echo "minusminus number1 $((--number2))"
