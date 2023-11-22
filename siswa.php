<?php 
include 'config/config.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
            table, th, td {
                border: 1px solid black;
                /* width: 20%; */
            }
            th {
                height: 35px;
            }
            td {
                height: 30px;
                text-align: left;
            }
    </style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar siswa</title>
</head>
<body>
    <head>
        <h2>Daftar siswa</h2>
    </head>
    
    <nav>
        <a href="add_student_form.php">[+] Tambah siswa baru</a>
    </nav>
    <br>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Tempat lahir</th>
                <th>Tanggal lahir</th>
                <th>Alamat</th>
                <th>Cita-cita</th>
                <th>Jumlah saudara</th>
                <th>kelas</th>
                <th>agama</th>
            </tr>
        </thead>
        <tbody>
            <?php 
            $sql = "SELECT * FROM siswa";
            $query = mysqli_query($conn, $sql);
            
            while($siswa = mysqli_fetch_array($query)) {
                echo "<tr>";
                
                echo "<td>".$siswa['id']."</td>";
                echo "<td>".$siswa['nama']."</td>";
                echo "<td>".$siswa['tmpt_lahir']."</td>";
                echo "<td>".$siswa['tgl_lahir']."</td>";
                echo "<td>".$siswa['alamat']."</td>";
                echo "<td>".$siswa['cita_cita']."</td>";
                echo "<td>".$siswa['jmlh_saudara']."</td>";
                echo "<td>".$siswa['idkelas']."</td>";
                echo "<td>".$siswa['idagama']."</td>";

                echo "<td>";
                echo "<a href='controller/edit_siswa.php?id=".$siswa['id']."'>Edit</a> | ";
                echo "<a href='controller/hapus_siswa.php?id=".$siswa['id']."'>Delete</a>";
                echo "</td>";

                echo "</tr>";
            }
            ?>
        </tbody>
    </table>
    <p>Total siswa: <?php echo mysqli_num_rows($query) ?></p>
    <?php if(isset($_GET['status'])): ?>
        <p>
            <?php 
            if($_GET['status'] == 'success'){
                echo "Student data added successfully";
            } else {
                echo "Add student data failed";
            }
            ?>
        </p>
        <?php endif; ?>
        
    </body>
</html>