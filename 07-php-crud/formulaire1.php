<?php
//Inclue le fichier "functions.php"
include 'functions.php';
?>
<!-- Appel fonction "template_header" -->
<?=template_header('Contact')?>
<!-- Corps de la page -->
<div class="content">
	<h2>Contact</h2>
	<p>Formulaire</p>
	<form action="formulaire1.php" method="post" >
        <div class="row">
            <div class="col">
                <input name="prenom" type="text" class="form-control" placeholder="Prenom" required>
            </div>
            <div class="col">
                <input name="nom" type="text" class="form-control" placeholder="Nom" required>
            </div>
        </div>
        <br><br>
        <button class="btn btn-primary" type="submit">valider</button>
    </form>
    <br><br>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // collect value of input field
        $name = $_POST['prenom'];
        if (empty($name)) {
            echo "le nom est vide merci de le remplir <br>";
            } else {
            echo 'votre nom est '. $name .'<br>';
        }

        $prenom = $_POST['nom'];
        if (empty($prenom)) {
        echo "le prenom est vide merci de le remplir <br> ";
        } else {
        echo 'votre prénom est '.$prenom.'<br>';
        }
    }
?>

</div>

<!-- Appel fonction "template_footer -->
<?=template_footer()?>




