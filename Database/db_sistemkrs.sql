-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jun 2022 pada 17.09
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sistemkrs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_dosen`
--

CREATE TABLE `detail_dosen` (
  `dosen_id` int(11) DEFAULT NULL,
  `matkul_id` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `Tahun_ajar` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_dosen`
--

INSERT INTO `detail_dosen` (`dosen_id`, `matkul_id`, `semester`, `Tahun_ajar`) VALUES
(1, 1001, 4, 2022),
(2, 1002, 4, 2022),
(3, 1003, 4, 2022),
(4, 1004, 2, 2022),
(5, 1005, 4, 2022),
(6, 1006, 2, 2022),
(7, 1007, 3, 2022),
(8, 1008, 5, 2022),
(9, 1009, 5, 2022),
(10, 1010, 3, 2022);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_mahasiswa`
--

CREATE TABLE `detail_mahasiswa` (
  `mahasiswa_id` int(11) DEFAULT NULL,
  `mattkul_id` int(11) DEFAULT NULL,
  `konfirmasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_mahasiswa`
--

INSERT INTO `detail_mahasiswa` (`mahasiswa_id`, `mattkul_id`, `konfirmasi`) VALUES
(1, 1001, NULL),
(2, 1002, NULL),
(3, 1003, NULL),
(4, 1004, NULL),
(5, 1005, NULL),
(6, 1006, NULL),
(7, 1007, NULL),
(8, 1008, NULL),
(9, 1009, NULL),
(10, 1010, NULL),
(NULL, NULL, 1),
(NULL, NULL, 1),
(NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_ruang`
--

CREATE TABLE `detail_ruang` (
  `ruang_id` int(11) DEFAULT NULL,
  `matkull_id` int(11) DEFAULT NULL,
  `hari` varchar(50) DEFAULT NULL,
  `Jam` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_ruang`
--

INSERT INTO `detail_ruang` (`ruang_id`, `matkull_id`, `hari`, `Jam`) VALUES
(1, 1001, 'senin', '10:50:00'),
(2, 1002, 'selasa', '08:00:00'),
(3, 1003, 'rabu', '10:50:00'),
(4, 1004, 'rabu', '13:20:00'),
(5, 1005, 'kamis', '08:00:00'),
(6, 1006, 'kamis', '10:50:00'),
(7, 1007, 'jumat', '08:00:00'),
(8, 1008, 'jumat', '10:50:00'),
(9, 1009, 'jumat', '13:20:00'),
(10, 1010, 'senin', '09:20:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `Nip` varchar(10) NOT NULL,
  `No_Telp` varchar(13) NOT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `Nip`, `No_Telp`, `password`) VALUES
(1, 'Teguh', '19900001', '081199000001', '123'),
(2, 'Ayu', '18900002', '082189000002', NULL),
(3, 'Rosyid', '19780003', '085197800003', NULL),
(4, 'Hendra', '19770004', '081197700004', NULL),
(5, 'Tutik', '19880005', '081198800005', NULL),
(6, 'Tutik', '19880005', '081198800005', NULL),
(7, 'Widya', '19860007', '081198600007', NULL),
(8, 'Layla', '19850008', '081198500008', NULL),
(9, 'Bagus', '19840009', '081198400009', NULL),
(10, 'Sugeng', '19740010', '081197400010', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_Mahasiswa` int(11) NOT NULL,
  `Npm` varchar(16) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `No_Telp` varchar(13) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_Mahasiswa`, `Npm`, `Nama`, `Jenis_kelamin`, `No_Telp`, `Alamat`, `password`) VALUES
(1, '062022100001', 'Rendy', 'Laki-Laki', '085000012022', 'Surabaya', '123'),
(2, '062022100002', 'Raya', 'Perempuan', '081000022022', 'Surabaya', NULL),
(3, '062022100003', 'Keyla', 'Perempuan', '085000032022', 'Surabaya', NULL),
(4, '062022100004', 'Alan', 'Laki-Laki', '081000042022', 'Mojokerto', NULL),
(5, '062022100005', 'Arya', 'Laki-Laki', '082000052022', 'Sidoarjo', NULL),
(6, '062022100006', 'Arnan', 'Laki-Laki', '083000062022', 'Sidoarjo', NULL),
(7, '062022100007', 'Bela', 'Perempuan', '081000072022', 'Surabaya', NULL),
(8, '062022100008', 'Farah', 'Perempuan', '085000082022', 'Mojokerto', NULL),
(9, '062022100009', 'Amel', 'Perempuan', '081000092022', 'Mojokerto', NULL),
(10, '062022100010', 'Faris', 'Laki-Laki', '081000102022', 'sidoarjo', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `id_Matkul` int(11) NOT NULL,
  `Sks` int(11) DEFAULT NULL,
  `Nama_Matkul` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`id_Matkul`, `Sks`, `Nama_Matkul`) VALUES
(1001, 4, 'Basis data'),
(1002, 4, 'Jaringan Komputer'),
(1003, 3, 'Kecerdasan Buatan'),
(1004, 3, 'Fisika'),
(1005, 4, 'PBO'),
(1006, 2, 'Bhs inggris'),
(1007, 3, 'Analisis dan perancangan'),
(1008, 3, 'Data Mining'),
(1009, 2, 'Pancasila'),
(1010, 3, 'Aljabar Linear'),
(1011, 3, 'Kecerdasan Komputasi'),
(1012, 2, 'Kewirausahaan'),
(1013, 2, 'Agama'),
(1014, 3, 'Pemogramana web');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_Ruang` int(11) NOT NULL,
  `Nama_Ruang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_Ruang`, `Nama_Ruang`) VALUES
