<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA 
    

    //string untuk query
    $sql = "SELECT MAX(jml_izin) AS izin, MAX(jml_sakit) AS sakit, MAX(jml_alpha) AS alpha
            FROM tabsen";

    //JALANKAN QUERY
    $r = mysqli_query($conn,$sql);

    //SIMPAN KE ARRAY
    $result = array();

    while($row = mysqli_fetch_array($r)){
        array_push($result, array(
            "jumlah izin tebanyak"=>$row['izin'],
            "jumlah sakit tebanyak"=>$row['sakit'],
            "jumlah alpha tebanyak"=>$row['alpha']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>