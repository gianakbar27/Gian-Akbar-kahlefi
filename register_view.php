<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style/style.css">
    <title>Lembar Sign Up</title>
</head>
<body>
    <div class="container">
        <form action="controller/register.php" method="POST" class="login-email">
            <p class="login-text" style=font-size:2rem; font-weight: 800;>Sign Up</p> <br>
            <div class="input-group">
                <input type="text" placeholder="Name" name="name" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="Password" name="password" required>
            </div>
            <div class="input-group">
                <input type="text" placeholder="Confirm Password" name="cpassword" required>
            </div>
            <div class="input-group">
                <select name="role" class="role" required>
                    <option value="" disabled selected>Pilih status pekerjaan</option>
                    <option value="Web-Performance-Specialist"> Administrator</option>
                    <option value="Network-Administrator">Petugas</option>
                    <option value="IT-Support">Siswa</option>
                </select>
            </div>
            <div class="input-group">
                <button type="submit" class="btn" name="submit">Register</button>
            </div>
            <p class="login-register-text">Sudah punya akun? <a href="index.php">Login</a></p>
        </form>
    </div>
</body>
</html>