<?php
    $movies_per_page = 12;
    $result = count_movies();
    $total_number_of_movies = $result->number;
    $number_of_pages = ceil($total_number_of_movies / $movies_per_page);

    if(!isset($_GET['number'])) {
        $number = 1;
    }
    else {
        $number = $_GET['number'];
    }

    $from = ($number - 1) * $movies_per_page;

    $movies_page = get_movies_page($from, $movies_per_page);
?>