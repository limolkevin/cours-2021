<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <div id="cadre">
        <div id="logo"></div>
        <div id="banniere"></div>
        <div id="menu">
            <ul id="navigation">
                <li><a href="#" title="aller à la section 1">item1</a></li>
                <li><a href="#" title="aller à la section 2">item2</a></li>
                <li><a href="#" title="aller à la section 3">item3</a></li>
                <li><a href="#" title="aller à la section 4">item4</a></li>
                <li><a href="#" title="aller à la section 5">item5</a></li>
            </ul>
        </div>
        <div id="colonne">
            <form action="search.php" method="post">
            <input type="text" id="name" name="search" placeholder="Search">
            <input type="image" src="img/search.png" id="recherche" width="15px">
            </form>
        </div>
        <div id="corps">
        Nous n'avons trouvé aucun résultat pour "<?php echo $_POST["search"]; ?>" 
        </div>
        <div id="footer"></div>
    </div>
</body>

</html>