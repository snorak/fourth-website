<?php
    if(!isset($_SESSION['username'])):
?>
<div id="main">
    <div id="content">
<div class="signup">
    <form class="form" method="POST" action="models/signup/register.php">
        <h1>Register</h1><br>
        <p>First Name:</p>
        <input type="text" id="fName" name="fName"/><br><br>
        <p>Last Name:</p>
        <input type="text" id="lName" name="lName"/><br><br>
        <p>Email:</p>
        <input type="text" id="email" name="email"/><br><br>
        <p>Username:</p>
        <input type="text" id="username" name="username"/><br><br>
        <p>Password:</p>
        <input type="password" id="password" name="password"/><br><br>
        <p>Re-Password:</p>
        <input type="password" id="repassword" name="repassword"/><br><br>
        <a href="index.php?page=login">You already have an account?</a><br><br>
        <input type="submit" value="Register" class="buttonSignin" name="signin"/><br><br>
        <p class="errors">
            <?php
                if(isset($_SESSION['register'])):
                    $register = $_SESSION['register'];
                    foreach($register as $error):
            ?>
                <i><?=$error?></i><br>
                    <?php endforeach; ?>
                <?php 
                    unset($_SESSION['register']);
                    endif;
                ?>
                <?php
                if(isset($_SESSION['change'])):
                    $change = $_SESSION['change'];
            ?>
                <i><?=$change?></i>
                <?php 
                    unset($_SESSION['change']);
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