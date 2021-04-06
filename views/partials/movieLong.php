<?php
 if(isset($_SESSION['userIdRole'])) {
    $idRole = $_SESSION['userIdRole'];
 }  
?>
<div class="oneMovie">
            <div class="moviePic">
                <img src="assets/images/movies/<?=$movie->moviePicture?>" alt="<?=$movie->movieHeading?>" width="140px"/>
            </div>
            <div class="movieInfo">
                <h2><a href="index.php?page=movie&movie=<?=$movie->idMovie?>"><?=$movie->movieHeading?></a></h2>
                <?php
                    if(isset($_SESSION['userIdRole']) && $idRole == 2):
                ?>
                <p><a href="index.php?page=mod&movie=<?=$movie->idMovie?>" class="mod" data-id="<?=$movie->idMovie?>"><i>Modify</i></a>&nbsp;&nbsp;&nbsp;<a href="#" class="del" data-id="<?=$movie->idMovie?>"><i class="red">Delete</i></a></p>
                <?php
                    else:
                ?>
                <br>
                <?php
                    endif;
                ?>
                <p><i class="colorIt">Date:</i> <i><?=$movie->movieDate?></i></p>
              

                <?php 
                    $director = show_director($movie->idMovie);
                ?>
                <p><i class="colorIt">Director:</i> <?=$director->nameDirector?></p>
                <?php
                    $actors = show_actors($movie->idMovie);
                    $showActors = "";
                    foreach($actors as $key=>$actor) {
                        if($key != 0){
                            $showActors .= ", ";
                            $showActors .= $actor->nameActor;
                        } else {
                            $showActors .= $actor->nameActor;
                        }
                    } 
                ?>
                <p><i class="colorIt">Actors: </i> <?=$showActors?></p>
                <p><i class="colorIt">Duration: </i><i><?=$movie->movieDuration?>min</i></p>
                <i class="colorIt">Rating: </i>
                <?php  include "views/partials/stars.php";  ?>
                <div class="summary">
                    <p><i class="small"><?=$movie->movieDescription?></i></p>
                </div>
            </div>
        </div>