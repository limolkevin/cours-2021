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
//code tahar operateur d'affectation
    $a = 0 ;
    $a = ($b=5) +7 ;
    echo nl2br(" \n $a ");
    $a += 4 ;
    echo nl2br( " \n 'vaut 16' $a ");
    // 16
    //$a = $a+4;
    $a -= 20;
    //$a = $a+4)$a -= 20
    echo nl2br( " \n $a <br>");

//Opérateurs de comparaison

    $g = 12;
    $h = 12;
    $i = 11;
    var_dump ($g == $h); //vrai si g et h sont pareil 
    echo "<br>";
    var_dump ($g === $h); //vrai si g et h son pareil et de meme type 
    echo "<br>";
    var_dump ($g != $i); // vrai si g et i son pas pareil
    echo "<br>";
    var_dump ($i < $h); //vrai si i est plus petit que h
    echo "<br>";
    var_dump ($g > $i);// vrai si g est plus grand que i
    echo "<br>";
    var_dump ($g <= $h); //vrai si g est plus petit ou egale a h
    echo "<br>";
    var_dump ($g >= $i); //vrai si g est plus grand ou egale a i
    echo "<br>";

//Opérateur logique / conditions

    $nom = "crazy";
    $prenom = "kevin";
    $age = 31;
//est ce que kevin est majeur methode 1
    if ($age >= 18 ) {
//execute du code
        echo ("kevin est majeur");
    }
    else{
        echo ("kevin est mineur");
    }
//methode 2
    (($age >= 18) ? $reponse="oui" : $reponse="non");
    echo ("<br> la reponse a est ce que kevin est majeur est : ". $reponse);

//les tableaux

    $couleur[0] = "red";
    $couleur[1] = "blue";
    $couleur[2] = "white";
    $couleur[3] = "black";
    echo "<pre>";
    var_dump ($couleur);//affiche tout le tableau
    echo "<pre>";
    var_dump ($couleur[2]); //affiche la couleur 3
    echo "<br>";

// a vous de jouer
    $txt = "PHP";
    echo "I love $txt ! </br> and coding !";

//case sensitive
    $color = "rouge";
    echo "<br> Ma voiture est " . $color . "<br>";
    echo "Ma maison est ". $color .  "<br>";
    echo "Mon bateau est " . $color . "<br>";

// commenter du code
    $x = 5 /* + 15 */ + 5;
    echo $x;

//typage

    $boleen = true;
    $txt = "Hello world!";
    $x = 5;
    $y = 10.5;
    $couleur ;

    echo '<pre>';
    var_dump(  $y, $x,  $txt, $boleen, $couleur);
    echo '</pre>';

    $voiture = array("Volvo", "BMW", "Toyota");

    echo '<pre>';
    var_dump($voiture);
    echo '</pre>';

//https://www.w3schools.com/php/php_arrays_indexed.asp

//arrondi 
    $euro = 6.55957;
    printf("%.2f",$euro);

//boucle

    







?>
</body>
</html>