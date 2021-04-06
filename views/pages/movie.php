<?php
    if(isset($_GET['page']) && isset($_GET['movie'])):
        $idMovie = $_GET['movie'];
        $all = get_all_movies();
        $exist = false;
        foreach($all as $one) {
            if($idMovie == $one->idMovie) {
                $exist = true;
                break;
            }
        }

        if($exist):


        $movie = get_one_movie($idMovie);   
?>
<div id="main">
    <div id="content">
    <div class="movieDetail">
        <div class="movieDetailPic">
            <img src="assets/images/movies/<?=$movie->moviePicture?>" alt="<?=$movie->movieHeading?>" width="140px"/>
        </div>
        <div class="movieDetails">
            <h2><?=$movie->movieHeading?></h2><br>
            <p><i class="colorIt">Date:</i> <i><?=$movie->movieDate?></i></p>
            <?php
                $genres = show_genres($idMovie);
           
                $showGenres = "";
                foreach($genres as $key=>$genre) {
                    if($key != 0){
                        $showGenres .= ", ";
                        $showGenres .= $genre->genre;
                    } else {
                        $showGenres .= $genre->genre;
                    }
                } 
            ?>
            <p><i class="colorIt">Genres: </i> <?=$showGenres?></p>
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
        </div>
    </div>
                <p class="summary"><i class="colorIt">Summary: </i><?=$movie->movieDescription?></p>
                <div class="allComments">
                    <h2>Comments:</h2><br>
                    <?php
                        $comments = show_comments($idMovie);
                        if($comments):
                        foreach($comments as $comment):
                    ?>
                    <div class="oneComment">
                        <p class="colorIt userComment"><i><?=$comment->username?><i></p>
                        <p class="commentText"><?=$comment->comment?></p><br>
                    </div>
                        <?php 
                            endforeach;
                            else:
                        ?>
                        <p class="noComments">There are no comments for this movie at the moment.</p>
                            <?php endif; ?>
                        
                        <?php
                            if(isset($_SESSION['username'])):
                                $username = $_SESSION['username'];
                                $userId = $_SESSION['idUser'];
                        ?>
                        
                        <div class="addComment">
                        <form name="addCmt" id="addCmt" method="POST" action="models/movies/addComment.php">
                                <h2>Add a comment:</h2><br>
                                <textarea name="text"></textarea><br><br>
                                <input type="submit" name="addComment" value="Add"/>
                                <input type="hidden" name="username" value="<?=$username?>"/>
                                <input type="hidden" name="idUser" value="<?=$userId?>"/>
                                <input type="hidden" name="idMovie" value="<?=$idMovie?>"/>
                        </form>
                        </div>
                            <?php endif; ?>
                </div>
                </div>
                </div>
                <?php
                    else:
                ?>
                <?php header("Location: index.php?page=404"); ?>   
                    <?php endif; ?>
                <?php endif; ?>