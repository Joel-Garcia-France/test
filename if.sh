#!/bin/bash


read -p "Voulez-vous voir la liste des fichiers Y/N : " rep

if [[ $rep = "y"  ||  $rep = "Y" ]]; then
    echo "Liste des fichiers :"
    ls -l
    
elif [[ $rep = "n"  ||  $rep = "N" ]]; then
    echo "je n'affiche pas les fichier "

else
    echo "Il faut taper Y ou N! Pas $rep"

fi



read -p "Entrez un nom de fichier: " file

while [[ $file =  "" ]] ; do


	read -p "Entrez un nom de fichier: " file

done


if [[ -e $file ]]; then
        echo "Le fichier existe!"
else
        echo "Le fichier n'existe pas"
fi
