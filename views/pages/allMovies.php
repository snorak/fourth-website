<div id="main">
    <div id="content">
        <?php
            include "views/partials/pagination.php";
            // $allMovies = get_all_movies();
            foreach($movies_page as $movie):
        ?>
        <?php include "views/partials/movieLong.php"; ?>
           
            <?php 
                endforeach;   
                include "views/partials/printPages.php"; 
            ?>
    </div>
</div>