function maFonction1()
{
    local  nombre=5
    echo $nombre
}

  

function maFonction2()
{
   local nombre=$(maFonction1)    #substution de commande maFonction1
   echo "resultat = $nombre"

}


echo "nombre = $nombre"   # la valeur de $nombre n'apparait pas car la variable nombre est locale
maFonction2
