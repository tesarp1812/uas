<?php
	$host = 'localhost';
	$userdb = 'root';
	$pwd = '';
	$db = 'dbpegawai';
	$conn = mysqli_connect($host,$userdb,$pwd,$db);

	if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		echo("KONEKSI SUKSES");
	} 
?>