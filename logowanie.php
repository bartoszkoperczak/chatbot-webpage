<?php
session_start();

$conn = mysqli_connect('localhost', 's168738', 'my1NfY9sql', 's168738');

if (!$conn) {
    die('Nie mozna polaczyc z baza danych: ' . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login_button'])) {
    $login = $_POST['login'];
    $haslo = $_POST['haslo'];

    // Zabezpieczenie przed SQL Injection
    $login = mysqli_real_escape_string($conn, $login);
    $haslo = mysqli_real_escape_string($conn, $haslo);

    $sql = "SELECT * FROM uzytkownicy WHERE login='$login' AND haslo='$haslo'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 0) {
        echo "Błędne hasło lub login";
    } else {
        $_SESSION['login'] = $login;
        header("Location: index.php#focus1"); // Przekierowanie po poprawnym zalogowaniu
        exit();
    }
}

mysqli_close($conn);
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Porozmawiaj z Chatbotem!</title>
    <link rel="stylesheet" href="style2.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
    <section class="loginform">
        <div class="wrapper">
          <form action="logowanie.php" method="post">
            <h1>Zaloguj się</h1>
            <div class="input-box">
              <input type="text" name="login" placeholder="Login" required>
              <i class='bx bxs-user'></i>
            </div>
            <div class="input-box">
              <input type="password" name="haslo" placeholder="Hasło" required>
              <i class='bx bxs-lock-alt'></i>
            </div>
            <button type="submit" class="btn" name="login_button">Zaloguj się</button>
            <div class="register-link">
              <p>Nie masz jeszcze konta? <a href="rejestracja.php">Zarejestruj się</a></p>
            </div>
          </form>
        </div>
    </section>
</body>
</html>
