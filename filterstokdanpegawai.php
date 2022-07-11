<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    $anak = $_GET['anak'];
    $pegawai =$_GET['pegawai'];

    //string untuk query
    $sql = "SELECT * FROM tpegawai WHERE jml_anak = $anak AND Status_Kpgw = $pegawai ";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nip"=>$row['nip'],
            "nama"=>$row['nama'],
            "jumlah anak"=>$row['jml_anak'],
            "status pegawai"=>$row['Status_Kpgw']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>