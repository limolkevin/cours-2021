<?php
class Fruit {
  public $name;
  public $color;

  function __construct($name, $color) {
    $this->name = $name;
    $this->color = $color;
    // interpollation 
    echo " le fruit c'est {$this->name} et la couleur c'est du {$this->color}. <br>";
  }

  function __destruct() {
    echo "destruct The fruit is {$this->name} and the color is {$this->color}.<br>";
  }
}

$apple = new Fruit("pomme", "rouge");
echo $apple->name;
echo "<br>";
echo $apple->color;
echo "<br>";

$mandarine = new Fruit("mandarine","orange");

echo"<br>";

?>