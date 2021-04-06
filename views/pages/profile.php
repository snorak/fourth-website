<?php
    if(isset($_SESSION['username'])):
?>
<?php
    $username = $_SESSION['username'];
    $userDetails = user_details($username);
?>
<div id="main">
<div id="content">
<div id="profileMain">
    <img src="assets/images/profile/<?=$userDetails->userPicture?>" alt="<?=$userDetails->username?>"/>
    <i>&nbsp;<?=$userDetails->firstName?>&nbsp;<?=$userDetails->lastName?></i>
    <form name="profilePic" action="models/profile/changeImage.php" method="POST" enctype="multipart/form-data">
        <br><input type="file" name="picture"/>
        <br><br><input type="submit" value="Change" name="change"/>
        <input type="hidden" name="hidden" value="<?=$username?>"/>
    </form>
    
</div>
<div class="allComments">
    <h2>Comments:</h2><br>
        <?php
            $comments = get_comments_user($username);
            if($comments):
            foreach($comments as $comment):
        ?>
    <div class="oneComment">
        <p class="colorIt userComment"><i><?=$comment->movieHeading?><i></p>
        <p class="commentText"><?=$comment->comment?></p><br>
    </div>
        <?php 
            endforeach;
            else:
        ?>
        <p class="noComments">There are no comments of this user at the moment.</p>
            <?php endif; ?>
</div>
</div>
</div>
<?php
    else:
        header("Location: index.php?page=404");
    endif;
?>