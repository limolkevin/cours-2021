<?php

$fruits = array("d" => "citron", "a" => "orange", "b" => "banane", "c" => "pomme");
$fruitArrayObject = new ArrayObject($fruits);
$fruitArrayObject->asort();

foreach ($fruitArrayObject as $key => $val) {
    //echo "$key = $val\n";
    echo nl2br("Une  clé une valeur >>> $key = $val \n");
}

?>