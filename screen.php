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
        $showId = $_GET["showId"];
        $sql = "SELECT movie_id, date, time FROM shows WHERE show_id = $showId";
        if ($result = mysqli_query($conn, $sql)) {
            $row = mysqli_fetch_assoc($result);
            $movieId = $row["movie_id"];
            $date = date("j M, D", strtotime($row['date']));
            $time = date("h:i A", strtotime($row['date'] . " " . $row['time']));
        }
        else {
            echo '<p>Error: Cannot Execute Query</p>';
        }

        $sql = "SELECT name FROM movies WHERE movie_id = $movieId";
        if ($result = mysqli_query($conn, $sql)) {
            $row = mysqli_fetch_assoc($result);
            $movie_name = $row['name'];
        }
        else {
            echo '<p>Error: Cannot Execute Query</p>';
        }
        mysqli_close($conn);
        ?>

        <div id="info">
            <?php echo "$movie_name <br> $date $time"; ?>
        </div>
    </div>

</body>
</html>