<?php
session_start();
  require_once "config/connection.php";
  include "models/functions.php";
  include "views/fixed/head.php";
  include "views/fixed/header.php";

  if(isset($_GET['page'])) {
    switch($_GET['page']){
      case 'home': 
      include "views/pages/home.php";
      break;
      case 'news':
      include "views/pages/news.php";
      break;
      case 'soon':
      include "views/pages/comingSoon.php";
      break;
      case 'all':
      include "views/pages/allMovies.php";
      break;
      case 'most':
      include "views/pages/mostCommented.php";
      break;
      case 'top':
      include "views/pages/topRated.php";
      break;
      case 'latest':
      include "views/pages/latest.php";
      break;
      case 'movie':
      include "views/pages/movie.php";
      break;
      case 'login':
      include "views/pages/login.php";
      break;
      case 'profile':
      include "views/pages/profile.php";
      break;
      case 'admin':
      include "views/pages/admin.php";
      break;
      case 'author':
      include "views/pages/author.php";
      break;
      case 'register':
      include "views/pages/register.php";
      break;
      case 'logout':
      include "views/pages/logout.php";
      break;
      case 'mod':
      include "views/pages/update.php";
      break;
      case 'password':
      include "views/pages/password.php";
      break;
      case '404':
      include "views/pages/404.php";
      break;
      default:
      include "views/pages/404.php";
      break;

    }
  } else {
    include "views/pages/home.php";
  }

  include "views/fixed/footer.php";  
?>