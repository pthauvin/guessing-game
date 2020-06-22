README.md:
	echo " * **Title:** Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo -n "* **Make run:** " >> README.md
	date >> README.md
	echo -n "* **Lines of code contained in guessinggame.sh:** " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
