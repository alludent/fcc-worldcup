#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo  $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WIN OPP WIN_GOALS OPP_GOALS
do
  if [[ $WIN != "winner" && $OPP != "opponent" ]]
  then
    # get teams
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")

    # not found winner team
    if [[ -z $WIN_ID ]] 
    then
      # insert team
      echo $($PSQL "INSERT INTO teams(name) VALUES('$WIN')")
      # get new id
      WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WIN'")
    fi

    # not found opponent team
    if [[ -z $OPP_ID ]] 
    then
      # insert team
      echo $($PSQL "INSERT INTO teams(name) VALUES('$OPP')")
      # get new id
      OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPP'")
    fi
  
    # insert the game
    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WIN_ID, $OPP_ID, $WIN_GOALS, $OPP_GOALS)")
    
  fi

done

