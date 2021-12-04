<!DOCTYPE html>
<html>
    <head>
        <title>fonction en php</title>
    </head>
    <body>
        <h1>
            Fonction
        </h1>
        <?php
//fonction avec argument
        function bonjour($nom)
    {
    echo "bonjour ".$nom;
    }
    bonjour("crazy");
//dans la parenthese crazy est la valeur quon donne a $nom

//code tahar------------------------------------------------------------

//fonction native de php (count())

   $a[0] = 1;
   $a[1] = 3;
   $a[2] = 5;
   $a[3] = 'valeur';
   $a[4] = 3;
   $a[5] = 5;
   
   echo "<pre>";
   var_dump(count($a));
   echo "</pre>";
   
   $b[0]  = 7;
   $b[5]  = 9;
   $b[10] = 11;
   echo "<pre>";
   var_dump(count($b));
   echo "</pre>";

//fonction suite plusieurs arguments-----------------------------------------------------------------

function salut($nom, $prenom, $age)
    {
    echo "salut ".$nom .$prenom .$age;
    }
    salut("crazy ", "kevin", " j'ai 31 ans. <br>");

//ajouter une image dans une fonction---------------------------------------------------------------

function yo($nom, $prenom, $age, $image)
    {
    echo "<br> voila ".$nom .$prenom .$age ."l'automne est arrivé <br> <br>".$image;
    }
    yo("crazy ", "kevin", " de 31 ans l'image ", "<img src='https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg' width='400px'> ");
//reponse en liste  

    yo("<br> <ul>","<li>papa</li>","<li>maman</li>","</ul>");

//Renvoyer des informations-------------------------------------------------------------------------------------------

function addition($entier1, $entier2)
    {   
        return $entier1 + $entier2;
    }
    echo ("<br> la reponse est pour une addition " .addition (10,5));
    
    function multi($entier3, $entier4)
    {   
        return $entier3 * $entier4;
    }
    echo ("<br> la reponse est pour une multiplication " .multi (10,5). "<br>");    

//exo ticket de caisse carrefour-------------------------------------------------------------
    echo "<br>";
    echo "08 Ticket de caisse <br>";
    function carrefour($quantity, $products, $price)
    {
        $pht = $quantity * $price;
        $tva = $pht * 0.2;
        $pttc = $pht + $tva;
        echo ('<img src="assets/image/1.png">');
        echo ("<br> vous avez commandé " .$quantity ." " .$products ." pour un total ht de : " .$pht ."€");
        echo ("<br> votre tva est de 20% soit : " .$tva ."€");
        echo ("<br> votre total ttc est de  " .$pttc ."€");
    }
        carrefour(2,"mars",5);

// code vincent Fonction calcul de prix--------------------------------------------------------------------------
    echo "<br> <br>";
    echo "08 Ticket de caisse  code vincent <br>";
    function calculPrix($prixHt, $remise, $tva)
    {
        $baseHt = $prixHt - $remise;
        $prixTtc = ($baseHt+($baseHt * $tva)/100);
        return [$baseHt, $prixTtc];
    }
    $prixHt = 310;
    $remise =10;
    $tva = 20;
    $retour = calculPrix($prixHt, $remise, $tva);
    echo '<img src="assets/image/1.png">'."<br>";
    echo "Prix HT = ".$prixHt." €"."<br>";
    echo "Remise = ".$remise." €"."<br>";
    echo "Prix HT moins remise : ".$retour[0]." €"."<br>";
    echo "Tva = $tva"." %"."<br>";
    echo "Prix TTC : ".$retour[1]." € <br> <br> ";

//code hamza---------------------------------------------------------------------------------
    echo "08 Ticket de caisse hamza code<br>";
    function course($p1, $p2, $ttc, $tva, $ht)
    {
        $ttc = $p1 + $p2;
        return "Pain " . $p1 . "<br>Frites " . $p2 . "<br>TVA " . $ttc . "<br>TTC " . (($p1 + $p2) * $tva) . "<br>HT " . $ttc * $ht;
    }
    echo '<img src="assets/image/1.png">'."<br>";
    echo course(45, 64 , "", 0.2, 0.8);


?>
    </body>
</html>