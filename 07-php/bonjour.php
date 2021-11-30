<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>php debut</title>
    </head>
    <body>
        <h1>bonjour php</h1>
        <?php
//on affiche les chaines de caractere

    echo "bonjour le monde lol <br> ";
    echo 'tonton <br>';

//on affiche un entier 

    echo 10 ."<br>";

//concaténation

    $a = 33 ." ceci est un nombre entier <br>";
    $b = "chaine de caractere <br>";
    $c = 33-3 ." entier avec calcul<br>";
    $d = 30;
    $e = 3;

//affiche les valeurs

    echo $a;
    echo $b;
    echo $c;
    echo $a, $b, $c;

//exemple avec saut de ligne

    echo nl2br("sun \n moon \n moon1 \n moon2 <br>");

//calcul addition
    echo $d + $e ."<br>";
//calcul soustraction
    echo $d - $e ."<br>";
//calcul multiplication
    echo $d * $e ."<br>";
//calcul division
    echo $d / $e ."<br>";
//calcul division
    echo $d % $e ."<br>";
//resultat calcul méthode pré-incrimentation
    echo ++$d ."<br>";
//resultat calcul méthode décrémentation    
    $d--;
    echo $d. "<br>";
//concatenation de mot
    $saison = "l'hiver";
    echo $saison ." arrive !";
//operateur d'affectation
    $a = 0 : $a //vaut 0
    $a = ($b=5) +7 : $a //vaut 12 (5+7)
    $a += 4 : $a /*vaut 16 (équivalent à */$a = $a+4 )
?>

    </body>
</html>