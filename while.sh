#!/bin/bash

clear
read -p "quel genre es -tu " genre
while [[  $genre == ""  ]]
do
     read -p "quel genre es -tu " genre
done
  
if [[ $genre == "homme" ]] 
then
   echo "tu es un homme"
elif [[ $genre == "femme" ]]
then
   echo "tu es une femme"
else
   echo "tu es quoi ?"
fi
