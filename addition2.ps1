# faire la somme de deux nombres

# Vérifiez le nombre d'arguments saisis
if ($args.Count -eq 2) {
    # Convertit les arguments en nombres entiers
    $chiffre1 = [int]$args[0]
    $chiffre2 = [int]$args[1]
    $resultats = $chiffre1 + $chiffre2
} else {
    Write-Host "Le script doit s'écrire : $PSCommandPath chiffre1 chiffre2"
    exit 2
}

# Affiche le résultat
Write-Host "Le résultat de $chiffre1+$chiffre2 = $resultats"
