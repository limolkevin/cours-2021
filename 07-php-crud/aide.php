<?php
//Inclue le fichier "functions.php"
include 'functions.php';
?>
<!-- Appel fonction "template_header" -->
<?=template_header('Aide')?>
<!-- Corps de la page -->
<div class="content">
<h2>Aide</h2>
	<p><b>L'acronyme informatique anglais CRUD : create, read, update, delete.</b>
	<br>Parfois appelé SCRUD avec un "S" pour search) 
	désigne les quatre opérations de base pour la persistance des données, en particulier le stockage d'informations en base de données.
	<br> Soit : <b>create :</b> créer, <b>read :</b> lire, <b>update :</b> mettre à jour, <b>delete :</b> supprimer.
	<br>Plus généralement, il désigne les opérations permettant la gestion d'une collection d'éléments.
	Ce terme est aussi un jeu de mot en anglais sur l'adjectif crude (en français brut ou rudimentaire).</p>
	<img src="tableau01.png" style="height: 160px; margin:12px 15px 20px 0px; opacity: 0.7;">
</div>
<!-- Appel fonction "template_footer -->
<?=template_footer()?>