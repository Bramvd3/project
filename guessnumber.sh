echo "Welcome, Try to guess how many lines are in this directory!"
read -p "Enter your guess: " guess
lines=$(cat readme.md | wc -l)
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