#!/bin/bash

# definition de mes variables
#

var1=$1
var2=$2

echo "nom du script :" $0
echo "nombres d'arguments :" $#
echo 'Valeur de $var1 :' $var1

echo 'Valeur de $var2 :' $var2
echo '$* :' $*
echo '$@ :' $@

exit 2
