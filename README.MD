# 🔥 Lender

Lender is a gear-loan application made by [Viljar Pettersen](https://github.com/NuutXD) for a school project!

## Installation ✔️

- Make the "Halvårs" folder the root folder of your web host since this is where the index.php file is.
- Import the "utstyr.sql" file into any database of your choise
- Change the "app/app.php" file to fit your application

### 📦 File structure:

```
halvårs
 ┗📦app
  ┣ 📜app.php ✔️
  ┣ 📜conn.php
  ┣ 📜error.php
  ┣ 📜footer.php
  ┣ 📜functions.php
  ┣ 📜lend.php
  ┣ 📜levering.php
  ┗ 📜nav.php
```

### 📜 Inside the app.php file:

```php
<?php
// App
$APP_NAME = "app-name";
$FAVICON = "favicon.ico";

// Database MySQL
$DB_HOST = "db-host";
$DB_USER = "db-user";
$DB_PASS = "db-password";
$DB = "db";

$date = date('y-m-d');
```

# Good Luck 👍

The application should now be running as intended.
<br>
<br>

# Warning ⚠️

- Practically everything is written in Norwegian 🇳🇴 and some things might not be as understandable.
- The logo in and of itself is based on the tinder logo and problems might arise if you were to use it.
- It is written by a student and most likely something will break and the code is most likely highly inefficent

## Contact

You can contact me via:

- Mail: viljar.gabriel@gmail.com
