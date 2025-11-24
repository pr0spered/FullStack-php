<?php
include "db.php";
session_start();

$userId = $_GET["userId"];
$movieId = $_GET["movieId"];
$givenRating = $_GET["rating"];

$sql = "INSERT INTO ratings (user_id, movie_id, rating) VALUES ($userId, $movieId, $givenRating)";
if (mysqli_query($conn, $sql)) {
    $sql = "SELECT AVG(rating) AS avg, COUNT(rating) AS votes FROM ratings WHERE movie_id=$movieId ";
    if ($result = mysqli_query($conn, $sql)) {
	    $row = mysqli_fetch_assoc($result);
	    $rating = round($row['avg'], 1);
	    $num = $row['votes'];
	}
    echo "<p><span id='value'> $rating </span>&nbsp;<span id='star'>&#9733;</span> &nbsp;($num votes)</p><div id='slider-container'><p>Your rating: <span id='userrating'> $givenRating</span></p>";
}
else {
    echo '<p>Error: Cannot execute Query</p>';
}