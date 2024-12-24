
all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# unixWorkbenchProject" > README.md 
	date >> README.md
	cat ./guessinggame.sh | wc -l >> README.md

