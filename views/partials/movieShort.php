        <div class="<?php
        if(($key != 0) && $key % 5 == 0) {
          echo "movie last";
        } else {
          echo "movie";
        }
        ?>">
       
          <div class="movie-image"> <span class="play"><span class="name"><a href="index.php?page=movie&movie=<?=$one->idMovie?>"><br/><br/><br/><br/><br/><?=$one->movieHeading?></a></span></span><img src="assets/images/movies/<?=$one->moviePicture?>" alt="<?=$one->movieHeading?>" /> </div>
          <div class="rating" style="font-size: 10px;">
            <p>RATING</p>
            <div class="stars">
               <i>&nbsp;</i>
            <?php
              $stars = $one->movieRating;

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
            </div>
            <?php
              $comment = count_comments($one->idMovie);
            ?>
            <span class="comments"><?=$comment->number?></span> </div>
        </div>