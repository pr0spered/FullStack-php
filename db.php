<?php

$host   = 'localhost';
$dbuser = 'root';
$dbpass = '';
$db     = 'box_office';

$conn = mysqli_connect($host, $dbuser, $dbpass, $db);

if(mysqli_connect_errno()) {
	echo "ERROR: ".mysqli_error($conn);
}