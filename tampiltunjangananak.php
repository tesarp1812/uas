<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA 
    
    //string untuk query
    $sql = "SELECT nip, nama, status, tj_istrisuami,jml_anak,tj_anak, (jml_anak*tj_anak) AS tunjangan_anak
    FROM tpegawai
    INNER JOIN tgolongan ON tpegawai.gol=tgolongan.gol";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nip"=>$row['nip'],
            "nama"=>$row['nama'],
            "status"=>$row['status'],
            "tunjangan istri dan suami"=>$row['tj_istrisuami'],
            "jumlah anak"=>$row['jml_anak'],
            "tunjangan anak"=>$row['tj_anak'],
            "total tunjangan anak"=>$row['tunjangan_anak']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>