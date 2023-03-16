#!/bin/bash

#test si un argument à été saisie en ligne de commande
function test {
 if [ -z $1 ]
  then
   echo "Usage : $0 Repertoire "
   exit 2
  else
  dossier=$1
 fi
}

# fonction qui verifie si un fichier est vide
function vide {
   if [ -s $dossier/$fichier ]
    then
      echo "Le Fichier $dossier/$fichier n'est pas vide"
    else
      echo "le Fichier $dossier/$fichier est vide"
      echo "Le fichier $dossier/$fichier va être supprimer !"
      rm  $dossier/$fichier
   fi
}

# appel la fonction test
test $1

# attribue à la variable fichier le contenue de la commande ls $dossier

# il faut améliorié ce script en vérifiant si $fichier n'est pas un repertoire !


for fichier in $(ls $dossier)
  do
 # appel de la fonction vide
 # ici appeler une fonction qui vérifie si $fichier n'est pas un repertoire
   
   vide
  done
clear

echo "Le ménage à été effectué dans le dossier : $dossier"

