<?php

include('app.php');

$error = '';
$errorBeskrivelse = '';
$home = '';

if (isset($_GET['error'])) {
    $error = $_GET['error'];

    switch ($error) {
        case 1:
            $errorBeskrivelse = 'Kontakt systemadministrator om system feil i databasen.<br>En eller flere rader kræsjer å må fikses for at systemet skal funke optimalt igjen';
            $home = '<a href="../index.php">Gå hjem (ikke anbefalt)</a>';
            break;

        case 2:
            $errorBeskrivelse = 'Databsen krjæset. Dette kan være midlertidig, en liten feil som skjedde i lastingen, eller permanent.<br>Hvis at feilen fortsetter å komme etter at du prøver å gå til hjemmesiden igjen, kontakt systemadministrator!';
            $home = '<a href="../index.php">Gå hjem</a>';
            break;
    }
}

?>

<!DOCTYPE html>
<html lang="no">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="../pictures/<?php print($FAVICON) ?>">
    <title>Error <?php print($error) ?> - <?php print($APP_NAME) ?></title>
</head>

<body>
    <h1>Error <?php print($error) ?></h1>
    <p>Beskrivelse: <?php print($errorBeskrivelse) ?></p>
    <?php print($home) ?>
</body>

</html>