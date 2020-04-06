<?php
// Create database connection using config file
include_once("config.php");

// Fetch all users data from database
$result = mysqli_query($mysqli, "SELECT * FROM users ORDER BY id DESC");
?>

<html>
<head>    
    <title>Homepage</title>
</head>

<body>
<a href="add.php">Arsip Keluar</a><br/><br/>

    <table width='80%' border=1>

    <tr>
        <th>ID</th> <th>Kode</th> <th>No_Agenda</th> <th>Indek_berkas</th> <th>Isi_Berkas</th> <th>Tujuan</th> <th>No_Arsip</th> <th>Tgl_Arsip</th> <th>Tgl_Dicatat</th> <th>Keterangan</th> <th>Update</th>
    </tr>
    <?php  
    while($user = mysqli_fetch_array($result)) {         
        echo "<tr>";
        echo "<td>".$user['Id']."</td>";
        echo "<td>".$user['Kode']."</td>";
        echo "<td>".$user['No_Agenda']."</td>"; 
	echo "<td>".$user['Indek_berkas']."</td>";  
	echo "<td>".$user['Isi_berkas']."</td>";
	echo "<td>".$user['Tujuan']."</td>";
	echo "<td>".$user['No_Arsip']."</td>"; 
	echo "<td>".$user['Tgl_Arsip']."</td>";
	echo "<td>".$user['Tgl_Dicatat']."</td>";
	echo "<td>".$user['Keterangan']."</td>";
        echo "<td><a href='edit.php?id=$user[id]'>Edit</a> | <a href='delete.php?id=$user[id]'>Delete</a></td></tr>";        
    }
    ?>
    </table>
</body>
</html>
