note=0
moyenne=0
i=0

until (( $note < 0   )) 
do
    echo "Entrez votre note (q pour quitter) :"
    read note
    if [ $note = "q" ]
    then
        ((note=-1))
        echo "au revoir !"
    elif (( $note >= 16  )) 
    then
        echo "très bien"
    elif (( $note >= 14  )) 
    then
        echo "bien"
    elif (( $note >= 12  )) 
    then
        echo "assez bien"
    elif (( $note >= 10  )) 
    then
        echo "moyen"
    elif (( $note >= 0  )) 
    then
        echo "insuffisant"
    else
        echo "au revoir !"
    fi
     
    if (( $note >= 0  )) 
    then
        ((moyenne=moyenne+note))
        ((i=i+1))
    fi
done
 
if (( $i < 0   )) 
then
    ((i=1))
fi
 
let "moyenne=moyenne/i"
echo "La moyenne est de $moyenne ($i notes)"
