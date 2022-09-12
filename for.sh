#!/bin/bash

for (( i=0 ; i<10 ; i++ ))
do
    echo $i
done



prixBoisson=(40 35 50 20)
for (( i=0 ; i<4 ; i++ ))
do
   let difference[i]=50-${prixBoisson[i]}
    echo ${difference[i]} 
done