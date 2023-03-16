#!/usr/bin/env python3

import sys

# Vérifiez le nombre d'arguments saisis
if len(sys.argv) == 3:
    # Convertit les arguments en nombres entiers
    chiffre1 = int(sys.argv[1])
    chiffre2 = int(sys.argv[2])
    resultats = chiffre1 + chiffre2
else:
    print(f"Le script doit s'écrire : {sys.argv[0]} chiffre1 chiffre2")
    sys.exit(2)

# Affiche le résultat
print(f"Le résultat de {chiffre1}+{chiffre2} = {resultats}")
