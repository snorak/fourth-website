<div id="main">
    <div id="content">
        <?php
            $latest = all_latest_movies();
            foreach($latest as $movie):
        ?>
        <?php include "views/partials/movieLong.php"; ?>
            <?php endforeach; ?>  
    </div>
</div>