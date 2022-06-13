<?php
include('app/conn.php');
include('app/functions.php');

$leverQuery = "SELECT utstyr.id, utstyr.bilde, utstyr.status, utstyr.navn, utstyr.type, elever.fornavn, elever.etternavn, elever.klasse, utstyr_out.out_from, utstyr_out.out_until
                FROM utstyr 
                LEFT JOIN utstyr_out 
                ON utstyr_out.utstyr_id = utstyr.id
                LEFT JOIN elever 
                ON utstyr_out.user_id = elever.id
                WHERE utstyr.status = 1
                ORDER BY utstyr.id
                ";
$leverOutput = '';

$sql = $conn->query($leverQuery);

while ($row = mysqli_fetch_array($sql)) {
    $leverOutput .= '
        <a href="app/levering.php?id=' . $row['id'] . '" class="griditem">
            <h1>' . $row['navn'] . '</h1>
            <img src="' . $row['bilde'] . '" alt="' . $row['navn'] . '">
            <h3>Lånt av:</h3>
            <p>' . $row['fornavn'] . ' ' . $row['etternavn'] . '</p>
            <h3>Lånt fra:</h3>
            <p>' . date('d. M - Y', strtotime($row['out_from'])) . '</p>
            <h3>Låner til:</h3>
            <p>' . date('d. M - Y', strtotime($row['out_until'])) . '</p>
            <button href="app/levering.php?id=' . $row['id'] . '">Lever</button>
        </a>
    ';
}

?>

<!DOCTYPE html>
<html lang="no">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/lever.css">
    <link rel="icon" type="image/x-icon" href="pictures/<?php print($FAVICON) ?>">
    <title>Lever - <?php print($APP_NAME) ?></title>
</head>

<body>
    <?php include('app/nav.php') ?>

    <section class="lever">

        <div class="grid">
            <?php print($leverOutput) ?>
        </div>

    </section>
    <?php include('app/footer.html') ?>
</body>

</html>