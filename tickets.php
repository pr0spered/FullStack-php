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
                $userId = @$_SESSION["userid"];
                echo '  <a>'.htmlspecialchars($username).'</a>
                        <div id="login-drop">
                            <a>Bookings</a>
                            <a href="logout.php">Logout</a>
                        </div>';

            }
            else {
                echo '<a href="login.php">Login</a>';
            }
            ?>
        </div>
    </div>

    <?php 
    $sql = "SELECT transactions.transaction_id, transactions.date_time, transactions.amount, movies.name as movie_name, screens.name as screen_name, theatres.name as theatre_name, shows.date, shows.time FROM transactions INNER JOIN tickets ON transactions.transaction_id = tickets.transaction_id INNER JOIN shows ON tickets.show_id = shows.show_id INNER JOIN screens ON shows.screen_id = screens.screen_id INNER JOIN theatres ON screens.theatre_id = theatres.theatre_id INNER JOIN movies ON shows.movie_id = movies.movie_id WHERE user_id = $userId GROUP BY transactions.transaction_id ORDER BY transactions.date_time DESC";
    if ($result = mysqli_query($conn, $sql)) {
        if (mysqli_num_rows($result) != 0) {
            echo "<h2 class='booked-title'>Booked Tickets: </h2>";
            while ($row = mysqli_fetch_assoc($result)) {
                $transactionId = $row["transaction_id"];
                $amount = $row["amount"];
                $time_of_booking = $row["date_time"];
                $movie_name = $row["movie_name"];
                $screen_name = $row["screen_name"];
                $theatre_name = $row["theatre_name"];

                $show_time = date("h:i A", strtotime($row['date'] . " " . $row['time']));
                $show_date = date_format(date_create($row['date']), "l, j M Y");
                echo "<div id='booked-tickets'>
                        <span >Transaction ID: $transactionId</span>
                        <p>$movie_name | $theatre_name $screen_name </p>
                        <p>$show_date &nbsp;$show_time </p>
                        <p>Total Amount: </span>&#8377;$amount</p>
                        <p>Time of Booking: </span>$time_of_booking</p>";

                $sql1 = "SELECT seat_number FROM tickets WHERE transaction_id = $transactionId";
                $seatNumber = [];
                if ($result1 = mysqli_query($conn, $sql1)) {
                        if (mysqli_num_rows($result1) > 0) {
                        while ($row = mysqli_fetch_assoc($result1)) {
                            $seatNumber[] = $row["seat_number"];
                        }
                    }
                    echo "<p>Seat Number: " . implode(", ", $seatNumber)."</p>
                            </div>";
                }   
            }
        }
        else {
            echo "<p>You have not made any bookings yet</p>";
        }
    }
    ?>
</body>
</html>