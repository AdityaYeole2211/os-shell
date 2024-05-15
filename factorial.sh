#!/bin/bash

echo " Enter number: "
read num

if [ $num -lt 0 ]; then 
   echo "factorial of number less than 0 is not defined."
   exit
fi

if [ $num = 0 ]; then
   echo "Factorial of 0 is 1."
fi

factorial=1

for(( i = 1 ; i <= num ; i++ )); do
    factorial=$(( factorial*i ))
done

echo "Factorial of $num is $factorial ." 

