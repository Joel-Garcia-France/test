#!/bin/bash


#----LES CONDITIONS-----------------------------------------------------

test "joel"="joel"
echo $?

test "joel"="david"
echo $?


# LES INSTRUCTIONS CONDITIONNELLES

echo Entre ton prenom
read prenom

if [[ $prenom == Joel ]] 
	then   echo quel beau prenom 
	else echo change de prenom
fi 

#---------------------------------------------------------------------
# AUTRE SYNTAXE SUR UNE LIGNE , IL FAUT SEPARER LES INSTRUCTIONS AVEC ;

echo Entre ton age
read age

if [[ $age == 45 ]] ; then   echo quel bel age ; else echo pauvre de toi
fi 

#--------------------------------------------------------

