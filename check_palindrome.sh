#!/bin/bash

echo "Enter a String"
read input_string

reverse_string(){
    local input=$1
    local output=""
    local len=${#input}

    for((i = $len - 1; i >= 0 ; i--));do
        output="${output}${input:$i:1}"
    done
    echo "$output"

}

cleaned_string=$(echo "$input_string" | tr -d '[:punct:]' | tr '[:upper:]' '[:lower:]')

reversed_string=$(reverse_string "$cleaned_string")

if [ "$cleaned_string" = "$reversed_string" ]; then 
    echo "String is palindrome."
else
    echo "String is not a palindrome"
fi


