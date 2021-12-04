<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php Fonctions</title>
</head>
<body>
    <h1> php fonctions </h1>
    <?php 
    // ------------------------------------------------------------
    //01 Portée des variables "Global"
    $c = 10;
    function valeurGlobal(){
        global $c;
        $c = 5;
    }
    valeurGlobal(); echo "01 Valeur externe à la fonction : ".$c;
    // ------------------------------------------------------------
    echo "<br> <br>";
    // ------------------------------------------------------------
    // 02 Portée des variables internes à la fonction
    $a = 1;
    function somme(){
        $a = 2 ;
        echo "02 Valeur interne à la fonction : ";echo "$a";echo "<br>";
    }
    somme(); echo "02 Valeur externe à la fonction : "; echo "$a";
    // ------------------------------------------------------------
    echo "<br> <br>";
    // ------------------------------------------------------------
    // 03 Fonction avec valeur static
    function test(){
        static $a;
        $a++;
        echo $a." ";
    }
    echo "03 Valeur 'static' : "; test();test();test();test();test();
    // ------------------------------------------------------------
    echo "<br> <br>";
    // ------------------------------------------------------------
    // 04 Fonction avec envoi d'une valeur
    function surface($a){
        return $a *$a;
    }
    echo "04 Surface du carré = ".surface(3);
    // ------------------------------------------------------------
    echo "<br> <br>";
    // ------------------------------------------------------------
    // 05 Fonction avec envoi d'une valeur
    function surfaceCercle($diam){
        return $diam * 3.14116;
    }
    echo "05 Surface du cercle = ".surfaceCercle(10);
    // ------------------------------------------------------------
    echo "<br> <br>";
    // ------------------------------------------------------------
    // 06 Fonction avec envoi de plusieures valeurs
    function surfaceChamp($largeur, $longueur){
        return $largeur * $longueur;
    }
    echo "06 Surface du champ = ".surfaceChamp(40, 100);
    // ------------------------------------------------------------
    echo "<br> <br>";
    // ------------------------------------------------------------
    // 07 Fonction avec retour d'un tableau
    function listeNombre(){
        return [111, 222, 333,444];
    }
    echo "07 Tableau : ";var_dump ([$un, $deux, $trois, $ffff] = listeNombre());
    // ------------------------------------------------------------

    ?>
</body>
</html>
 

 