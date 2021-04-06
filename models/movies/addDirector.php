<?php
    if(!isset($_POST['addDirector'])) {
        header("Location: ../../index.php?page=admin");
    } else {
        require_once "../../config/connection.php";
        include "../functions.php";
        $director = $_POST['director'];
        insert_director($director);
        header("Location: ../../index.php?page=admin");
    }
?>