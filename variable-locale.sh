#!/bin/bash

#Comment passer la valeur d'une variable locale d'une fonction à une autre 

creerListe() {
  local liste=("a","b","c")  # je définis la variable locale liste (uniquement accessible localement dans la fonction creerListe)
  echo "${liste[@]}"     #je retourne la valeur de liste pour qu'elle soit accessible à l'exterieur de la fonction creerListe 
}

mon_programme() {
  local resultat=$(creerListe)   #je récupère la valeur renvoyée par la fonction creerListe
  echo "${resultat[@]}"
}

mon_programme