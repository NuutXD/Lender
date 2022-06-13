<?php

include('app/conn.php');

session_start();

$id = $_GET['id'];

$elever = '';

$getUtstyrQuery = 'SELECT * FROM utstyr WHERE id = ' . $id . '';
$getUtstyr = mysqli_query($conn, $getUtstyrQuery);

$utstyr = mysqli_fetch_array($getUtstyr);

$getEleverQuery = 'SELECT * FROM elever';
$getElever = mysqli_query($conn, $getEleverQuery);

while ($row = mysqli_fetch_array($getElever)) {
    $elever .= '
        <option value="' . $row['id'] . '">' . $row['fornavn'] . ' ' . $row['etternavn'] . '</option>
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
    <link rel="stylesheet" href="style/utstyr.css">
    <link rel="icon" type="image/x-icon" href="pictures/<?php print($FAVICON) ?>">
    <title><?php print($utstyr['navn']) ?> - <?php print($APP_NAME); ?></title>
</head>

<body>


    <?php include('app/nav.html') ?>

    <section class="equip">

        <h1 class="title" style="color:white;"><?php print($utstyr['navn']) ?></h1>

        <img class="equipimg" src="<?php print($utstyr['bilde']) ?>" alt="">

        <form action="app/lend.php?id=<?php print($utstyr['id']) ?>" method="POST">
            <div class="formgrid">
                <div class="formgriditem">
                    <label for="student" class="studentpicklabel">Navn</label>
                    <select name="student" id="student" class="studentpick">
                        <?php print($elever) ?>
                    </select>
                </div>
                <div class="formgriditem">
                    <label for="date">Lån til dato</label>
                    <input type="date" id="date" class="datepick" name="date">
                </div>
            </div>

            <div class="buttongrid">
                <button class="lend" type="submit">LÅN</button>
                <a class="cancel" href="index.php">AVBRYT</a>
            </div>
        </form>
    </section>

    <?php include('app/footer.html') ?>

</body>

</html>