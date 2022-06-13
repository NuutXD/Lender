<?php
include('conn.php');

// Setter max et utstyr kan bli lånt samtidig
$maxLend = 1;

// Sjekk om siden kommer med en id i url baren. Hvis ikke send til index
if (isset($_GET['id'])) {
    // Hent id
    $id = $_GET['id'];

    // Hent student id
    $userId = $_POST['student'];

    // Hent datoen
    $outUntil = $_POST['date'];

    // Få total på utlånt
    $lendCheck = mysqli_fetch_assoc($conn->query("SELECT COUNT(id) AS numberOfLends FROM utstyr WHERE id = '$id' AND status = '$maxLend'"));

    // Hvis utstyret allerede er utlånt, send til index
    if ($lendCheck['numberOfLends'] < $maxLend) {
        // Oppdater utsyrs tabellen til at utstyret ikke er ledig
        $conn->query("UPDATE utstyr SET status = 1 WHERE id = '$id'");

        // Sett lånet inn i loggen
        $conn->query("INSERT INTO lendlog (lend_by, lend_equip, lend_until) values ('$userId', '$id', '$outUntil')");

        // Sett utlånet inn i utlåns tabellen
        $conn->query("INSERT INTO utstyr_out (utstyr_id, user_id, out_until) values ('$id','$userId','$outUntil')");

        // Send til index når alt er ferdig
        header('location: ../index.php');
    } else {
        // Send til index hvis noe gikk galt
        header('location: ../index.php');
    }
} else {
    // Send til index hvis noe gikk galt
    header('location: ../index.php');
}
