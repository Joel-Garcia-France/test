#!/bin/sh 
# Fonction qui renvoie le carré du nombre qu'elle reçoit 
carre() 
{ 
    # Affichage du carré du nombre reçu 
    expr $1 \* $1 
} 

# Pour chaque nombre passé au programme 
for nb in $* 
do 
    # Récupération du carré de ce nombre 
    result=`carre $nb` 

    # Affichage (ou autre traitement quel qu'il soit) de ce résultat 
    echo "Le carré de $nb vaut $result" 
done