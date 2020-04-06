  
<!DOCTYPE html>
<html>
<head>
	<title>Input Arsip</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="judul">		
		<h1>APLIKASI SISTEM INFORMASI ARSIP DESA</h1>
		
		
	</div>
	
	<br/>
	<a href="index.php">Lihat Semua Arsip</a>
	<br/>
	<h3>Input Arsip baru</h3>
	<form action="input-aksi.php" method="post">		
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="ID"></td>					
			</tr>	
			<tr>
				<td>Kode</td>
				<td><input type="text" name="Kode"></td>					
			</tr>	
			<tr>
				<td>No_Agenda</td>
				<td><input type="text" name="No_Agenda"></td>					
			</tr>	
			<tr>
				<td>Isi_Berkas</td>
				<td><input type="text" name="Isi_Berkas"></td>					
			</tr>	
			<tr>
				<td>Dari</td>
				<td><input type="text" name="Dari"></td>					
			</tr>
			<tr>
				<td>No_Arsip</td>
				<td><input type="text" name="No_Arsip"></td>					
			</tr>	
			<tr>
				<td>Tgl_Arsip</td>
				<td><input type="text" name="Tgl_Arsip"></td>					
			</tr>
			<tr>
				<td>Tgl_Diterima</td>
				<td><input type="text" name="Tgl_Diterima"></td>					
			</tr>	
			<tr>
				<td>Keterangan</td>
				<td><input type="text" name="Keterangan"></td>					
			</tr>	
			<tr>
				<td></td>
				<td><input type="submit" value="Simpan"></td>					
			</tr>		
					
		</table>
	</form>
</body>
</html>
