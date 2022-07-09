-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 05:16 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabsen`
--

CREATE TABLE `tabsen` (
  `bulan` date NOT NULL,
  `nip` varchar(100) NOT NULL,
  `jml_masuk` smallint(6) DEFAULT 0,
  `jml_sakit` smallint(6) DEFAULT 0,
  `jml_izin` smallint(6) DEFAULT 0,
  `jml_alpha` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabsen`
--

INSERT INTO `tabsen` (`bulan`, `nip`, `jml_masuk`, `jml_sakit`, `jml_izin`, `jml_alpha`) VALUES
('2009-10-01', 'P002', 21, 3, 1, 1),
('2009-10-01', 'P003', 18, 2, 3, 3),
('2009-10-01', 'P004', 23, 2, 0, 1),
('2009-10-01', 'P005', 20, 4, 1, 1),
('2009-10-01', 'P006', 19, 2, 2, 3),
('2009-10-01', 'P008', 19, 0, 3, 4),
('2009-10-01', 'P010', 24, 0, 0, 2),
('2009-10-01', 'P011', 18, 4, 0, 4),
('2009-10-01', 'P014', 16, 2, 4, 4),
('2009-10-01', 'P017', 17, 4, 2, 3),
('2009-10-01', 'P018', 21, 1, 1, 3),
('2009-10-01', 'P019', 16, 4, 3, 3),
('2009-10-01', 'P020', 22, 1, 3, 0),
('2009-10-01', 'P022', 19, 2, 4, 1),
('2009-10-01', 'P024', 22, 1, 3, 0),
('2009-10-01', 'P026', 18, 3, 1, 4),
('2009-10-01', 'P027', 17, 2, 4, 3),
('2009-10-01', 'P028', 18, 0, 4, 4),
('2009-10-01', 'P030', 23, 2, 0, 1),
('2009-11-01', 'P002', 18, 2, 4, 2),
('2009-11-01', 'P003', 20, 3, 3, 0),
('2009-11-01', 'P004', 26, 0, 0, 0),
('2009-11-01', 'P005', 18, 4, 2, 2),
('2009-11-01', 'P006', 20, 2, 3, 1),
('2009-11-01', 'P008', 19, 4, 0, 3),
('2009-11-01', 'P010', 21, 2, 3, 0),
('2009-11-01', 'P011', 22, 3, 1, 0),
('2009-11-01', 'P014', 20, 1, 1, 4),
('2009-11-01', 'P017', 19, 4, 2, 1),
('2009-11-01', 'P018', 18, 4, 1, 3),
('2009-11-01', 'P019', 20, 4, 1, 1),
('2009-11-01', 'P020', 16, 3, 4, 3),
('2009-11-01', 'P022', 21, 3, 0, 2),
('2009-11-01', 'P024', 22, 0, 4, 0),
('2009-11-01', 'P026', 19, 3, 0, 4),
('2009-11-01', 'P027', 22, 2, 2, 0),
('2009-11-01', 'P028', 20, 0, 3, 3),
('2009-11-01', 'P030', 18, 2, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tgajipokok`
--

CREATE TABLE `tgajipokok` (
  `kd_jabatan` varchar(8) NOT NULL,
  `golongan` varchar(8) NOT NULL,
  `gpo` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tgajipokok`
--

INSERT INTO `tgajipokok` (`kd_jabatan`, `golongan`, `gpo`) VALUES
('Adm', '3', 1000000),
('Anal', '5', 4000000),
('Bend', '3', 1000000),
('Desi', '4', 2500000),
('DIR', '6', 8000000),
('Doku', '3', 800000),
('Doku', '4', 825000),
('Man', '6', 7000000),
('Spro', '5', 2000000),
('Spro', '6', 3600000),
('Ypro', '4', 1000000),
('Ypro', '5', 1200000);

-- --------------------------------------------------------

--
-- Table structure for table `tgolongan`
--

CREATE TABLE `tgolongan` (
  `gol` varchar(8) NOT NULL,
  `tj_istrisuami` int(11) DEFAULT 0,
  `tj_anak` int(11) DEFAULT 0,
  `u_makan` int(11) DEFAULT 0,
  `ix_lembur` int(11) DEFAULT 0,
  `askes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tgolongan`
--

INSERT INTO `tgolongan` (`gol`, `tj_istrisuami`, `tj_anak`, `u_makan`, `ix_lembur`, `askes`) VALUES
('1', 50000, 40000, 4000, 2000, 35000),
('2', 100000, 80000, 5000, 3000, 50000),
('3', 150000, 120000, 5000, 4000, 75000),
('4', 200000, 160000, 5000, 4000, 80000),
('5', 250000, 200000, 5000, 5000, 85000),
('6', 300000, 250000, 6000, 6000, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `tjabatan`
--

CREATE TABLE `tjabatan` (
  `kd_jabatan` varchar(8) NOT NULL,
  `nm_jabatan` varchar(40) DEFAULT NULL,
  `tj_jabatan` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tjabatan`
--

INSERT INTO `tjabatan` (`kd_jabatan`, `nm_jabatan`, `tj_jabatan`) VALUES
('Adm', 'Administrasi', 300000),
('Anal', 'Sistem Analis', 800000),
('Bend', 'Bendahara', 300000),
('Desi', 'Sistem Designer', 700000),
('DIR', 'Direktur', 2000000),
('Doku', 'Dokumentasi', 300000),
('Man', 'Manager', 1200000),
('Pers', 'Personalia', 900000),
('Sekr', 'Sekretaris', 300000),
('Spro', 'Senior Programmer', 600000),
('Ypro', 'Yunior Programmer', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `tlembur`
--

CREATE TABLE `tlembur` (
  `bulan` date NOT NULL,
  `nip` varchar(100) NOT NULL,
  `jam_lembur` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tlembur`
--

INSERT INTO `tlembur` (`bulan`, `nip`, `jam_lembur`) VALUES
('2009-10-01', 'P002', 15),
('2009-10-01', 'P003', 10),
('2009-10-01', 'P004', 8),
('2009-10-01', 'P005', 6),
('2009-10-01', 'P006', 31),
('2009-10-01', 'P008', 13),
('2009-10-01', 'P010', 18),
('2009-10-01', 'P011', 20),
('2009-10-01', 'P014', 28),
('2009-10-01', 'P017', 7),
('2009-10-01', 'P018', 10),
('2009-10-01', 'P019', 19),
('2009-10-01', 'P020', 34),
('2009-10-01', 'P022', 4),
('2009-10-01', 'P024', 29),
('2009-10-01', 'P026', 5),
('2009-10-01', 'P027', 26),
('2009-10-01', 'P028', 8),
('2009-10-01', 'P030', 18),
('2009-11-01', 'P002', 24),
('2009-11-01', 'P003', 6),
('2009-11-01', 'P004', 34),
('2009-11-01', 'P005', 16),
('2009-11-01', 'P006', 16),
('2009-11-01', 'P008', 0),
('2009-11-01', 'P010', 8),
('2009-11-01', 'P011', 5),
('2009-11-01', 'P014', 5),
('2009-11-01', 'P017', 21),
('2009-11-01', 'P018', 16),
('2009-11-01', 'P019', 1),
('2009-11-01', 'P020', 15),
('2009-11-01', 'P022', 34),
('2009-11-01', 'P024', 21),
('2009-11-01', 'P026', 24),
('2009-11-01', 'P027', 26),
('2009-11-01', 'P028', 34),
('2009-11-01', 'P030', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tpegawai`
--

CREATE TABLE `tpegawai` (
  `nip` varchar(16) NOT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `tempat_lhr` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` varchar(100) DEFAULT NULL,
  `agama` varchar(100) DEFAULT NULL,
  `kd_jabatan` varchar(100) DEFAULT NULL,
  `gol` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `jml_anak` smallint(6) DEFAULT 0,
  `pendidikan` varchar(100) DEFAULT NULL,
  `Status_Kpgw` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tpegawai`
--

INSERT INTO `tpegawai` (`nip`, `nama`, `alamat`, `kota`, `tempat_lhr`, `tanggal_lahir`, `jk`, `agama`, `kd_jabatan`, `gol`, `status`, `jml_anak`, `pendidikan`, `Status_Kpgw`) VALUES
('P002', 'Kefeke Kiqihe', 'JL. Vujike Defuso 80', 'SEMARANG', 'SURABAYA', '1987-10-25', 'PRIA', 'KATOLIK', 'Ypro', '5', 'Kawin', 0, 'S1', 'Honorer'),
('P003', 'Penefi Xidofa', 'JL. Fewilu Ripino 35', 'BANYUWANGI', 'BLITAR', '1988-05-20', 'PRIA', 'BUDHA', 'Man', '6', 'Kawin', 2, 'D3', 'Tetap'),
('P004', 'Lidaca Zayasa', 'JL. Wojace Cediso 68', 'SURABAYA', 'BANYUWANGI', '1978-06-21', 'WANITA', 'KEPERCAYAAN', 'Bend', '1', 'Kawin', 2, 'SMA', 'Honorer'),
('P005', 'Vemufi Favizu', 'JL. Xoxevo Rumecu 9', 'KEDIRI', 'SURABAYA', '1976-02-05', 'PRIA', 'HINDU', 'Doku', '4', 'Kawin', 2, 'S1', 'Tetap'),
('P006', 'Takuqo Vucepu', 'JL. Birutu Kofika 48', 'BOGOR', 'SURABAYA', '1972-03-29', 'WANITA', 'HINDU', 'Pers', '4', 'Kawin', 1, 'SMA', 'Tetap'),
('P008', 'Velepo Xohiqo', 'JL. Qavoyu Riraba 11', 'SEMARANG', 'JAKARTA', '1989-09-04', 'PRIA', 'KEPERCAYAAN', 'Spro', '5', 'Kawin', 0, 'D3', 'Tetap'),
('P010', 'Ciceyo Lazawa', 'JL. Rugeya Mowogi 85', 'PALEMBANG', 'SIDOARJO', '1988-02-26', 'PRIA', 'KATOLIK', 'Spro', '4', 'Belum Kawin', 0, 'S1', 'Honorer'),
('P011', 'Damele Mojive', 'JL. Tuzafe Tonude 44', 'MEDAN', 'SOLO', '1984-10-09', 'PRIA', 'BUDHA', 'Doku', '4', 'Kawin', 3, 'S2', 'Tetap'),
('P014', 'Yufaco Siwoja', 'JL. Tutada Hozici 53', 'SALATIGA', 'SURABAYA', '1986-07-26', 'WANITA', 'ISLAM', 'Pers', '2', 'Kawin', 3, 'S1', 'Honorer'),
('P017', 'Liqobe Wacuxo', 'JL. Lipedu Hoposo 10', 'SIDOARJO', 'BOGOR', '1979-04-22', 'PRIA', 'BUDHA', 'Pers', '6', 'Kawin', 3, 'D3', 'Tetap'),
('P018', 'Gozuze Hesibu', 'JL. Vicura Mopapu 83', 'MALANG', 'BLITAR', '1982-05-06', 'WANITA', 'ISLAM', 'Desi', '2', 'Belum Kawin', 0, 'D3', 'Honorer'),
('P019', 'Defude Bocipu', 'JL. Qanigo Gozuya 27', 'DENPASAR', 'PALEMBANG', '1982-03-23', 'PRIA', 'BUDHA', 'Sekr', '3', 'Belum Kawin', 0, 'S1', 'Tetap'),
('P020', 'Mikebe Memegu', 'JL. Kajuso Nubove 26', 'SURABAYA', 'SEMARANG', '1978-12-07', 'WANITA', 'KRISTEN', 'Doku', '1', 'Kawin', 4, 'S1', 'Honorer'),
('P022', 'Qebazu Noyowe', 'JL. Qonake Miyoba 67', 'BANDUNG', 'DENPASAR', '1981-11-21', 'WANITA', 'KRISTEN', 'Bend', '2', 'Kawin', 4, 'SMA', 'Tetap'),
('P024', 'Rasuni Nevadu', 'JL. Zusiga Legubu 42', 'JAKARTA', 'MALANG', '1987-10-21', 'WANITA', 'KATOLIK', 'Doku', '4', 'Kawin', 4, 'D3', 'Honorer'),
('P026', 'Boxufa Kozito', 'JL. Bukona Dokuvi 59', 'SEMARANG', 'JAKARTA', '1987-07-19', 'PRIA', 'ISLAM', 'Spro', '5', 'Belum Kawin', 0, 'SMA', 'Honorer'),
('P027', 'Hiluxo Dugone', 'JL. Wevako Pikuve 7', 'BANDUNG', 'BANDUNG', '1982-02-28', 'WANITA', 'KRISTEN', 'Ypro', '5', 'Kawin', 0, 'S2', 'Tetap'),
('P028', 'Wigosa Wuqewu', 'JL. Vusade Jugoha 77', 'SEMARANG', 'BANYUWANGI', '1973-02-22', 'PRIA', 'HINDU', 'Dir', '6', 'Kawin', 1, 'S1', 'Tetap'),
('P030', 'Raboko Vawebe', 'JL. Vuninu Biqiho 86', 'DENPASAR', 'BANYUWANGI', '1975-04-01', 'WANITA', 'HINDU', 'Adm', '3', 'Kawin', 3, 'S2', 'Honorer');

-- --------------------------------------------------------

--
-- Table structure for table `tpendidikan`
--

CREATE TABLE `tpendidikan` (
  `nm_pendidikan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tpendidikan`
--

INSERT INTO `tpendidikan` (`nm_pendidikan`) VALUES
('D3'),
('S1'),
('S2'),
('SMA'),
('SMP');

-- --------------------------------------------------------

--
-- Table structure for table `tpot_koperasi`
--

CREATE TABLE `tpot_koperasi` (
  `bulan` date NOT NULL,
  `nip` varchar(8) NOT NULL,
  `jml_pot` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tpot_koperasi`
--

INSERT INTO `tpot_koperasi` (`bulan`, `nip`, `jml_pot`) VALUES
('2009-10-01', 'P002', 0),
('2009-10-01', 'P003', 441160),
('2009-10-01', 'P004', 0),
('2009-10-01', 'P005', 421084),
('2009-10-01', 'P006', 439525),
('2009-10-01', 'P008', 284832),
('2009-10-01', 'P010', 0),
('2009-10-01', 'P011', 122269),
('2009-10-01', 'P014', 0),
('2009-10-01', 'P017', 459764),
('2009-10-01', 'P018', 0),
('2009-10-01', 'P019', 41219),
('2009-10-01', 'P020', 0),
('2009-10-01', 'P022', 242595),
('2009-10-01', 'P024', 0),
('2009-10-01', 'P026', 0),
('2009-10-01', 'P027', 45012),
('2009-10-01', 'P028', 300059),
('2009-10-01', 'P030', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tstatuspegawai`
--

CREATE TABLE `tstatuspegawai` (
  `status_pgw` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tstatuspegawai`
--

INSERT INTO `tstatuspegawai` (`status_pgw`) VALUES
('Honorer'),
('Tetap');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
