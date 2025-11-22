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
    <div id="header">
        <div id="logo">
            <a href="index.php">BoxOffice</a>
        </div>
    </div>

    <?php 
    include "db.php";
    session_start();

    if (@$_POST["submit"]) {
        $password = md5($_POST["password"]);
        $email = mysqli_real_escape_string($conn, filter_var($_POST["email"], FILTER_SANITIZE_EMAIL));

        $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) != 0) {
            $row = mysqli_fetch_assoc($result);
            $_SESSION["username"] = $row["name"];
            $_SESSION["userid"] = $row["user_id"];
        }
        else {
            $error = "<p>Incorrect Email or Password</p>";
        }
    }

    if (isset($_SESSION["username"])) {
        header("location: index.php");
    }
    ?>

    <div class="login-page">
        <form method="post">
            <h3>Login to your account</h3>
            <input type="email" placeholder="Email..." value="<?php echo @$email ?>" id="login-email" name="email" required>
            <input type="password" placeholder="Password..." id="login-password" name="password" required>
            <input type="submit" id="login-button" name="submit" value="Login">
            <span class="error"><?php echo @$error ?></span>
        </form>
    </div>
</body>
</html>