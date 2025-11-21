<?php
// Connection parameters
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'mystore1';
$port = 3306;

// Create connection
$con = mysqli_connect($hostname, $username, $password, $database, $port);

// Check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
} 
?>
