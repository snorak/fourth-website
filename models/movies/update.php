<?php
    if(!isset($_POST['modify'])) {
        header("Location: ../../index.php");
    } else {
        include "../../config/connection.php";
        include "../functions.php";
        $movieHeading = $_POST['movieHeading'];
        $movieDate = $_POST['movieDate'];
        $movieDuration = $_POST['movieDuration'];
        $movieRating = $_POST['movieRating'];
        $movieDescription = $_POST['movieDescription'];
        $id = $_POST['id'];

        update_movie($id, $movieHeading, $movieDate, $movieDuration, $movieRating, $movieDescription);
        
    }
?>