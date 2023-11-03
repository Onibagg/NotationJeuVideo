<?php
ini_set('display_errors',1);
error_reporting(E_ALL);
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);


include("functions_structure.php");
include("functions_query.php");

function head($titre) {
    ?>
    <html lang="en">
<head>
  <title><?php echo $titre?></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="style.css" rel="stylesheet">
</head>
<body>
<?php
navBar();
}

function title($titre){
    ?>
    <h1 class="display-1 text-center"><?php echo $titre?></h1>
    <hr class="mb-5">
<?php

}

function navBar(){
?>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="articles.php">JeuxVideo.net</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="articles.php">Nos Articles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="addArticle.php">Ajouter un Article</a>
                    </li>
                    <!--  <li class="nav-item">
                        <button type="button" class="btn btn-outline-dark" data-bs-toggle="modal" data-bs-target="#myModal">
                            <p>Connexion</p>
                        </button>
                        <div class="modal fade" id="myModal">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="login-form">
                                        <form id="connexion" action="/" method="POST" class="needs-validation">
                                            <div class="modal-header">
                                                <p class="modal-title display-5">Connexion</p>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                            </div>
                                            <div class="modal-body">
                                                <br>
                                                <div class="form-group">
                                                    <label for="uname" class="form-label">Utilisateur:</label>
                                                    <input type="text" class="form-control" id="user" name="user" placeholder="Utilisateur" required>
                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Veuillez compléter ce champ</div>
                                                </div>
                                                <br>

                                                <div class="form-group">
                                                    <label>Mot de passe</label>
                                                    <input type="password" class="form-control" id="mdp" name="mdp" placeholder="Mot de passe" required>
                                                    <div class="valid-feedback"></div>
                                                    <div class="invalid-feedback">Veuillez compléter ce champ</div>
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <div class="form-group">
                                                    <button type="submit" name="connexion" class="btn btn-outline-dark">Se connecter</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <?php/*
                                    if (isset($_POST['connexion'])) {
                                        connexion();
                                    } else {
                                    }*/
                                    ?>
                                </div>
                            </div>
                        </div>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
<?php
}

function connexion()
{
    if (!isset($_POST['user'])) {
        echo 'Utilisateur non renseigné';
        $user = "";
    } else {
        $user = $_POST['user'];
    }

    if (!isset($_POST['mdp'])) {
        echo 'Mot de Passe non renseigné';
        $mdp = "";
    } else {
        $mdp = $_POST['mdp'];
    }

    $data = json_decode(file_get_contents('Data/login-mdp.json'), true);
    $ok = false;

    foreach ($data as $u) {
        if ($u['user'] == $user && password_verify($mdp, $u['mdp']) == true) {
            $ok = true;
            break;
        }
    }

    if ($ok) {
        $_SESSION["user"] = $user;
        echo '<meta http-equiv="refresh" content="0; url=articles.php">';
    }
}
function displayTabArticles() {
    $mysqli = connectiondB();
    $articles = getListArticles($mysqli);

    if (count($articles) > 0) {
        echo ' <div class="container-fluid p-5"> <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Titre de l’article</th>
                        <th>Nom du jeu</th>
                        <th>Prix</th>
                        <th>Note</th>
                        <th>Date de l’article</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>';

        foreach ($articles as $article) {
            //var_dump($article);
            echo '<tr>
                    <td>' . $article['TitreArticle'] . '</td>
                    <td>' . $article['NomJeu'] . '</td>
                    <td>' . $article['PrixJeu'] . '</td>
                    <td>' . $article['NoteJeu'] . '</td>
                    <td>' . $article['DateCreationArticle'] . '</td>
                    <td>
                        <a href="deleteArticle.php?idArticle='.$article['Id_Article'].'"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="50" height="50" viewBox="0 0 30 30">
                            <path d="M 14.984375 2.4863281 A 1.0001 1.0001 0 0 0 14 3.5 L 14 4 L 8.5 4 A 1.0001 1.0001 0 0 0 7.4863281 5 L 6 5 A 1.0001 1.0001 0 1 0 6 7 L 24 7 A 1.0001 1.0001 0 1 0 24 5 L 22.513672 5 A 1.0001 1.0001 0 0 0 21.5 4 L 16 4 L 16 3.5 A 1.0001 1.0001 0 0 0 14.984375 2.4863281 z M 6 9 L 7.7929688 24.234375 C 7.9109687 25.241375 8.7633438 26 9.7773438 26 L 20.222656 26 C 21.236656 26 22.088031 25.241375 22.207031 24.234375 L 24 9 L 6 9 z"></path>
                        </svg></a>
                        <a href="updateArticle.php?idArticle='.$article['Id_Article'].'"><svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="50" height="50" viewBox="0 0 50 50">
    <path d="M 43.125 2 C 41.878906 2 40.636719 2.488281 39.6875 3.4375 L 38.875 4.25 L 45.75 11.125 C 45.746094 11.128906 46.5625 10.3125 46.5625 10.3125 C 48.464844 8.410156 48.460938 5.335938 46.5625 3.4375 C 45.609375 2.488281 44.371094 2 43.125 2 Z M 37.34375 6.03125 C 37.117188 6.0625 36.90625 6.175781 36.75 6.34375 L 4.3125 38.8125 C 4.183594 38.929688 4.085938 39.082031 4.03125 39.25 L 2.03125 46.75 C 1.941406 47.09375 2.042969 47.457031 2.292969 47.707031 C 2.542969 47.957031 2.90625 48.058594 3.25 47.96875 L 10.75 45.96875 C 10.917969 45.914063 11.070313 45.816406 11.1875 45.6875 L 43.65625 13.25 C 44.054688 12.863281 44.058594 12.226563 43.671875 11.828125 C 43.285156 11.429688 42.648438 11.425781 42.25 11.8125 L 9.96875 44.09375 L 5.90625 40.03125 L 38.1875 7.75 C 38.488281 7.460938 38.578125 7.011719 38.410156 6.628906 C 38.242188 6.246094 37.855469 6.007813 37.4375 6.03125 C 37.40625 6.03125 37.375 6.03125 37.34375 6.03125 Z"></path>
</svg></a>
                        <a href="/game.php?id='. $article['Id_Article'].'">
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" viewBox="0 0 24 24"><path d="M15 12c0 1.654-1.346 3-3 3s-3-1.346-3-3 1.346-3 3-3 3 1.346 3 3zm9-.449s-4.252 8.449-11.985 8.449c-7.18 0-12.015-8.449-12.015-8.449s4.446-7.551 12.015-7.551c7.694 0 11.985 7.551 11.985 7.551zm-7 .449c0-2.757-2.243-5-5-5s-5 2.243-5 5 2.243 5 5 5 5-2.243 5-5z"/></svg>
                        </a>
                    </td>
                  </tr>';
        }

        echo '</tbody>
            </table></div>';
    } else {
        echo 'Aucun article trouvé.';
    }
}

