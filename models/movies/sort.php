<?php
     header("Content-Type: application/json");
     require_once "../../config/connection.php";
     include "../functions.php";

     if(isset($_GET['id'])) {
         
        $id = $_GET['id'];

        if($id == 2) {
            $sort = get_latest_movies();
            echo json_encode($sort);
        }
        if($id == 3) {
            $sort = get_top_rated();
            echo json_encode($sort);
        }
        if($id == 4) {
            $sort = get_most_commented();
            echo json_encode($sort);
        }

     } else {
         http_response_code(404);
     }
?>