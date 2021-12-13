<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php Objet</title>
</head>
<body>
    <h1> php Objet </h1>
    <?php 
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo "<b> 01 Classes et Objets </b> <br>";
        class Fruit {
            // Déclaration des propriétés
            public $name;
            public $color;
            // Déclaration de la méthode "set_name"
            function set_name($name) {
              $this->name = $name;
            }
            // Déclaration de la méthode "get_name"
            function get_name() {
              return $this->name;
            }
          }
        // Création d'un objet "$apple"
        $apple = new Fruit();
        // Création d'un objet "banana"
        $banana = new Fruit();
        // Attribution à l'Objet "$apple" de son nom
        $apple->set_name('Apple');
        // Attribution à l'Objet "banana" de son nom
        $banana->set_name('Banana');
        // Affiche le nom de l'Objet "$apple"
        echo $apple->get_name()."<br>";
        // Affiche le nom de l'Objet "$banana"
        echo $banana->get_name();
        //
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo "<b> 02 Classes et Objets </b> <br>";
        class Fruit2 {
            // Propriétés
            public $name;
            public $color;
            // Methodes
            function set_name($name) {
              $this->name = $name;
            }
            function set_color($color){
              $this->color = $color;
            }
            function get_color(){
                return $this->color;
            }  
            function get_name() {
              return $this->name;
            }
        }
        $apple = new Fruit2();
        $banana = new Fruit2();
        $apple->set_name('Apple ');
        $apple->set_color('Green');
        $banana->set_name('Banana');
        $banana->set_color('Yellow');
        echo $apple->get_name();
        echo $apple->get_color();
        echo "<br>";
        echo $banana->get_name();
        echo $banana->get_color();
        //
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo '<b> 03 "__construct" </b> <br>';
        class Fruit3 {
            public $name;
            public $color;
            function __construct($name) {
                $this->name = $name;
            }
            function get_name() {
              return $this->name;
            }
        }
        $apple = new Fruit3("Apple");
        echo $apple->get_name();
        //
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo '<b> 04 "__construct" </b> <br>';
        class Fruit4 {
            public $name;
            public $color;
            public $poids;
            function __construct($name,$color,$poids) {
                $this->name = $name;
                $this->color = $color;
                $this->poids = $poids;
            }
            function get_name() {
              return $this->name;
            }
            function get_color() {
                return $this->color;
            }
            function get_poids() {
                return $this->poids;
            }
        }
        $apple = new Fruit4("Apple", "green","50g");
        $banana = new Fruit4("Banana", "yellow","60g");
        echo $apple->get_name()." ";echo $apple->get_color()." ";echo $apple->get_poids();
        echo "<br>";
        echo $banana->get_name()." ";echo $banana->get_color()." ";echo $banana->get_poids();
        //
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo "<b> 05 Modificateurs d'accès </b> <br>";
        class Fruit5 {
          public $name;
          protected $color;
          private $weight;
        }
        $mango = new Fruit5();
        echo $mango->name = 'Mango';
        //echo $mango->color = 'Yellow'; // ERROR
        //echo $mango->weight = '300'; // ERROR
        //
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo "<b> 06 Classes et Objets </b> <br>";
// kevin a besoin d'une solution pour automatiser 
// la facturation de ses services en tant que webedesigner expert react js
// il ne facture pas la TVA
// sa facturation journaliere est 400 euros Jours.
// son projet a durer 15 jours
// créer  un objet (attributs et methodes) qui lui permette de facturer au prorata jours travaillé
// son client s'apelle casino
        class facture{
          public $jour;
          public $tarif;
          public $tva;
          public $totalTtc;
          function __construct($jour, $tarif, $tva){
              $this->jour = $jour;
              $this->tarif = $tarif;
              $this->tva = $tva;
              $this->totalHt =$totalHt = $this->jour * $this->tarif;
              $this->totalTtc = (($totalHt* $this->tva)/100)+$totalHt;
          }
          function get_fact(){
              echo "Montant HT = ".$this->totalHt." € <br>";
              echo "TVA = ".$this->tva." % <br>";
              echo "Montant TVA = ".($this->totalTtc - $this->totalHt)." € <br>";
              echo "Montant TTC = ".$this->totalTtc." €";
          }
        }
        $facture = new facture(15, 400, 20);
        echo $facture->get_fact();
        //
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo "<b>07 héritage </b><br>";

        class Fruit6 {
          public $name;
          public $color;
          public function __construct($name, $color) {
            $this->name = $name;
            $this->color = $color;
          }
          public function intro() {
            echo "The fruit is {$this->name} and the color is {$this->color}.";
          }
        }
        
        // Strawberry is inherited from Fruit
        class Strawberry extends Fruit6 {
          public function message() {
            echo "Am I a fruit or a berry? ";
          }
        }
        $strawberry = new Strawberry("Strawberry", "red");
        $strawberry->message();
        $strawberry->intro();

        //
        echo "<br> ---------------------------------------------------------- <br>";
        //
        echo "<b> exercice voiture </b><br>";
     
     class vehiculeMoteur {
       public $plaque;
       public $moteur;
       public $volant;
       public $eclairage;
       
       public function __construct($plaque, $moteur, $volant, $eclairage) {
         $this->plaque = $plaque;
         $this->moteur = $moteur;
         $this->volant = $volant;
         $this->eclairage = $eclairage;
       }
       public function affichage() {
         echo "Le numéro d'immatriculation est <b>{$this->plaque}</b> ,  mon moteur est <font color='black;'>{$this->moteur}</font>, <br> le volant de ma voiture est {$this->volant}, enfin j'ai un éclairage <i>{$this->eclairage}</i>.";
       }
     }
     
     // camion is inherited from vehiculeMoteur
     class camion extends vehiculeMoteur {
         public $essieu = 2;  
       public function message() {
         echo "Je conduis un camion. <br>  ";
         echo "J'ai {$this->essieu} essieu <br> ";
       }
     }
     $camion = new camion("77144", "puissant", "assisté", "à led",);
     $camion->message();
     $camion->affichage();
     echo "<br><br>";
    
     class voitureTourisme extends vehiculeMoteur {
         public $clim = "vivaFroid";
        public function message() {
          echo "Je conduis une voiture de Tourisme. <br> ";
          echo "J'ai la clim {$this->clim} <br>";

        }
      }
      $voitureTourisme = new voitureTourisme("25400", "hybride", "non assisté", "normal");
      $voitureTourisme->message();
      $voitureTourisme->affichage();
        //
        echo "<br> ---------------------------------------------------------- <br>";
        echo "<b> exemple DATE </b><br>";

