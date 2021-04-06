<?php
    if(isset($_POST['change'])) {

        include "../../config/connection.php";
        include "../functions.php";

        $picureName = $_FILES['picture']['name'];
        $picture_tmp = $_FILES['picture']['tmp_name'];
        $pictureType = $_FILES['picture']['type'];
        $pictureSize = $_FILES['picture']['size'];
        $explode = explode(".", $picureName);
        $extenstion = $explode[1];

        $username = $_POST['hidden'];

        $errors = [];
        
        $types = ['image/jpg', 'image/jpeg', 'image/png'];

        if(!in_array($pictureType, $types)){
            array_push($errors, "Wrong type of picture.");
        }
        if($pictureSize > 3000000){
            array_push($errors, "Picutre max size is 3MB.");
        }

        if(count($errors == 0)) {
            list($width, $height) = getimagesize($picture_tmp);
            $original = null;
            switch($pictureType){
              case 'image/jpeg':
                $original = imagecreatefromjpeg($picture_tmp);
                break;
              case 'image/png':
                $original = imagecreatefrompng($picture_tmp);
                break;
            }
            
            $newWidth = 128;
            $newHeight = ($newWidth / $width) * $height;
            $newImage = imagecreatetruecolor($newWidth, $newHeight);

            imagecopyresampled($newImage, $original, 0, 0, 0, 0, $newWidth, $newHeight, $width, $height);

            $path = "assets/images/profile/".$username.".".$extenstion;
            $userPicture = "user-".$username.".".$extenstion;

            switch($pictureType){
                case 'image/jpeg':
                    imagejpeg($newImage, '../../assets/images/profile/'.$userPicture, 75);
                    break;
                case 'image/png':
                    imagepng($newImage, '../../assets/images/profile/'.$userPicture);
                    break;
            }

            
                change_image($username, $userPicture);

                imagedestroy($original);
                imagedestroy($newImage);

                header("Location: ../../index.php?page=profile");
            
        } else {
            header("Location: ../../index.php?page=profile");
        }

    } else {
        header("Location: ../../index.php");
    }
?>