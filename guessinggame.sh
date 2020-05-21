#!/usr/bin/env bash
# File: guessinggame.sh

function tl {                         #Function 1
echo "Too low, try again"
read var1
}

function th {                         #Function 2
echo "Too high, try again"
read var1
}

num=$( ls | wc -l )
end=0
echo "Guess the number of files this directory has."
read var1

while [[ $end -eq 0 ]]              #Loop
do
	if [[ $var1 -eq $num ]]     #If statement
	then
	echo "Congratulations! you guessed it."
	end=1
	elif [[ $var1 -gt $num ]]
	then
	th
	elif [[ $var1 -lt $num ]]
	then
	tl
	fi
done


