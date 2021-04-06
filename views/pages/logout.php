<?php 
    unset($_SESSION['userIdRole']);
    unset($_SESSION['username']);
    header("Location: index.php");
?>