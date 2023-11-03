<?php
include "functions.php";
$mysqli = connectiondB();
$gameid = $_GET["idArticle"];
var_dump($gameid);
deleteArticle($mysqli,$gameid);
header('Location: http://td-r310/articles.php');
?>