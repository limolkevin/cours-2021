<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>php heredoc nowdoc</title>
</head>
<body>
  <h1> php heredoc </h1>
  <?php 
    //
    echo "<b> 01 heredoc syntaxe</b> <br>";
    //
    echo "La syntaxe Heredoc : <<< <br>
    Après cet opérateur, un identifiant est fourni.<br> 
    La chaîne de caractères en elle-même vient ensuite.<br>
    Suivie du même identifiant pour fermer la notation.";
    echo "<br><br>";
    echo "De plus, l'identifiant doit suivre les mêmes règles <br>
    que n'importe quel autre libellé PHP : <br>
    il ne doit contenir que des caractères alphanumériques et des soulignés, <br>
    et doit commencer par un caractère non numérique ou un souligné '_' .";
    echo "<br><br>";
    //
    echo "<b> 02 heredoc test </b> <br>";
    //
    $a = "variableChaîne";
    $b = 123;
    class ClasseTest {
      public $name;      
    }    
    $objetTest = new ClasseTest();
    $objetTest->name = 'nomTest';
    //
    echo <<<ABC
    Voici comment est affiché une variable chaîne : $a.
    <br>
    Voici comment est affiché une variable numérique : $b.
    <br>
    Voici comment est affiché un objet : $objetTest->name.
    ABC;
    echo "<br><br>";
    echo <<<DEF
    Voici comment est affiché une variable chaîne : $a.
    <br>
    Voici comment est affiché une variable numérique : $b.
    <br>
    Voici comment est affiché un objet : $objetTest->name.
    DEF;
    echo "<br><br>";
    //
    echo "<b> 03 heredoc test </b> <br>";
    //

  ?> 
  <h1> php nowdoc </h1>
  <?php
    //
    echo "<b> 01 nowdoc syntaxe</b> <br>";
    echo "La syntaxe Nowdoc : <<< <br>
    Identifiant qui suit est entouré de guillemets simples : <<<'EOT'. <br>
    Toutes les règles concernant les identifiants Heredoc <br>
    s'appliquent également aux identifiants Nowdoc. <br>";
    //
  ?>
</body>
</html>
 

 