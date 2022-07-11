<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    $jk = $_GET['jk'];
    $status =$_GET['status'];
    $pendidikan =$_GET['pendidikan'];

    //string untuk query
    $sql = "SELECT * FROM tpegawai 
    WHERE jk = $jk 
    AND status = $status
    AND pendidikan = $pendidikan ";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "nip"=>$row['nip'],
            "nama"=>$row['nama'],
            "jenis kelamin"=>$row['jk'],
            "status"=>$row['status'],
            "pendidikan"=>$row['pendidikan']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>