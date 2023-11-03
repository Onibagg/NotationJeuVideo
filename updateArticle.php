<?php
include("functions.php");
head('Modifier un article');
title('Modifier un article');
$mysqli = connectiondB();
$gameid = $_GET["idArticle"];
$id_Membre = 1;
//var_dump($gameid);

$article = getArticleById($mysqli, $gameid);
//var_dump($article);


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titre = htmlspecialchars($_POST["titre"]);
    $synopsis = htmlspecialchars($_POST["synopsis"]);
    $contenu = htmlspecialchars($_POST["contenu"]);
    $nomJeu = htmlspecialchars($_POST["nomJeu"]);
    $prixJeu = floatval($_POST["prixJeu"]); // Convertir en flottant
    $noteJeu = intval($_POST["noteJeu"]); // Convertir en entier
    $categorie = htmlspecialchars($_POST["categorie"]);

    $data = 0;

    updateArticle($mysqli, $gameid, $id_Membre, $data);
    header('Location: http://td-r310/articles.php');
    exit();
}


if ($article && isset($article[0])) {
    $article = $article[0];  // Prend le premier élément de l'array
    $articleid = $article['Id_Article'];
    ?>

<div class="container mt-5">
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <div class="mb-3">
            <label for="titre" class="form-label">Titre de l'article</label>
            <input type="text" class="form-control" id="titre" name="titre" value="<?= $article['TitreArticle'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="synopsis" class="form-label">Synopsis</label>
            <textarea class="form-control" id="synopsis" name="synopsis" rows="6" required><?= $article['Synopsis'] ?></textarea>
        </div>
        <div class="mb-3">
            <label for="contenu" class="form-label">Contenu</label>
            <textarea class="form-control" id="contenu" name="contenu" rows="6" required><?= $article['ContenuArticle'] ?></textarea>
        </div>
        <div class="mb-3">
            <label for="nomJeu" class="form-label">Nom du jeu</label>
            <input type="text" class="form-control" id="nomJeu" name="nomJeu" value="<?= $article['NomJeu'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="prixJeu" class="form-label">Prix</label>
            <input type="number" class="form-control" id="prixJeu" name="prixJeu" step="0.01" value="<?= $article['PrixJeu'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="noteJeu" class="form-label">Note</label>
            <input type="number" class="form-control" id="noteJeu" name="noteJeu" min="1" max="10" value="<?= $article['NoteJeu'] ?>" required>
        </div>
        <div class="mb-3">
            <label for="categorie" class="form-label">Catégorie</label>
            <select class="form-select" id="categorie" name="categorie" required>
                <option value="Plate-forme">Plate-forme</option>
                <option value="Sport">Sport</option>
                <option value="Point & click">Point & click</option>
                <option value="RPG">RPG</option>
                <option value="Action/Aventure">Action/Aventure</option>
                <option value="FPS">FPS</option>
                <option value="Divers">Divers</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Ajouter</button>
    </form>
</div>
<?php
}
?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
