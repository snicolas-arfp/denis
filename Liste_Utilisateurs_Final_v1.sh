#!/bin/bash

#initialisation de deux fichiers pour le tri des utilisateurs
echo "Liste des Utilisateurs : " > Liste_Utilisateurs.txt
echo "Liste des Comptes System : " > Liste_System.txt

# Etape n° 1 : créer les fichiers trié
function etape1 {
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
}


# Etape n° 2 : Supprimer les fichiers vide

function etape2 {
for nom in {a..z}
  do
   if [ -s temp/fic$nom ]
    then
      echo ""
    else
      rm  temp/fic$nom
   fi
  done
}

# Etape n° 3 : Récupérer les variables Uid et Nom dans les fichiers (fica ...)
# les fichiers vont être recupérrer depuis une boucle for ....
# chaque fichier serra lu par une boucle while

function etape3 {
for Fichier in $(ls temp/)
  do
     cat temp/$Fichier | while read LIGNE
       do
        Uid=$(echo $LIGNE | cut -d':' -f3)
        Nom=$(echo $LIGNE | cut -d':' -f1)
        Gid=$(echo $LIGNE | cut -d':' -f4)
        etape4
       done
  done
}



# Etape n° 4 : Tester la valeur Uid
function etape4 {
if [ "$Uid" -ge 1000 ]
  then
    # compte utilisateurs
    Gr1=$(grep $Gid /etc/group | cut -d':' -f1)
	Gr2=$(grep $Nom /etc/group | cut -d':' -f1)
	echo "$Nom Groupe Principal : $Gr1 Groupe Secondaire : $Gr2" >>  Liste_Utilisateurs.txt
  else
    # compte system
    echo $Nom >> Liste_System.txt
fi
}


# Etape n° 5 : Afficher le résultat
function Utilisateurs {
 cat Liste_Utilisateurs.txt
}

function System {
 cat Liste_System.txt
 }


 function Quitter {
 exit 3
 }


# Corps du script

etape1
etape2
etape3

clear
echo " Afficher la liste des : "
select menu in "Utilisateurs" "System" "Quitter"
 do
  $menu
 done

 exit
