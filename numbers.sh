#! /bin/bash
# numbers.sh
# Donner Hanson

echo "enter a natural number greater than 0:";

read -r number;

while [ "$number" -le 0 ]
do
echo "input a natural number greater than 0:";
read -r number;
done
x=1;

parity="Odd";

# while the counter is less than the input number
while [ $x -le  "$number" ]
do 
# if there is no remainder after integer div (modulo operation) then change the parity
if  [[ $((x%2)) -eq 0 ]]; 
then 
	parity="Even";
else
	parity="Odd";
fi
# output result
echo "$x $parity";
# increment the counter variable
x=$((x+1));
done