function displayArticle($gameid) {
    $mysqli = connectiondB();
    $article = getArticleById($mysqli, $gameid);

    if ($article && isset($article[0])) {
        $article = $article[0];  // Prend le premier élément de l'array
        $articleid = $article['Id_Article'];
        $image = displayImages($mysqli,$articleid);
        $image = $image[0];
        ?>

        <div class="article">
            <h1 class="display-2 mt-5 text-center"><?= $article['TitreArticle'] ?></h1>
            <div class="container border p-5">
                <div class="row">
                    <div class="col-3">
                        <img alt="Pochette jeu" class="w-75" src='Images/Images/<?= $image['Chemin'] ?>'>
                    </div>
                    <div class="col-9">
                        <p><b>Nom du jeu:</b> <?= $article['NomJeu'] ?></p>
                        <p><b>Prix:</b> <?= $article['PrixJeu'] ?></p>
                        <p><b>Date de l’article:</b> <?= $article['DateCreationArticle'] ?></p>
                        <p><b>Synopsis:</b> <?= $article['Synopsis'] ?></p>
                    </div>
                </div>
            </div>

            <div class="container border p-5 mt-5">
                <b><span class="me-2 note-circle"><?= $article['NoteJeu'] ?></span></b>
                <p><?= $article['ContenuArticle'] ?></p>
            </div>


            <div class="container border p-5 mt-5">
                <p><b>Images :</b></p>
                <div class="row">
                    <?php
                    $images = displayImages($mysqli, $articleid);

                    // Affichage de la première image seule dans une colonne
                    if (!empty($images)) {
                        echo '<div class="col-4">
                    <img alt="Pochette jeu" class="w-100" src="Images/Images/' . $images[0]['Chemin'] . '">
                  </div>';
                    }

                    // Affichage des autres images en carousel bootstrap
                    if (count($images) > 1) {
                        echo '<div class="col-8">
                    <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">';

                        for ($i = 1; $i < count($images); $i++) {
                            echo '<div class="carousel-item';
                            if ($i == 1) {
                                echo ' active'; // La première image est active par défaut
                            }
                            echo '">
                        <img alt="Pochette jeu" class="d-block w-100" src="Images/Images/' . $images[$i]['Chemin'] . '">
                      </div>';
                        }

                        echo '</div>
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                  </button>
                </div>
              </div>';
                    }
                    ?>
                </div>
            </div>

            <div class="container border p-5 mt-5 mb-5">
                <p class="display-5">Avis des internautes:</p>
                <?php
                $avis = displayComment($mysqli, $articleid);

                foreach ($avis as $comment) {
                    echo '<div class="container border p-5 mt-3">
                    <div class="comment">
                    <p>Avis de <b>' . $comment['Login'] . '</b> le ' . $comment['DateCreationAvis'] . ' : </p>
                    <b><span class="me-2 mb-2 note-circle">' . $comment['NoteAvis'] . '</span>' . $comment['TitreAvis'] . '</b>
                  <p>' . $comment['TexteAvis'] . '</p>
                  </div>
              </div>';
                }
                ?>
            </div>

        </div>

        <?php
    } else {
        echo 'Article non trouvé.';
    }
}

function displayComment($conn,$gameid){
    return getlistAvisById($conn,$gameid);
}

function displayImages($conn,$gameid){
    $query = "SELECT Chemin FROM image where Id_Article = $gameid";
    return readDB($conn,$query);

}


?>


