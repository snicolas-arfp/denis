#!/bin/bash

#  test si un argument a été saisie
#

if test -z $1
   then
    echo vous devez entrez au moins un argument
    exit 2
   else
    var1=$1
    var2=$2
    echo "nom du script :" $0
    echo "nombres d'arguments :" $#
    echo 'Valeur de $var1 :' $var1
    echo 'Valeur de $var2 :' $var2
    echo '$* :' $*
    echo '$@ :' $@
    exit 6
fi
