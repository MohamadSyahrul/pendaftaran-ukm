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


-- Dumping database structure for pendaftaran_ukm
CREATE DATABASE IF NOT EXISTS `pendaftaran_ukm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pendaftaran_ukm`;

-- Dumping structure for table pendaftaran_ukm.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(17, '2014_10_12_000000_create_users_table', 1),
	(18, '2014_10_12_100000_create_password_resets_table', 1),
	(19, '2019_08_19_000000_create_failed_jobs_table', 1),
	(20, '2021_07_08_134527_create_tb_ukm_table', 1),
	(21, '2021_07_08_155548_create_tb_sertifikat_table', 1),
	(22, '2021_07_08_155621_create_tb_pendaftaran_ukm_table', 1),
	(23, '2021_07_08_155652_create_tb_pendaftaran_event_table', 1),
	(24, '2021_07_08_155703_create_tb_event_table', 1),
	(25, '2021_07_22_124557_create_profile_users_table', 1),
	(26, '2021_08_11_223301_add_judul_to_tb_event_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.profile_users
CREATE TABLE IF NOT EXISTS `profile_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nim` bigint(20) DEFAULT NULL,
  `no_tlp` bigint(20) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_users_id_user_foreign` (`id_user`),
  CONSTRAINT `profile_users_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.profile_users: ~2 rows (approximately)
/*!40000 ALTER TABLE `profile_users` DISABLE KEYS */;
INSERT INTO `profile_users` (`id`, `foto`, `nama`, `nim`, `no_tlp`, `alamat`, `angkatan`, `prodi`, `id_user`, `created_at`, `updated_at`) VALUES
	(1, 'default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-08-11 22:30:02', '2021-08-11 22:30:02'),
	(2, '1628733066668.png', 'Mochamad Syahrul Samsudin', 361855401122, 85707312821, 'Jombang', '12', 'Teknik Informatika', 2, '2021-08-11 22:31:12', '2021-08-12 01:51:06');
/*!40000 ALTER TABLE `profile_users` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.tb_event
CREATE TABLE IF NOT EXISTS `tb_event` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.tb_event: ~1 rows (approximately)
/*!40000 ALTER TABLE `tb_event` DISABLE KEYS */;
INSERT INTO `tb_event` (`id`, `keterangan`, `gambar`, `created_at`, `updated_at`, `judul`) VALUES
	(1, 'coba', '1628722479866.png', '2021-08-11 22:54:39', '2021-08-11 22:54:39', 'coba tanggal 5 agustus');
/*!40000 ALTER TABLE `tb_event` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.tb_pendaftaran_event
CREATE TABLE IF NOT EXISTS `tb_pendaftaran_event` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NIM` bigint(20) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.tb_pendaftaran_event: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_pendaftaran_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pendaftaran_event` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.tb_pendaftaran_ukm
CREATE TABLE IF NOT EXISTS `tb_pendaftaran_ukm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `NIM` bigint(20) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.tb_pendaftaran_ukm: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_pendaftaran_ukm` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pendaftaran_ukm` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.tb_sertifikat
CREATE TABLE IF NOT EXISTS `tb_sertifikat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sertifikat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.tb_sertifikat: ~0 rows (approximately)
/*!40000 ALTER TABLE `tb_sertifikat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_sertifikat` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.tb_ukm
CREATE TABLE IF NOT EXISTS `tb_ukm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ukm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci,
  `foto1` text COLLATE utf8mb4_unicode_ci,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.tb_ukm: ~1 rows (approximately)
/*!40000 ALTER TABLE `tb_ukm` DISABLE KEYS */;
INSERT INTO `tb_ukm` (`id`, `ukm`, `keterangan`, `foto`, `foto1`, `logo`, `created_at`, `updated_at`) VALUES
	(1, 'Hallo word', '<p>coba titila keterangan<br></p>', '1628729709985.driving-license.png', '1628729709955.admin.png', '1628729709369.city-hall.png', '2021-08-12 00:08:09', '2021-08-12 00:55:09');
/*!40000 ALTER TABLE `tb_ukm` ENABLE KEYS */;

-- Dumping structure for table pendaftaran_ukm.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table pendaftaran_ukm.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `role`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'perpenas', 'perpenas@gmail.com', NULL, '$2y$10$l2i2rPfQcwy63ElVRAz4QOsj7ie3M.RifYUS4W2Hjv.36DI3/koAS', NULL, '2021-08-11 22:30:02', '2021-08-11 22:30:02'),
	(2, 'mahasiswa', 'mahasiswa', 'mochamadsahrul28@gmail.com', NULL, '$2y$10$VDosQo4cyJK/Q2EakLJ3x.X3YyKetxqcWGiBy3ufr7oEp5UDMEnGO', NULL, '2021-08-11 22:31:12', '2021-08-11 22:31:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
