#!/bin/bash
clear
#demande à l'utilisateur de saisir un nom de fichier
echo Entrez un nom de fichier :
read fichier

# test si le fichier existe
# if test -f $fichier
if [ -f $fichier ]
   then
     echo Le fichier $fichier existe
     exit 0
   else
    echo Le fichier $fichier "n'existe pas"
    exit 1
fi
