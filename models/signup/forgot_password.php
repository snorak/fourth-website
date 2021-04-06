<?php
    if(isset($_POST['restart'])) {
        require_once "../../config/connection.php";
        include "../functions.php";
        session_start();
   
        $username = $_POST['username'];
        $exist = check_username($username);
        if($exist) {
            $random = mt_rand(100000, 999999);
            $password = md5($random);
            set_new_password($password, $username);

            $user = user_details($username);
            $mail = $user->email;
            $subject = "Your password has been changed";
            $message = "Your new password is: " .$random;
            $headers = 'From moviehunter';
            mail($mail, $subject, $message, $headers);

            $_SESSION['password'] = "Your new password has been sent to your email.";
            header("Location: ../../index.php?page=password");

        } else {
            $_SESSION['password'] = "Username does not exist";
            header("Location: ../../index.php?page=password");
        }
    } else {
        header("Location: ../../index.php?page=404");
    }
?>