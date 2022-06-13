<?php
include('app.php');


$conn = mysqli_connect($DB_HOST, $DB_USER, $DB_PASS, $DB) or die(header('location:error.php?error=2'));
