<?php
    function get_genres() {
        return executeQuery("SELECT * FROM genres");
    }

    function latest_movies_top() {
        return executeQuery("SELECT * FROM movies m ORDER BY m.movieDate DESC LIMIT 6");
    }

    function count_comments($idMovie){
        global $conn;
        $query = $conn->prepare("SELECT COUNT(*) as number FROM movies m INNER JOIN comments c ON c.idMovie = m.idMovie where m.idMovie = ?");
        $query->execute([$idMovie]);
        return $query->fetch();
    }

    function top_rated() {
        return executeQuery("SELECT * FROM movies m ORDER BY m.movieRating DESC LIMIT 6");
    }

    function most_commented() {
        return executeQuery("SELECT m.movieHeading, m.idMovie, m.moviePicture, m.movieRating, COUNT(*) as number FROM comments c INNER JOIN movies m on c.idMovie = m.idMovie GROUP BY c.idMovie ORDER BY `number` DESC LIMIT 0,6");
    }

    function recent_news() {
        return executeQuery("SELECT * FROM news ORDER BY news.newsTime DESC LIMIT 3");
    }

    function coming_soon() {
        return executeQuery("SELECT * FROM coming_soon ORDER BY coming_soon.soonDate DESC LIMIT 2");
    }

    function get_menu() {
        return executeQuery("SELECT * FROM menu");
    }

    function get_submenu() {
        return executeQuery("SELECT * FROM submenu");
    }

    function get_all_news() {
        return executeQuery("SELECT * FROM news");
    }

    function get_all_soon() {
        return executeQuery("SELECT * FROM coming_soon ORDER BY coming_soon.soonDate ASC");
    }

    function get_all_movies() {
        return executeQuery("SELECT * FROM movies WHERE movies.visible = 1");
    }

    function show_director($idMovie) {
        global $conn;
        $query = $conn->prepare("SELECT d.nameDirector FROM movies m INNER JOIN directors d ON m.movieDirector= d.idDirector WHERE m.idMovie = ?");
        $query->execute([$idMovie]);
        return $query->fetch();
    }

    function show_actors($idMovie) {
        global $conn;
        $query = $conn->prepare("SELECT a.nameActor FROM movies m INNER JOIN movie_actor ma ON m.idMovie = ma.idMovie INNER JOIN actors a ON a.idActor = ma.idActor WHERE m.idMovie = ?");
        $query->execute([$idMovie]);
        return $query->fetchAll();
    }

    function show_comments($idMovie) {
        global $conn;
        $query = $conn->prepare("SELECT u.username, c.comment FROM movies m INNER JOIN comments c ON c.idMovie = m.idMovie INNER JOIN users u ON c.idUser = u.idUser WHERE m.idMovie = ?");
        $query->execute([$idMovie]);
        return $query->fetchAll();
    }

    function all_top_rated() {
        return executeQuery("SELECT * FROM movies m ORDER BY m.movieRating DESC LIMIT 12");
    }

    function all_most_commented() {
        return executeQuery("SELECT *, COUNT(*) as number FROM comments c INNER JOIN movies m on c.idMovie = m.idMovie GROUP BY c.idMovie ORDER BY `number` DESC LIMIT 12");
    }     

    function all_latest_movies() {
        return executeQuery("SELECT * FROM movies m ORDER BY m.movieDate DESC LIMIT 12");
    }    

    function get_one_movie($idMovie) {
        global $conn;
        $query = $conn->prepare("SELECT * FROM movies m WHERE m.idMovie = ?");
        $query->execute([$idMovie]);
        return $query->fetch();
    }

    function show_genres($idMovie) {
        global $conn;
        $query = $conn->prepare("SELECT g.genre FROM movies m INNER JOIN movie_genre mg ON m.idMovie = mg.idMovie INNER JOIN genres g ON g.idGenre = mg.idGenre WHERE m.idMovie = ?");
        $query->execute([$idMovie]);
        return $query->fetchAll();
    }

    function count_movies() {
        global $conn;
        $query = $conn->query("SELECT COUNT(*) as number FROM movies");
        return $query->fetch();
    }

    function get_movies_page($from, $to) {
        global $conn;
        $query = $conn->prepare("SELECT * FROM movies WHERE movies.visible = 1 LIMIT :from, :to");
        $query->bindParam(":from", $from, PDO::PARAM_INT);
        $query->bindParam(":to", $to, PDO::PARAM_INT);
        $query->execute();
        return $query->fetchAll();
    }

    function register($fName, $lName, $email, $username, $password) {
        global $conn;
        $query = $conn->prepare("INSERT INTO users ( users.firstName, users.lastName, users.email, users.username, users.password) VALUES (?, ?, ?, ?, ?)");
        try {
            $query->execute([$fName, $lName, $email, $username, $password]);
            return 1;
        } catch(PDOException $e) {
            return 0;
        }
    }

    function login($username, $password) {
        global $conn;
        $query = ("SELECT * FROM users WHERE users.username = ? AND users.password = ?");
        $result = $conn->prepare($query);
        $result->bindValue(1, $username);
        $result->bindValue(2, $password);
        try {
            $result->execute();
            $user = $result->fetch();
            return $user;
        } catch(PDOException $e) {
            return 0;
        }
    }

    function user_details($username) {
        global $conn;
        $query = $conn->prepare("SELECT * FROM users WHERE users.username = ?");
        $query->execute([$username]);
        return $query->fetch();
    }

    function get_comments_user($username) {
        global $conn;
        $query = $conn->prepare("SELECT m.movieHeading, c.comment FROM movies m INNER JOIN comments c on m.idMovie = c.idMovie INNER JOIN users u on u.idUser = c.idUser WHERE u.username = ?");
        $query->execute([$username]);
        return $query->fetchAll();
    }

    function add_comment($idMovie, $idUser, $text) {
        global $conn;
        $query = $conn->prepare("INSERT INTO comments (idMovie, idUser, comment) VALUES (?, ?, ?)");
        $query->execute([$idMovie, $idUser, $text]);
        return 1;
    }

    function delete_movie($idMovie) {
        global $conn;
        $query = $conn->prepare("UPDATE movies SET visible = '0' WHERE movies.idMovie = ?");
        try {
            $result = $query->execute([$idMovie]);
            if($result) {
                return 204;
            } else {
                return 500;
            }
        } catch(PDOException $e) {
            return 500;
        }
    }

    function update_movie($id, $movieHeading, $movieDate, $movieDuration, $movieRating, $movieDescription) {
        global $conn;
        $query = $conn->prepare("UPDATE movies SET movieHeading = ?, movieDate = ?, movieDuration = ?, movieRating = ?, movieDescription = ? WHERE idMovie = ?");
        $query->execute([$movieHeading, $movieDate, $movieDuration, $movieRating, $movieDescription, $id]);
        return 1;
    }

    function insert_actor($actor) {
        global $conn;
        $query = $conn->prepare("INSERT INTO actors VALUES(NULL, ?)");
        $query->execute([$actor]);
        return 1;
    }

    function insert_director($director) {
        global $conn;
        $query = $conn->prepare("INSERT INTO directors VALUES(NULL, ?)");
        $query->execute([$director]);
        return 1;
    }

    function get_all_actors() {
        return executeQuery("SELECT * FROM actors");
    }

    function get_all_directors() {
        return executeQuery("SELECT * FROM directors");
    }

    function insert_movie($movieHeading, $pictureName, $movieRating, $movieDate, $movieDuration, $movieDescription, $movieDirector) {
        global $conn;
        $query = $conn->prepare("INSERT INTO movies VALUES(NULL, ?, ?, ?, ?, ?, ? ,?, 1)");
        try {
            $query->execute([$movieHeading, $pictureName, $movieRating, $movieDate, $movieDuration, $movieDescription, $movieDirector]);
            return 1;
        } catch(PDOException $e) {
            return $e;
        }
    }

    function movie_actor($movieHeading, $actor) {
        global $conn;
        $query = $conn->prepare("INSERT INTO movie_actor VALUES(NULL, (SELECT idMovie FROM movies WHERE movieHeading = ?), ?)");
        $query->execute([$movieHeading, $actor]);
        return 1;
    }

    function movie_genre($movieHeading, $genre) {
        global $conn;
        $query = $conn->prepare("INSERT INTO movie_genre VALUES(NULL, (SELECT idMovie FROM movies WHERE movieHeading = ?), ?)");
        $query->execute([$movieHeading, $genre]);
        return 1;
    }

    function change_image($username, $src) {
        global $conn;
        $query = $conn->prepare("UPDATE users SET userPicture = ? WHERE username = ?");
        $query->execute([$src, $username]);
        return 1;
    }

    function get_latest_movies() {
        $movies = executeQuery("SELECT * FROM movies m ORDER BY m.movieDate DESC LIMIT 12");

        foreach($movies as $movie) {
            $movie->actors = show_actors($movie->idMovie);
            $movie->director = show_director($movie->idMovie);
        }

        return $movies;
    }
    
    function get_top_rated() {
        $movies = executeQuery("SELECT * FROM movies m ORDER BY m.movieRating DESC LIMIT 12");

        foreach($movies as $movie) {
            $movie->actors = show_actors($movie->idMovie);
            $movie->director = show_director($movie->idMovie);
        }

        return $movies;
    }

    function get_most_commented() {
        $movies = executeQuery("SELECT *, COUNT(*) as number FROM comments c INNER JOIN movies m on c.idMovie = m.idMovie GROUP BY c.idMovie ORDER BY `number` DESC LIMIT 12");

        foreach($movies as $movie) {
            $movie->actors = show_actors($movie->idMovie);
            $movie->director = show_director($movie->idMovie);
        }

        return $movies;
    }

    function filter_movies($string) {
        global $conn;
        $x = str_split($string);
        array_unshift($x, "%");
        array_push($x, "%");
        $string = implode("", $x);
        $query = $conn->prepare("SELECT * FROM movies WHERE movies.movieHeading LIKE :string");
        $query->bindParam(":string", $string, PDO::PARAM_STR);
        $query->execute();
        $movies = $query->fetchAll();
        foreach($movies as $movie) {
            $movie->actors = show_actors($movie->idMovie);
            $movie->director = show_director($movie->idMovie);
        }
        return $movies;
    }

    function check_username($username) {
        global $conn;
        $query = $conn->prepare("SELECT * FROM users WHERE username = ?");
        $query->execute([$username]);
        $result = $query->fetch();
        if($result) {
            return 1;
        } else {
            return 0;
        }
    }

    function set_new_password($password, $username) {
        global $conn;
        $query = $conn->prepare("UPDATE users SET password = ? WHERE username = ?");
        $query->execute([$password, $username]);
        return 1;
    }
?>