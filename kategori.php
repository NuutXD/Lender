<?php

include("app/conn.php");

$type = $_GET['type'];

$kategori = '';

$utstyrQuery = "SELECT * FROM utstyr WHERE type = '$type'";

$utstyrOutput = '';


$sql = mysqli_query($conn, $utstyrQuery);
while ($row = mysqli_fetch_array($sql)) {

    $kategori = $row['type'];

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
    <title><?php print($kategori) ?> - <?php print($APP_NAME); ?></title>
</head>

<body>

    <?php include('app/nav.php') ?>

    <section>
        <h1>
            Ledig Utstyr - <?php print($kategori) ?>
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