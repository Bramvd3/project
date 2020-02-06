all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#Guessing game" > README.md
	echo "*$$(date)*" >> README.md
	echo "The guessingnames file contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	

