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
    $paymentMethod = isset($_POST["paymentMethod"]) ? $_POST["paymentMethod"] : '';
    
    if (isset($_POST["paymentCard"]) || isset($_POST["paymentUpi"])) {
        $userId = $_GET["userId"];
        $showId = $_GET["showId"];
        $seats = $_GET["seats"];
        $prices = $_GET["prices"];
        $types = $_GET["types"];
        $paymentMethod = $_POST["paymentMethod"];
        $seatArray = explode(',', $seats);
        
        $sql =  "INSERT INTO transactions (payment_method, user_id) VALUES ('$paymentMethod', $userId)";
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