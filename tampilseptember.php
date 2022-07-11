<?php
    require_once 'config.php';
    if(!$conn){
		die("KONEKSI GAGAL: ".mysqli_connect_error());

	} else {
		//echo("KONEKSI SUKSES");
	}

    //FILTER DATA MHS PER NIM (id)
    $bulan = $_GET['bulan'];

    //string untuk query
    $sql = "SELECT * FROM tpegawai 
    INNER JOIN tabsen ON tpegawai.nip=tabsen.nip
    INNER JOIN tjabatan ON tpegawai.kd_jabatan=tjabatan.kd_jabatan
    WHERE MONTH(bulan) = $bulan";

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
            "jumlah masuk"=>$row['jml_masuk'],
            "absen"=>$row['bulan']
        ));
    }
    echo json_encode($result);
    mysqli_close($conn);
?>