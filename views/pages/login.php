<?php
    if(!isset($_SESSION['username'])):
?>
<div id="main">
    <div id="content">
        <div class="signup">
            <form class="form" method="POST" action="models/signup/login.php">
                <h1>Log In</h1><br>
                <p>Username:</p>
                <input type="text" id="username" name="username"/><br><br>
                <p>Password:</p>
                <input type="password" id="password" name="password"/><br><br>
                <input type="submit" value="Log In" class="buttonSignin" name="signin"/><br><br>
                <a href="index.php?page=register">Do not have an account yet?</a><br><br>
                <a href="index.php?page=password">Forgot your password?</a><br><br>
                
                <p class="errors">
                    <?php 
                    if(isset($_SESSION['wrong'])):
                    $wrong = $_SESSION['wrong'];
                    ?>
                    <i><?=$wrong?></i>
                    <?php
                        unset($_SESSION['wrong']);
                        endif;   
                    ?>
                    <?php
                        if(isset($_SESSION['login'])):
                        $login = $_SESSION['login'];
                        foreach($login as $error):
                    ?>
                    <i><?=$error?></i><br>
                    <?php
                        endforeach;
                        unset($_SESSION['login']);
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

