#!/usr/bin/env bash
function guessinggame() {
	echo "Welcome, Try to guess how many files are in this directory!"
	directory=$(pwd)
	echo "The current directory is $directory."
	read -p "Enter your guess: " guess
	lines=$(ls -lA | grep -v / | wc -l)
	let lines=$(expr $lines-1)
	while [[ $lines -ne $guess ]]
	do
	if [[ $guess -gt $lines ]]
	then
	        echo "Your guess was to high, try again."
		read -p "Enter your guess: " guess
	else
	        echo "Your guess was to low, try again."
		read -p "Enter your guess: " guess
	fi
	done
	echo "Congratulations, you guessed right!"
	echo "There are indeed $lines files in this directory."
}
guessinggame
