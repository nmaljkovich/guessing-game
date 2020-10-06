files=$(ls | wc -l)
ans=0
echo "Guess how many files are in the current directory: "

function guess {

	if [[ $1 -ge $(($files + 3)) ]]
	then
		 echo "That's way too many. Guess again: "
	elif [[ $1 -le $(($files - 3)) ]]
	then
		 echo "That's too little. Guess again: "
	elif [[ $1 -eq $files  ]]
	then
		 echo "Correct! You win!"
	else
		 echo "Close but no. Guess again: "
	fi
}

while [[ $ans -ne $files ]]
do
	eval read ans
	guess $ans
done
