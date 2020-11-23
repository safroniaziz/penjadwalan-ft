-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for penjadwalan
CREATE DATABASE IF NOT EXISTS `penjadwalan` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `penjadwalan`;

-- Dumping structure for table penjadwalan.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table penjadwalan.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table penjadwalan.jadwals
CREATE TABLE IF NOT EXISTS `jadwals` (
  `id` int(11) DEFAULT NULL,
  `ruang_id` int(11) DEFAULT NULL,
  `hari` enum('senin','selasa','rabu','kamis','jumat') DEFAULT NULL,
  `shift` enum('1','2','3','4','5','6','7','8') DEFAULT NULL,
  `kode_matkul` varchar(50) DEFAULT NULL,
  `nm_matkul` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table penjadwalan.jadwals: ~0 rows (approximately)
/*!40000 ALTER TABLE `jadwals` DISABLE KEYS */;
/*!40000 ALTER TABLE `jadwals` ENABLE KEYS */;

-- Dumping structure for table penjadwalan.mata_kuliahs
CREATE TABLE IF NOT EXISTS `mata_kuliahs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kode_prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_matkul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_matkul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nm_dosen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester_matkul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table penjadwalan.mata_kuliahs: ~113 rows (approximately)
/*!40000 ALTER TABLE `mata_kuliahs` DISABLE KEYS */;
REPLACE INTO `mata_kuliahs` (`id`, `kode_prodi`, `nm_prodi`, `kode_matkul`, `nm_matkul`, `kelas`, `nip`, `nm_dosen`, `semester_matkul`, `sks`, `semid`, `jumlah_mahasiswa`, `created_at`, `updated_at`) VALUES
	(1, '251142', 'INFORMATIKA', '', 'Desain dan Analisis Algoritma', 'A', '1,95904E+17', 'Boko Susilo', '1', '2', '20201', '30', NULL, NULL),
	(2, '251142', 'INFORMATIKA', '', 'Matematika Diskrit', 'B', '1,95904E+17', 'Boko Susilo', '1', '2', '20201', '30', NULL, NULL),
	(3, '251142', 'INFORMATIKA', '', 'Desain dan Analisis Algoritma', 'B', '1,95904E+17', 'Boko Susilo', '1', '2', '20201', '30', NULL, NULL),
	(4, '251142', 'INFORMATIKA', '', 'Matematika Diskrit', 'A', '1,95904E+17', 'Boko Susilo', '1', '2', '20201', '30', NULL, NULL),
	(5, '251142', 'INFORMATIKA', '', 'Visi Komputer', '', '1,95904E+17', 'Boko Susilo', '1', '2', '20201', '30', NULL, NULL),
	(6, '251142', 'INFORMATIKA', '', 'Teknik Pemodelan dan Simulasi', '', '1,95904E+17', 'Boko Susilo', '1', '2', '20201', '30', NULL, NULL),
	(7, '251142', 'INFORMATIKA', '', 'Desain dan Analisis Algoritma', 'A', '1,95904E+17', 'Boko Susilo', '1', '2', '20201', '30', NULL, NULL),
	(8, '251142', 'INFORMATIKA', '', 'Desain dan Analisis Algoritma', 'B', '1,95904E+17', 'Boko Susilo', '2', '2', '20201', '30', NULL, NULL),
	(9, '251142', 'INFORMATIKA', '', 'Pengolahan Citra Digital', '', '1,97308E+17', 'Ernawati', '1', '2', '20201', '30', NULL, NULL),
	(10, '251142', 'INFORMATIKA', '', 'Rekayasa Perangkat Lunak', 'A', '1,97308E+17', 'Ernawati', '1', '2', '20201', '30', NULL, NULL),
	(11, '251148', 'ELEKTRO', '', 'Kecerdasan Buatan', 'A', '1,97308E+17', 'Ernawati', '2', '2', '20201', '30', NULL, NULL),
	(12, '251148', 'ELEKTRO', '', 'Rekayasa Perangkat Lunak', 'B', '1,97308E+17', 'Ernawati', '2', '2', '20201', '30', NULL, NULL),
	(13, '251148', 'ELEKTRO', '', 'Fuzzy Logic', '', '1,97308E+17', 'Ernawati', '2', '2', '20201', '30', NULL, NULL),
	(14, '251148', 'ELEKTRO', '', 'Kecerdasan Buatan', 'B', '1,97308E+17', 'Ernawati', '2', '2', '20201', '30', NULL, NULL),
	(15, '251148', 'ELEKTRO', '', 'Proyek Rekayasa Perangkat Lunak', 'A1', '1,97308E+17', 'Ernawati', '3', '2', '20201', '30', NULL, NULL),
	(16, '251148', 'ELEKTRO', '', 'Proyek Rekayasa Perangkat Lunak', 'A2', '1,97308E+17', 'Ernawati', '3', '2', '20201', '30', NULL, NULL),
	(17, '251148', 'ELEKTRO', '', 'Proyek Rekayasa Perangkat Lunak', 'B1', '1,97308E+17', 'Ernawati', '3', '2', '20201', '30', NULL, NULL),
	(18, '251148', 'ELEKTRO', '', 'Proyek Rekayasa Perangkat Lunak', 'B2', '1,97308E+17', 'Ernawati', '3', '2', '20201', '30', NULL, NULL),
	(19, '251148', 'ELEKTRO', '', 'Konstruksi dan Pengujian Perangkat Lunak', '-', '1,97308E+17', 'Ernawati', '3', '2', '20201', '30', NULL, NULL),
	(20, '251148', 'ELEKTRO', '', 'Pengantar Teknologi Informasi dan Komunikasi', 'B', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(21, '251149', 'MESIN', '', 'Rekayasa Perangkat Lunak', 'A', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(22, '251149', 'MESIN', '', 'Pengantar Teknologi Informasi dan Komunikasi', 'A', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(23, '251149', 'MESIN', '', 'Sistem Pendukung Keputusan', '-', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(24, '251149', 'MESIN', '', 'Rekayasa Perangkat Lunak', 'B', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(25, '251149', 'MESIN', '', 'Proyek Rekayasa Perangkat Lunak', 'A1', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(26, '251149', 'MESIN', '', 'Pengantar Teknologi Informasi dan Komunikasi', 'A2', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(27, '251149', 'MESIN', '', 'Pengantar Teknologi Informasi dan Komunikasi', 'B1', '1,97812E+17', 'Desi Andreswari', '3', '2', '20201', '30', NULL, NULL),
	(28, '251149', 'MESIN', '', 'Pengantar Teknologi Informasi dan Komunikasi', 'B2', '1,97812E+17', 'Desi Andreswari', '4', '2', '20201', '30', NULL, NULL),
	(29, '251149', 'MESIN', '', 'Proyek Dasar-Dasar Pengembangan Perangkat Lunak', '-', '1,97812E+17', 'Desi Andreswari', '4', '2', '20201', '30', NULL, NULL),
	(30, '251149', 'MESIN', '', 'Dasar-dasar Pengembangan Perangkat Lunak', '-', '1,97812E+17', 'Desi Andreswari', '4', '2', '20201', '30', NULL, NULL),
	(31, '251145', 'SIPIL', '', 'Wawasan Teknologi dan Komunikasi Ilmiah', '-', '1,97812E+17', 'Desi Andreswari', '4', '2', '20201', '30', NULL, NULL),
	(32, '251145', 'SIPIL', '', 'Kriptografi', 'B', '1,98101E+17', 'Rusdi Efendi', '4', '2', '20201', '30', NULL, NULL),
	(33, '251145', 'SIPIL', '', 'Kecerdasan Buatan', 'A', '1,98101E+17', 'Rusdi Efendi', '4', '2', '20201', '30', NULL, NULL),
	(34, '251145', 'SIPIL', '', 'Aljabar Linier', 'A', '1,98101E+17', 'Rusdi Efendi', '4', '2', '20201', '30', NULL, NULL),
	(35, '251145', 'SIPIL', '', 'Kriptografi', 'A', '1,98101E+17', 'Rusdi Efendi', '4', '2', '20201', '30', NULL, NULL),
	(36, '251145', 'SIPIL', '', 'Kecerdasan Buatan', 'B', '1,98101E+17', 'Rusdi Efendi', '4', '2', '20201', '30', NULL, NULL),
	(37, '251145', 'SIPIL', '', 'Aljabar Linier', 'B', '1,98101E+17', 'Rusdi Efendi', '4', '2', '20201', '40', NULL, NULL),
	(38, '251145', 'SIPIL', '', 'Proyek Aljabar Linier', 'A1', '1,98101E+17', 'Rusdi Efendi', '5', '2', '20201', '40', NULL, NULL),
	(39, '251145', 'SIPIL', '', 'Proyek Aljabar Linier', 'A2', '1,98101E+17', 'Rusdi Efendi', '5', '2', '20201', '40', NULL, NULL),
	(40, '251145', 'SIPIL', '', 'Proyek Aljabar Linier', 'B1', '1,98101E+17', 'Rusdi Efendi', '5', '2', '20201', '40', NULL, NULL),
	(41, '251155', 'ARSITEKTUR', '', 'Proyek Aljabar Linier', 'B2', '1,98101E+17', 'Rusdi Efendi', '5', '2', '20201', '40', NULL, NULL),
	(42, '251155', 'ARSITEKTUR', '', 'Proyek Pengembangan Sistem Informasi', '-', '1,98101E+17', 'Rusdi Efendi', '5', '2', '20201', '40', NULL, NULL),
	(43, '251155', 'ARSITEKTUR', '', 'Pengembangan Sistem Informasi', '-', '1,98101E+17', 'Rusdi Efendi', '5', '2', '20201', '40', NULL, NULL),
	(44, '251155', 'ARSITEKTUR', '', 'Desain dan Konstruksi Portal Informasi', '-', '1,98101E+17', 'Rusdi Efendi', '5', '2', '20201', '40', NULL, NULL),
	(45, '251155', 'ARSITEKTUR', '', 'Keamanan Sistem dan Jaringan', '-', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(46, '251155', 'ARSITEKTUR', '', 'Pengantar Cloud Computing', 'B', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(47, '251155', 'ARSITEKTUR', '', 'Keamanan Sistem dan Jaringan', 'A', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(48, '251155', 'ARSITEKTUR', '', 'Witeless/Mobile Computing', '-', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(49, '251155', 'ARSITEKTUR', '', 'Sistem Terdistribusi', 'A', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(50, '251155', 'ARSITEKTUR', '', 'Sistem Terdistribusi', 'B', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(51, '251156', 'SISTEM INFORMASI', '', 'Sistem Terdistribusi', 'A', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(52, '251156', 'SISTEM INFORMASI', '', 'Sistem Terdistribusi', 'B', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(53, '251156', 'SISTEM INFORMASI', '', 'Desan dan Manajemen Jaringan Komputer', '-', '1,98205E+17', 'Funny Farady Coastera', '5', '3', '20201', '40', NULL, NULL),
	(54, '251156', 'SISTEM INFORMASI', '', 'Proyek Desain dan Manajemen Jaringan Komputer', '-', '1,98205E+17', 'Funny Farady Coastera', '6', '3', '20201', '40', NULL, NULL),
	(55, '251156', 'SISTEM INFORMASI', '', 'Statistik', 'A', '1,98411E+17', 'Ruvita Faurina', '7', '3', '20201', '40', NULL, NULL),
	(56, '251156', 'SISTEM INFORMASI', '', 'Statistik', 'B', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(57, '251156', 'SISTEM INFORMASI', '', 'Sistem Terdistribusi', 'A', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(58, '251156', 'SISTEM INFORMASI', '', 'Sistem Terdistribusi', 'B', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(59, '251156', 'SISTEM INFORMASI', '', 'Natural Language Processing', '-', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(60, '251156', 'SISTEM INFORMASI', '', 'Sistem Terdistribusi', 'A', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(61, '251156', 'SISTEM INFORMASI', '', 'Sistem Terdistribusi', 'B', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(62, '251156', 'SISTEM INFORMASI', '', 'Kecerdasan Buatan', '-', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(63, '251156', 'SISTEM INFORMASI', '', 'Kalkulus', '-', '1,98411E+17', 'Ruvita Faurina', '6', '3', '20201', '40', NULL, NULL),
	(64, '251156', 'SISTEM INFORMASI', '', 'Praktik Teknologi Informasi dan Komunikasi', 'A', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(65, '251156', 'SISTEM INFORMASI', '', 'Teknologi Informasi dan Komunikasi', 'A', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(66, '251156', 'SISTEM INFORMASI', '', 'Analisan dan Perancangan sistem', 'A', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(67, '251156', 'SISTEM INFORMASI', '', 'Proyek Perangkat Lunak', 'B', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(68, '251156', 'SISTEM INFORMASI', '', 'Dasar Pemrograman', 'B', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(69, '251156', 'SISTEM INFORMASI', '', 'Analisan dan Perancangan sistem', 'B', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(70, '251156', 'SISTEM INFORMASI', '', 'Dasar Pemrograman', 'A', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(71, '251156', 'SISTEM INFORMASI', '', 'Data Mning', '-', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(72, '251156', 'SISTEM INFORMASI', '', 'Proyek Perangkat Lunak', 'A', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(73, '251156', 'SISTEM INFORMASI', '', 'Proyek Analisis dan Perancangan Sistem', 'A1', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(74, '251156', 'SISTEM INFORMASI', '', 'Proyek Analisis dan Perancangan Sistem', 'A2', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(75, '251156', 'SISTEM INFORMASI', '', 'Proyek Analisis dan Perancangan Sistem', 'B1', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(76, '251156', 'SISTEM INFORMASI', '', 'Proyek Analisis dan Perancangan Sistem', 'B2', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(77, '251156', 'SISTEM INFORMASI', '', 'Sistem Temu Kembali Informasi', '-', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(78, '251156', 'SISTEM INFORMASI', '', 'Proyek Pemrograman Berorientasi Objek', '-', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(79, '251156', 'SISTEM INFORMASI', '', 'Pemrograman Berorientasi Objek', '-', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(80, '251156', 'SISTEM INFORMASI', '', 'Data Centar dan Big Data Appliance', '-', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(81, '251156', 'SISTEM INFORMASI', '', 'Proyek Data Center dan Big Data Appliance', '-', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(82, '251156', 'SISTEM INFORMASI', '', 'Audit Sistem Informasi', '-', '1,98502E+17', 'Arie Vatresia', '6', '3', '20201', '40', NULL, NULL),
	(83, '251156', 'SISTEM INFORMASI', '', 'Proyek Dasar Pemrograman', 'B1', '19880209FT', 'Nadiza Lediwara', '6', '3', '20201', '40', NULL, NULL),
	(84, '251156', 'SISTEM INFORMASI', '', 'Proyek Dasar Pemrograman', 'B2', '19880209FT', 'Nadiza Lediwara', '6', '1', '20201', '40', NULL, NULL),
	(85, '251156', 'SISTEM INFORMASI', '', 'Proyek Dasar Pemrograman', 'A1', '19880209FT', 'Nadiza Lediwara', '6', '2', '20201', '40', NULL, NULL),
	(86, '251156', 'SISTEM INFORMASI', '', 'Proyek Dasar Pemrograman', 'A2', '19880209FT', 'Nadiza Lediwara', '6', '2', '20201', '40', NULL, NULL),
	(87, '251156', 'SISTEM INFORMASI', '', 'Sistem dan Teknologi Informasi', '-', '19880209FT', 'Nadiza Lediwara', '6', '2', '20201', '40', NULL, NULL),
	(88, '251156', 'SISTEM INFORMASI', '', 'Proyek Manajemen Proyek SI/TI', '-', '19880209FT', 'Nadiza Lediwara', '6', '2', '20201', '40', NULL, NULL),
	(89, '251156', 'SISTEM INFORMASI', '', 'Interaksi Manusia dan Komputer', 'B', '19901018FT', 'Widhia Oktoeberza KZ"', '6', '2', '20201', '40', NULL, NULL),
	(90, '251156', 'SISTEM INFORMASI', '', 'Sistem Pendukung Keputusan', '-', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(91, '251156', 'SISTEM INFORMASI', '', 'Fuzzy Logic', '-', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(92, '251156', 'SISTEM INFORMASI', '', 'Matematika Diskrit', 'B', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(93, '251156', 'SISTEM INFORMASI', '', 'Matematika Diskrit', 'A', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(94, '251156', 'SISTEM INFORMASI', '', 'Interaksi Manusia dan Komputer', 'A', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(95, '251156', 'SISTEM INFORMASI', '', 'Interaksi Manusia Komputer', 'A', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(96, '251156', 'SISTEM INFORMASI', '', 'Interaksi Manusia Komputer', 'B', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(97, '251156', 'SISTEM INFORMASI', '', 'Bahasa Pemrograman', '-', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(98, '251156', 'SISTEM INFORMASI', '', 'Proyek Bahasa Pemrograman', '-', '19901018FT', 'Widhia Oktoeberza KZ"', '7', '2', '20201', '40', NULL, NULL),
	(99, '251156', 'SISTEM INFORMASI', '', 'Aplikasi Komputer Untuk Bisnis', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '7', '2', '20201', '40', NULL, NULL),
	(100, '251156', 'SISTEM INFORMASI', '', 'Pengolahan Citra Digital', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(101, '251156', 'SISTEM INFORMASI', '', 'Pengantar Sistem Multimedia', 'A', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(102, '251156', 'SISTEM INFORMASI', '', 'Pengantar Sistem Multimedia', 'B', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(103, '251156', 'SISTEM INFORMASI', '', 'Data Mining', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(104, '251156', 'SISTEM INFORMASI', '', 'Proyek Sistem Multimedia', 'A1', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(105, '251156', 'SISTEM INFORMASI', '', 'Proyek Sistem Multimedia', 'A2', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(106, '251156', 'SISTEM INFORMASI', '', 'Proyek Sistem Multimedia', 'B1', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(107, '251156', 'SISTEM INFORMASI', '', 'Proyek Sistem Multimedia', 'B2', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(108, '251156', 'SISTEM INFORMASI', '', 'Natural Language Processing', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(109, '251156', 'SISTEM INFORMASI', '', 'Proyek Pengantar Basis Data', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(110, '251156', 'SISTEM INFORMASI', '', 'Pengantar Basis Data', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(111, '251156', 'SISTEM INFORMASI', '', 'Sistem Informasi Akuntansi dan Keuangan', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(112, '251156', 'SISTEM INFORMASI', '', 'Proyek Sistem Informasi Akuntan dan Keuangan', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL),
	(113, '251156', 'SISTEM INFORMASI', '', 'Desain dan Konstruksi Portal Informasi', '-', '1,99201E+17', 'MOCHAMMAD YUSA', '8', '2', '20201', '40', NULL, NULL);
/*!40000 ALTER TABLE `mata_kuliahs` ENABLE KEYS */;

-- Dumping structure for table penjadwalan.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table penjadwalan.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_11_20_091833_create_mata_kuliahs_table', 1),
	(5, '2020_11_20_091854_create_ruangans_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table penjadwalan.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table penjadwalan.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table penjadwalan.ruangans
CREATE TABLE IF NOT EXISTS `ruangans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nm_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kapasitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table penjadwalan.ruangans: ~2 rows (approximately)
/*!40000 ALTER TABLE `ruangans` DISABLE KEYS */;
REPLACE INTO `ruangans` (`id`, `nm_ruangan`, `prodi`, `kapasitas`, `created_at`, `updated_at`) VALUES
	(1, 'Ruangan 1', 'all', '40', '2020-11-23 10:56:08', '2020-11-23 10:56:08'),
	(2, 'Ruangan 2', 'INFORMATIKA', '30', '2020-11-23 10:56:16', '2020-11-23 10:56:16');
/*!40000 ALTER TABLE `ruangans` ENABLE KEYS */;

-- Dumping structure for table penjadwalan.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table penjadwalan.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'operator', 'operator@mail.com', NULL, '$2y$10$5TXD.tEkghUzDgJ5ffZilul6ZF8q/m99aoh4izB9vH9icPwSrHm8G', NULL, '2020-11-23 10:21:57', '2020-11-23 10:21:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
