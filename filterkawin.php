<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA 
    $status = $_GET['status'];

    //string untuk query
    $sql = "SELECT * FROM tpegawai 
    INNER JOIN tjabatan 
    ON tpegawai.kd_jabatan=tjabatan.kd_jabatan 
    WHERE status = $status ;";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nip"=>$row['nip'],
            "nama"=>$row['nama'],
            "kode jabatan"=>$row['kd_jabatan'],
            "golongan"=>$row['gol'],
            "pendidikan"=>$row['pendidikan'],
            "status"=>$row['status'],
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>