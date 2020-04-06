<?php
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="cek_login.php" >
  <div align="center">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <table width="374" border="0" bordercolor="#0099FF" bgcolor="#669999">
      <tr>
        <td height="39" colspan="4"><div align="center">
          <h1 class="style1"><u>Login Admin </u></h1>
        </div></td>
      </tr>
      <tr>
        <td width="62" height="43"><div align="right">Username</div></td>
        <td width="7"> : </td>
        <td width="246"><label>
        <div align="left">
          <input name="username" type="text" id="username" size="35" />
        </div>
        </label></td>
        <td width="41">&nbsp;</td>
      </tr>
      <tr>
        <td height="39"><div align="right">Password</div></td>
        <td>:</td>
        <td><label>
          <div align="left">
            <input name="password" type="password" id="password" size="35" />
            </div>
        </label></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="42" colspan="4"><label>
          <input type="submit" name="Submit" value="Submit" />
        </label>
          <label>
          <input type="reset" name="Submit2" value="cancel" />
        </label></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
<?php
session_start();
$_SESSION['username']=$username;
$username=$_POST[username];
$password=$_POST[password];
if((!$username)or(!$password)){
 echo"login tidak lengkap";
 } 
else {
 $koneksi=mysql_connect("localhost","root","")or die(mysql_error());
 mysql_select_db("aplikasisurat",$koneksi);
 $pass=md5($password);
 $query_aplikasisurat=mysql_query("select count(*) as aplikasisurat from anggota where username='$username' and password='$pass'",$koneksi)or die (mysql_error());
 $row=mysql_fetch_array($query_aplikasisurat);
 if ($row["aplikasisurat"]=="1"){
  session_register("username");
  header("location:member.php");
  }
 else
  header("location:bukan_member.php");
 }
?>
