<?php

function connectiondB() {

    $hostname = "td-r310";
    $database = "r310jeuxrt";
    $username = "root";
    $pwd = "";

    $mysqli = new mysqli($hostname,$username,$pwd,$database);

    //connexion a la database via l'interface orientée objet
    if ($mysqli->connect_errno) {
        echo "Connection error: (". $mysqli->connect_errno . ") ". $mysqli->connect_error;
    }

    //modification du jeu de résultat en utf8
    $mysqli->set_charset("utf8");

    return $mysqli;
}

function closeDB ($mysqli) {
    $mysqli->close();
}

function readDB($mysqli, $sql_input) {
    $result = $mysqli->query($sql_input);
    if ($result->num_rows == 0)
        return array();

    return $result->fetch_all(MYSQLI_ASSOC);
}

function writeDB($mysqli, $sql_input) {
    if (!$mysqli->query($sql_input)) { // or  if ($mysqli->query($sql_input) == false) {
        echo "Error: ".$sql_input."<br>".$mysqli->error;
    }
}