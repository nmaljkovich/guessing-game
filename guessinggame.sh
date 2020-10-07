files=$(ls | wc -l)
ans=0
echo "Guess how many files are in the current directory: "

function guess {

	if [[ $1 -eq $files  ]]
	then
		 echo "Correct! You win!"
	elif [[ $1 -gt $files ]]
	then
		 echo "That's too many. Guess again: "
	else
		 echo "That's too little. Guess again: "
	fi
}

while [[ $ans -ne $files ]]
do
	read input
	if [[ "$input" =~ ^[0-9]$ ]]
	then
		ans=$input
		guess $ans
	else
		echo "That's not a number. Try again."
	fi
done

