#!/bin/bash
function saisie {
if [ -z $1 ]
 then
  echo "Usage : $0 nom_de_fichier "
  exit 3
 else
  if [ -f $1 ]
   then
    fichier=$1
    affiche
   else
    echo "le fichier $1 n'est pas un fichier lisible !"
    exit 2
  fi
fi
}
function affiche {
cpt=1
cat $fichier | while read LIGNE
do
 echo "ligne $cpt du fichier $fichier : $LIGNE"
 cpt=$(($cpt+1))
done
}
clear
# Corp du script
saisie $1
