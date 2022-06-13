<?php

include('app/conn.php');
include('app/functions.php');

$utstyrQuery = "SELECT utstyr.status, utstyr.navn, utstyr.type, elever.fornavn, elever.etternavn, elever.klasse, utstyr_out.out_until
                FROM utstyr 
                LEFT JOIN utstyr_out 
                ON utstyr_out.utstyr_id = utstyr.id
                LEFT JOIN elever 
                ON utstyr_out.user_id = elever.id
                ORDER BY utstyr.id
                ";

$utstyrOutput = '';

$sql = mysqli_query($conn, $utstyrQuery);
while ($row = mysqli_fetch_array($sql)) {

    if ($row['status'] == 0) {
        $utstyrOutput .= '
            <tr>
                <td>' . $row['navn'] . '</td>
                <td>Ledig</td>
                <td>N/A</td>
                <td>' . $row['type'] . '</td>
                <td>Nå</td>
            </tr>
        ';
    } elseif ($row['status'] == 1) {
        $timeUntil =  (strtotime($row['out_until']) - strtotime($date)) / 60 / 60 / 24;
        if ($timeUntil > 0) {
            $utstyrOutput .= '
            <tr>
                <td>' . $row['navn'] . '</td>
                <td>' . $row['fornavn'] . ' ' . $row['etternavn'] . '</td>
                <td>' . $row['klasse'] . '</td>
                <td>' . $row['type'] . '</td>
                <td>' . $timeUntil . ' dager</td>
            </tr>

        ';
        } elseif ($timeUntil < 0) {
            $utstyrOutput .= '
            <tr>
                <td>' . $row['navn'] . '</td>
                <td>' . $row['fornavn'] . ' ' . $row['etternavn'] . '</td>
                <td>' . $row['klasse'] . '</td>
                <td>' . $row['type'] . '</td>
                <td>For ' . $timeUntil * -1 . ' dager siden <i style="color:#f55;" title="Enda ikke levert, varsle ' . $row['fornavn'] . ' ' . $row['etternavn'] . ' om for sen levering!" class="fa-solid fa-circle-exclamation"></i></td>
            </tr>

        ';
        } else {
            $utstyrOutput .= '
            <tr>
                <td>' . $row['navn'] . '</td>
                <td>' . $row['fornavn'] . ' ' . $row['etternavn'] . '</td>
                <td>' . $row['klasse'] . '</td>
                <td>' . $row['type'] . '</td>
                <td>I dag</td>
            </tr>

        ';
        }
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
    <link rel="stylesheet" href="style/list.css">
    <link rel="icon" type="image/x-icon" href="pictures/<?php print($FAVICON) ?>">
    <title>Liste - <?php print($APP_NAME); ?></title>
</head>

<body>

    <?php include('app/nav.html') ?>

    <section class="list">
        <table>
            <thead>
                <tr>
                    <th>Navn</th>
                    <th>Lånt av</th>
                    <th>Klasse</th>
                    <th>Kategori</th>
                    <th>Ledig om</th>
                </tr>
            </thead>
            <tbody>
                <?php print($utstyrOutput); ?>
            </tbody>
        </table>
    </section>
    <?php include('app/footer.html') ?>


</body>

</html>