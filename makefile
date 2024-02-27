#!/usr/bin/env bash
# File : makefile
# Date : 27/02/2024 

README.md: 
	touch README.md 
	echo "bge_unix_workbench" > README.md 
	date >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

