<?php
     require_once "../../config/connection.php";
     include "../functions.php";
     session_start();

     if(isset($_POST['signin'])) {

        $regex = "/^[\w#@!]{4,20}$/";
        $username = $_POST['username'];
        $password = $_POST['password'];

        $errors = [];
        if(!preg_match($regex, $username)) {
            $errors[] = "Wrong Username format";
        }
        if(!preg_match($regex, $password)) {
            $errors[] = "Wrong Password format";
        }

        if(count($errors) > 0) {
            $_SESSION['login'] = $errors;
            header("Location: ../../index.php?page=login");
        } else {
            $password = md5($password);
            $result = login($username, $password);
            if($result) {
                $_SESSION['userIdRole'] = $result->idRole;
                $_SESSION['username'] = $result->username;
                $_SESSION['idUser'] = $result->idUser;
                header("Location: ../../index.php");
            } else {
                $_SESSION['wrong'] = "Wrong username or password";
                header("Location: ../../index.php?page=login");
            }
        }

     } else {
         http_response_code(404);
     }
?>