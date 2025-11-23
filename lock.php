<?php

include "db.php";
session_start();
$lock = 0;
$seats = $_GET["seats"];
$showId = $_GET["showId"];
$seatArray = explode(',', $seats);

$n = count($seatArray);
for($i=0; $i<$n; $i++) {
    $sql = "SELECT * FROM locks WHERE seat_number = '$seatArray[$i]' AND show_id = $showId";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        $lock = 1;
        break;
    }
}
mysqli_close($conn);
echo $lock;