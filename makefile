now=$(shell date -u)
create_readme:
	echo "# Guessing Game" > README.md
	echo "Can you guess how many files are in the current directory?" >> README.md
	echo "- Create date: $(now)" >> README.md
	echo "Lines of code in guessinggame.sh: $(shell cat guessinggame.sh | wc -l)" >> README.md


