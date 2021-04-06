<br><br><h1>Sorry we couldn't find that page for you</h1><br>
<h4>Go back to home?<br></h4><h4><a href="index.php">Home</a></h4>








<?php

    $_POST['id'];
    $date = date();
    $_POST['user'];
    

    upisi($id, $date, $user);



    function upisi(1,2,3) {
        $file = fopen(LOG_FILE, "a");
        fwrite($file, "{$id}\t{$user}\t{$date}\n");
        fclose($file);
    }

?>