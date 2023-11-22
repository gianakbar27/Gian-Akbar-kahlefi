<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-sale=1.0">
        <title>Login page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style/style.css">
    </head>
    <body>
        <div class="container">
            <form action="controller/login.php" method="POST" class="login-username">
                <p class="login-text" style="font-size: 2rem; font-weight: 800; color: white;">Login</p>
                <div class="input-group">
                    <input type="text" placeholder="username" name="username" required>
                </div>
                <div class="input-group">
                    <input type="password" placeholder="password" name="password" required>
                </div>
                <div class="input-group">
                    <button name="submit" class="btn">Login</button>
                </div>
                <p class="login-register-text">Belum punya akun? <a href="register_view.php">Sign up</a></p>
            </form>
        </div>
    </body>
</html>