<div id="main">
    <div id="content">
      <div class="box">
        <div class="head">
          <h2>LATEST MOVIES</h2>
          <p class="text-right"><a href="index.php?page=latest">See all</a></p>
        </div>
        <?php
          $latest = latest_movies_top();

          foreach($latest as $key=>$one):
        ?>

            <?php include "views/partials/movieShort.php"; ?>

          <?php endforeach; ?>

        <div class="cl">&nbsp;</div>
      </div>
      <div class="box">
        <div class="head">
          <h2>TOP RATED</h2>
          <p class="text-right"><a href="index.php?page=top">See all</a></p>
        </div>
        
              <?php
                $top_rated = top_rated();

                foreach($top_rated as $key=>$one):
              ?>

        <?php include "views/partials/movieShort.php"; ?>

          <?php endforeach; ?>

        <div class="cl">&nbsp;</div>
      </div>
      <div class="box">
        <div class="head">
          <h2>MOST COMMENTED</h2>
          <p class="text-right"><a href="index.php?page=most">See all</a></p>
        </div>
 
        <?php
          $most_commented = most_commented();

          foreach($most_commented as $key=>$one):
        ?>

            <?php include "views/partials/movieShort.php"; ?>

          <?php endforeach; ?>

        <div class="cl">&nbsp;</div>
      </div>
    </div> <!-- END  -->

    <div id="news">
      <div class="head">
        <h3>NEWS</h3>
        <p class="text-right"><a href="index.php?page=news">See all</a></p>
      </div>

              <?php
                  $recentNews = recent_news();
                  foreach($recentNews as $news):
                  $newsText = explode(".",($news->newsText));
                  $output = $newsText[0]."...";
              ?>

      <div class="content">
        <p class="date"><?=$news->newsTime?></p>
        <h4><?=$news->newsHeading?></h4>
        <p><?=$output?></p>
        </div>

        <?php
          endforeach;
        ?>

    </div>
    <div id="coming">
      <div class="head">
        <h3>COMING SOON</h3>
        <p class="text-right"><a href="index.php?page=soon">See all</a></p>
      </div>

      <?php
          $coming_soon = coming_soon();
          foreach($coming_soon as $soon):
            $newsText = explode(".",($soon->soonDescription));
            $output = $newsText[0]."...";
      ?>

      <div class="content">
        <h4><?=$soon->soonHeading?></h4>
        <img src="assets/images/soon/<?=$soon->soonPicture?>" alt="<?=$soon->soonHeading?>" />
        <p><?=$output?></p>
      </div>

          <?php endforeach; ?>

    </div>
    <div class="cl">&nbsp;</div>
  </div>