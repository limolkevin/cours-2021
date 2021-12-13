<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>exposition de vinci</title>
    <style>
.listing {
  width: 150px; 
  height: 30px; 
  position: relative;
  /* background: grey;   */
}

a {
  display: block;
  height: 100%;
}

.les3 {
  position: absolute;
  top: 0;
  left: 100%;
  display: none;
}

.listing:hover .les3 {
  display: block;
}     


    </style>
</head>
<body>
<?php
$str = <<<EOD
<br><b><i> " Bienvenue au musée. <br>
L'artiste du moment est Léonard De Vinci." </b> </i> 
EOD;

/* Exemple plus complexe, avec des variables. */
class musee
{
    var $exposition;
    var $artiste;
    var $tableau;
    var $visuel;
    function __construct()
    {
        $this->exposition = 'la folie grandeur nature' ;
        $this->visuel = '<img src= "assets/image/leo.jpg" width="500px" border="1px">';
        $this->artiste = 'Léonard De Vinci';
        $this->tableau = array('st jean baptiste', 'la joconde', 'l\'homme de vitruve');
        $this->media = "peintures";
    }

}

$devinci = new musee();
$name = 'CRAZY';
echo <<<EOT
<div class="container">
<blockquote>$str</blockquote>
Mon nom est "$name" présentateur de l'exposition $devinci->exposition. <br>
<br> $devinci->visuel <br><br>
J'affiche quelques $devinci->media de $devinci->artiste qui sont : <br><br>
<ul>
<li class="listing"><a href="#" target="_blank"><img class="les3" src="assets/image/stjean.jpg"></a>{$devinci->tableau[0]}</li>
<li class="listing"><a href="#" target="_blank"><img class="les3" src="assets/image/jojo.jpg"></a>{$devinci->tableau[1]}</li>
<li class="listing"><a href="#" target="_blank"><img class="les3" src="assets/image/vivi.jpg"></a>{$devinci->tableau[2]}</li>
</ul>
</div>
EOT;

?>
</body>
</html>