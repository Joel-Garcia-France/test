#!/bin/bash

function saluer () {
   echo "bonjour $1"
}

function identifier () {
   echo "tu t'appeles $1"
   echo  "tu gagnes $2 €"
}

ajouter() {
local total # rendre la variable locale à la fonction
let total=$1+$2  #attention pas d'espace dans l'expression 
# total=$(($1+$2))  # autre méthode : $((expression))    le $ sert à évaluer l'expression
 echo "$1+$2 = $total"

}

multiplier() {
local total
a=5
b=4
total=$(($a*$b))
echo "$a*$b= $total"

}

saluer Joel
saluer Paul
identifier Marie 6000
multiplier
ajouter 4 10