// Instanciation d'un objet DateTime initialisé avec une date
      $objet = new DateTime('2020-12-31');

// Appel de la méthode format() pour un affichage au format "jour mois année"
      echo $objet->format('d/m/Y')."<br"; // Retournera 31/12/2020

// Appel de la méthode statique createFromFormat()
      $objet2 = DateTime::createFromFormat('d/m/Y', '31/12/2020');

      if ($objet2 instanceof DateTime) 
      {
      echo '$objet2 est bien un objet DateTime'."<br>";
      }
      if ($objet2 instanceof DateTimeInterface) 
      {
      echo '$objet2 qui est un objet '.get_class($objet2).
         ' est une implémentation de DateTimeInterface (depuis PHP 5.5.0)'."<br>";
      }
// Appel de la méthode format() pour un affichage au format
// défini par la constante de classe DateTime::ISO8601
      echo $objet2->format(DateTime::ISO8601)."<br>";
//heure de la day
$DateAndTime = date('d-m-Y h:i:s a', time());  
echo "aujourd'hui $DateAndTime.";

echo "<br> ---------------------------------------------------------- <br>";
        echo "<b> 08-attributs (propriété) private, protected et public  </b><br>";
        echo "--------- Example 01 ---------------";         
        class Fruit7 {
          public $name;
          protected $color;
          private $weight;
          //pour modifier il faut passer par une methode Getter ou setter
          public function setcolor($scolor) 
            {
                return $this->color = $scolor;
            }
        
            public function getcolor() 
            {
                    echo $this->color;
            }
        }
        
        //creation de lobjet
        $mango = new Fruit7();
        //donne un nom
        $mango->name = '<br>Kiwi'; // OK
        //affichage du nom
        echo $mango->name;
        //ecrit = set
        $mango->setcolor(' vert') ;
        //affiche = get
        $mango->getcolor() ;
        //echo $mango->color ;// impossible de l'acceder en direct. protected
        // $mango->weight = '300'; // ERROR
        
        /*echo "<br>--------- Example 2 ---------------";
        
        class Fruitour {
        
          public $name = 42;
          public $color;
          public $weight;
        
          function set_name($n) {  // a public function (default)
            $this->name = $n;
          }
          protected function set_color($n) { // a protected function
            $this->color = $n;
          }
          private function set_weight($n) { // a private function
            $this->weight = $n;
          }
        }
        //echo $name;
        $mango = new Fruitour();
        
        $mango->set_name('Mango'); // OK
        // echo $mango->name;
        // $mango->set_color('Yellow'); // ERROR
        // $mango->set_weight('300'); // ERROR*/



?>
</body>
</html>
