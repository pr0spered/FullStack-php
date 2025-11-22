<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Box Office</title>
</head>

<body>
    <?php
    include "db.php";
    session_start();
    $username = @$_SESSION["username"]
    ?>

    <div id = "header">
        <div id="logo">
            <a href="index.php">BoxOffice</a>
        </div>

        <div id="login">
            <?php 
            if (isset($_SESSION["username"])) {
                echo '  <a>'.htmlspecialchars($username).'</a>
                        <div id="login-drop">
                            <a>Bookings</a>
                            <a>Logout</a>
                        </div>';

            }
            else {
                echo '<a href="login.php">Login</a>';
            }
            ?>
        </div>
    </div>

    <div id="main">
        <?php 
        $sql = "SELECT movie_id, name, poster FROM movies";
        if ($result = mysqli_query($conn,$sql)) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo '<div class="movie-home" onclick="moviePage('.$row["movie_id"].')">
                        <img src="'.$row["poster"].'">
                        <div class="movie-home-name">'.$row["name"].'</div>
                        </div>';
            }
        }
        else {
            echo '<p>Error: Cannot Execute Query</p>';
        }
        mysqli_close($conn);
        ?>

        <form id="moviePage" method="get" action="movie.php" style="display: none;">
            <input type="text" name="movieId" id="movieId">
        </form>
    </div>

    <script>
        function moviePage(movieId) {
            document.getElementById('movieId').value = movieId;
            document.getElementById('moviePage').submit();
        }
    </script>
</body>
</html>