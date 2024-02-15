-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table school.tb_daerah
CREATE TABLE IF NOT EXISTS `tb_daerah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_negeri` int(11) DEFAULT NULL,
  `nama_daerah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school.tb_daerah: ~27 rows (approximately)
/*!40000 ALTER TABLE `tb_daerah` DISABLE KEYS */;
INSERT INTO `tb_daerah` (`id`, `id_negeri`, `nama_daerah`) VALUES
	(1, 2, 'Baling'),
	(2, 2, 'Bandar Baharu'),
	(3, 2, 'Kota Setar'),
	(4, 2, 'Kubang Pasu'),
	(5, 2, 'Kulim'),
	(6, 2, 'Langkawi'),
	(7, 2, 'Padang Terap'),
	(8, 2, 'Pendang'),
	(9, 2, 'Pokok Sena'),
	(10, 2, 'Sik'),
	(11, 2, 'Yan'),
	(12, 1, 'Batu Pahat'),
	(13, 1, 'Johor Bahru'),
	(14, 1, 'Kluang'),
	(15, 1, 'Kota Tinggi'),
	(16, 1, 'Kulai'),
	(17, 1, 'Mersing'),
	(18, 1, 'Muar'),
	(19, 1, 'Pontian'),
	(20, 1, 'Segamat'),
	(21, 1, 'Tangkak'),
	(22, 3, 'Bachok'),
	(23, 3, 'Gua Musang'),
	(24, 3, 'Jeli'),
	(25, 3, 'Kota Bharu'),
	(26, 3, 'Kuala Krai'),
	(27, 3, 'Machang'),
	(28, 3, 'Pasir Mas'),
	(29, 3, 'Pasir Puteh'),
	(30, 3, 'Tanah Merah'),
	(31, 3, 'Tumpat');
/*!40000 ALTER TABLE `tb_daerah` ENABLE KEYS */;

-- Dumping structure for table school.tb_negeri
CREATE TABLE IF NOT EXISTS `tb_negeri` (
  `id` int(11) NOT NULL,
  `nama_negeri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school.tb_negeri: ~16 rows (approximately)
/*!40000 ALTER TABLE `tb_negeri` DISABLE KEYS */;
INSERT INTO `tb_negeri` (`id`, `nama_negeri`) VALUES
	(1, 'Johor'),
	(2, 'Kedah'),
	(3, 'Kelantan'),
	(4, 'Melaka'),
	(5, 'Negeri Sembilan'),
	(6, 'Pahang'),
	(7, 'Perak'),
	(8, 'Perlis'),
	(9, 'Pulau Pinang'),
	(10, 'Sabah'),
	(11, 'Sarawak'),
	(12, 'Selangor'),
	(13, 'Terengganu'),
	(14, 'Wilayah Persekutuan Kuala Lumpur'),
	(15, 'Wilayah Persekutuan Labuan'),
	(16, 'Wilayah Persekutuan Putrajaya');
/*!40000 ALTER TABLE `tb_negeri` ENABLE KEYS */;

-- Dumping structure for table school.tb_sekolah
CREATE TABLE IF NOT EXISTS `tb_sekolah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_sekolah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school.tb_sekolah: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_sekolah` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sekolah` ENABLE KEYS */;

-- Dumping structure for table school.tb_users
CREATE TABLE IF NOT EXISTS `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_user` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school.tb_users: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;

-- Dumping structure for table school.tb_user_info
CREATE TABLE IF NOT EXISTS `tb_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `ic_user` int(11) NOT NULL,
  `role_user` int(11) NOT NULL,
  `id_pangkat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table school.tb_user_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_user_info` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
