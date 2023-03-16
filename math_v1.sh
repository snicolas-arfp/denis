#!/bin/bash

# Definition des fonction mathématiques

function somme {
   echo -e "$a+$b = $(($a+$b))"
}

function soustraction {
   echo -e "$a-$b = $(($a-$b))"

}

function multiplication {
   echo -e "$a*$b = $(($a*$b))"
}

function division {
 if [ $b = 0 ]
   then
     echo -e "La division de $a par $b est impossible "
   else
    res=$(($a/$b))
    res1=$(($b*$res))
    reste=$(($a-$res1))
      if [ $reste = 0 ]
        then
          echo -e "$a/$b = $(($a/$b))"
        else
          echo -e "$a/$b = $(($a/$b))*$b + $reste"
      fi

 fi
}

function quitter {
 echo " "
 echo -e "\033[31m Merci d'avoir utiliser notre calculateur 2.0 \033[0m"
 echo " "
 exit 6
}

# Corps du script
clear
echo -n "Entrez le premier nombre : "
read a

echo -n "Entrez le deuxième nombre : "
read b

select opperation in "somme" "soustraction" "multiplication" "division" "quitter"
 do
  $opperation
 done
exit
