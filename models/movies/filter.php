<?php
    header("Content-Type: application/json");
    require_once "../../config/connection.php";
    include "../functions.php";

    if(isset($_GET['search'])) {

        $search = $_GET['search'];
        $filter = filter_movies($search);
        echo json_encode($filter);

    } else {
        http_response_code(404);
    }
?>  