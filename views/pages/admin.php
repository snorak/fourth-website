<?php
    if(isset($_SESSION['userIdRole'])):
        if($_SESSION['userIdRole'] == 2):
?>
<div id="main">
    <div id="content">
        <div id="accessInfo">
        </div>
        <div id="addActorDirector">
            <div id="addActor">
                <form name="formActor" method="POST" action="models/movies/addActor.php">
                    <h3>Add an Actor:</h3>
                    <input type="text" name="actor"/>
                    <input type="submit" name="addActor" value="Add"/>
                </form>
            </div>
            <div id="addDirector">
                <form name="formDirector" method="POST" action="models/movies/addDirector.php">
                    <h3>Add a Director:</h3>
                    <input type="text" name="director"/>
                    <input type="submit" name="addDirector" value="Add"/>
                </form>
            </div>
        </div>
        <div id="insertMovie">
            <form name="insertMovie" action="models/movies/insert.php" method="POST" class="signup" enctype="multipart/form-data">
                <h1>Insert a Movie</h1><br>
                <p>Movie Heading:</p>
                <input type="text" name="movieHeading"/><br><br>
                <p>Movie Picture:</p>
                <input type="file" name="moviePicture"/><br><br>
                <p>Movie Date:</p>
                <input type="date" name="movieDate"/><br><br>
                <p>Movie Duraiton:</p>
                <input type="number" name="movieDuration" max='300'/><br><br>
                <p>Movie Rating:</p>
                <input type="number" name="movieRating" min='0' max='5' step="0.5"/><br><br>
                <p>Movie Description:</p>
                <textarea name="movieDescription"></textarea><br><br>
                <p>Movie Director:</p>
                <select name="movieDirector">
                    <?php
                        $directors = get_all_directors();
                        foreach($directors as $director):
                    ?>
                    <option value="<?=$director->idDirector?>"><?=$director->nameDirector?></option>
                        <?php endforeach; ?>
                </select>
                <p><br>Movie Actors</p>
                <select name="actor1">
                    <?php
                        include "views/partials/getActors.php";
                     ?>
                </select><br><br>
                <select name="actor2">
                    <?php
                        include "views/partials/getActors.php";
                    ?>
                </select><br><br>
                <select name="actor3">
                    <?php
                        include "views/partials/getActors.php";
                    ?>
                </select><br><br>
                <p>Movie Genre</p>
                <select name="genre">
                    <?php
                        $genres = get_genres();
                        foreach($genres as $genre):
                    ?>
                    <option value="<?=$genre->idGenre?>"><?=$genre->genre?></option>
                    <?php endforeach; ?>
                </select><br><br>
                <input type="submit" name="insert" value="Insert"/>
            </form>
        </div>
    </div>
</div>
<?php
    else:
        header("Location: index.php?page=404");
    endif;
else:
    header("Location: index.php?page=404");
    endif;
?>
