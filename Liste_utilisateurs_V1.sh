#!/bin/bash

# je test si le sous-dossier temp existe
# si ce n'est pas le cas je le créé
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


for affiche in {a..z}
  do
   echo contenue du fichier fic$affiche :
   cat temp/fic$affiche
 done

exit
