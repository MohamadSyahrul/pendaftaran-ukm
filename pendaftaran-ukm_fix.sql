-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 07:17 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran-ukm`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_ukms`
--

CREATE TABLE `anggota_ukms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ukm_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `devisi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_ukms`
--

INSERT INTO `anggota_ukms` (`id`, `ukm_id`, `profile_id`, `devisi`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tari Modern', '2021-08-16 09:57:01', '2021-08-16 09:57:01'),
(2, 2, 1, 'perawat', '2021-08-16 10:16:34', '2021-08-16 11:05:24'),
(3, 1, 4, NULL, '2021-08-16 22:06:22', '2021-08-16 22:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_ukms`
--

CREATE TABLE `list_ukms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ukm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_ukms`
--

INSERT INTO `list_ukms` (`id`, `nama_ukm`, `created_at`, `updated_at`) VALUES
(1, 'geniwangi', '2021-08-16 02:50:21', '2021-08-16 03:54:23'),
(2, 'rbb', '2021-08-16 03:44:10', '2021-08-16 03:44:10'),
(3, 'ksr', '2021-08-16 04:13:45', '2021-08-16 04:13:45'),
(4, 'imam', '2021-08-16 04:16:56', '2021-08-16 04:16:56'),
(5, 'robotika', '2021-08-16 04:17:32', '2021-08-16 04:17:32'),
(6, 'olahraga', '2021-08-16 04:17:45', '2021-08-16 04:17:45'),
(7, 'kwu', '2021-08-16 04:17:57', '2021-08-16 04:17:57'),
(8, 'racana', '2021-08-16 04:18:12', '2021-08-16 04:18:12'),
(9, 'persma', '2021-08-16 04:18:24', '2021-08-16 04:18:24'),
(10, 'mapala', '2021-08-16 04:18:38', '2021-08-16 04:18:38'),
(11, 'menwa', '2021-08-16 04:19:12', '2021-08-16 04:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_08_134527_create_tb_ukm_table', 1),
(5, '2021_07_08_155548_create_tb_sertifikat_table', 1),
(6, '2021_07_08_155621_create_tb_pendaftaran_ukm_table', 1),
(9, '2021_07_22_124557_create_profile_users_table', 1),
(10, '2021_08_11_223301_add_judul_to_tb_event_table', 1),
(12, '2021_08_16_085532_create_list_ukms_table', 2),
(14, '2021_08_16_123934_create_anggota_ukms_table', 3),
(16, '2021_07_08_155652_create_tb_pendaftaran_event_table', 5),
(17, '2021_08_17_024558_create_pendaftaran_events_table', 6),
(18, '2021_07_08_155703_create_tb_event_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran_events`
--

CREATE TABLE `pendaftaran_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ukm_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendaftaran_events`
--

INSERT INTO `pendaftaran_events` (`id`, `ukm_id`, `profile_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2021-08-16 20:42:42', '2021-08-16 20:42:42'),
(2, 1, 4, 1, '2021-08-16 22:07:54', '2021-08-16 22:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `profile_users`
--

CREATE TABLE `profile_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nim` bigint(20) DEFAULT NULL,
  `no_tlp` bigint(20) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_users`
--

INSERT INTO `profile_users` (`id`, `foto`, `nama`, `nim`, `no_tlp`, `alamat`, `angkatan`, `prodi`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '1629130198580.jpg', 'Sinta', 361855401098, 85473238594, 'Banyuwangi', '10', 'Teknik Informatika', 13, '2021-08-16 09:09:58', '2021-08-16 09:09:58'),
(4, '1629176532123.jpg', 'Muhammad Nabil Tamami', 361755401147, 812345678, 'Banyuwangi', '10', 'Teknik Informatika', 15, '2021-08-16 22:02:12', '2021-08-16 22:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE `tb_event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukm_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_event`
--

INSERT INTO `tb_event` (`id`, `judul`, `keterangan`, `gambar`, `ukm_id`, `created_at`, `updated_at`) VALUES
(1, 'Pentas Seni Tari Tradisional Part 2', 'Pentas Seni Tari Tradisional yang menampilkan tari tradisional, tidak hanya tari dari daerah Banyuwangi, pada pentas seni juga menampilkan tarian dari daerah lain seperti Tari Piring yang berasal dari daerah Minangkabau', '1629169146819.jpeg', 1, '2021-08-16 19:59:06', '2021-08-16 20:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sertifikat`
--

CREATE TABLE `tb_sertifikat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sertifikat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ukm`
--

CREATE TABLE `tb_ukm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ukm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tb_ukm`
--

INSERT INTO `tb_ukm` (`id`, `ukm`, `keterangan`, `foto`, `foto1`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'geniwangi', '<p>Geniwangi adalah ukm     Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '1629103870591.UKM Geniwangi.jpeg', '1629103870838.logo GNW.jpg', '1629103870350.UKM Geniwangi.jpeg', '2021-08-16 01:51:10', '2021-08-16 01:51:10'),
(2, 'ksr', '<p>UKM KASR ADALAH     Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n    tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n    consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n    cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n    proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '1629113913183.UKM KSR.jpeg', '1629113913200.UKM KSR.jpeg', '1629113913543.UKM KSR.jpeg', '2021-08-16 04:27:42', '2021-08-16 04:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$UM2k0e/KJvJH2t3zG8LT9uoVxTLbTsyUAkU1a6nWqvKOCEbUwq1BS', NULL, NULL, NULL),
(2, 'robotika', 'robotika', 'robotika@gmail.com', NULL, '$2y$10$3zEP7bG4mKlC85lh3WVyYemfoaR3OkNI5VGp4utD67Ol6e60o5GbC', NULL, NULL, NULL),
(3, 'rbb', 'rbb', 'rbb@gmail.com', NULL, '$2y$10$T4ij32rxO5vHwjN1nZsFhueYTnyOhmCdp3VUqy.1y2oALkqUdBDQa', NULL, NULL, NULL),
(4, 'geniwangi', 'geniwangi', 'geniwangi@gmail.com', NULL, '$2y$10$vCXZUFkB9gAqe1rClKUJ9eVPKpk1VNOa6adAGa1qnVNGvmCNLiyIW', NULL, NULL, NULL),
(5, 'olahraga', 'olahraga', 'olahraga@gmail.com', NULL, '$2y$10$A/TXRPhJ6i3k.3E1QoXc5eJr/LjKPNbp0/aWJOO64JzEGoldFtaly', NULL, NULL, NULL),
(6, 'kwu', 'kwu', 'kwu@gmail.com', NULL, '$2y$10$OZGmA5114XQk/ZOwQw1SROTupYbCFqMKCjH.aVIH8zpNP8TVK1kxy', NULL, NULL, NULL),
(7, 'racana', 'racana', 'racana@gmail.com', NULL, '$2y$10$am9JfXEGPhN37KNulV/y2OTXSGWSPzWaAV6B0x4NWu8ZRzz61rFk2', NULL, NULL, NULL),
(8, 'persma', 'persma', 'persma@gmail.com', NULL, '$2y$10$CleCJTtr.KIoWTFT7I.3GuFw7/EHn/yGlbcckknySAoH7tU6e3wK.', NULL, NULL, NULL),
(9, 'imam', 'imam', 'imam@gmail.com', NULL, '$2y$10$i/..Zrb6M7qCY5J3sOckf.Xp0FZyDH5AQHPhrDDAYxmlIQunbaID6', NULL, NULL, NULL),
(10, 'mapala', 'mapala', 'mapala@gmail.com', NULL, '$2y$10$y7za0XAdBH6CLkhbA/wRt.3ronry/sN7Qm9W9gExbHtuRHXELs8U.', NULL, NULL, NULL),
(11, 'ksr', 'ksr', 'ksr@gmail.com', NULL, '$2y$10$guDl9TJ/7jP572TnWPB20eo.hCEaNKbm/scbp4qgvcxj7we06oJOS', NULL, NULL, NULL),
(12, 'menwa', 'menwa', 'menwa@gmail.com', NULL, '$2y$10$cljsBsgjzwYrIDfhZELYQ.bEUGwl7pqchhD5znewf1na5XSMgTJ3m', NULL, NULL, NULL),
(13, 'mahasiswa', 'mahasiswa', 'mahasiswa@gmail.com', NULL, '$2y$10$AutzFb26ZpfBhLR60vvnvO5xDMiJgLBYSpAj4M4CLR1wetBOg78kC', NULL, NULL, NULL),
(15, 'mahasiswa', 'nabil', 'nabil@gmail.com', NULL, '$2y$10$n42omE/H3hsz3mo0tGxOs.y8d1HtVjirG4frn6l61FL30Jk0BhnAm', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_ukms`
--
ALTER TABLE `anggota_ukms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `list_ukms`
--
ALTER TABLE `list_ukms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pendaftaran_events`
--
ALTER TABLE `pendaftaran_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile_users`
--
ALTER TABLE `profile_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile_users_id_user_foreign` (`id_user`);

--
-- Indexes for table `tb_event`
--
ALTER TABLE `tb_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_sertifikat`
--
ALTER TABLE `tb_sertifikat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ukm`
--
ALTER TABLE `tb_ukm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_ukms`
--
ALTER TABLE `anggota_ukms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_ukms`
--
ALTER TABLE `list_ukms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pendaftaran_events`
--
ALTER TABLE `pendaftaran_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile_users`
--
ALTER TABLE `profile_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_event`
--
ALTER TABLE `tb_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_sertifikat`
--
ALTER TABLE `tb_sertifikat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ukm`
--
ALTER TABLE `tb_ukm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profile_users`
--
ALTER TABLE `profile_users`
  ADD CONSTRAINT `profile_users_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
