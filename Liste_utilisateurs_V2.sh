#!/bin/bash

# je test si le sous-dossier temp existe
# si ce n'est pas le cas je le créé
function liste_util {

if [ -d temp ] 
 then
   echo ""
 else
  mkdir -p temp
fi  


for nom in {a..z}
  do
   grep ^$nom /etc/passwd > temp/fic$nom
  done
  
  
function fichier_vide {
}

