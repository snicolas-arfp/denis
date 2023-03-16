#!/bin/bash

# efface les fichier fic* vide du dossier temp

for nom in {a..z}
  do
   if [ -s temp/fic$nom ]
    then
      echo "Le Fichier temp/fic$nom n'est pas vide"
    else
      echo "le Fichier temp/fic$nom est vide"
      echo "Le fichier temp/fic$nom va être supprimer !"
      rm  temp/fic$nom
   fi
  done
