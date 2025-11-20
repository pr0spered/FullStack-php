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

    <div class="clear"></div>

    <div id="all-shows">
        <?php
        $sql = "SELECT * FROM shows WHERE movie_id = $movieId ORDER BY date, time";
        $temp = "1st Jan, 0000";
        if ($result = mysqli_query($conn, $sql)) {
            while ($row = mysqli_fetch_assoc($result)) {
                $show_date = date("j M, D", strtotime($row['date']));
                if ($show_date != $temp) {
                    echo '<span id="date">'.$show_date.'</span>';
                    $temp = $show_date;
                }
                $show_time = date("h:i A", strtotime($row['date'] . " " . $row['time']));
                echo '<button class="show" id='.$row["show_id"].'>'.$show_time.'</button>';
            }
        }
        mysqli_close($conn);
        ?>
    </div>
</body>
</html>