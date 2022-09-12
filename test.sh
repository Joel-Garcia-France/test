#!/bin/bash


echo "Ton username est  $USERNAME"  # guillement double: interpréter le contenu

DATE=`date`  #guillement oblique : executer la commande et stocker le résultat
echo "Date du jour: $DATE"
echo "Date du jour: `date`"
echo "ton pwd est : `pwd`"

read -p "entre ton prenom : " PRENOM
read -p "entre ton age : " AGE

echo "tu t'appelles $PRENOM"
echo "tu as $AGE ans"

FUTUR=$(($AGE+1))
echo "dans un an tu auras $FUTUR ans"


