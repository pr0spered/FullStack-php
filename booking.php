<?php

include "db.php";
session_start();

$userId = $_GET["userId"];
$showId = $_GET["showId"];
$seats = $_GET["seats"];
$prices = $_GET["prices"];
$types = $_GET["types"];

$sql = "SELECT movie_id, date, time, screen_id FROM shows WHERE show_id = $showId";
if ($result = mysqli_query($conn, $sql)) {
	$row = mysqli_fetch_assoc($result);
    $movieId = $row['movie_id'];
    $date = date("l, j M Y", strtotime($row['date']));
    $time = date("h:i A", strtotime($row['date'] . " " . $row['time']));
    $screenId = $row['screen_id'];
}
else {
    echo '<p>Error: Cannot Execute Query</p>';
}

$sql = "SELECT name FROM movies WHERE movie_id = $movieId";
if ($result = mysqli_query($conn, $sql)) {
    $row = mysqli_fetch_assoc($result);
    $movie_name = $row["name"];
}
else {
    echo '<p>Error: Cannot Execute Query</p>';
}

$sql = "SELECT name, theatre_id FROM screens WHERE screen_id = $screenId";
if ($result = mysqli_query($conn, $sql)) {
    $row = mysqli_fetch_assoc($result);
    $screen_name = $row['name'];
    $theatreId = $row['theatre_id'];
}
else {
    echo '<p>Error: Cannot Execute Query</p>';
}

$sql = "SELECT name FROM theatres WHERE theatre_id = $theatreId";
if ($result = mysqli_query($conn, $sql)) {
    $row = mysqli_fetch_assoc($result);
    $theatre_name = $row['name'];
}
else {
    echo '<p>Error: Cannot Execute Query</p>';
}

$seatArray = array();
$priceArray = array();
$typeArray = array();

$flag = 0;
$n = strlen($seats);
$start = 0;

while ($flag == 0) {
    $commaIndex = strpos($seats, ",", $start);
    if ($commaIndex == false) {
        $flag=1;
        $commaIndex = $n;
    }
    $seat = substr($seats, $start, $commaIndex-$start);
    $start = $commaIndex + 1;
    array_push ($seatArray, $seat);
}

$flag = 0;
$n = strlen($prices);
$start = 0;

while ($flag == 0) {
    $commaIndex = strpos($prices, ",", $start);
    if ($commaIndex == false) {
        $flag = 1;
        $commaIndex = $n;
    }
    $price = (int)substr($prices, $start, $commaIndex-$start);
    $start = $commaIndex + 1;
    array_push($priceArray, $price);
}

$flag = 0;
$n = strlen($types);
$start = 0;

while ($flag == 0) {
    $commaIndex = strpos($types, ",", $start);
    if($commaIndex == false) {
        $flag = 1;
        $commaIndex = $n;
    }
    $type = substr($types, $start, $commaIndex-$start);
    $start = $commaIndex + 1;
    array_push($typeArray, $type);
}

$n = count($seatArray);
$amount = 0;
for($i=0; $i<$n; $i++) {
	$amount = $amount + $priceArray[$i];
}
mysqli_close($conn);

echo "<div id='ticket'>
        <h2 class = review>Review Seats!</h2>
        <p>$movie_name</p>
        <p>$theatre_name $screen_name</p>
        <p>$date &nbsp; $time</p>
        <p>Total Amount: &#8377;$amount</p>
        <p>";
        for ($i=0; $i<$n; $i++) {
            echo "$seatArray[$i] ($typeArray[$i])<br>";
        }
echo "</p>
        <a href='screen.php?showId=" .$showId. "' class='diff-seat'>Select different seats?</a><br>
        </div>";