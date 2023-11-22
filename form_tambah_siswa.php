<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah siswa baru</title>
</head>
<body>
    <header>
        <h2>Tambah siswa baru</h2>
    </header>

    <form action="controller/add_student.php" method="POST">
        <div>
            <label for="nama">Nama : </label>
            <input type="text" name="nama" id="nama" required>
        </div>
        <br>
        <div>
            <label for="tmpt_lahir">Tempat Lahir </label>
            <input type="text" name="tmpt_lahir" id="tmpt_lahir" required>
        </div>
        <br>
        <div>
            <label for="tgl_lahir">Tanggal Lahir: </label>
            <input type="text" name="tgl_lahir" id="tgl_lahir">
        </div>
        <br>
        <div>
            <label for="alamat">Alamat : </label>
            <textarea name="alamat" id="alamat" cols="30" rows="10" required></textarea>
        </div>
        <br>
        <div>
            <label for="cita_cita">Cita-cita : </label>
            <input type="text" name="cita_cita" id="cita_cita" required>
        </div>
        <br>
        <div>
            <label for="jmlh_saudara">Jumlah saudara : </label>
            <input type="text" name="type" id="jmlh_saudara" required>
        </div>
        <br>
        <div>
            <label for="kelas">Kelas : </label>
            <input type="text" name="kelas" id="kelas" required>
        </div>
        <br>
        <div>
            <label for="agama">Agama : </label>
            <input type="text" name="agama" id="agama" required>
        </div>
        <div>
            <input type="submit" value="Submit" id="">
        </div>
    </form>
</body>
</html>