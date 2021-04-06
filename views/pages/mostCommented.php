<div id="main">
    <div id="content">
        <?php
            $most_commented = all_most_commented();
            foreach($most_commented as $movie):
        ?>
        <?php include "views/partials/movieLong.php"; ?>
            <?php endforeach; ?>  
    </div>
</div>