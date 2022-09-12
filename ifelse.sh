#!/bin/bash


read -p "methode (1/2)" methode

( [[ $methode == 1 ]]  && [[ $methode == 2 ]] )&& echo 1 || echo 2



read -p "age" age
read -p "nom" nom

if (( $age > 18 )) && [[ $nom == "Max" ]] 
then
	echo entre 
else
        echo pars
fi



(( $age > 18 )) && [[ $nom == "Max" ]] && echo entre  || echo pars
