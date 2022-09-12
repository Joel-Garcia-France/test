prixBoisson=(40 35 50 20)   #variable globale


function demandeBoisson() {
local boisson
read -p "Quelle boisson desirez-vous ? " boisson

until  [[ $boisson = café || $boisson = thé || $boisson = chocolat || $boisson = potage ]]
do read -p "Quelle boisson desirez-vous ?
Je propose
- café
- thé
- chocolat
- potage " boisson
done
echo $boisson
    
}

function calculDiff() {

local monnaie 
local diff


read -p "pour insérer la monnaie, taper sur votre clavier une valeure numérique)
                         " monnaie

for (( i=0 ; i<4 ; i++ )) 
    do
        let diff[i]=$monnaie-${prixBoisson[i]}
    done

echo ${diff[@]} 

}

function afficher() {

    difference=$(calculDiff)   #difference est une liste
    
    for (( i=0 ; i<4 ; i++ )) 
    do
     
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

        echo ${difference[i]}
    done
    
    
    


}

