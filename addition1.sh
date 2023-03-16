#!/bin/bash
echo -n "Entrez le premier chiffre : "
read $vara
echo -n "Entrez le deuxième chiffre : "
read $varb
resultat=$(($vara++$varb))
echo "Le résultat de $vara + $varb = $resultat"
exit 0