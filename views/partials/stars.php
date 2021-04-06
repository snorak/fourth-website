<?php
    $stars = $movie->movieRating;

    $fullStars = floor($stars);
    $halfStar = (floor($stars) == $stars) ? 0 : 1;
    $emptyStars = 5 - $fullStars - $halfStar;
    
    for($i = 0; $i < $fullStars; $i++) {
    echo '<i class="fas fa-star fa-xs">&nbsp;</i>';
    }
    if($halfStar) {
    echo '<i class="fas fa-star-half-alt fa-xs">&nbsp;</i>';
    }
    for($i = 0; $i < $emptyStars; $i++) {
    echo '<i class="far fa-star fa-xs">&nbsp;</i>';
    }
?>          