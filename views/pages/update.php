<?php
    if(isset($_GET['movie'])):
        $id = $_GET['movie'];
?>

<div id="main">
    <div id="content">
        <div class="signup">
            <form name="update" action="models/movies/update.php" method="POST">
                <h1>Modify</h1><br>
                <p>Movie Heading:</p>
                <input type="text" name="movieHeading"/><br><br>
                <p>Movie Date:</p>
                <input type="date" name="movieDate"/><br><br>
                <p>Movie Duraiton:</p>
                <input type="number" name="movieDuration" max='300'/><br><br>
                <p>Movie Rating:</p>
                <input type="number" name="movieRating" min='0' max='5' step="0.5"/><br><br>
                <p>Movie Description:</p>
                <textarea name="movieDescription"></textarea><br><br>
                <input type="hidden" name='id' value="<?=$id?>"/>
                <input type="submit" name="modify" value="Update"/>
            </form>
        </div>
    </div>
</div>

    <?php else: ?>

    <div>
        <br><h1>Ooops, something went wrong</h1>
    </div>

    <?php endif; ?>