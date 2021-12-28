<html>
<body>
<?php
include 'functions.php';
$pdo = pdo_connect_mysql();
$msg = '';
//var_dump ($_POST);
if (!empty($_POST)) {
  $prenom = isset($_POST['prenom']) ? $_POST['prenom'] : '';
  $nom = isset($_POST['nom']) ? $_POST['nom'] : '';

//$sql = "INSERT INTO contacts2 (prenom, nom) VALUES ($_POST["prenom"], $_POST["nom"])";



$stmt = $pdo->prepare('INSERT INTO contacts2 VALUES (?, ?)');
    $stmt->execute([$prenom, $nom]);
    // Output message
    $msg = 'Created Successfully!';
    echo $msg;
}



  
  ?>
</body>
</html>


