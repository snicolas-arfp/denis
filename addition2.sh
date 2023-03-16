#!/bin/bash

# faire la somme de deux nombres

#vérifiez le nombre d'arguments saisies

if [ $# -eq 2 ]
  then
    resultats=$(($1+$2))
  else
    echo "le script doit s'écrire : $0 chiffre1 chiffre2 "
    exit 2
fi

# affiche le résultat
echo "le résultat de $1+$2 = $resultats"
exit
