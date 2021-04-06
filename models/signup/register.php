<?php
    require_once "../../config/connection.php";
    include "../functions.php";
    session_start();
    if(isset($_POST['signin'])) {
        $regexName = "/^[A-Z][a-z]{2,13}$/";
        $regexEmail = "/^[a-zA-Z0-9.!#$%&'*+=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/";
        $regex = "/^[\w#@!]{4,20}$/";

        $fName = $_POST['fName'];
        $lName = $_POST['lName'];
        $email = $_POST['email'];
        $username = $_POST['username'];
        $password = $_POST['password'];
        $repassword = $_POST['repassword'];
        
        $errors = [];
        if(!preg_match($regexName, $fName)) {
            $errors[] = "Wrong First Name format";
        }
        if(!preg_match($regexName, $lName)) {
            $errors[] = "Wrong Last Name format";
        }
        if(!preg_match($regexEmail, $email)) {
            $errors[] = "Wrong Email format";
        }
        if(!preg_match($regex, $username)) {
            $errors[] = "Wrong Username format";
        }
        if(!preg_match($regex, $password)) {
            $errors[] = "Wrong Password format";
        }
        if($password != $repassword) {
            $errors[] = "Passwords do not match";
        }

        $password = md5($password);

        if(count($errors) > 0) {
            $_SESSION['register'] = $errors;
            header("Location: ../../index.php?page=register");
        } else {
            $result = register($fName, $lName, $email, $username, $password);
            if($result) {
                header("Location: ../../index.php?page=login");
            } else {
                $_SESSION['change'] = "Username or email already exist";
                header("Location: ../../index.php?page=register");
            }
        }

    } else {
        http_response_code(404);
    }
?>