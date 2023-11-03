<?php
include("functions.php");
head('Game');
title('Game :');
$gameid = $_GET["id"];
?>
    <div class="text-center">
        <a href="/">
            <button type="button" class="btn btn-outline-dark mb-5">Retour à la liste des articles</button>
        </a>
    </div>

<?php
displayArticle($gameid);