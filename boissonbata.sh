#!/bin/bash

#$rep : réponse de l'utilisateur (choix de la boisson)
#$monnaie : somme de monnaie inserée par l'utilisateur
#$prix : prix fixé de la boisson
#$dif : somme de monnaie manquante si l'utilisateur ne met pas suffisement de monnaie
#$tp : trop perçu du monnaie si l'utilisateur donne trop de monnaie (le trop perçu lui est rendu)


clear

prix=40


function demandeBoisson() {
    read -p "Quelle boisson desirez-vous ? " rep
    clear
    until  [[ $rep = café || $rep = thé || $rep = chocolat || $rep = potage ]]
    do read -p "Quelle boisson desirez-vous ?
    Je propose
    - café
    - thé
    - chocolat
    - potage " rep
    done
    clear
}


# je définis ma fonction servir
function servir() {
insererMonnaie

dif=$(($prix - $monnaie)) 
if [ $monnaie -lt $prix ] 
then

echo "Je ne peux malheureusement pas vous servir votre $rep il manque $dif centimes
Au revoir"
exit
elif [ $monnaie -gt $prix ]
then
tp=$(($monnaie - $prix ))
echo Voici votre monnaie : $tp centimes
sleep 1
echo "Voici votre $rep" 
elif [ $monnaie = $prix ] 
then echo "Voici votre $rep"
fi


}

function insererMonnaie() {
local monnaie
read -p "monnaie : $prix centimes (pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " monnaie

}

function rendreMonnaie() {


}

demandeBoisson()

servir()   # j'appelle ou j'execute ma fonction servir

sleep 2
clear

sleep1
echo "Merci d'avoir pris un $rep et à bientôt"