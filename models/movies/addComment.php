<?php
      require_once "../../config/connection.php";
      include "../functions.php";
    if(isset($_POST['addComment'])) {
        $text = $_POST['text'];
        $idMovie = $_POST['idMovie'];
        $idUser = $_POST['idUser'];

        $result = add_comment($idMovie, $idUser, $text);
        header("Location: ../../index.php?page=movie&movie=".$idMovie);
    } else {
        header("Location: ../../index.php?page=404");
    }
?>