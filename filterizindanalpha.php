<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    $bulan = $_GET['bulan'];
    $alpha = $_GET['alpha'];
    $izin = $_GET['izin'];

    //string untuk query
    $sql = "SELECT * FROM tpegawai INNER JOIN tabsen ON tpegawai.nip=tabsen.nip
    WHERE MONTH(bulan) = $bulan
    AND jml_alpha = $alpha
    AND jml_izin = $izin ;";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nip"=>$row['nip'],
            "nama"=>$row['nama'],
            "absen"=>$row['bulan'],
            "jumlah alpha"=>$row['jml_alpha'],
            "jumlah izin"=>$row['jml_izin'],
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>