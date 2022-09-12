echo "Bonjour $NAME"
sleep 1
echo "entre ton age"
read age

ageFutur=$(($RANDOM%5+$age))


sleep 1
echo "tu es $NAME et tu seras riche à $ageFutur ans "

