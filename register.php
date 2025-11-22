<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Box Office</title>
</head>

<body>

    <?php 
    include "db.php";
    session_start();
    ?>

    <div id="header">
        <div id="logo">
            <a href="index.php">BoxOffice</a>
        </div>
    </div>

    <?php 
    if (@$_POST["submit"]) {
        $name = mysqli_real_escape_string($conn, filter_var($_POST["name"], FILTER_SANITIZE_SPECIAL_CHARS));
        $email = mysqli_real_escape_string($conn, filter_var($_POST["email"], FILTER_SANITIZE_EMAIL));
        $password = md5($_POST["password"]);

        $sql = "SELECT * FROM users WHERE email = '$email'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) == 0) {
            $sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')";
            mysqli_query($conn, $sql);
            header("location: login.php");
        }
        else {
            $error = "<p>Email already in use</p>";
        }
    }
    ?>

    <div class="register-page">
        <form method="post">
            <h3>Create a new account</h3>
            <input type="email" placeholder="Email..." name="email" value="<?php echo @$email; ?>" id="register-email" required>
            <input type="text" placeholder="Name..." name="name" value="<?php echo @$name; ?>" id="register-name" pattern="[A-Za-z ]" required>
            <input type="password" placeholder="Password..." name="password" id="register-password" required>
            <input type="submit" id="register-button" name="submit" value="Sign Up">
            <span class="error"><?php echo @$error; ?></span>
        </form>
    </div>
</body>
</html>