<?php
ob_clean();
header("Content-Type: application/octet-stream");
header("Content-Disposition: attachment; filename=download.xlsx");

readfile("http://localhost/moviehunter/models/movies/Movies.xlsx");

?>