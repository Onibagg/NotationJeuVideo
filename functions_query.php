<?php
include ("functions_DB.php");


function getListArticles($mysqli){
   /* 2.1. Requête pour récupérer les informations suivantes pour tous les articles : identifiant de
l'article, titre, nom du jeu, prix du jeu, note du jeu et la date de création de l'article.*/
        $requete = "SELECT Id_Article,TitreArticle,NomJeu,PrixJeu,NoteJeu,DateCreationArticle FROM `article`";
        return readDB($mysqli,$requete);
}
function getArticleById($mysqli, $id_article){
    /*2.2. Requête pour récupérer toutes les informations d'un article en fonction de son identifiant
    (par exemple, requête pour l'identifiant '1').*/
    $requete = "SELECT * FROM `article` WHERE Id_Article = ".$id_article;
    return readDB($mysqli,$requete);
}
function getPathImageById($mysqli, $id_article) {
    /*2.3. Requête pour récupérer les chemins des images pour un article donné requête pour l'identifiant '1').*/
    $requete = "SELECT Chemin FROM `image` WHERE Id_Article =".$id_article;
    return readDB($mysqli,$requete);
}
function getlistAvisById($mysqli, $Id_Article) {
/*2.4. Requête pour sélectionner tous les avis d'un article donné (requête pour l'identifiant '1').
La requête doit également indiquer pour chaque avis le login du membre l'ayant écrit.*/

    $requete = "SELECT TitreAvis,TexteAvis,NoteAvis,DateCreationAvis,Login FROM `avis` INNER JOIN membre ON avis.Id_Membre = membre.Id_Membre WHERE Id_Article = ".$Id_Article;
    return readDB($mysqli,$requete);
}

function createArticle($mysqli, $Id_Membre, $TitreArticle, $ContenuArticle, $Synopsis, $NomJeu,$PrixJeu, $NoteJeu, $NomCategorie){
    /*1.3. Requête pour ajouter un article (attention également aux tables dépendant d’un article,
comme les images, les catégories ou les membres ayant écrit l’article).*/

    $demande = "INSERT INTO `article`(`TitreArticle`, `ContenuArticle`, `Synopsis`, `NomJeu`, `PrixJeu`, `NoteJeu`) VALUES ('$TitreArticle','$ContenuArticle','$Synopsis','$NomJeu',$PrixJeu,$NoteJeu) ";

    $t = "SELECT Id_Article FROM `article` ORDER BY DateCreationArticle DESC LIMIT 1";
    $b = readDB($mysqli,$t);
    $m = $b[0]["Id_Article"];
    $demande2 = "INSERT INTO `rediger`(`Id_Article`,`Id_Membre`) VALUES ($m,$Id_Membre)";

    $demande3 = "INSERT INTO `categorie`(`NomCategorie`) VALUES ('$NomCategorie')";

    writeDB($mysqli,$demande);
    writeDB($mysqli,$demande2);
    writeDB($mysqli,$demande3);
}

function updateArticle($mysqli, $id_article, $id_membre, $data) {
    /*3.1. Requête pour modifier le contenu d'un article (modification du contenu, du prix, du synopsis).
Attention d’autres tables peuvent également être modifiées (mise à jour par exemple de la
date de dernière modification de l’article pour le membre). */

    $ContenuArticle = $data['ContenuArticle'] ;
    $Synopsis = $data['Synopsis'];
    $PrixJeu = $data['PrixJeu'];

    $query = "UPDATE `article` SET `ContenuArticle`='$ContenuArticle',`Synopsis`='$Synopsis',`PrixJeu`='$PrixJeu' WHERE `Id_Article`= $id_article";
    writeDB($mysqli,$query);

    $demande2 = "UPDATE `rediger` SET  `DateModificationArticle`=CURRENT_TIMESTAMP WHERE `Id_Article`= $id_article";
    writeDB($mysqli,$demande2);

    $demande3 = "UPDATE `membre` SET `DateDerniereConnexion`=CURRENT_TIMESTAMP WHERE `Id_Membre`= $id_membre";
    writeDB($mysqli,$demande3);
}

function deleteArticle($mysqli, $id_article){
    /*4.2. Requête pour supprimer un article par son identifiant*/
    $query = "DELETE FROM `classer` WHERE `Id_Article`= $id_article";
    writeDB($mysqli,$query);
    $query = "DELETE FROM `rediger` WHERE `Id_Article`= $id_article";
    writeDB($mysqli,$query);
    $query = "DELETE FROM `avis` WHERE `Id_Article`= $id_article";
    writeDB($mysqli,$query);
    $query = "DELETE FROM `image` WHERE `Id_Article`= $id_article";
    writeDB($mysqli,$query);
    $query = "DELETE FROM `article` WHERE `Id_Article`= $id_article";
    writeDB($mysqli,$query);
}




