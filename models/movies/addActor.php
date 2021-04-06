<?php
    if(!isset($_POST['addActor'])) {
        header("Location: ../../index.php?page=admin");
    } else {
        require_once "../../config/connection.php";
        include "../functions.php";
        $actor = $_POST['actor'];
        insert_actor($actor);
        header("Location: ../../index.php?page=admin");
    }
?>