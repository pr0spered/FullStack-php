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

    require __DIR__ . '/vendor/autoload.php';
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    $paymentMethod = isset($_POST["paymentMethod"]) ? $_POST["paymentMethod"] : '';
    
    if (isset($_POST["paymentCard"]) || isset($_POST["paymentUpi"])) {
        $userId = $_GET["userId"];
        $showId = $_GET["showId"];
        $seats = $_GET["seats"];
        $prices = $_GET["prices"];
        $amount = $_GET["amount"];
        $types = $_GET["types"];
        $paymentMethod = $_POST["paymentMethod"];
        $seatArray = explode(',', $seats);

        $sql = "DELETE FROM locks WHERE user_id = $userId AND show_id = $showId";
        if (!mysqli_query($conn, $sql)) {
        echo '<p>Error: Cannot Execute Query</p>';
        }
        
        $sql =  "INSERT INTO transactions (payment_method, user_id, amount) VALUES ('$paymentMethod', $userId, $amount)";
        if (!mysqli_query($conn, $sql)) {
        echo '<p>Error: Cannot Execute Query</p>';
        }

        $transactionId = mysqli_insert_id($conn);

        $n = count($seatArray);
        for($i=0; $i<$n; $i++) {
            $sql = "INSERT INTO tickets (seat_number, transaction_id, show_id) VALUES ('$seatArray[$i]', $transactionId, $showId)";
            if (!mysqli_query($conn, $sql)) {
            echo '<p>Error: Cannot Execute Query</p>';
            }
	    }

        $sql = "SELECT movies.name as movie_name, movies.poster as poster, theatres.name as theatre_name, shows.date as show_date, shows.time as show_time, screens.name as screen_name FROM tickets INNER JOIN shows ON tickets.show_id = shows.show_id INNER JOIN movies ON shows.movie_id = movies.movie_id INNER JOIN screens ON shows.screen_id = screens.screen_id INNER JOIN theatres ON screens.theatre_id = theatres.theatre_id WHERE shows.show_id = $showId LIMIT 1";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $movie_name = $row["movie_name"];
        $theatre_name = $row["theatre_name"];
        $screen_name = $row["screen_name"];
        $poster = $row["poster"];
        $show_time = date("h:i A", strtotime($row["show_date"] . " " . $row["show_time"]));
        $show_date = date_format(date_create($row["show_date"]), "l, j M Y");

        $sql ="SELECT email, name FROM users WHERE user_id = $userId";
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_assoc($result);
        $email = $row["email"];
        $name = $row["name"];

        $mail = new PHPMailer();
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = '<email>'; //Replace <email> with your email
        $mail->Password = '<pass>'; //Replace <pass> with your password
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;

        $mail->setFrom('<email>', 'Box Office'); //Replace <email> with your email
        $mail->addAddress($email, $name);
        $mail->addEmbeddedImage($poster, 'poster');

        $mail->isHTML(true);

        $mail->Subject = 'Ticket Booking Confirmation';
        $mail->Body = "<h2>Booking Confirmed!</h2>
                        <p>Hello <strong>$name</strong>,</p>
                        <p>Your payment was successful. Here are your booking details:</p>
                        <ul>
                            <li><strong>Transaction ID:</strong> $transactionId</li>
                            <li><strong>Movie:</strong> $movie_name</li>
                            <li><strong>Theatre:</strong> $theatre_name,&nbsp;$screen_name</li>
                            <li><strong>Show Date & Time:</strong> $show_date&nbsp;$show_time</li>
                            <li><strong>Seats:</strong> $seats</li>
                            <li><strong>Amount Paid:</strong> &#8377;$amount</li>
                        </ul>
                        <p>Enjoy the show!</p>
                        <img src='cid:poster' style='width:100%; max-width:400px; height:auto; display:block; margin:10px 0;'>";
        $mail->send();

        header("Location: booking.php?payed=true&transactionId=" . urlencode($transactionId) . "&showId=" . urlencode($showId) . "&userId=" . urlencode($userId) . "&seats=" . urlencode($seats) . "&prices=" . urlencode($prices) . "&types=" . urlencode($types));
    }
    ?>
    <div class="container">
        <h2>Make Payment</h2>

        <form method="post">
            <div class="form-group">
                <label for="paymentmethod">Select Payment Method</label>
                <select id="paymentmethod" name="paymentMethod" onchange="this.form.submit()">
                    <option value="">---Select---</option>
                    <option value="card" <?php if ($paymentMethod == "card") echo "selected"; ?>>Card Payment</option>
                    <option value="upi" <?php if ($paymentMethod == "upi") echo "selected"; ?>>UPI Payment</option>
                </select>
            </div>
        </form>

        <?php if ($paymentMethod == "card"): ?>
            <form method="post">
                <div class="form-group">
                    <input type="hidden" name="paymentMethod" value="Card">
                    <label for="cardNumber">Card Number:</label>
                    <input type="text" id="cardNumber" name="cardNumber" required>
                    <label for="cardName">Cardholder Name:</label>
                    <input type="text" id="cardName" name="cardName" required>
                    <label for="expiry">Expiry Date:</label>
                    <input type="text" id="expiry" name="expiry" placeholder="MM/YY" required>
                    <button type="submit" name="paymentCard">Pay Now</button>
                </div>
            </form>

        <?php elseif ($paymentMethod == "upi"): ?>
            <form method="post">
                <div class="form-group">
                    <input type="hidden" name="paymentMethod" value="UPI">
                    <label for="upiId">UPI ID:</label>
                    <input type="text" id="upiId" name="upiId" placeholder="Your UPI ID" required>
                    <button type="submit" name="paymentUpi">Pay via UPI</button>
                </div>
            </form>

        <?php endif; ?>
    </div>

</body>
</html>