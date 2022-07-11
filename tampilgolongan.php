<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA 
    

    //string untuk query
    $sql = "SELECT * FROM tpegawai 
    INNER JOIN tgolongan ON tpegawai.gol=tgolongan.gol
    INNER JOIN tjabatan ON tpegawai.kd_jabatan=tjabatan.kd_jabatan";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nip"=>$row['nip'],
            "nama"=>$row['nama'],
            "jabatan"=>$row['nm_jabatan'],
            "golongan"=>$row['gol'],
            "asuransi kesehatan"=>$row['askes']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>