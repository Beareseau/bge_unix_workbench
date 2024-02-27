#!/usr/bin/env bash
# File : guessinggame.sh
# Date : 27/02/2024
read -p "How many files do you think are there in this directory ? Type in your answer and press Enter: " the_response

let nb_of_files=$(ls -l | grep "^-" | wc -l)

while [[ $the_response -ne $nb_of_files ]]
do
	if [[ $the_response -lt $nb_of_files ]]
	then
		echo "Your evaluation is too small. Try it again! Type in your new answer and press Enter:"
	else
		echo "Your evaluation is too high. Try it again! Type in your new answer and press Enter:"
	fi
	read response
        the_response=$response
done
echo "Congratulations, this is the good value!"


