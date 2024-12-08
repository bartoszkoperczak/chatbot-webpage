<?php
session_start();

$conn = mysqli_connect('localhost', 's168738', 'my1NfY9sql', 's168738');

if (!$conn) {
    die('Nie można połączyć z bazą danych: ' . mysqli_connect_error());
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['register'])) {
        $login = mysqli_real_escape_string($conn, $_POST['login']);
        $email = mysqli_real_escape_string($conn, $_POST['email']);
        $haslo = mysqli_real_escape_string($conn, $_POST['haslo']);

        $sql = "SELECT login FROM uzytkownicy WHERE login = '$login'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) == 0) {
            $sql = "INSERT INTO uzytkownicy (login, email, haslo) VALUES ('$login', '$email', '$haslo')";

            if (mysqli_query($conn, $sql)) {
                header("Location: logowanie.php");
                exit();
            } else {
                echo "Błąd: " . $sql . "<br>" . mysqli_error($conn);
            }
        } else {
            echo "Podany login jest już zajęty.";
        }
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
          <form action="rejestracja.php" method="post">
            <h1>Zarejestruj się</h1>
            <div class="input-box">
              <input type="email" name="email" placeholder="E-mail" required>
              <i class='bx bxl-gmail'></i>
            </div>
            <div class="input-box">
              <input type="text" name="login" placeholder="Login" required>
              <i class='bx bxs-user'></i>
            </div>
            <div class="input-box">
              <input type="password" name="haslo" placeholder="Hasło" required>
              <i class='bx bxs-lock-alt'></i>
            </div>
            <button type="submit" class="btn" name="register">Zarejestruj się</button>
            <div class="register-link">
              <p>Masz już konto? <a href="logowanie.php">Zaloguj się</a></p>
            </div>
          </form>
        </div>
    </section>
</body>
</html>
