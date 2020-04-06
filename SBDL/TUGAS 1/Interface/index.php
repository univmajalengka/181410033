<!DOCTYPE html>
<html>
<head>
	<div class="judul">		
		<h1>APLIKASI SISTEM INFORMASI MANAJEMEN ARSIP DESA</h1>
		<h2>Delia Putri Rahayu</h2>
	

<html>
<head>    
    <title>Homepage</title>
</head>

<body>
	<br/>
	<a class="tombol" href="input.php">+ Tambah Arsip Baru</a>
<a href="add.php">Arsip Masuk</a><br/><br/>

    <table width='80%' border=1>

    <tr>
        <th>ID</th> <th>Kode</th> <th>No_Agenda</th> <th>Indek_berkas</th> <th>Isi_Berkas</th> <th>Dari</th> <th>No_Arsip</th> <th>Tgl_Arsip</th> <th>Tgl_Diterima</th> <th>Keterangan</th> <th>Update</th>
    </tr>
    <?php  
    while($user = mysqli_fetch_array($result)) {         
        echo "<tr>";
        echo "<td>".$user['Id']."</td>";
        echo "<td>".$user['Kode']."</td>";
        echo "<td>".$user['No_Agenda']."</td>"; 
	echo "<td>".$user['Indek_berkas']."</td>";  
	echo "<td>".$user['Isi_berkas']."</td>";
	echo "<td>".$user['Dari']."</td>";
	echo "<td>".$user['No_Arsip']."</td>"; 
	echo "<td>".$user['Tgl_Arsip']."</td>";
	echo "<td>".$user['Tgl_Diterima']."</td>";
	echo "<td>".$user['Keterangan']."</td>";
        echo "<td><a href='edit.php?id=$user[id]'>Edit</a> | <a href='delete.php?id=$user[id]'>Delete</a></td></tr>";        
    }
    ?>
    </table>
</body>
</html>
