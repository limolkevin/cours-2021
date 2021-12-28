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
	<form action="contact.php" method="post" >
        <div class="row">
            <div class="col">
                <input name="prenom" type="text" class="form-control" placeholder="Prenom">
            </div>
            <div class="col">
                <input name="nom" type="text" class="form-control" placeholder="Nom">
            </div>
        </div>
        <br><br>
        <button class="btn btn-primary" type="submit">valider</button>
    </form>


</div>

<!-- Appel fonction "template_footer -->
<?=template_footer()?>




