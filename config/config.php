<?php
define("ABSOLUTE_PATH", $_SERVER["DOCUMENT_ROOT"]."/moviehunter");

define("ENV_FILE", ABSOLUTE_PATH."/config/.env");
define("LOG_FILE", ABSOLUTE_PATH."/data/log.txt");

define("SERVER", env("SERVER"));
define("DATABASE", env("DBNAME"));
define("USERNAME", env("USERNAME"));
define("PASSWORD", env("PASSWORD"));

function env($name){
    $data = file(ENV_FILE);
    $one = "";
    foreach($data as $value){
        $config = explode("=", $value);
        if($config[0]==$name){
            $one = trim($config[1]);
        }
    }
    return $one;
}
?>