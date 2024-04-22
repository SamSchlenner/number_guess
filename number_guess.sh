#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"


USERNAME_EXISTS=$($PSQL "select user_id from users where username='$USERNAME'")

if [[ $USERNAME_EXISTS =~ ^[0-9]+$ ]]
then
  USER_ID=$USERNAME_EXISTS
  GAMES_PLAYED=$($PSQL "select count(user_id) from games where user_id=$USER_ID")
  BEST_GAME=$($PSQL "select min(tries) from games where user_id=$USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  INSERT_USER=$($PSQL "insert into users(username) values('$USERNAME')")
  USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS

SECRET_NUMBER=$(( RANDOM % 1000 +1 ))

TRY=0

until [[ $GUESS == $SECRET_NUMBER ]]
do
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
    read GUESS
    ((TRY++))
  else
    echo "That is not an integer, guess again:"
    read GUESS
    ((TRY++))
  fi
done

((TRY++))
echo "You guessed it in $TRY tries. The secret number was $SECRET_NUMBER. Nice job!"
INSERT_GAME=$($PSQL "insert into games(user_id,tries) values($USER_ID,$TRY)")
exit