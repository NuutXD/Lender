<?php

include("app/conn.php");

//$utstyrQuery = "SELECT utstyr.id, utstyr.navn, utstyr.bilde, utstyr_out.utstyr_id, utstyr.status FROM utstyr LEFT JOIN utstyr_out ON utstyr_out.utstyr_id = utstyr.id WHERE utstyr_out.utstyr_id IS NULL";
$utstyrQuery = "SELECT * FROM utstyr WHERE status = 0";

$utstyrOutput = '';


$sql = mysqli_query($conn, $utstyrQuery);
while ($row = mysqli_fetch_array($sql)) {

    if ($row['status'] == 0) {
        $utstyrOutput .= '
            <a href="utstyr.php?id=' . $row['id'] . '" class="griditem">
                <h1>' . $row['navn'] . '</h1>
                <img src="' . $row['bilde'] . '" alt="' . $row['navn'] . '">
            </a>
        ';
    }
}
?>

<!DOCTYPE html>
<html lang="no">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <link rel="icon" type="image/x-icon" href="pictures/<?php print($FAVICON) ?>">
    <title><?php print($APP_NAME); ?></title>
</head>

<body>

    <?php include('app/nav.html') ?>

    <section>
        <h1>
            Ledig Utstyr - Alt
        </h1>
        <div class="grid">
            <?php
            print($utstyrOutput);
            ?>
        </div>
    </section>

    <?php include('app/footer.html') ?>

</body>

</html>