<?php
    if(!isset($_SESSION['username'])):
?>
<div id="main">
    <div id="content">
        <div class="signup">
            <form class="form" method="POST" action="models/signup/forgot_password.php">
                <h1>Restart Password</h1><br>
                <p>Username:</p>
                <input type="text" id="username" name="username"/><br><br>
                <input type="submit" value="Restart" class="buttonSignin" name="restart"/><br><br>
                
                <p class="errors">
                    <?php
                        if(isset($_SESSION['password'])):
                    ?>
                    <i><?=$_SESSION['password']?></i><br>
                    <a href="index.php?page=login">Login</a>
                    <?php unset($_SESSION['password']); ?>
                    <?php
                        endif;
                    ?>
                </p>
            </form>
        </div>
    </div>
</div>
<?php
    else:
        header("Location: index.php");
    endif;
?>