(1, 'A101'),
(2, 'A102'),
(3, 'A103'),
(4, 'A104'),
(5, 'A105'),
(6, 'A201'),
(7, 'A202'),
(8, 'A203'),
(9, 'A204'),
(10, 'A205'),
(11, 'A301'),
(12, 'A302'),
(13, 'A303'),
(14, 'A304'),
(15, 'A305');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_dosen`
--
ALTER TABLE `detail_dosen`
  ADD KEY `FK_dosen_id` (`dosen_id`),
  ADD KEY `FK_matkul_id` (`matkul_id`);

--
-- Indeks untuk tabel `detail_mahasiswa`
--
ALTER TABLE `detail_mahasiswa`
  ADD KEY `FK_mahasiswa_id` (`mahasiswa_id`),
  ADD KEY `FK_mattkul_id` (`mattkul_id`);

--
-- Indeks untuk tabel `detail_ruang`
--
ALTER TABLE `detail_ruang`
  ADD KEY `FK_matkull_id` (`matkull_id`),
  ADD KEY `FK_ruang_id` (`ruang_id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_Mahasiswa`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id_Matkul`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_Ruang`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_dosen`
--
ALTER TABLE `detail_dosen`
  ADD CONSTRAINT `FK_dosen_id` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `FK_matkul_id` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id_Matkul`);

--
-- Ketidakleluasaan untuk tabel `detail_mahasiswa`
--
ALTER TABLE `detail_mahasiswa`
  ADD CONSTRAINT `FK_mahasiswa_id` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id_Mahasiswa`),
  ADD CONSTRAINT `FK_mattkul_id` FOREIGN KEY (`mattkul_id`) REFERENCES `matkul` (`id_Matkul`);

--
-- Ketidakleluasaan untuk tabel `detail_ruang`
--
ALTER TABLE `detail_ruang`
  ADD CONSTRAINT `FK_matkull_id` FOREIGN KEY (`matkull_id`) REFERENCES `matkul` (`id_Matkul`),
  ADD CONSTRAINT `FK_ruang_id` FOREIGN KEY (`ruang_id`) REFERENCES `ruang` (`id_Ruang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
