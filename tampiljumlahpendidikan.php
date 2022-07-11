<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    

    //string untuk query
    $sql = "SELECT COUNT(nama), pendidikan
    FROM tpegawai
    GROUP BY pendidikan ;";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "jumlah"=>$row['COUNT(nama)'],
            "pendidikan"=>$row['pendidikan']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>