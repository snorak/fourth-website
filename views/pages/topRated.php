<div id="main">
    <div id="content">
        <?php
            $top_rated = all_top_rated();
            foreach($top_rated as $movie):
        ?>
        <?php include "views/partials/movieLong.php"; ?>
            <?php endforeach; ?>  
    </div>
</div>