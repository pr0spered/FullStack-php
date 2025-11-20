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
    include 'db.php';
    session_start();
    $username = @$_SESSION["username"];
    ?>

    <div id="header">
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
                echo '<a>Login</a>';
            }
            ?>
        </div>
    </div>

    <div>
        <?php
        $movieId = $_GET["movieId"];
        $sql = "SELECT name, poster FROM movies WHERE movie_id = $movieId";
        if ($result = mysqli_query($conn, $sql)) {
            $row = mysqli_fetch_assoc($result);
        }
        else {
            echo '<p>Error: Cannot execute Query</p>';
        }
        ?>
    </div>

    <div id="movie">
        <img src="<?php echo $row['poster'] ?>">
    </div>

    <div id="details">
        <?php
        echo '<p>'.$row["name"].'</p>';
        ?>
    </div>
</body>
</html>