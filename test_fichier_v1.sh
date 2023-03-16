#!/bin/bash
clear
#  test si un argument a été saisie

if [ $# != 1 ]
   then
     echo "le script s'utilise comme ca : $0 nom_fichier"
     exit 2
    else
      if [ -f $1 ]
        then
         if [ -w $1 ]
            then
              ecriture="est accessible en ecriture"
            else
              ecriture=" n'est pas accessible en ecriture"
          fi
         if [ -r $1 ]
            then
              lecture="est accessible en lecture"
            else
              lecture=" n'est pas accessible en lecture"
          fi
         if [ -x $1 ]
            then
              executable="est executable"
            else
              executable="n'est pas executable"
          fi
        else
          echo "le fichier $1 n'existe pas"
          exit 3
      fi

fi


echo "-----------------------------"
echo "Le fichier $1 existe "
echo " "
echo "ce fichier $lecture"
echo " "
echo "ce fichier $ecriture"
echo " "
echo "ce fichier $executable"
echo "-----------------------------"

