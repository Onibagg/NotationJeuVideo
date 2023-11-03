<?php

#------------------------
#fonctions affichage HTML 
#------------------------

function getHead() {
#Syntaxe Heredoc similaire à : echo 'mon texte' ou la fermeture de la balise php;
echo <<<HTML
	<meta charset="UTF-8">
    <title>TP Web dynamique</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

	<!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

	<!-- Bootstrap Icon -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">

HTML;

}

function getHeader() {
echo <<<HTML
	<header class="jumbotron mb-0 p-4 border-bottom rounded-0 d-flex" id="jumbo">
        <div class="col">
            <a href="index.php">
                <img src="Images/Images/logo.png" style="height: 80px;">
            </a>
        </div>
        <div class="col justify-content-center d-flex">
            <h3 class="form-inline m-0">TP R310</h3>
        </div>
        <div class="col text-right" id="login">
        
        </div>
	</header>

HTML;

}


function getNav() {

}


function getFooter() {

echo <<<HTML
	<footer class="jumbotron py-3 mb-0 border-top rounded-0">
	    <div class="row mr-auto">
	        <div class="col text-center">
	            <label>TD / TP R310</label>
	        </div>
	        <div class="col text-center">
	            <label>Promo</label>
	        </div>
	        <div class="col text-center">
	            <label>2022-2023</label>
	        </div>
	    </div>
	    <div class="row mr-auto">
	        <div class="col text-center">
	            <label>©R&T Saint-Malo</label>
	        </div>
	        <div class="col text-center">
	            <label>

HTML;
    			$ipAddress = $_SERVER['REMOTE_ADDR'];
    			$port      = $_SERVER['REMOTE_PORT'];
    			echo "Ip : ".$ipAddress." Port : ".$port ;
echo <<<HTML
	            </label>
	        </div>
	    </div>
    </footer>

HTML;

}

?>