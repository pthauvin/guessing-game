#!/usr/bin/env bash
# File: guessinggame.sh

#determine number of files minus the .  and .. files
count=$(ls -Aq | wc -l)
echo "There are $count files in this directory."

#function to ask user to guess number of files
function guess()
{
  read -p "Enter how many files are in this directory, then press ENTER:  "  userguess
  echo $userguess
}

#initialize answer flag 
ans=0

#loop through user quesses until correct
while [[ $ans -eq 0 ]]
do
  userguess=$(guess)
  if [[  $userguess -ne $count ]] && [[ $userguess -gt $count ]]
  then
    echo "Sorry, your guess is high. Please try again."
  elif [[ $userguess -ne $count ]]
  then
    echo "Sorry, your guess is low. Please try again."
  else
    ans=1
  fi
done

#congratulate user
echo "Well done: $userguess is correct."

