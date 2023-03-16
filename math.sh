#!/bin/bash

# Definition des fonction mathématiques

function somme {
   echo " "
   echo "$a+$b = $(($a+$b))"
}

function soustraction {
   echo " "
   echo "$a-$b = $(($a-$b))"
}

function multiplication{
   echo " "
   echo "$a*$b = $(($a*$b))"
}

function division {
 if [ $b = 0 ]
   then
     echo "La division de $a par $b est impossible "
   else
    res=$(($a/$b))
    res1=$(($b*$res))
    reste=$(($a-$res1))
      if [ $reste = 0 ]
        then
          echo " "
		  echo "$a/$b = $res"
        else
		  echo " " 
          echo "$a/$b = $res*$b + $reste"
      fi

 fi
}


# Corps du script

echo -n "Entrez le premier nombre : "
read a

echo -n "Entrez le deuxième nombre : "
read b

somme
soustraction
multiplication
division