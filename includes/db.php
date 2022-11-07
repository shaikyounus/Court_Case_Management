<?php

$host = 'localhost';
$user = 'root';
$db = 'court_case_management';

$con = new mysqli($host, $user,"", $db);

if ($con->connect_errno) {
    die("Connection failed: " . $con->connect_error);
}

?>
