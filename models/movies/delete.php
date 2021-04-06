<?php 
    $statusCode = 404;
    if(!isset($_GET['id'])) {
        http_response_code(404);
    }
    if(isset($_GET['id'])) {
        $id = $_GET['id'];
        require_once "../../config/connection.php";
        include "../functions.php";

        $statusCode = delete_movie($id);
        http_response_code($statusCode);

    }
?>