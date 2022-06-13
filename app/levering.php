<?php

include('conn.php');

// Sjekk om siden kommer med en id i url baren. Hvis ikke send til index
if (isset($_GET['id'])) {
    $id = $_GET['id'];

    // Sjekk om utstyret er utlånt. Hvis ikke send til index. Hvis total er over 1 er noe i databasen ødelagt og siden må fikses
    $lendCheckQuery = $conn->query("SELECT count(id) as totalLend FROM utstyr_out WHERE utstyr_id = '$id'");
    $lendCheck = mysqli_fetch_array($lendCheckQuery);

    if ($lendCheck['totalLend'] == 1) {
        // Oppdater satt utstyr til status 0 = ledig
        $conn->query("UPDATE utstyr SET status = 0 WHERE id = '$id'");

        // Oppdater satt utstyr i lendlog til 1 = levert
        $conn->query("UPDATE lendlog SET status = 1 WHERE lend_equip = '$id' AND status = 0");

        // Slett satt utstyr fra utstyr_out
        $conn->query("DELETE FROM utstyr_out WHERE utstyr_id = '$id'");

        // Send tilbake til lever.php
        header('location: ../lever.php');
    } else if ($lendCheck['totalLend'] > 1) {
        // Send til error.php hvis totalLend er over 1 (noe er veldig galt)
        header('location: app/error.php?error=1');
    } else {
        // Send til index.php hvis total kommer opp som null eller mindre
        header('location: ../index.php');
    }
} else {
    // Hvis ikke id er satt, send tilbake til index
    header('location: ../index.php');
}
