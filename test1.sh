#!/bin/bash

for FILE in $*
do
    if [ -e $FILE ]
    then
        echo "Le fichier $FILE est présent dans le répertoire courant."
    fi
done
exit 0