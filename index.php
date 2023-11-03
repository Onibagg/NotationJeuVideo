<?php
header('Location: http://td-r310/articles.php');
ini_set('display_errors',1);
error_reporting(E_ALL);
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

include("functions_structure.php");
include("functions_query.php");

$connection = connectiondB();

$demande ="SELECT * FROM categorie";
// $result = readDB($connection,$demande);

/*$demande2 = "INSERT INTO categorie(NomCategorie) VALUES ('test')";       DELETE FROM `categorie` WHERE `categorie`.`NomCategorie` = 'test'
writeDb($connection,$demande2);*/

//$result = getListArticles($connection);

//$result = getArticleById($connection, 2);

//$result = getPathImageById($connection, 4);

//$result = getlistAvisById($connection, 1);

//createArticle($connection,1,"TestNomArticle","TestContenuArticle","TestSynopsis","TestNomJeu",50,20,"MMORPG")

//$idarticle = 13;
//$data = ['ContenuArticle' => 'Contenu Article 13 ', 'Synopsis' => 'Synopsis Article 13', 'PrixJeu' => 50];
//updateArticle($connection,$idarticle,1,$data);

//deleteArticle($connection,$idarticle);

?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <?php getHead(); ?>
</head>
<body>
    <?php getHeader(); ?>
    <article>
    	<div class="jumbotron-fluid">
            <?php
            //var_dump($data);
            ?>
      </div>
    </article>
    <?php 
    	getFooter();

        closeDB($connection);
    ?>
</body>
</html>