<?php
    if(!isset($_POST['insert'])) {
        header("Location: ../../index.php?page=admin");
    } else {
        require_once "../../config/connection.php";
        include "../functions.php";

        $pictureName = $_FILES['moviePicture']['name'];
        $pictureTmp = $_FILES['moviePicture']['tmp_name'];
        $destination = "../../assets/images/movies/".$pictureName;
        move_uploaded_file($pictureTmp, $destination);

        $movieHeading = $_POST['movieHeading'];
        $movieDate = $_POST['movieDate'];
        $movieDuration = $_POST['movieDuration'];
        $movieRating = $_POST['movieRating'];
        $movieDescription = $_POST['movieDescription'];
        $movieDirector = $_POST['movieDirector'];
        $movieGenre = $_POST['genre'];
        $actor1 = $_POST['actor1'];
        $actor2 = $_POST['actor2'];
        $actor3 = $_POST['actor3'];

        $insert = insert_movie($movieHeading, $pictureName, $movieRating, $movieDate, $movieDuration, $movieDescription, $movieDirector);

        if($insert) {
            movie_actor($movieHeading, $actor1);
            movie_actor($movieHeading, $actor2);
            movie_actor($movieHeading, $actor3);

            movie_genre($movieHeading, $movieGenre);
        }

    }
?>  