<?php
function pdo_connect_mysql() {
    $DATABASE_HOST = 'localhost';
    $DATABASE_USER = 'root';
    $DATABASE_PASS = '';
    $DATABASE_NAME = 'phpcrud';
    try {
    	return new PDO('mysql:host=' . $DATABASE_HOST . ';dbname=' . $DATABASE_NAME . ';charset=utf8', $DATABASE_USER, $DATABASE_PASS);
    } catch (PDOException $exception) {
    	// If there is an error with the connection, stop the script and display the error.
    	exit('Failed to connect to database!');
    }
}
// Fonction construction du "header"
function template_header($title) {
echo <<<EOT
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>$title</title>
		<link href="style.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	</head>
	<body>
    <nav class="navtop">
    	<div>
			<img src="Griffe01.png" style="height: 36px; margin:12px 15px 20px 0px; opacity: 0.7;">
    		<h1 style="font-size: 24px;">php Crud 04 </h1>
            <a href="index.php"><i class="fas fa-home"></i>accueil</a>
    		<a href="read.php"><i class="fas fa-address-book"></i>contacts</a>
			<a href="https://www.php.net/" target=_blank>php.net</a>
			<a href="aide.php">aide</a>
			<a href="formulaire2.php">formulaire</a>
    	</div>
    </nav>
EOT;
}
// Fonction construction du footer"
function template_footer() {
echo <<<EOT
    </body>
	<br><br>
	<footer class="bg-light text-center text-lg-start">
  		<!-- Copyright -->
  		<div class="text-center p-3" style="height: 40px;background-color: rgba(0, 0, 0, 0.2);">
    	© 2020 Copyright
    	
  		</div>
	</footer>
</html>
EOT;
}
?>

