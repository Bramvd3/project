all: README.md

README.md:
	touch README.md
	echo "#Guessing game" > README.md
	echo "$$(date)" >> README.md
	echo "$$lines"

#README.md: $(lines)
#	echo "Number of lines in directory: " $(lines)
	

