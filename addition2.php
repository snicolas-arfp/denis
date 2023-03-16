#!/usr/bin/php
<?php
// faire la somme de deux nombres

// Vérifiez le nombre d'arguments saisis
if ($argc == 3) {
    $chiffre1 = intval($argv[1]);
    $chiffre2 = intval($argv[2]);
    $resultats = $chiffre1 + $chiffre2;
} else {
    echo "Le script doit s'écrire : {$argv[0]} chiffre1 chiffre2" . PHP_EOL;
    exit(2);
}

// Affiche le résultat
echo "Le résultat de $chiffre1 + $chiffre2 = $resultats" . PHP_EOL;
?>
