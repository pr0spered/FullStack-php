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
    $userId = 0;
    ?>

    <div id="header">
        <div id="logo">
            <a href="index.php">BoxOffice</a>
        </div>

        <div id="login">
            <?php 
            if (isset($_SESSION["username"])) {
                $userId = @$_SESSION["userid"];
                echo '  <a>'.htmlspecialchars($username).'</a>
                        <div id="login-drop">
                            <a href="tickets.php">Bookings</a>
                            <a href="logout.php">Logout</a>
                        </div>';

            }
            else {
                echo '<a href="login.php">Login</a>';
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
            $movieName = $row["name"];
            $poster = $row["poster"];
        }
        else {
            echo '<p>Error: Cannot execute Query</p>';
        }

        $sql = "SELECT AVG(rating) AS avg_rating, COUNT(rating) as votes FROM ratings WHERE movie_id = $movieId";
        if ($result = mysqli_query($conn, $sql)) {
            $row = mysqli_fetch_assoc($result);
            $rating = round($row["avg_rating"], 1);
            $num = $row["votes"];
        }
        else {
            echo '<p>Error: Cannot execute Query</p>';
        }

        $sql = "SELECT rating FROM ratings WHERE user_id = $userId AND movie_id = $movieId";
        if ($result = mysqli_query($conn, $sql)) {
            if ($row = mysqli_fetch_assoc($result)) {
                $userRating = $row["rating"];
                $userRated = true;
            }
            else {
                $userRated = false;
            }
        }
        else {
            echo '<p>Error: Cannot execute Query</p>';
        }
        ?>
    </div>

    <div id="movie">
        <img src="<?php echo $poster; ?>">
    </div>

    <div id="details">
        <?php
        echo '<p>'.$movieName.'</p>';
        ?>

        <div id="rating">
            <p><span><?php echo $rating; ?></span>&nbsp;<span id="star">&#9733;</span> &nbsp; (<?php echo $num; ?> votes)</p>
            <div id="slider-container">
                <?php 
                if ($userRated) {
                    echo "<p>Your rating: <span>$userRating</span></p>";
                }
                else {
                    echo "<p>Rate movie:</p>
                            <p>
                                <input type='range' min='0' max='5' step='1' id='slider'>&nbsp; <span id='output'></span> &nbsp; <a href='javascript:rateMovie()'>Rate</a>
                            </p>";
                }
                ?>
            </div>
        </div>
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
                echo '<button class="show" onclick="screenPage('.$row["show_id"].')">'.$show_time.'</button>';
            }
        }
        mysqli_close($conn);
        ?>
    </div>

    <form id="screening" method="get" action="screen.php" style="display: none;">
        <input type="text" name="showId" id="showId">
    </form>
</body>

<script>
    function screenPage(showTime) {
        document.getElementById("showId").value = showTime;
        document.getElementById("screening").submit();
    }

    slider.oninput = function() {
        output.innerHTML = this.value;
    }

    function rateMovie() {
        userId = <?php echo $userId; ?>;
        movieId = <?php echo $movieId; ?>;
        if (userId != 0) {
            givenRating = slider.value;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            xmlhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("rating").innerHTML = this.responseText;
                }
            }
            xmlhttp.open("GET","rating.php?userId=" + encodeURIComponent(userId) + "&movieId=" + encodeURIComponent(movieId) + "&rating=" + encodeURIComponent(givenRating), true);
            xmlhttp.send();
        }
        else {
            alert("Please login before rating")
        }
    }
</script>
</html>