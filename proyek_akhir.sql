-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2021 at 01:53 PM
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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Diterima',
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nim` bigint(20) DEFAULT NULL,
  `no_tlp` bigint(20) DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `devisi` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_masuk` date DEFAULT NULL,
  `tahun_selesai` date DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_ukms`
--

INSERT INTO `anggota_ukms` (`id`, `ukm_id`, `status`, `foto`, `nama`, `nim`, `no_tlp`, `alamat`, `angkatan`, `prodi`, `devisi`, `tahun_masuk`, `tahun_selesai`, `id_user`, `created_at`, `updated_at`) VALUES
(5, 1, 'EX Anggota', '1630494045683.jpeg', 'Eka Amaliyah', 361755401159, 85230203910, 'Banyuwangi', '2017', 'Teknik Informatika', 'Wakil Ketua Umum', '2020-09-02', '2021-09-02', 2076, '2021-09-01 04:00:45', '2021-09-02 04:48:58'),
(6, 1, 'EX Anggota', '1630500846936.jpg', 'Ade Fian Galih Imandani', 361755401136, 81217372153, 'banyuwangi', '2017', 'Teknik Informatika', 'Ketua Umum', '2020-09-02', '2021-09-02', 1897, '2021-09-01 05:54:06', '2021-09-02 04:47:03'),
(7, 1, 'Diterima', '1630502049468.png', 'Adam ferdinan nahdi', 361721401041, 82230989204, 'Banyuwangi', '2017', 'Teknik Mesin', NULL, '2020-09-02', NULL, 1617, '2021-09-01 06:14:09', '2021-09-01 06:18:19'),
(8, 1, 'Diterima', '1630502477230.jpg', 'Abi tio bahtiar', 361321401013, 85211236272, 'Jember', '2017', 'Teknik Mesin', NULL, '2020-09-02', NULL, 75, '2021-09-01 06:21:17', '2021-09-01 19:17:58'),
(9, 1, 'Belum Diterima', '1630502669683.jpeg', 'Ellen Diyah Ayu Tania', 361622401157, 895394042446, 'Muncar', NULL, 'Teknik Sipil', NULL, NULL, NULL, 1864, '2021-09-01 06:24:29', '2021-09-01 06:24:29'),
(10, 2, 'Diterima', '1630502828399.jpeg', 'Ellen Diyah Ayu Tania', 361622401157, 895394042446, 'Muncar', '2017', 'Teknik Sipil', NULL, '2020-09-02', NULL, 1864, '2021-09-01 06:27:08', '2021-09-01 09:59:32'),
(12, 1, 'Belum Diterima', '1630503413928.jpeg', 'Ella Nuritasari', 361593301133, 82301000725, 'Rogojampi', '2017', 'Manajemen Bisnis dan Pariwisata', NULL, NULL, NULL, 751, '2021-09-01 06:36:53', '2021-09-01 06:36:53'),
(13, 1, 'Diterima', '1630513758547.jpg', 'Abu Bakar Sidiq', 361455401121, 88214997000, 'Banyuwangi', '2017', 'Teknik Informatika', NULL, '2021-09-02', NULL, 556, '2021-09-01 09:29:18', '2021-09-02 04:37:45'),
(14, 3, 'Belum Diterima', '1630513835306.jpg', 'Abu Bakar Sidiq', 361455401121, 88214997000, 'Banyuwangi', '2017', 'Teknik Informatika', NULL, NULL, NULL, 556, '2021-09-01 09:30:35', '2021-09-01 09:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `devisi_anggotas`
--

CREATE TABLE `devisi_anggotas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ukm_id` int(11) NOT NULL,
  `nama_devisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devisi_anggotas`
--

INSERT INTO `devisi_anggotas` (`id`, `ukm_id`, `nama_devisi`, `created_at`, `updated_at`) VALUES
(1, 1, 'tari', '2021-09-02 02:06:59', '2021-09-02 02:29:43'),
(3, 1, 'menyanyi', '2021-09-02 02:31:01', '2021-09-02 02:31:01');

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
(10, '2021_08_11_223301_add_judul_to_tb_event_table', 1),
(12, '2021_08_16_085532_create_list_ukms_table', 2),
(16, '2021_07_08_155652_create_tb_pendaftaran_event_table', 5),
(17, '2021_08_17_024558_create_pendaftaran_events_table', 6),
(18, '2021_07_08_155703_create_tb_event_table', 7),
(20, '2021_08_16_123934_create_anggota_ukms_table', 8),
(21, '2021_07_22_124557_create_profile_users_table', 9),
(22, '2021_08_30_001328_create_tbl_pendaftaran_ukms_table', 10),
(25, '2021_09_02_083619_create_devisi_anggotas_table', 11);

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
(1, 1, 2076, 1, '2021-09-01 04:52:52', '2021-09-01 04:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `profile_users`
--

CREATE TABLE `profile_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nim` bigint(20) DEFAULT NULL,
  `no_tlp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `angkatan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_users`
--

INSERT INTO `profile_users` (`id`, `nama`, `nim`, `no_tlp`, `prodi`, `angkatan`, `id_user`, `created_at`, `updated_at`) VALUES
(5, 'A. Malik Fajar', 361522401080, '082141711171', 'D3 Teknik Sipil', NULL, 1515, NULL, NULL),
(6, 'Aan Budi Waskito', 361421401039, '085335138977', 'D3 Teknik Mesin', NULL, 743, NULL, NULL),
(7, 'Aan prasojo', 361621401136, '+62 831-6242-375', 'D3 Teknik Mesin', NULL, 1370, NULL, NULL),
(8, 'Abd qodir', 361421401025, '085236853226', 'D3 Teknik Mesin', NULL, 630, NULL, NULL),
(9, 'Abd. Manaf', 361721401010, '085785043794', 'D3 Teknik Mesin', NULL, 1969, NULL, NULL),
(10, 'Abd. Ro\'uf', 361421401076, '082233659890', 'D3 Teknik Mesin', NULL, 486, NULL, NULL),
(11, 'Abdi Hartanto', 361621401039, '082301321092', 'D3 Teknik Mesin', NULL, 1351, NULL, NULL),
(12, 'Abdul Azis', 361493301064, '081216668006', 'D4 Manajemen Bisnis Pariwisata', NULL, 1277, NULL, NULL),
(13, 'ABDUL AZIZ', 361455401021, '082234916187', 'D3 Teknik Informatika', NULL, 326, NULL, NULL),
(14, 'Abdul basit hamdani', 361755401025, '089697743687', 'D3 Teknik Informatika', NULL, 2036, NULL, NULL),
(15, 'Abdul Basyit Aly', 361655401092, '081231928233', 'D3 Teknik Informatika', NULL, 1723, NULL, NULL),
(16, 'Abdul Ghofur', 361341333029, '082244144268', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1310, NULL, NULL),
(17, 'abdul jalil', 361421401014, '082332337311', 'D3 Teknik Mesin', NULL, 509, NULL, NULL),
(18, 'Abdul Rokip', 361493301050, '088228311169', 'D4 Manajemen Bisnis Pariwisata', NULL, 770, NULL, NULL),
(19, 'Abdullah Fahmi', 361655401156, '081934841616', 'D3 Teknik Informatika', NULL, 309, NULL, NULL),
(20, 'Abdulloh Yakin', 361693301040, '082341341437', 'D4 Manajemen Bisnis Pariwisata', NULL, 1646, NULL, NULL),
(21, 'Abdur Rohman', 361521401019, '083835564578', 'D3 Teknik Mesin', NULL, 26, NULL, NULL),
(22, 'Abdurrauf Saleh Bazara\'ah', 9911203001, '081230350950', 'D3 Teknik Mesin', NULL, 966, NULL, NULL),
(23, 'Abi Sarirayndra', 361755401183, '085230514056', 'D3 Teknik Informatika', NULL, 1733, NULL, NULL),
(24, 'Abi tio bahtiar', 361321401013, '085211236272', 'D3 Teknik Mesin', NULL, 75, NULL, NULL),
(25, 'Abu Bakar Hadi Perwira', 361622401005, '085855095117', 'D3 Teknik Sipil', NULL, 1192, NULL, NULL),
(26, 'Abu Bakar Sidiq', 361455401121, '088214997000', 'D3 Teknik Informatika', NULL, 556, NULL, NULL),
(27, 'Ach. Dani maualana', 361722401117, '082141999723', 'D3 Teknik Sipil', NULL, 1985, NULL, NULL),
(28, 'Ach. Fery setiawan', 361322401048, '085267884069', 'D3 Teknik Sipil', NULL, 427, NULL, NULL),
(29, 'Achmad Ainur Rofiq', 361255401002, '085232710599', 'D3 Teknik Mesin', NULL, 232, NULL, NULL),
(30, 'Achmad Aliem Rhobbhany', 9911202001, '085257133335', 'D3 Teknik Sipil', NULL, 515, NULL, NULL),
(31, 'Achmad fauzi hardiansyah', 361555401144, '081331993747', 'D3 Teknik Informatika', NULL, 1725, NULL, NULL),
(32, 'Achmad Nasikhin', 361555401060, '082247451222', 'D3 Teknik Informatika', NULL, 1477, NULL, NULL),
(33, 'Achmad Oky Efendi', 361655401079, '085331051257', 'D3 Teknik Informatika', NULL, 1095, NULL, NULL),
(34, 'Achmad Reynaldo Maldini', 361522401014, '082234230070', 'D3 Teknik Sipil', NULL, 145, NULL, NULL),
(35, 'Achmad Roghib Mabrur', 361441311089, '085337816546', 'D4 Agribisnis', NULL, 889, NULL, NULL),
(36, 'Achmad Rosidi', 361541333043, '082245336346', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1232, NULL, NULL),
(37, 'Achmad Syifa\'ul Qolbi Al-Faruq', 361522401078, '082272423831', 'D3 Teknik Sipil', NULL, 144, NULL, NULL),
(38, 'Achmad Vishal Assiddiqi', 361655401088, '082338871081', 'D3 Teknik Informatika', NULL, 1418, NULL, NULL),
(39, 'Acusta Febryanto', 361622401112, '087702884930', 'D3 Teknik Sipil', NULL, 1512, NULL, NULL),
(40, 'Adam Birangga', 361555401096, '083852898970', 'D3 Teknik Informatika', NULL, 110, NULL, NULL),
(41, 'Adam ferdinan nahdi', 361721401041, '082230989204', 'D3 Teknik Mesin', NULL, 1617, NULL, NULL),
(42, 'Ade andrean syah', 9908202040, '082301434879', 'D3 Teknik Mesin', NULL, 166, NULL, NULL),
(43, 'Ade Fani Sabela Imandani', 361722401109, '082141999722', 'D3 Teknik Sipil', NULL, 1772, NULL, NULL),
(44, 'Ade Fian Galih Imandani', 361755401136, '081217372153', 'D3 Teknik Informatika', NULL, 1897, NULL, NULL),
(45, 'Ade novan prasetyo', 361593301053, '089650421218', 'D4 Manajemen Bisnis Pariwisata', NULL, 757, NULL, NULL),
(46, 'Adella Ayu Nova Riandita', 361393301007, '081231092890', 'D4 Manajemen Bisnis Pariwisata', NULL, 406, NULL, NULL),
(47, 'ADENINA AGUSTIN', 361641311054, '083847697886', 'D4 Agribisnis', NULL, 1843, NULL, NULL),
(48, 'Adi Irawan', 361555401068, '082332695805', 'D3 Teknik Informatika', NULL, 302, NULL, NULL),
(49, 'Adi Kurnia Wijaya', 361255401004, '089647226924', 'D3 Teknik Informatika', NULL, 453, NULL, NULL),
(50, 'Adi priatama', 9909202001, '087853383936', 'D3 Teknik Sipil', NULL, 175, NULL, NULL),
(51, 'Adi Setiono', 361555401152, '085210142121', 'D3 Teknik Informatika', NULL, 147, NULL, NULL),
(52, 'Adi surya andika', 361421401001, '081238385217', 'D3 Teknik Mesin', NULL, 663, NULL, NULL),
(53, 'Adi Tiyan Budi Cahyono', 361555401044, '082266341978', 'D3 Teknik Mesin', NULL, 1722, NULL, NULL),
(54, 'ADILA AULIA MUNTAZA', 361755401111, '082339699744', 'D3 Teknik Informatika', NULL, 2052, NULL, NULL),
(55, 'Adinda ayu fitriyah', 361541311075, '081230355823', 'D4 Agribisnis', NULL, 1791, NULL, NULL),
(56, 'Aditya Bagus Pradana', 361522401008, '089682222518', 'D3 Teknik Sipil', NULL, 961, NULL, NULL),
(57, 'Aditya dwi kurniawan', 361593301047, '085156418598', 'D4 Manajemen Bisnis Pariwisata', NULL, 1730, NULL, NULL),
(58, 'Aditya Purnama', 361493301010, '082240754760', 'D4 Manajemen Bisnis Pariwisata', NULL, 828, NULL, NULL),
(59, 'ADITYA WAHYU PRATAMA', 361455401102, '082234293530', 'D3 Teknik Informatika', NULL, 353, NULL, NULL),
(60, 'Adityawan Pratama', 361541333002, '082218538490', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1304, NULL, NULL),
(61, 'Afdilla Masniarahma', 361722401007, '089514548821', 'D3 Teknik Sipil', NULL, 2016, NULL, NULL),
(62, 'Affan Arinaldy', 361322401073, '082316378717', 'D3 Teknik Sipil', NULL, 320, NULL, NULL),
(63, 'Afiaci Suwandi Putri', 361641311087, '081330937034', 'D4 Agribisnis', NULL, 1785, NULL, NULL),
(64, 'AFIDAH KHOIRU UMMAH', 361641333105, '083847576544', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1624, NULL, NULL),
(65, 'Afif Syarifuddin Maulana', 361693301053, '085336596888', 'D4 Manajemen Bisnis Pariwisata', NULL, 1715, NULL, NULL),
(66, 'Agis Akmalul Anam', 361655401096, '082140707311', 'D3 Teknik Informatika', NULL, 1428, NULL, NULL),
(67, 'Agung Prayogi', 361655401135, '082334120709', 'D3 Teknik Informatika', NULL, 1363, NULL, NULL),
(68, 'Agung rizqi dwi putra', 361322401041, '082141621774', 'D3 Teknik Sipil', NULL, 449, NULL, NULL),
(69, 'Agung Wijaksono', 361355401127, '082234138765', 'D3 Teknik Informatika', NULL, 642, NULL, NULL),
(70, 'AGUNG WILIS PRATOMO', 361255401005, '08113412602', 'D3 Teknik Informatika', NULL, 115, NULL, NULL),
(71, 'agus ali mukti', 361322401061, '085311268891', 'D3 Teknik Sipil', NULL, 506, NULL, NULL),
(72, 'Agus Budi Purwanto', 361522401088, '085854880051', 'D3 Teknik Sipil', NULL, 1125, NULL, NULL),
(73, 'Agus fadilah', 361321401037, '085348284638', 'D3 Teknik Mesin', NULL, 67, NULL, NULL),
(74, 'Agus rahman', 361441333011, '083830094926', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 266, NULL, NULL),
(75, 'Ahmad Afandi', 361341311040, '082338149383', 'D4 Agribisnis', NULL, 82, NULL, NULL),
(76, 'Ahmad Amin Murtadho', 361455401033, '082233919405', 'D3 Teknik Informatika', NULL, 555, NULL, NULL),
(77, 'Ahmad Basofi', 361621401058, '083846525172', 'D3 Teknik Mesin', NULL, 1352, NULL, NULL),
(78, 'Ahmad bisri nanda nur edi', 361522401012, '081233385215', 'D3 Teknik Mesin', NULL, 139, NULL, NULL),
(79, 'Ahmad Bustanul Arif', 361521401088, '082331303677', 'D3 Teknik Mesin', NULL, 63, NULL, NULL),
(80, 'AHMAD DAVID NUR ROHMAN', 361593301115, '083142784823', 'D4 Manajemen Bisnis Pariwisata', NULL, 1451, NULL, NULL),
(81, 'Ahmad faiq rois', 9911202003, '085236339293', 'D3 Teknik Mesin', NULL, 129, NULL, NULL),
(82, 'Ahmad Faqih Ardinata', 361655401078, '087760115049', 'D3 Teknik Informatika', NULL, 1412, NULL, NULL),
(83, 'Ahmad faradito syaiful ali', 361441333007, '081249415314', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1222, NULL, NULL),
(84, 'Ahmad Farisya', 361755401095, '085230324150', 'D3 Teknik Informatika', NULL, 2083, NULL, NULL),
(85, 'Ahmad Fijay Ramadhan', 361755401069, '081284545045', 'D3 Teknik Informatika', NULL, 2054, NULL, NULL),
(86, 'Ahmad firdaus firnanda', 361541311094, '085804849944', 'D4 Agribisnis', NULL, 1795, NULL, NULL),
(87, 'Ahmad Fitra solehudin', 361541333039, '081554864958', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1824, NULL, NULL),
(88, 'Ahmad harisna faisal munif', 361441333005, '082228465566', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1305, NULL, NULL),
(89, 'Ahmad hasan eka saputra', 361541311125, '081259775813', 'D4 Agribisnis', NULL, 1781, NULL, NULL),
(90, 'Ahmad Hidayat', 361721302012, '085331325012', 'D4 Teknik Manufaktur Kapal', NULL, 2056, NULL, NULL),
(91, 'Ahmad ihsan hamdi', 361521401041, '082233821677', 'D3 Teknik Mesin', NULL, 1499, NULL, NULL),
(92, 'Ahmad Ikwani', 9908201006, '085259251929', 'D3 Teknik Informatika', NULL, 216, NULL, NULL),
(93, 'Ahmad Nur Cahyono', 361541311058, '082257486228', 'D4 Agribisnis', NULL, 1861, NULL, NULL),
(94, 'Ahmad Nur Firdaus', 361641311038, '088230049501', 'D4 Agribisnis', NULL, 1811, NULL, NULL),
(95, 'Ahmad Rizal Fahlefi', 361755401071, '085281804507', 'D3 Teknik Informatika', NULL, 1731, NULL, NULL),
(96, 'Ahmad Rofii', 361355401104, '087755902906', 'D3 Teknik Informatika', NULL, 584, NULL, NULL),
(97, 'AHMAD SANTOSO', 361321401016, '0895700583447', 'D3 Teknik Mesin', NULL, 955, NULL, NULL),
(98, 'Ahmad Supiyan', 361341333003, '08988042058', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 524, NULL, NULL),
(99, 'Ahmad Wildan Jauhari', 361655401107, '085259119005', 'D3 Teknik Informatika', NULL, 1048, NULL, NULL),
(100, 'Ahmad wira handoko', 361693301081, '082332079109', 'D4 Manajemen Bisnis Pariwisata', NULL, 1688, NULL, NULL),
(101, 'Ahmad Zaini', 361541333021, '082334314770', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 826, NULL, NULL),
(102, 'AHMMAD FAUZI', 361321401010, '083847509112', 'D3 Teknik Mesin', NULL, 37, NULL, NULL),
(103, 'Aida Nur Anggraini', 361493301017, '081333687836', 'D4 Manajemen Bisnis Pariwisata', NULL, 1333, NULL, NULL),
(104, 'Ainun najib', 361321401027, '087885284035', 'D3 Teknik Mesin', NULL, 65, NULL, NULL),
(105, 'Ainur Rofiqoh', 361522401019, '081252462089', 'D3 Teknik Sipil', NULL, 488, NULL, NULL),
(106, 'AIRUL ALRIZAL ROFIQI', 361541333030, '087755929158', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 882, NULL, NULL),
(107, 'Ajeng Apriliyani Eka Saputri', 361555401125, '082230890996', 'D3 Teknik Informatika', NULL, 303, NULL, NULL),
(108, 'Ajeng Bulan Sarmila', 361722401074, '0895396749593', 'D3 Teknik Sipil', NULL, 1990, NULL, NULL),
(109, 'Ajeng Dwi Pratiwi', 361422401058, '081231847487', 'D3 Teknik Sipil', NULL, 153, NULL, NULL),
(110, 'AJIE RAKA SIWI', 361655401071, '081939322656', 'D3 Teknik Informatika', NULL, 2078, NULL, NULL),
(111, 'Akhmad fariz', 361441311061, '082242999140', 'D4 Agribisnis', NULL, 257, NULL, NULL),
(112, 'Al Hadian', 9909202002, '085239959857', 'D3 Teknik Sipil', NULL, 195, NULL, NULL),
(113, 'Alaika Khumaini', 361622401066, '083116853849', 'D3 Teknik Sipil', NULL, 1983, NULL, NULL),
(114, 'Albertus yoga w', 361655401007, '083847509497', 'D3 Teknik Informatika', NULL, 838, NULL, NULL),
(115, 'Aldila nurma gupita', 361441311072, '082319106107', 'D4 Agribisnis', NULL, 95, NULL, NULL),
(116, 'Aldio kresna bahari', 361655401146, '082146531134', 'D3 Teknik Informatika', NULL, 1747, NULL, NULL),
(117, 'ALEN PRIMA AULYA', 361693301024, '083853323156', 'D4 Manajemen Bisnis Pariwisata', NULL, 1650, NULL, NULL),
(118, 'Alfian rahmat efendi', 9911203005, '081283309509', 'D3 Teknik Mesin', NULL, 72, NULL, NULL),
(119, 'Alfian Tri Laksana', 361521401024, '083119751449', 'D3 Teknik Mesin', NULL, 1535, NULL, NULL),
(120, 'ALFIANTO', 361621401026, '085608752003', 'D3 Teknik Mesin', NULL, 1527, NULL, NULL),
(121, 'Alfiatul rohmah', 361555401074, '085773355816', 'D3 Teknik Informatika', NULL, 116, NULL, NULL),
(122, 'Alfiatul Rosidah', 361355401050, '085233343075', 'D3 Teknik Informatika', NULL, 557, NULL, NULL),
(123, 'Alghoiby Mohammad Khautsar', 361655401009, '087756270065', 'D3 Teknik Informatika', NULL, 1394, NULL, NULL),
(124, 'Ali Mujahidin', 361622401114, '082112028226', 'D3 Teknik Sipil', NULL, 1107, NULL, NULL),
(125, 'Ali Mustakim', 361621401030, '082342501739', 'D3 Teknik Mesin', NULL, 708, NULL, NULL),
(126, 'Alif Aditya Septiandika', 361622401001, '083847137550', 'D3 Teknik Sipil', NULL, 978, NULL, NULL),
(127, 'Alif Munanggar', 361355401023, '087857442323', 'D3 Teknik Informatika', NULL, 585, NULL, NULL),
(128, 'Aliviyah septiyanti', 361693301051, '082287613242', 'D4 Manajemen Bisnis Pariwisata', NULL, 1699, NULL, NULL),
(129, 'Aljihan Maysenda', 361555401030, '081231235340', 'D3 Teknik Informatika', NULL, 1387, NULL, NULL),
(130, 'Alvian Iqbal', 361655401101, '081231298213', 'D3 Teknik Informatika', NULL, 1340, NULL, NULL),
(131, 'Alwi mubarok', 361721401013, '085755713677', 'D3 Teknik Mesin', NULL, 1974, NULL, NULL),
(132, 'Amang bakhtiar', 361321401066, '083853510246', 'D3 Teknik Mesin', NULL, 633, NULL, NULL),
(133, 'Ami Kurniawan', 361422401028, '083847669362', 'D3 Teknik Sipil', NULL, 245, NULL, NULL),
(134, 'Amrul rosyadi', 9911201010, '087889331294', 'D3 Teknik Informatika', NULL, 571, NULL, NULL),
(135, 'Amry Sofiyan', 361393301002, '082340228289', 'D4 Manajemen Bisnis Pariwisata', NULL, 87, NULL, NULL),
(136, 'An Amta Alam Saputra', 361341311024, '082331569149', 'D4 Agribisnis', NULL, 1092, NULL, NULL),
(137, 'Ana fitriani', 361593301025, '087770183027', 'D4 Manajemen Bisnis Pariwisata', NULL, 768, NULL, NULL),
(138, 'Ana Nurul Inayah', 361655401127, '082257897167', 'D3 Teknik Informatika', NULL, 1396, NULL, NULL),
(139, 'Ana Putri Utami', 361655401141, '083847145480', 'D3 Teknik Informatika', NULL, 2046, NULL, NULL),
(140, 'Ana Rofiqoh Alfiati', 361493301099, '082236165305', 'D4 Manajemen Bisnis Pariwisata', NULL, 781, NULL, NULL),
(141, 'Ana Silfia', 361355401013, '085310430143', 'D3 Teknik Informatika', NULL, 621, NULL, NULL),
(142, 'Ana ulfilatun nafiah', 361422401031, '085733383740', 'D3 Teknik Sipil', NULL, 485, NULL, NULL),
(143, 'Analia Rida Shofi Cahyani', 361755401143, '085336543388', 'D3 Teknik Informatika', NULL, 1720, NULL, NULL),
(144, 'Ananda Almahmu Tri Pratiwi', 361441333023, '081334259906', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 841, NULL, NULL),
(145, 'Anang Khoirul Rozikin', 361421401084, '082335624504', 'D3 Teknik Mesin', NULL, 530, NULL, NULL),
(146, 'Anatyas syafarah putri', 361655401123, '083853702516', 'D3 Teknik Informatika', NULL, 1419, NULL, NULL),
(147, 'Andhika Nur Imamah', 361655401189, '083853098532', 'D3 Teknik Informatika', NULL, 122, NULL, NULL),
(148, 'Andhita Eka Sulistyowati', 361593301129, '08978345620', 'D4 Manajemen Bisnis Pariwisata', NULL, 1494, NULL, NULL),
(149, 'Andi cahyo utomo', 361621401111, '089686076901', 'D3 Teknik Mesin', NULL, 1532, NULL, NULL),
(150, 'Andi chairul wafa', 361421401011, '085232219954', 'D3 Teknik Mesin', NULL, 389, NULL, NULL),
(151, 'andi kurniansah', 361521401068, '081354384974', 'D3 Teknik Mesin', NULL, 140, NULL, NULL),
(152, 'Andi Saputra', 361621401095, '082236013651', 'D3 Teknik Mesin', NULL, 901, NULL, NULL),
(153, 'Andi wahyu sanjaya', 361622401067, '082230969697', 'D3 Teknik Sipil', NULL, 1235, NULL, NULL),
(154, 'Andi Wijanarko', 361322401003, '082244180820', 'D3 Teknik Sipil', NULL, 520, NULL, NULL),
(155, 'Andi Yuda Pratama', 361441311141, '085719355374', 'D4 Agribisnis', NULL, 844, NULL, NULL),
(156, 'Andika Ahmad Nursamsu', 361593301076, '082337426231', 'D4 Manajemen Bisnis Pariwisata', NULL, 1319, NULL, NULL),
(157, 'andika setiawan', 361422401069, '8082247888260', 'D3 Teknik Sipil', NULL, 388, NULL, NULL),
(158, 'Andina Rosita Ika Dewi', 361593301094, '082257030961', 'D4 Manajemen Bisnis Pariwisata', NULL, 763, NULL, NULL),
(159, 'Andini setyowati', 361355401064, '085214039586', 'D3 Teknik Informatika', NULL, 288, NULL, NULL),
(160, 'Andre Bagoes Hidayat', 361441333010, '083119495821', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 186, NULL, NULL),
(161, 'Andrea heru nugroho', 361355401164, '082132801709', 'D3 Teknik Informatika', NULL, 344, NULL, NULL),
(162, 'Andreas Cahyo Purnomo', 361493301061, '082231743167', 'D4 Manajemen Bisnis Pariwisata', NULL, 1258, NULL, NULL),
(163, 'Andri Mi\'qyal Faqih', 361521401044, '081246596918', 'D3 Teknik Mesin', NULL, 1479, NULL, NULL),
(164, 'ANDRI PUTRA PRATAMA', 361455401131, '087755518540', 'D3 Teknik Informatika', NULL, 586, NULL, NULL),
(165, 'Andrian Prihantono', 361455401073, '085339417354', 'D3 Teknik Informatika', NULL, 422, NULL, NULL),
(166, 'Andy Ferbiantoro', 361755401010, '085334770518', 'D3 Teknik Mesin', NULL, 1898, NULL, NULL),
(167, 'Anes Alfiana', 361755401080, '082335542896', 'D3 Teknik Informatika', NULL, 1910, NULL, NULL),
(168, 'Angga Dwi Saputra', 361755401181, '082245836528', 'D3 Teknik Informatika', NULL, 1711, NULL, NULL),
(169, 'ANGGANG YOGI PRATAMA', 361641333058, '082287691168', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1750, NULL, NULL),
(170, 'Anggi Berliana Febrianti', 361593301004, '081911403626', 'D4 Manajemen Bisnis Pariwisata', NULL, 780, NULL, NULL),
(171, 'ANGGI INDRIYANTI', 361522401001, '081337851098', 'D3 Teknik Sipil', NULL, 480, NULL, NULL),
(172, 'Anggi Novita Riskawati', 361493301121, '081937612781', 'D4 Manajemen Bisnis Pariwisata', NULL, 1082, NULL, NULL),
(173, 'ANGGI SUKMAWATI', 361722401154, '085321234248', 'D3 Teknik Sipil', NULL, 1944, NULL, NULL),
(174, 'Anggi Syahrul romadi', 361622401129, '082229337029', 'D3 Teknik Sipil', NULL, 1334, NULL, NULL),
(175, 'Anggio Dwi Nikolaus', 9908202004, '6281803511805', 'D3 Teknik Sipil', NULL, 157, NULL, NULL),
(176, 'ANGGREAN SENDY', 361355401119, '085218572930', 'D3 Teknik Informatika', NULL, 423, NULL, NULL),
(177, 'Anggun Dwi Aprilia', 361693301111, '082218613288', 'D4 Manajemen Bisnis Pariwisata', NULL, 1697, NULL, NULL),
(178, 'Anggun Dwi Pratiwi', 361522401050, '0895344368344', 'D3 Teknik Sipil', NULL, 150, NULL, NULL),
(179, 'Ani Rahayu Ningtiyas', 361693301054, '082232817360', 'D4 Manajemen Bisnis Pariwisata', NULL, 1642, NULL, NULL),
(180, 'Anif Irawan', 361521401032, '081334944917', 'D3 Teknik Mesin', NULL, 871, NULL, NULL),
(181, 'ANIS ARMANING TYAS', 361522401020, '082141849349', 'D3 Teknik Sipil', NULL, 268, NULL, NULL),
(182, 'Anis Fuadi Wahyu', 361593301121, '085706401867', 'D4 Manajemen Bisnis Pariwisata', NULL, 891, NULL, NULL),
(183, 'ANISA TRILIA DEWI', 361422401079, '081230696144', 'D3 Teknik Sipil', NULL, 374, NULL, NULL),
(184, 'Anita', 361322401109, '085335532723', 'D3 Teknik Sipil', NULL, 202, NULL, NULL),
(185, 'Anjana Novianti', 361593301095, '082302495796', 'D4 Manajemen Bisnis Pariwisata', NULL, 847, NULL, NULL),
(186, 'Annisa Arista Bella', 361493301086, '089677848631', 'D4 Manajemen Bisnis Pariwisata', NULL, 1432, NULL, NULL),
(187, 'Annisa Bella Oktavia', 361493301055, '085231502418', 'D4 Manajemen Bisnis Pariwisata', NULL, 779, NULL, NULL),
(188, 'Annisa Eka Apriliany', 361593301091, '087761849214', 'D4 Manajemen Bisnis Pariwisata', NULL, 1284, NULL, NULL),
(189, 'Annisa Maya Shobrina', 361522401077, '085331980300', 'D3 Teknik Sipil', NULL, 252, NULL, NULL),
(190, 'Annisa meiyanur', 9911202004, '9081249739023', 'D3 Teknik Sipil', NULL, 368, NULL, NULL),
(191, 'Annisa Rachma Sari Dewi', 361655401044, '081286148671', 'D3 Teknik Informatika', NULL, 1358, NULL, NULL),
(192, 'ANNISSA EDITA PUTRI', 361755401166, '089682966328', 'D3 Teknik Informatika', NULL, 1896, NULL, NULL),
(193, 'Anwar Anas', 361355401014, '082257003191', 'D3 Teknik Informatika', NULL, 275, NULL, NULL),
(194, 'Aprilia Setyoningrum', 361555401079, '082330299300', 'D3 Teknik Informatika', NULL, 305, NULL, NULL),
(195, 'Aprio Syah Husaini', 361755401081, '087701042234', 'D3 Teknik Informatika', NULL, 2079, NULL, NULL),
(196, 'ARDHIAN DIQRULLAH', 361322401030, '085232636512', 'D3 Teknik Sipil', NULL, 213, NULL, NULL),
(197, 'Ardhika Kholid Wiguna', 361593301056, '085319272982', 'D4 Manajemen Bisnis Pariwisata', NULL, 1324, NULL, NULL),
(198, 'Ardi Ashari', 361321401065, '087781607896', 'D3 Teknik Mesin', NULL, 661, NULL, NULL),
(199, 'Ardi Tiya Kurniawan', 361655401051, '085230122934', 'D3 Teknik Informatika', NULL, 1381, NULL, NULL),
(200, 'Ardie Ahmad Fahrezy', 361721401114, '085230979810', 'D3 Teknik Mesin', NULL, 1828, NULL, NULL),
(201, 'Ardika wiradana', 361722401032, '081386794929', 'D3 Teknik Sipil', NULL, 2000, NULL, NULL),
(202, 'Ardina Febriyanti', 361441311010, '083833038734', 'D4 Agribisnis', NULL, 264, NULL, NULL),
(203, 'Arfi Yuliyan', 361222401004, '082301822421', 'D3 Teknik Sipil', NULL, 204, NULL, NULL),
(204, 'Ari darmawan', 361321401026, '081907783673', 'D3 Teknik Mesin', NULL, 739, NULL, NULL),
(205, 'Ari Dermawan', 361655401165, '082330883896', 'D3 Teknik Mesin', NULL, 1136, NULL, NULL),
(206, 'Ari Julianto', 361355401114, '081230888617', 'D3 Teknik Informatika', NULL, 622, NULL, NULL),
(207, 'Ari Widyanto', 361355401082, '083871298665', 'D3 Teknik Informatika', NULL, 643, NULL, NULL),
(208, 'Arief Asmo Saputro', 9912203012, '081234069178', 'D3 Teknik Mesin', NULL, 951, NULL, NULL),
(209, 'ARIEL NUR FARHAN', 361722401015, '082141999754', 'D3 Teknik Sipil', NULL, 1972, NULL, NULL),
(210, 'Arif Agus Fajar Riyanto', 9909201014, '081331830811', 'D3 Teknik Informatika', NULL, 313, NULL, NULL),
(211, 'Arif Sugiharto', 361341311013, '082292399689', 'D4 Agribisnis', NULL, 920, NULL, NULL),
(212, 'Aril fathul dinia', 361455401049, '081234629931', 'D3 Teknik Informatika', NULL, 322, NULL, NULL),
(213, 'Arin Maftukha', 361322401080, '081554996865', 'D3 Teknik Sipil', NULL, 474, NULL, NULL),
(214, 'Arina Rosalina', 361493301077, '081337757247', 'D4 Manajemen Bisnis Pariwisata', NULL, 1271, NULL, NULL),
(215, 'Arinda nungki susanti', 361655401181, '081259901078', 'D3 Teknik Informatika', NULL, 278, NULL, NULL),
(216, 'ARINI NORMA SURYANI', 361355401153, '085230536958', 'D3 Teknik Informatika', NULL, 328, NULL, NULL),
(217, 'Aris Ambar Arum Pangestuti', 361541311107, '085219470514', 'D4 Agribisnis', NULL, 1821, NULL, NULL),
(218, 'Aris Purwanto', 361222401006, '085335106435', 'D3 Teknik Sipil', NULL, 154, NULL, NULL),
(219, 'ARIS SETIAWAN', 361341333015, '087793339700', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 189, NULL, NULL),
(220, 'Aris Susanto', 361555401118, '085889666826', 'D3 Teknik Informatika', NULL, 1382, NULL, NULL),
(221, 'Arisan Dewi', 361541311117, '08113567544', 'D4 Agribisnis', NULL, 1814, NULL, NULL),
(222, 'Ariwiana Apria Resti', 361655401016, '083948465299', 'D3 Teknik Informatika', NULL, 1417, NULL, NULL),
(223, 'Ariyanto Arbi', 361441333021, '083853334233', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 169, NULL, NULL),
(224, 'Arjun Nur Isna Sugata', 361522401052, '082333139971', 'D3 Teknik Sipil', NULL, 201, NULL, NULL),
(225, 'Arsi Fathurrahman', 361621401108, '082146912049', 'D3 Teknik Mesin', NULL, 792, NULL, NULL),
(226, 'Artha Nugraha Fajar Sidiq', 361355401071, '085213069994', 'D3 Teknik Informatika', NULL, 335, NULL, NULL),
(227, 'ARUM MANGGAR SARI', 361622401054, '085231174145', 'D3 Teknik Sipil', NULL, 1190, NULL, NULL),
(228, 'Arum Pratiwining Ratri', 361455401067, '082141682014', 'D3 Teknik Informatika', NULL, 324, NULL, NULL),
(229, 'Arum Yustisia', 361493301075, '082139590559', 'D4 Manajemen Bisnis Pariwisata', NULL, 809, NULL, NULL),
(230, 'arung fiqhul muazaanat', 361493301034, '082145958478', 'D4 Manajemen Bisnis Pariwisata', NULL, 79, NULL, NULL),
(231, 'Arya rusdi pratama', 361621401106, '085231490643', 'D3 Teknik Mesin', NULL, 2071, NULL, NULL),
(232, 'ASMAUL HUSNAH', 361455401030, '082241241178', 'D3 Teknik Informatika', NULL, 644, NULL, NULL),
(233, 'Astrid Ernanda', 361722401110, '085707807012', 'D3 Teknik Sipil', NULL, 2003, NULL, NULL),
(234, 'Astuti', 361622401060, '081949734812', 'D3 Teknik Sipil', NULL, 1198, NULL, NULL),
(235, 'Asylla Aqsiari', 361493301047, '083847580246', 'D4 Manajemen Bisnis Pariwisata', NULL, 888, NULL, NULL),
(236, 'ATAKA AWWALUL RISQI', 361441333025, '08980569773', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1245, NULL, NULL),
(237, 'AUDEA RAHMEI VERANI RANDA', 361455401156, '083852090733', 'D3 Teknik Informatika', NULL, 587, NULL, NULL),
(238, 'Audina Suhartina', 361455401037, '085336109261', 'D3 Teknik Informatika', NULL, 560, NULL, NULL),
(239, 'AULIA AHMAD AFFAISAL', 361455401135, '087806663222', 'D3 Teknik Informatika', NULL, 589, NULL, NULL),
(240, 'Aulia Indriyani', 361722401085, '081554742940', 'D3 Teknik Sipil', NULL, 1684, NULL, NULL),
(241, 'Auliatus.saadah', 361493301087, '087862002523', 'D4 Manajemen Bisnis Pariwisata', NULL, 544, NULL, NULL),
(242, 'Aviatut Daroini', 361755401188, '085887427656', 'D3 Teknik Informatika', NULL, 2034, NULL, NULL),
(243, 'Avinda Anjarwati', 361655401152, '085931202247', 'D3 Teknik Informatika', NULL, 1359, NULL, NULL),
(244, 'Awaludin Baharsyah', 361655401018, '082330693800', 'D3 Teknik Informatika', NULL, 1476, NULL, NULL),
(245, 'Awang Wahyu Widodo', 361521401058, '087755945831', 'D3 Teknik Mesin', NULL, 890, NULL, NULL),
(246, 'Awangku Dimas RezaTullah', 361622401168, '089507872131', 'D3 Teknik Sipil', NULL, 842, NULL, NULL),
(247, 'awdawd', 1234234234, '4278364782364', 'D3 Teknik Mesin', NULL, 1606, NULL, NULL),
(248, 'Ayi Yulita Sari', 361355401043, '087765439980', 'D3 Teknik Informatika', NULL, 645, NULL, NULL),
(249, 'Aynur Yakin', 361422401090, '082337831093', 'D3 Teknik Sipil', NULL, 188, NULL, NULL),
(250, 'AYU ARINA MANASIKANA PURNAMA HALIM', 361422401019, '083853420272', 'D3 Teknik Sipil', NULL, 386, NULL, NULL),
(251, 'Ayu Dwija Astuti', 9908202008, '087755733547', 'D3 Teknik Sipil', NULL, 347, NULL, NULL),
(252, 'AYU INDAH AINUN NIKMAH', 361693301090, '082333056423', 'D4 Manajemen Bisnis Pariwisata', NULL, 1939, NULL, NULL),
(253, 'AYU JAMILAH', 9912201014, '082323610118', 'D3 Teknik Informatika', NULL, 646, NULL, NULL),
(254, 'Ayu Nur Oktavianti', 361555401055, '082257001616', 'D3 Teknik Informatika', NULL, 342, NULL, NULL),
(255, 'Ayu Subardini', 361541311102, '081237813245', 'D4 Agribisnis', NULL, 949, NULL, NULL),
(256, 'Bachtiar Adam Pahlevi', 361622401019, '088990821979', 'D3 Teknik Sipil', NULL, 1105, NULL, NULL),
(257, 'BADI\'ATUL MUKAROMAH', 361522401017, '082266089604', 'D3 Teknik Sipil', NULL, 511, NULL, NULL),
(258, 'BADRIAWAN DWI MUHAROM', 361421401054, '085854820037', 'D3 Teknik Mesin', NULL, 967, NULL, NULL),
(259, 'BAGAS ADE DEWANTORO', 361721401037, '081330778472', 'D3 Teknik Mesin', NULL, 2080, NULL, NULL),
(260, 'BAGAS ANDRY ANDIKA', 361593301073, '081336022064', 'D4 Manajemen Bisnis Pariwisata', NULL, 1296, NULL, NULL),
(261, 'Bagus abdi', 361341333004, '081234013312', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 490, NULL, NULL),
(262, 'Bagus Aulia Rahman', 361521401053, '081232252856', 'D3 Teknik Mesin', NULL, 21, NULL, NULL),
(263, 'Bagus draja gumelar', 361393301013, '082231003561', 'D4 Manajemen Bisnis Pariwisata', NULL, 1486, NULL, NULL),
(264, 'BAGUS PRATAMA', 361555401016, '089686080147', 'D3 Teknik Informatika', NULL, 1367, NULL, NULL),
(265, 'Bagus Ramadhan', 361641333028, '085212600400', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1623, NULL, NULL),
(266, 'BAGUS RIO ROHMAN', 361321401007, '081357767131', 'D3 Teknik Mesin', NULL, 1005, NULL, NULL),
(267, 'Bagus Rohmadoni', 361455401071, '08533453817', 'D3 Teknik Informatika', NULL, 547, NULL, NULL),
(268, 'Bagus salim chasan syadzali', 361522401046, '082331418625', 'D3 Teknik Sipil', NULL, 316, NULL, NULL),
(269, 'Bagus Saputro', 9908202046, '081234598095', 'D3 Teknik Sipil', NULL, 193, NULL, NULL),
(270, 'BAGUS SUGIARTO', 361722401055, '085217922246', 'D3 Teknik Sipil', NULL, 1993, NULL, NULL),
(271, 'BAHRUL FAHMI', 361641311032, '085806056647', 'D4 Agribisnis', NULL, 1774, NULL, NULL),
(272, 'Baktiar Dwi Atmaja', 9911201017, '0857454141299', 'D3 Teknik Informatika', NULL, 451, NULL, NULL),
(273, 'Bambang prambudi', 361441311107, '082242382999', 'D4 Agribisnis', NULL, 911, NULL, NULL),
(274, 'Bangkit sanjaya', 361493301122, '082337759096', 'D4 Manajemen Bisnis Pariwisata', NULL, 1460, NULL, NULL),
(275, 'Barirotul Azizah', 361622401113, '082334205026', 'D3 Teknik Sipil', NULL, 810, NULL, NULL),
(276, 'Baruna Aulya Rizkyandi', 361422401043, '082147446506', 'D3 Teknik Mesin', NULL, 178, NULL, NULL),
(277, 'Bayu Eko Saputro', 361321401012, '081529591740', 'D3 Teknik Mesin', NULL, 980, NULL, NULL),
(278, 'Bayu Firman Hutomo', 361522401066, '08113716837', 'D3 Teknik Sipil', NULL, 184, NULL, NULL),
(279, 'BAYU SANJAYA', 361521401034, '082237118205', 'D3 Teknik Mesin', NULL, 881, NULL, NULL),
(280, 'Bayu Syahputera', 361455401080, '081252981515', 'D3 Teknik Informatika', NULL, 349, NULL, NULL),
(281, 'Bella Asriatul Fariha', 361555401100, '081252511036', 'D3 Teknik Informatika', NULL, 128, NULL, NULL),
(282, 'Bella Sri Wahyuni', 361693301005, '082331494106', 'D4 Manajemen Bisnis Pariwisata', NULL, 1659, NULL, NULL),
(283, 'Bella Suci Fitri', 361693301130, '089680663157', 'D4 Manajemen Bisnis Pariwisata', NULL, 1653, NULL, NULL),
(284, 'Bella Vista', 361322401077, '081249815198', 'D3 Teknik Sipil', NULL, 510, NULL, NULL),
(285, 'Beni Pramuja Sari', 361655401188, '082332582081', 'D3 Teknik Informatika', NULL, 1889, NULL, NULL),
(286, 'Berlin Johannes Siagian', 361541311018, '082161826309', 'D4 Agribisnis', NULL, 944, NULL, NULL),
(287, 'BETIA LAYINATUS SHOKIYAH', 361455401060, '082132277568', 'D3 Teknik Informatika', NULL, 281, NULL, NULL),
(288, 'Billy Wisnu Bimantara', 361321401042, '087755536270', 'D3 Teknik Informatika', NULL, 457, NULL, NULL),
(289, 'BIMA HERRYDITO AZA', 361622401032, '082359171508', 'D3 Teknik Sipil', NULL, 1630, NULL, NULL),
(290, 'Bimantara Adi Pradhana', 361421401035, '082236580703', 'D3 Teknik Mesin', NULL, 27, NULL, NULL),
(291, 'Bimantara Subekti', 361693301104, '083847704745', 'D4 Manajemen Bisnis Pariwisata', NULL, 1667, NULL, NULL),
(292, 'Bimo Prawira Dewantono', 361441311120, '082244254254', 'D4 Agribisnis', NULL, 258, NULL, NULL),
(293, 'BINTANG ANUGERAH PERDANA', 361655401080, '087802143887', 'D3 Teknik Informatika', NULL, 2082, NULL, NULL),
(294, 'Bintang Dirgandini', 361755401070, '085231047262', 'D3 Teknik Informatika', NULL, 1916, NULL, NULL),
(295, 'Bonggo suseno', 361593301019, '0822350233981', 'D4 Manajemen Bisnis Pariwisata', NULL, 1450, NULL, NULL),
(296, 'Bonggo suseno', 361593301019, '0822350233981', 'D4 Manajemen Bisnis Pariwisata', NULL, 1446, NULL, NULL),
(297, 'Brillian Boby Pratama', 361755401098, '081259778398', 'D3 Teknik Mesin', NULL, 2050, NULL, NULL),
(298, 'Budi Rahmawan', 361755401124, '085333058768', 'D3 Teknik Informatika', NULL, 1909, NULL, NULL),
(299, 'Budiono', 361541333018, '083847225509', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1098, NULL, NULL),
(300, 'Budiono', 361541333018, '083847225509', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1220, NULL, NULL),
(301, 'Buing qomarullah', 361522401064, '085225326860', 'D3 Teknik Sipil', NULL, 1538, NULL, NULL),
(302, 'Bunga larasati Priyandini', 36162281121, '082257896045', 'D3 Teknik Mesin', NULL, 1984, NULL, NULL),
(303, 'Cah ayu maharani', 361422401102, '085336996015', 'D3 Teknik Sipil', NULL, 371, NULL, NULL),
(304, 'Cahyadi', 361355401095, '085855942500', 'D3 Teknik Informatika', NULL, 419, NULL, NULL),
(305, 'Cahyaningrum', 361493301085, '081233830878', 'D4 Manajemen Bisnis Pariwisata', NULL, 787, NULL, NULL),
(306, 'Canggih Alfan Nusantoro', 361622401002, '08885085568', 'D3 Teknik Sipil', NULL, 822, NULL, NULL),
(307, 'Catharina Mirandha Noviandini', 361722401078, '081246887821', 'D3 Teknik Sipil', NULL, 2020, NULL, NULL),
(308, 'Cendy Putra Pambudy', 361421401046, '082236788671', 'D3 Teknik Mesin', NULL, 68, NULL, NULL),
(309, 'CHOFID BASTOMI', 361321401054, '085331082242', 'D3 Teknik Mesin', NULL, 25, NULL, NULL),
(310, 'Choirun Nisa', 361641311064, '083852589525', 'D4 Agribisnis', NULL, 1798, NULL, NULL),
(311, 'Choirun Nisa Rofiqoh Hardiyanti', 361722401127, '082 338 444 528', 'D3 Teknik Sipil', NULL, 2012, NULL, NULL),
(312, 'Cikal Ayu Nurul Azzara', 361593301077, '085319732503', 'D4 Manajemen Bisnis Pariwisata', NULL, 855, NULL, NULL),
(313, 'Cindy Ghenny Fitrianie', 361722401122, '081233841003', 'D3 Teknik Sipil', NULL, 1954, NULL, NULL),
(314, 'CITA DERIL HITALIA', 361455401091, '082330426990', 'D3 Teknik Informatika', NULL, 430, NULL, NULL),
(315, 'Citra Aprilia Andela Fransiska', 361541311073, '087851726385', 'D4 Agribisnis', NULL, 1484, NULL, NULL),
(316, 'Citra Ayu Indriyani', 361755401153, '082146963518', 'D3 Teknik Informatika', NULL, 1934, NULL, NULL),
(317, 'Cory Febdela Ulya', 361693301079, '087788203675', 'D4 Manajemen Bisnis Pariwisata', NULL, 1713, NULL, NULL),
(318, 'crisdyant sabbaditya', 361355401041, '08230256975', 'D3 Teknik Informatika', NULL, 287, NULL, NULL),
(319, 'Cynthia Dwi Della Rista', 361393301017, '082132854621', 'D4 Manajemen Bisnis Pariwisata', NULL, 438, NULL, NULL),
(320, 'Dafit budi hermanto', 361422401075, '085608727899', 'D3 Teknik Sipil', NULL, 411, NULL, NULL),
(321, 'Dana Kumala', 361455401024, '082111588421', 'D3 Teknik Informatika', NULL, 190, NULL, NULL),
(322, 'DANA WIJAYA', 361341311007, '081252689198', 'D4 Agribisnis', NULL, 694, NULL, NULL),
(323, 'Danang Kurniawan', 361541311065, '085232039693', 'D4 Agribisnis', NULL, 1500, NULL, NULL),
(324, 'Danang putra diansah', 361621401038, '082316374472', 'D3 Teknik Mesin', NULL, 1354, NULL, NULL),
(325, 'DANAR ARIFIAN SYAH', 361522401096, '081234782746', 'D3 Teknik Sipil', NULL, 382, NULL, NULL),
(326, 'DANICA DONNA NOVITASARI', 361693301060, '082231504810', 'D4 Manajemen Bisnis Pariwisata', NULL, 1638, NULL, NULL),
(327, 'Danny Gustyantoro', 361821401066, '083846778412', 'D3 Teknik Mesin', NULL, 1550, NULL, NULL),
(328, 'DANU ARYA UMAM', 361421401081, '081359669845', 'D3 Teknik Mesin', NULL, 1371, NULL, NULL),
(329, 'Danu priambodho', 361522401054, '082244486976', 'D3 Teknik Sipil', NULL, 265, NULL, NULL),
(330, 'Dara Ayumi Rubi Astuti', 361322401110, '081554441956', 'D3 Teknik Sipil', NULL, 142, NULL, NULL),
(331, 'Darusman Fadli', 361722401126, '3206486085', 'D3 Teknik Sipil', NULL, 2013, NULL, NULL),
(332, 'Dasilfa Resvitasari', 361341311039, '9081337365895', 'D4 Agribisnis', NULL, 732, NULL, NULL),
(333, 'Davri Indra Dinata', 361622401087, '082335615823', 'D3 Teknik Sipil', NULL, 1681, NULL, NULL),
(334, 'dedi nuri susanto', 361321401004, '085258570938', 'D3 Teknik Mesin', NULL, 740, NULL, NULL),
(335, 'Dedik', 361693301071, '082336831580', 'D4 Manajemen Bisnis Pariwisata', NULL, 1690, NULL, NULL),
(336, 'DEDY PRASTIKO', 361322401014, '082266333362', 'D3 Teknik Sipil', NULL, 228, NULL, NULL),
(337, 'DEFHRIAL WAHYU PRAYOGA', 361721401044, '081239190769', 'D3 Teknik Mesin', NULL, 1846, NULL, NULL),
(338, 'DEFITHA CANDRA ARE EVERELIA GAMA', 361593301010, '082231162453', 'D4 Manajemen Bisnis Pariwisata', NULL, 1298, NULL, NULL),
(339, 'Defrimont Era', 361555401012, '082331554346', 'D3 Teknik Informatika', NULL, 108, NULL, NULL),
(340, 'DEKA LARASATI', 361622401007, '085236969600', 'D3 Teknik Sipil', NULL, 1521, NULL, NULL),
(341, 'Deka Sakti Pradana', 361541311003, '081259660752', 'D4 Agribisnis', NULL, 1825, NULL, NULL),
(342, 'DEKO ING DENADA PUTERI YANUANINDA', 361441333012, '082336025000', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1217, NULL, NULL),
(343, 'della jannata amadea', 361441311023, '081455164352', 'D4 Agribisnis', NULL, 260, NULL, NULL),
(344, 'Della Putri Lutfia', 361755401104, '0859175439371', 'D3 Teknik Informatika', NULL, 1911, NULL, NULL),
(345, 'Della rangga putri', 361541311090, '081239402099', 'D4 Agribisnis', NULL, 1842, NULL, NULL),
(346, 'DENDI AKHMAN W A', 9908201021, '085236254293', 'D3 Teknik Informatika', NULL, 235, NULL, NULL),
(347, 'DENI DWI SAPUTRA', 361622401049, '082231523596', 'D3 Teknik Sipil', NULL, 1109, NULL, NULL),
(348, 'Deni Setiawan Putra', 9910201023, '085156952817', 'D3 Teknik Informatika', NULL, 1148, NULL, NULL),
(349, 'Denis suprayogi', 361321401061, '082245119415', 'D3 Teknik Mesin', NULL, 70, NULL, NULL),
(350, 'Deqi pajar pratama', 361221401022, '081335509856', 'D3 Teknik Mesin', NULL, 976, NULL, NULL),
(351, 'Desi eka safitri', 361493301025, '085217195845', 'D4 Manajemen Bisnis Pariwisata', NULL, 1318, NULL, NULL),
(352, 'DESI IKA WULANDARI', 9909202003, '082330516341', 'D3 Teknik Sipil', NULL, 250, NULL, NULL),
(353, 'Desi Lestianingrum', 361493301046, '081999922681', 'D4 Manajemen Bisnis Pariwisata', NULL, 836, NULL, NULL),
(354, 'Desi Putri Wulandari', 361493301056, '082145958801', 'D4 Manajemen Bisnis Pariwisata', NULL, 1079, NULL, NULL),
(355, 'Desi Sandita', 361422401037, '081230492541', 'D3 Teknik Sipil', NULL, 1341, NULL, NULL),
(356, 'Desi Wulandari', 361493301062, '082245726447', 'D4 Manajemen Bisnis Pariwisata', NULL, 758, NULL, NULL),
(357, 'Desita Ika Susanti', 361355401143, '082245661198', 'D3 Teknik Informatika', NULL, 647, NULL, NULL),
(358, 'Desy Ayu Purwanti', 361622401165, '089636645567', 'D3 Teknik Sipil', NULL, 1698, NULL, NULL),
(359, 'Desy Emy Yanti', 361541311083, '082245773738', 'D4 Agribisnis', NULL, 931, NULL, NULL),
(360, 'Desy Masruha', 361555401025, '082142177943', 'D3 Teknik Informatika', NULL, 1411, NULL, NULL),
(361, 'Desyana Ayu Lestari', 361655401046, '085335233653', 'D3 Teknik Informatika', NULL, 1436, NULL, NULL),
(362, 'Devi Ariya Sinta', 361593301037, '085850188379', 'D4 Manajemen Bisnis Pariwisata', NULL, 1122, NULL, NULL),
(363, 'Devi Dwi Lestari', 361522401079, '081230445560', 'D3 Teknik Sipil', NULL, 229, NULL, NULL),
(364, 'Devi Rahayu', 361655401043, '085330608010', 'D3 Teknik Informatika', NULL, 1437, NULL, NULL),
(365, 'Devi Wulandari', 361593301061, '085746644380', 'D4 Manajemen Bisnis Pariwisata', NULL, 815, NULL, NULL),
(366, 'Devita Mergiamala', 361693301144, '087771544011', 'D4 Manajemen Bisnis Pariwisata', NULL, 1810, NULL, NULL),
(367, 'Devita Silviana', 361493301106, '082232598262', 'D4 Manajemen Bisnis Pariwisata', NULL, 876, NULL, NULL),
(368, 'Dewanti Mutiara Dewi', 361655401170, '085784178556', 'D3 Teknik Informatika', NULL, 366, NULL, NULL),
(369, 'DEWI ARAS PRATIWI', 361722401038, '082331303374', 'D3 Teknik Sipil', NULL, 1792, NULL, NULL),
(370, 'Dewi Atmisari', 361622401156, '085231613740', 'D3 Teknik Sipil', NULL, 1999, NULL, NULL),
(371, 'Dewi Fatmawati', 361593301006, '087837948066', 'D4 Manajemen Bisnis Pariwisata', NULL, 1434, NULL, NULL),
(372, 'Dewi indah rudiyati', 361541311027, '081376247181', 'D4 Agribisnis', NULL, 1856, NULL, NULL),
(373, 'DEWI IRNAWATI', 361455401045, '087711615574', 'D3 Teknik Informatika', NULL, 648, NULL, NULL),
(374, 'Dewi Januari', 361393301027, '081233676523', 'D4 Manajemen Bisnis Pariwisata', NULL, 414, NULL, NULL),
(375, 'Dewi Kurniawati', 361422401005, '08816083713', 'D3 Teknik Sipil', NULL, 727, NULL, NULL),
(376, 'Dewi Lusiana', 361541333048, '081334946914', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1519, NULL, NULL),
(377, 'Dewi Masithoh', 361755401190, '085336517200', 'D3 Teknik Informatika', NULL, 2063, NULL, NULL),
(378, 'Dewi Noviatul Rofikoh', 361693301044, '083847072865', 'D4 Manajemen Bisnis Pariwisata', NULL, 1710, NULL, NULL),
(379, 'Dewi Susanti', 361493301018, '081357765959', 'D4 Manajemen Bisnis Pariwisata', NULL, 846, NULL, NULL),
(380, 'Dhayu nara pandini', 361493301032, '081336508080', 'D4 Manajemen Bisnis Pariwisata', NULL, 84, NULL, NULL),
(381, 'Dhea Melyadinata', 361755401200, '085204021422', 'D3 Teknik Informatika', NULL, 1732, NULL, NULL),
(382, 'DHIAS FEMY LIANA', 361322401066, '082132761945', 'D3 Teknik Sipil', NULL, 376, NULL, NULL),
(383, 'Dhimas Elok Wahyuni', 361493301103, '085793707797', 'D4 Manajemen Bisnis Pariwisata', NULL, 85, NULL, NULL),
(384, 'Dhimas Panji Sastra', 361755401197, '083853399847', 'D3 Teknik Informatika', NULL, 1892, NULL, NULL),
(385, 'Dhita kharisma dewi', 361322401101, '085212755206', 'D3 Teknik Sipil', NULL, 473, NULL, NULL),
(386, 'dhonni hermawan', 361541311141, '082338632947', 'D4 Agribisnis', NULL, 1870, NULL, NULL),
(387, 'Diah ayu retno palupi', 361693301037, '082141234831', 'D4 Manajemen Bisnis Pariwisata', NULL, 1645, NULL, NULL),
(388, 'Diah Hayyu Robia\'atul Al Rosyidah', 361441333001, '082233974959', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 192, NULL, NULL),
(389, 'Diah nitami', 361593301079, '083853731015', 'D4 Manajemen Bisnis Pariwisata', NULL, 1286, NULL, NULL),
(390, 'Diah Vita Sari', 361641311058, '082145933592', 'D4 Agribisnis', NULL, 1786, NULL, NULL),
(391, 'Dian Novitasari', 361693301069, '085606603313', 'D4 Manajemen Bisnis Pariwisata', NULL, 1929, NULL, NULL),
(392, 'Dian utami intang refanda', 361522401087, '082230901521', 'D3 Teknik Sipil', NULL, 226, NULL, NULL),
(393, 'Diana Dwi Hayuning Prastiwi', 361655401122, '087754391808', 'D3 Teknik Informatika', NULL, 1873, NULL, NULL),
(394, 'Diana handayani', 361593301058, '083115245632', 'D4 Manajemen Bisnis Pariwisata', NULL, 788, NULL, NULL),
(395, 'Diana latifah', 361422401105, '082232832233', 'D3 Teknik Sipil', NULL, 522, NULL, NULL),
(396, 'Diana Lopita Lestari', 361493301069, '085212183011', 'D4 Manajemen Bisnis Pariwisata', NULL, 1322, NULL, NULL),
(397, 'Dicky Bayuang Pratama', 361721401051, '083847578784', 'D3 Teknik Mesin', NULL, 1831, NULL, NULL),
(398, 'dicky.riskiynto2598@gmail.com', 361722401092, '083853761765', 'D3 Teknik Sipil', NULL, 1968, NULL, NULL),
(399, 'Didik Edi Santoso', 361455401130, '083852150361', 'D3 Teknik Informatika', NULL, 562, NULL, NULL),
(400, 'Dika Nanda Agusta', 361455401013, '082302434682', 'D3 Teknik Informatika', NULL, 448, NULL, NULL),
(401, 'DIKI HARIYANTO PERMANA', 361455401015, '082334595837', 'D3 Teknik Informatika', NULL, 426, NULL, NULL),
(402, 'Diky Efendi', 361522401092, '081239603533', 'D3 Teknik Sipil', NULL, 124, NULL, NULL),
(403, 'Diky Nurwahyudi', 361721401121, '083843745708', 'D3 Teknik Mesin', NULL, 2010, NULL, NULL),
(404, 'Dila Risma', 361555401039, '082231938525', 'D3 Teknik Informatika', NULL, 1390, NULL, NULL),
(405, 'Dilfa Dikriyah', 361355401112, '082228411649', 'D3 Teknik Informatika', NULL, 345, NULL, NULL),
(406, 'Dimas Aditya', 361541311131, '081232318115', 'D4 Agribisnis', NULL, 936, NULL, NULL),
(407, 'Dimas Aji Ramadhani', 361493301042, '083847235442', 'D4 Manajemen Bisnis Pariwisata', NULL, 1273, NULL, NULL),
(408, 'Dimas Artono Nugroho', 361655401075, '089508519111', 'D3 Teknik Informatika', NULL, 2075, NULL, NULL),
(409, 'DIMAS BAGUS PRAYOGO', 361721401085, '085735133710', 'D3 Teknik Mesin', NULL, 1991, NULL, NULL),
(410, 'Dimas Fitroh Ariadi', 361622401140, '081343036813', 'D3 Teknik Sipil', NULL, 995, NULL, NULL),
(411, 'Dimas Gusti Maulana', 361655401069, '087864905264', 'D3 Teknik Informatika', NULL, 573, NULL, NULL),
(412, 'Dimas Khifiatul Hikmah', 361521401031, '087802077097', 'D3 Teknik Mesin', NULL, 812, NULL, NULL),
(413, 'DIMAS MAULANA HAIDAR ALY', 361541311085, '082233280302', 'D4 Agribisnis', NULL, 1921, NULL, NULL),
(414, 'Dina Maulida', 361455401005, '082231355942', 'D3 Teknik Informatika', NULL, 564, NULL, NULL),
(415, 'Dina Nahdia Safitri', 361655401178, '081217654674', 'D3 Teknik Informatika', NULL, 310, NULL, NULL),
(416, 'Dina sulistyowati', 361493301048, '051238680703', 'D4 Manajemen Bisnis Pariwisata', NULL, 766, NULL, NULL),
(417, 'DINAR ANGGRI VIANI', 361622401029, '082331569034', 'D3 Teknik Sipil', NULL, 1518, NULL, NULL),
(418, 'Dinas Ferian Juliarto', 361555401029, '08113581344', 'D3 Teknik Informatika', NULL, 103, NULL, NULL),
(419, 'Dinda Diah Septalia', 361622401142, '085745912021', 'D3 Teknik Sipil', NULL, 1014, NULL, NULL),
(420, 'Dinda Esemrelga', 361455401149, '082339033034', 'D3 Teknik Informatika', NULL, 318, NULL, NULL),
(421, 'DINDA IZZABILLAH FEBRIYANTI', 361755401058, '087785668394', 'D3 Teknik Informatika', NULL, 1877, NULL, NULL),
(422, 'Dini Dwi Lestari', 361641311129, '085232709253', 'D4 Agribisnis', NULL, 1784, NULL, NULL),
(423, 'Dini Nafisatul Mutmainah', 361441311032, '085334778810', 'D4 Agribisnis', NULL, 1253, NULL, NULL),
(424, 'Dino Imanda Budianto', 361721401001, '089682561364', 'D3 Teknik Mesin', NULL, 2001, NULL, NULL),
(425, 'Dino Irawan', 361321401023, '088219053494', 'D3 Teknik Mesin', NULL, 741, NULL, NULL),
(426, 'DINO WAHYU INDRAWAN', 361455401136, '083847790898', 'D3 Teknik Informatika', NULL, 594, NULL, NULL),
(427, 'Dintami Nur Azizah', 361693301066, '?+62 878?6081?59', 'D4 Manajemen Bisnis Pariwisata', NULL, 1702, NULL, NULL),
(428, 'Dira Viviana Mulia Sari', 361455401044, '0801237072549', 'D3 Teknik Informatika', NULL, 566, NULL, NULL),
(429, 'Dita Destiana', 361693301129, '082338605935', 'D4 Manajemen Bisnis Pariwisata', NULL, 1695, NULL, NULL),
(430, 'Dita Nur Insani', 361493301019, '082244450744', 'D4 Manajemen Bisnis Pariwisata', NULL, 1307, NULL, NULL),
(431, 'Dita tri wahyuni', 361593301143, '082234798262', 'D4 Manajemen Bisnis Pariwisata', NULL, 1462, NULL, NULL),
(432, 'Ditera Angelica Vitaloka', 361593301105, '089509660000', 'D4 Manajemen Bisnis Pariwisata', NULL, 1457, NULL, NULL),
(433, 'DODI SETIAWAN', 361655401068, '083830158599', 'D3 Teknik Informatika', NULL, 1709, NULL, NULL),
(434, 'Doni Aprilio', 361721401052, '083856623692', 'D3 Teknik Mesin', NULL, 1835, NULL, NULL),
(435, 'DWI ADI SAPUTRO', 361593301054, '082234733103', 'D4 Manajemen Bisnis Pariwisata', NULL, 1483, NULL, NULL),
(436, 'Dwi Arisandi', 361355401150, '082230308052', 'D3 Teknik Informatika', NULL, 394, NULL, NULL),
(437, 'Dwi Cahyono, S.Tr.P', 361441311076, '082324498996', 'D4 Agribisnis', NULL, 357, NULL, NULL),
(438, 'Dwi candra kusuma', 361493301074, '081216407015', 'D4 Manajemen Bisnis Pariwisata', NULL, 1496, NULL, NULL),
(439, 'Dwi Febriani', 361393301004, '085336542451', 'D4 Manajemen Bisnis Pariwisata', NULL, 397, NULL, NULL),
(440, 'Dwi Hendra Saputra', 361521401060, '082234952409', 'D3 Teknik Mesin', NULL, 862, NULL, NULL),
(441, 'DWI INDAH SARTIKA', 361455401048, '082176549834', 'D3 Teknik Informatika', NULL, 649, NULL, NULL),
(442, 'Dwi Kuscahyanti', 361622401037, '085245668939', 'D3 Teknik Sipil', NULL, 1308, NULL, NULL),
(443, 'Dwi Laksana Putri', 361541311103, '082232850679', 'D4 Agribisnis', NULL, 1862, NULL, NULL),
(444, 'Dwi maulitasari', 361693301033, '082141234834', 'D4 Manajemen Bisnis Pariwisata', NULL, 1724, NULL, NULL),
(445, 'Dwi Nurul Choirina', 361541311026, '08995646381', 'D4 Agribisnis', NULL, 1930, NULL, NULL),
(446, 'Dwi pungky', 361541311078, '082331655280', 'D4 Agribisnis', NULL, 925, NULL, NULL),
(447, 'Dwi Wijayanti', 361693301030, '08214194305', 'D4 Manajemen Bisnis Pariwisata', NULL, 1704, NULL, NULL),
(448, 'Dwi Yulia Putri', 361655401190, '081336793327', 'D3 Teknik Informatika', NULL, 126, NULL, NULL),
(449, 'DWIE ANDINASARI', 361493301120, '083847135966', 'D4 Manajemen Bisnis Pariwisata', NULL, 168, NULL, NULL),
(450, 'Dwika Prasetyo', 361621401055, '082244066969', 'D3 Teknik Mesin', NULL, 2070, NULL, NULL),
(451, 'Dwiyanti oktavia', 361693301095, '085156395024', 'D4 Manajemen Bisnis Pariwisata', NULL, 1927, NULL, NULL),
(452, 'DYAH USWATUN HASANAH', 361541311052, '082230811349', 'D4 Agribisnis', NULL, 1129, NULL, NULL),
(453, 'Dyan Fitri Febryani', 361493301063, '085230933020', 'D4 Manajemen Bisnis Pariwisata', NULL, 1257, NULL, NULL),
(454, 'Edi siswanto', 361555401002, '082302002407', 'D3 Teknik Informatika', NULL, 280, NULL, NULL),
(455, 'Edilugito', 361621401045, '081230708833', 'D3 Teknik Mesin', NULL, 2091, NULL, NULL),
(456, 'Edy Hariyanto', 361621401036, '087865399566', 'D3 Teknik Mesin', NULL, 2066, NULL, NULL),
(457, 'Edy Prastiyono', 361755401172, '083853914778', 'D3 Teknik Informatika', NULL, 1905, NULL, NULL),
(458, 'Eftitah Ramadani', 361641311068, '082219967560', 'D4 Agribisnis', NULL, 1858, NULL, NULL),
(459, 'Ega Ardiansyah', 361421401082, '081232369618', 'D3 Teknik Mesin', NULL, 532, NULL, NULL),
(460, 'Ega Fresita', 361493301035, '082302092310', 'D4 Manajemen Bisnis Pariwisata', NULL, 1270, NULL, NULL),
(461, 'Egar Pratama', 361655401121, '082339490435', 'D3 Teknik Informatika', NULL, 1413, NULL, NULL),
(462, 'Egi Primanta', 361522401084, '083115990195', 'D3 Teknik Sipil', NULL, 1996, NULL, NULL),
(463, 'EIVA NOER LATIFATUL MASRUROH', 361755401106, '085334657988', 'D3 Teknik Informatika', NULL, 1712, NULL, NULL),
(464, 'Eka Amaliyah', 361755401159, '085230203910', 'D3 Teknik Informatika', NULL, 2076, NULL, NULL),
(465, 'EKA ARIS AGUSTIN', 361393301043, '082331103995', 'D4 Manajemen Bisnis Pariwisata', NULL, 403, NULL, NULL),
(466, 'Eka Ayu Herining Tyas', 361655401130, '082165913565', 'D3 Teknik Informatika', NULL, 1153, NULL, NULL),
(467, 'Eka Cici Dewi Ayu Lestari', 361541311088, '085231472723', 'D4 Agribisnis', NULL, 1801, NULL, NULL),
(468, 'Eka Fitriyani', 361522401041, '082244483989', 'D3 Teknik Sipil', NULL, 1546, NULL, NULL),
(469, 'Eka Hendar', 9912203023, '082257864331', 'D3 Teknik Mesin', NULL, 71, NULL, NULL),
(470, 'EKA HENDAR RIYANTO', 9912203023, '082257864331', 'D3 Teknik Mesin', NULL, 952, NULL, NULL),
(471, 'Eka nur ainiyah', 361541311057, '083114374225', 'D4 Agribisnis', NULL, 1866, NULL, NULL),
(472, 'Eka Nur Annisa\'', 361541311024, '085856183628', 'D4 Agribisnis', NULL, 909, NULL, NULL),
(473, 'Eka Rusmiatiningsih', 361541311038, '082233570567', 'D4 Agribisnis', NULL, 1859, NULL, NULL),
(474, 'Eka septi gohmalindo putri', 361593301048, '087860833491', 'D4 Manajemen Bisnis Pariwisata', NULL, 1293, NULL, NULL),
(475, 'Eka Wahyuni', 361493301023, '081252345526', 'D4 Manajemen Bisnis Pariwisata', NULL, 1054, NULL, NULL),
(476, 'EKO HADI SANTOSO', 361455401103, '085232639712', 'D3 Teknik Informatika', NULL, 596, NULL, NULL),
(477, 'eko hadi susanto', 361621401034, '082210148795', 'D3 Teknik Mesin', NULL, 698, NULL, NULL),
(478, 'Eko Puguh Wahyudi', 9908203005, '085258551579', 'D3 Teknik Mesin', NULL, 1056, NULL, NULL),
(479, 'EKO WAHYUDI', 361422401020, '082337447214', 'D3 Teknik Sipil', NULL, 233, NULL, NULL),
(480, 'Elisa', 361455401004, '083847673402', 'D3 Teknik Informatika', NULL, 314, NULL, NULL),
(481, 'Ella Indayani', 361641333016, '082141999373', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 1751, NULL, NULL),
(482, 'Ella Nuritasari', 361593301133, '082301000725', 'D4 Manajemen Bisnis Pariwisata', NULL, 751, NULL, NULL),
(483, 'Ella Rofika', 361593301020, '083847855713', 'D4 Manajemen Bisnis Pariwisata', NULL, 1061, NULL, NULL),
(484, 'Ellen Diyah Ayu Tania', 361622401157, '0895394042446', 'D3 Teknik Sipil', NULL, 1864, NULL, NULL),
(485, 'Elmi Dwi Lestari', 361355401151, '087766184532', 'D3 Teknik Informatika', NULL, 650, NULL, NULL);
INSERT INTO `profile_users` (`id`, `nama`, `nim`, `no_tlp`, `prodi`, `angkatan`, `id_user`, `created_at`, `updated_at`) VALUES
(486, 'ELOK EKA ANY MAGHFIROH', 361722401153, '082139422160', 'D3 Teknik Sipil', NULL, 1788, NULL, NULL),
(487, 'Elok Nurfaiz Vauqoh', 361593301103, '083853925854', 'D4 Manajemen Bisnis Pariwisata', NULL, 1692, NULL, NULL),
(488, 'Elok Saelinda', 361522401072, '081259116310', 'D3 Teknik Sipil', NULL, 1068, NULL, NULL),
(489, 'Elsa febriani', 361555401078, '081231297188', 'D3 Teknik Informatika', NULL, 107, NULL, NULL),
(490, 'Elsa Nastya Bella Sundawa', 361341311026, '087857400987', 'D4 Agribisnis', NULL, 674, NULL, NULL),
(491, 'Ely Kusuma Wardani', 361441311012, '085261116337', 'D4 Agribisnis', NULL, 262, NULL, NULL),
(492, 'Ely Murti Anggraini', 361755401137, '085735712295', 'D3 Teknik Informatika', NULL, 1919, NULL, NULL),
(493, 'Ema Tri Puji Lestari', 361441333013, '085607044500', 'D4 Teknologi Pengolahan Hasil Ternak', NULL, 203, NULL, NULL),
(494, 'Emi Asriati Ningsih', 361341311034, '087857465354', 'D4 Agribisnis', NULL, 671, NULL, NULL),
(495, 'Emilia zulva', 361393301016, '085648539529', 'D4 Manajemen Bisnis Pariwisata', NULL, 1461, NULL, NULL),
(496, 'Emy wulandari', 361622401016, '083847645699', 'D3 Teknik Sipil', NULL, 1186, NULL, NULL),
(497, 'ENDAH KHOLIFATUS SHOLIHAH', 361555401053, '085330871075', 'D3 Teknik Informatika', NULL, 1422, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendaftaran_ukms`
--

CREATE TABLE `tbl_pendaftaran_ukms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Pentas Seni Tari Tradisional Part 2', 'Pentas Seni Tari Tradisional yang menampilkan tari tradisional, tidak hanya tari dari daerah Banyuwangi, pada pentas seni juga menampilkan tarian dari daerah lain seperti Tari Piring yang berasal dari daerah Minangkabau', '1629169146819.jpeg', 1, '2021-08-16 19:59:06', '2021-08-16 20:01:37'),
(2, 'Perlombaan PBB Online', 'Perlombaan PBB Online yang diadakan karena adanya pandemi dan mengharuskan untuk seluruh mahasiswa', '1629246998374.jpg', 4, '2021-08-17 17:36:38', '2021-08-17 17:36:38'),
(3, 'BERISIK (Belajar Asik Bersama Robotik)', 'Halo sobat teknologi kali ini UKM ROBOTIKA POLIWANGI akan mengadakan belajar bersama via online dan materi kali ini akan dibawakan oleh narasumber kita yang pastinya udah keren banget yaitu Azizun Hakim, salah satu Founder Creative Manufaktur dan Mahasiswa Aktif D3 TI Poliwangi.  Pengenalan dasar Mikrokontroler Arduino beserta komponen sensor dan aktuator 📅 : Senin, 8 Januari 2022 ⏰ : 13.00 WIB 📍 : Live Via Google Meet (Link coming soon)  Pastinya bakalan seru dan keren banget nih. Jadi, tunggu apa lagi yuk langsung daftar disini', '1630498258795.jpeg', 5, '2021-09-01 05:10:58', '2021-09-01 05:10:58'),
(4, 'Webinar Knowledge Mengeksplorasi Sejarah, Budaya dan Bahasa Dari si Negeri Ginseng', 'Yuk belajar bahasa dan budaya negara Korea Selatan di webinar K-Knowledge yang diadakan divisi bahasa UKM Riset Bahasa dan Budaya, Politeknik Negeri Banyuwangi. Judul pembelajaran kali ini adalah Mengeksplorasi Sejarah, Budaya dan Bahasa dari Si Negeri Ginseng bersama Bung Korea~  Simpan jadwalnya dikalender kamu supaya kita bisa belajar bareng 🤓  Sabtu, 21 November 2020 09.00 WIB - Selesai  Ajak keluarga, teman dan kenalan kamu untuk ikutan belajar bareng. Kami tunggu partisipasi kamu.', '1630499083785.jpeg', 3, '2021-09-01 05:24:43', '2021-09-01 05:24:43');

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
(1, 'geniwangi', '<p>UKM Geniwangi (Gema seni mahasiswa politeknik negeri bANyuwangi) merupakan unit kegiatan kesenian yang terdapat pada kampus poliwangi. ukm geniwangi terdapat 5 devisi diantaranya yaitu musik, paduan suara, teater, tari tradisional, dan tari modern. setiap tahunnya ukm geniwangi memiliki beberapa program kerja, yang salah satunya yaitu latihan antar devisi. selain itu masih ada banyak lagi kegiatan yang ada pada ukm geniwangi.&nbsp;</p><p>yukkkk buruan gabung bersama keluarga besar ukm geniwangi.</p><p>Salam budaya</p>', '1630495542109.gnw1.jpeg', '1630495542754.WhatsApp Image 2021-04-07 at 12.23.01.jpeg', '1630495542846.gnw.jpeg', '2021-08-16 01:51:10', '2021-09-01 04:25:42'),
(2, 'ksr', '<p>UKM KSR PMI Unit poliwangi atau korps sukarela merupkan ukm yang dinanungi langsung oleh poli klinik politeknik negeri banyuwngi. ukm ksr setiap tahunnya memiliki program kerja yang sangat bermanfaat bagi mahasiswa maupun kampus. seperti kegiatan donor darah yang dilakukan setiap 3 bulan sekali. donor darah tersebut dapat diikuti oleh semua warga kampus. ukm ksr poliwangi juga sudah bekerja sama dengan pmi banyuwangi. selain itu ksr poliwangi juga mengadakan lomba design poster dan video kreativitas. yuk buruan gabung bersama kami.</p><p>KSR PMI Unit politeknik negeri banyuwangi</p>', '1630515551665.ksr1.jpeg', '1630515551735.ksr2.jpeg', '1630515551205.IMG-20210210-WA0021.jpg', '2021-08-16 04:27:42', '2021-09-01 09:59:11'),
(3, 'rbb', '<p>UKM RBB atau bisa disebut riset bahasa dan buadaya merupakan ukm yang ada dipoliteknik negeri banyuwangi yang bergerak dalam bidang bahasa. pada ukm rbb terdapat 4 divisi yaitu divisi riset, bahasa, budaya, dan pengabdian masyarakat. ukm rbb memiliki bebarap program kerja yag sangat bermanfaat bagi mahasiswa politeknik negeri banyuwangi, diantarnya mengadakan webinar kebudayaan ynag turut mengundang penulis termuka untuk membedah suatu budaya. buruan join dengan kami keluarga besar ukm rbb agar menambah wawasan terkait bahasa dan budaya.</p>', '1630498866890.rbb1.jpeg', '1630498866348.rbb2.jpeg', '1630498866400.rbb.jpeg', '2021-08-17 16:51:06', '2021-09-01 05:21:06'),
(4, 'menwa', '<p>Satmenwa atau satuan menwa 886 merupakan ukm resimen mahasiswa politeknik negeri banyuwangi. \"wira waskhita\" \" widya castrena dharma siddha\" merupakan filosofi ukm satmenwa. prgram kerja ukm satmenwa seperti survival yang bekerjasama dengan universitas luar banyuwangi. selain itu ukm resimen mahasiswa juga melakukan kegiatan bina mental dan jasmani untuk anggota baru yang telah bergabung di ukm resimen mahasiswa.&nbsp;</p>', '1630519476475.menwa1.jpeg', '1630519476347.menwa2.jpeg', '1630519476433.logo menwa poliwangi.png', '2021-08-17 17:07:45', '2021-09-01 11:04:36'),
(5, 'robotika', '<p>ukm robotika merupakan UKM yang bergerak dalam bidang teknologi. pada ukm robotika terdapat pelatihan-pelatihan diantaranya pelatihan mikro controller yang dapat bermanffat bagi mahasiswa baru yang ingin belajar meneganai ardunio dan proses pemrograman. selain itu ukm robotika juga mengikuti lomba seperti lomba merakit robot. ukm robotika dapat diikuti dari seluruh program studi di politeknik negeri banyuwangi.</p><p>salam teknologi</p>', '1630497922985.robotik1.jpeg', '1630497922748.robotik2.jpeg', '1630497922339.robotik.jpeg', '2021-09-01 04:06:06', '2021-09-01 05:05:22'),
(6, 'olahraga', '<p>Ukm olahraga poliwangi terdapat 10 devisi diantaranya yaitu futsal, basket, badminton, voli, pencak silat, karate, tarung derajat, taekwondo, tenis meja, dan catur. pastinya ukm olaharaga memliki beberapa program kerja setiap tahunnya. program kerja tersebut diantaranya yaitu lomba basket yang diikuti oleh masing-masing prodi. yuk buruan join bersama keluarga besar ukm olahraga. healthy life with sports.</p><p>Salam olahraga!!</p>', '1630516183317.olh1.jpeg', '1630516183123.olh2.jpeg', '1630516183784.olahraga.jpeg', '2021-09-01 10:09:43', '2021-09-01 10:09:43'),
(7, 'kwu', '<p>UKM kewirausahaan merupakan ukm yang bergerak dibidang bisnis. dengan jargon \"young entrepreneur spirit!\". ukm kwu juga tidak kalah saing dengan dunia bisnis yang ada diluaran. setiap mahasiswa yang mendaftar ke ukm kwu pastinya akan diajarkan bagaimana menjadi seorang mahasiswa yang tidak hanya pandai dalam mata kuliah namun juga diajarakan berbisnis dan berkewirausahaan dan menjadi pembisnis muda. program kerja pada ukm kwu seperti lomba poster digital, lomba video pendek dan masih banyak lagi. yuk buruan gabung!!</p>', '1630516770915.kwu1.jpeg', '1630516770828.kwu2.jpeg', '1630516770977.IMG-20210210-WA0022.jpg', '2021-09-01 10:19:30', '2021-09-01 10:19:30'),
(8, 'racana', '<p>UKM pramuka poliwangi atau yang disebut ukm racana prabu tawangalun - sritanjung merupakan gerakan pramuka politeknik negeri banyuwangi 06.401 - 06.402. banyak kegiatan atau program kerja yang ada pada ukm pramuka diantaranya sharing sesion denegan ukm pramuka kampus lain. selain itu ukm racana poliwangi juga sering mengadakan lomba seperti kontes bonsai kelapa yang diikuti oleh mahasiswa poliwangi maupun luar poliwangi.&nbsp;</p>', '1630517474889.prm1.jpeg', '1630517474408.prm2.jpeg', '1630517474210.racana.jpeg', '2021-09-01 10:31:14', '2021-09-01 10:31:14'),
(9, 'persma', 'Pers mahasiswa poliwangi adalah salah satu ukm yang ada dipoliteknik negeri banyuwangil. pers mahasiswa memberikan informasi tentang semua hal terutama hal-hal yang berkaitan dengan politeknik negeri banyuwangi. setiap acara di poliwangi anggota dari ukm pers akan datang dan melakukan dokumentasi dan interview kepada pihak yang terkait untuk dijadikan blog atau website. program kerja ukm pers yang juga tak kalah saing dengan ukm lainya yaitu lomba poster dan video kreativitas. yuk gabung!!!&nbsp;', '1630518045990.tinta1.jpeg', '1630518045829.tinta2.jpeg', '1630518045898.pers.jpeg', '2021-09-01 10:40:45', '2021-09-01 10:40:45'),
(10, 'imam', '<p>IMAM (ikatan mahasiswa muslim) merupakan ukm yang ada dipoliteknik negeri banyuwangi. ukm imam mempunyai bebrapa program kerja setiap periode seperti kajian fiqih dengan pemateri yang profesional dalam bidangnya yang dilkaukan setiap hari selasa bertempat pada masjid politeknik negeri banyuwangi. dalam ukm imam mahasiswa dapat belajar mengenai moral dan sopan santun. yuk gabung menjadi anggota resmi ukm imam. see u</p>', '1630518454515.imam2.jpeg', '1630518454496.imam1.jpeg', '1630518454289.IMAM PNG.png', '2021-09-01 10:47:34', '2021-09-01 10:47:34'),
(11, 'mapala', '<p>mapala poliwangi merupakan ukm mahasiswa penggiat alam politeknik negeri banyuwangi. dalam ukm mapala terdapat beberapa devisi yaitu gunung hutan, konservasi, pengabian masyarakat, dan olahraga. setiap mahasiswa akan dibagi tugasnya untuk menajdi salah satu didevisi tersebut. program kerja ukm mapala seperti latihan gabungan bersama fpti (federasi panjat tebing indonesia) yang biasanya dilakukan di gor tawag alun banyuwangi.&nbsp;</p>', '1630518842537.mpl1.jpeg', '1630518842386.mpl2.jpeg', '1630518842531.MAPALA POLIWANGI.png', '2021-09-01 10:54:02', '2021-09-01 10:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'robotika', 'ROBOTIKA', 'robotika', 'robotika.ormawa@poliwangi.ac.id', NULL, '$2y$10$AedJ1rtIwKdDuZjG8MJIPusftZujCb4FejTM3APsvaU6ewG6GFpTe', NULL, NULL, '2021-08-18 06:46:21'),
(3, 'rbb', 'RISET BAHASA DAN BUDAYA', 'rbb', 'ukm_rbb@poliwangi.ac.id', NULL, '$2y$10$T4ij32rxO5vHwjN1nZsFhueYTnyOhmCdp3VUqy.1y2oALkqUdBDQa', NULL, NULL, NULL),
(4, 'geniwangi', 'GEMA SENI MAHASISWA POLITEKNIK NEGERI BANYUWANGI', 'geniwangi', 'geniwangi.poliwangi@gmail.com', NULL, '$2y$10$vCXZUFkB9gAqe1rClKUJ9eVPKpk1VNOa6adAGa1qnVNGvmCNLiyIW', NULL, NULL, NULL),
(5, 'olahraga', 'OLAHRAGA', 'olahraga', 'ukm_olahraga@poliwangi.ac.id', NULL, '$2y$10$A/TXRPhJ6i3k.3E1QoXc5eJr/LjKPNbp0/aWJOO64JzEGoldFtaly', NULL, NULL, NULL),
(6, 'kwu', 'KEWIRAUSAHAAN', 'kwu', 'ukm_kewirausahaan@poliwangi.ac.id', NULL, '$2y$10$OZGmA5114XQk/ZOwQw1SROTupYbCFqMKCjH.aVIH8zpNP8TVK1kxy', NULL, NULL, NULL),
(7, 'racana', 'RACANA PRABU TAWANG ALUN', 'racana', 'racanapoliwangi@gmail.com', NULL, '$2y$10$am9JfXEGPhN37KNulV/y2OTXSGWSPzWaAV6B0x4NWu8ZRzz61rFk2', NULL, NULL, NULL),
(8, 'persma', 'PERS MAHASISWA', 'persma', 'ukm_persma@poliwangi.ac.id', NULL, '$2y$10$CleCJTtr.KIoWTFT7I.3GuFw7/EHn/yGlbcckknySAoH7tU6e3wK.', NULL, NULL, NULL),
(9, 'imam', 'IKATAN MAHASISWA MUSLIM', 'imam', 'ukm_imam@poliwangi.ac.id', NULL, '$2y$10$i/..Zrb6M7qCY5J3sOckf.Xp0FZyDH5AQHPhrDDAYxmlIQunbaID6', NULL, NULL, NULL),
(10, 'mapala', 'MAHASISWA PENGGIAT ALAM', 'mapala', 'ukm_mapala@poliwangi.ac.id', NULL, '$2y$10$y7za0XAdBH6CLkhbA/wRt.3ronry/sN7Qm9W9gExbHtuRHXELs8U.', NULL, NULL, NULL),
(11, 'ksr', 'KORPS SUKARELA', 'ksr', 'korpsukarelapmipoliwangi@gmail.com', NULL, '$2y$10$guDl9TJ/7jP572TnWPB20eo.hCEaNKbm/scbp4qgvcxj7we06oJOS', NULL, NULL, NULL),
(12, 'menwa', 'RESIMEN MAHASISWA', 'menwa', 'resimenmahasiswa886@poliwangi.ac.id', NULL, '$2y$10$cljsBsgjzwYrIDfhZELYQ.bEUGwl7pqchhD5znewf1na5XSMgTJ3m', NULL, NULL, NULL),
(17, 'admin', 'ADMIN', 'admin', 'admin@gmail.com', NULL, '$2y$10$qljE0I4old6UZlIUaecfc.1nyQC/ttSJ6IfFhzP69DZRGPn833hIi', NULL, NULL, '2021-08-18 06:40:56'),
(21, 'mahasiswa', 'Bagus Aulia Rahman', '361521401053', 'bagusaulia96@gmail.com', NULL, '$2y$10$IobjOfpNX1hKzRLJyWuTIur5/9EQI6cZNc4KTYsXgZKpQOqAGRQGi', NULL, NULL, NULL),
(25, 'mahasiswa', 'CHOFID BASTOMI', '361321401054', 'cbastomi@gmail.com', NULL, '$2y$10$IA6ktvi167AG61N3lySuS.pZSEzNTZpBOI4xROQ382Hy/3hHKMbrW', NULL, NULL, NULL),
(26, 'mahasiswa', 'Abdur Rohman', '361521401019', 'ar837650@gmail.com', NULL, '$2y$10$f7nh6NPKLuxtk.29ZSgfk.UQuFWEnWM0woCMgrLdzS7pBYjsHNUOC', NULL, NULL, NULL),
(27, 'mahasiswa', 'Bimantara Adi Pradhana', '361421401035', 'yunanya27@gmail.com', NULL, '$2y$10$apmaeI7SPg7lMXprifM1Rur/H.aaRER0cKa3qjVd9XMpJ1sJxToTq', NULL, NULL, NULL),
(37, 'mahasiswa', 'AHMMAD FAUZI', '361321401010', 'ahmmadfauzi19@gmail.com', NULL, '$2y$10$82faTkrqlrJ0Dxqx2Exs8u.KTySfBKoH0Ru1cAdhuCn.e2kksObTu', NULL, NULL, NULL),
(63, 'mahasiswa', 'Ahmad Bustanul Arif', '361521401088', 'masbustanul5@gmail.com', NULL, '$2y$10$OOSi13ykfb5XUNmcqRoieuWhx5EAqBKKW6ECXUrpXeAvWsNImDSIS', NULL, NULL, NULL),
(65, 'mahasiswa', 'Ainun najib', '361321401027', 'Najibpasker1980@gmail.com', NULL, '$2y$10$aY7jnsfxiUdbaxz2B1mBfODDuPYx1vlNeFxh6VrAfJo0W1AQHkhcW', NULL, NULL, NULL),
(67, 'mahasiswa', 'Agus fadilah', '361321401037', 'agusf696@gmail.com', NULL, '$2y$10$Ln542hD3hSSlx1g/cKKopuy0iYvCQLkQxuvdOv7aSNoKeFauSnZ9O', NULL, NULL, NULL),
(68, 'mahasiswa', 'Cendy Putra Pambudy', '361421401046', 'cendyputra96@gmail.com', NULL, '$2y$10$ossScrE0jOjx9Tlf487ACOFpS/YMDxVO054T.9.MTiXZ73RxoDT2m', NULL, NULL, NULL),
(70, 'mahasiswa', 'Denis suprayogi', '361321401061', 'denis.suprayogi@yahoo.com', NULL, '$2y$10$8GZbeaPwa7RGsHQYGi8xmu0ZO9nIvso8Q6CJ/9rkmcKx.CjuL6c9O', NULL, NULL, NULL),
(71, 'mahasiswa', 'Eka Hendar', '9912203023', 'hendar1994@gmail.com', NULL, '$2y$10$FXAl6gnCwK/dkui/9f324ukmNHM7Th60JyKM1EY4x1qPzKC6beq3a', NULL, NULL, NULL),
(72, 'mahasiswa', 'Alfian rahmat efendi', '9911203005', 'alfiansumpel@gmail.com', NULL, '$2y$10$5VARyQHKDcfsnCmy1oRjGOOfRpWoQW77jm2JesFE8jgRH7BU/.SE.', NULL, NULL, NULL),
(75, 'mahasiswa', 'Abi tio bahtiar', '361321401013', 'abytiobachtiar@gmail.com', NULL, '$2y$10$I8Fi7wPMGXdk3mLU23PH4eWyzuHvpxj0iO5zUTMwD7E/CRAYYmmZ6', NULL, NULL, NULL),
(79, 'mahasiswa', 'arung fiqhul muazaanat', '361493301034', 'arungfiqhul@gmail.com', NULL, '$2y$10$wQruHdGWW7pk41gPKNON6u8uUpnPS2bW0UENn64CyINMx0aRH/ng.', NULL, NULL, NULL),
(82, 'mahasiswa', 'Ahmad Afandi', '361341311040', 'afandi.poliwangi@gmail.com', NULL, '$2y$10$HnkuVJGeiirM91H3R.iVaOoHTXbZeQ2Iqq1hqytdytUsT9K4JCXz6', NULL, NULL, NULL),
(84, 'mahasiswa', 'Dhayu nara pandini', '361493301032', 'denok.nara@gmail.com', NULL, '$2y$10$uAQoQtwdK7XfqRWVWBJUJu8U5vkrgWxmNAWyA09zqxEJLphwoEdr2', NULL, NULL, NULL),
(85, 'mahasiswa', 'Dhimas Elok Wahyuni', '361493301103', 'dhimas962@gmail.com', NULL, '$2y$10$k9RGURj4F53ahjTb8gU7UuMifmXPeV2f8ivQDuCNuHIkm6z42fULC', NULL, NULL, NULL),
(87, 'mahasiswa', 'Amry Sofiyan', '361393301002', 'amrysofiyan.pariwisata@gmail.com', NULL, '$2y$10$DRmb5S0MDztJSd.dMD8HROQ/WwbJp40n1KlEi5a/TeMZmabQXJLHm', NULL, NULL, NULL),
(95, 'mahasiswa', 'Aldila nurma gupita', '361441311072', 'aldilanurma95@gmail.com', NULL, '$2y$10$0Irj3LYuYZ/4zPlhTb88v.6UealnhH22TuTBiWOYe7tvKJfF.7lKy', NULL, NULL, NULL),
(103, 'mahasiswa', 'Dinas Ferian Juliarto', '361555401029', 'dimasferian@gmail.com', NULL, '$2y$10$iIMURh0JE1FVgxuGC9D/wui1SnSI8ar528GTU96GKhwh6U.UeSw1a', NULL, NULL, NULL),
(107, 'mahasiswa', 'Elsa febriani', '361555401078', 'elsafebriani.ti.poliwangi@gmail.com', NULL, '$2y$10$7AiyiTeH/UB1GxAgVwF0c.mTsG4E0UhNE0zLY8suDUPwOblfj1NKy', NULL, NULL, NULL),
(108, 'mahasiswa', 'Defrimont Era', '361555401012', 'defrimont.era@bekraf.go.id', NULL, '$2y$10$WDyxvb/tmVGHt/90oKSTLeQYWU7zPa4IJL/4uZ.f4bHVF8a7JjgUe', NULL, NULL, NULL),
(110, 'mahasiswa', 'Adam Birangga', '361555401096', 'adambirangga.ti8.poliwangi@gmail.com', NULL, '$2y$10$0TARh0LKsX5Bjt5zffgp6evQJKEC4ou5godNJ0AqrICH9i6FvdadK', NULL, NULL, NULL),
(115, 'mahasiswa', 'AGUNG WILIS PRATOMO', '361255401005', 'aw762224@gmail.com', NULL, '$2y$10$aUNo5528.v9PFUn7.Gggpul4r/jHTLKZs09U.urVFbyM4YzcQbCfm', NULL, NULL, NULL),
(116, 'mahasiswa', 'Alfiatul rohmah', '361555401074', 'alfiatulrohmah15@gmail.com', NULL, '$2y$10$FtpuYnLC1BD2ara0c0JmZuvbiEKX4nIn4KCkLro9gK2ddh1GH7Puy', NULL, NULL, NULL),
(122, 'mahasiswa', 'Andhika Nur Imamah', '361655401189', 'andhikanurimamah743@gmail.com', NULL, '$2y$10$b/DHPscv6r/v3oLuvz5OGelLiOkFOiMqrej6YJCBV12i4yP/H5YrK', NULL, NULL, NULL),
(124, 'mahasiswa', 'Diky Efendi', '361522401092', 'dikyefendi123@gmail.com', NULL, '$2y$10$47OWoDhRXG6b4xOKr0.io.vX.Zj5L6m2zVhUQZF5/QdVthEflU6zm', NULL, NULL, NULL),
(126, 'mahasiswa', 'Dwi Yulia Putri', '361655401190', 'putridyp17797@gmail.com', NULL, '$2y$10$SoiXF2C1.ZJXHTzzOLskZ.opfvCaOOzgHRa7E7H4f/4lRO4yP7.se', NULL, NULL, NULL),
(128, 'mahasiswa', 'Bella Asriatul Fariha', '361555401100', 'bellafariha10@gmail.com', NULL, '$2y$10$Dgx7c/aTcg814SHkFiwLTuw9NfTVHBcHLlkU4anVqEA9din7LR1g.', NULL, NULL, NULL),
(129, 'mahasiswa', 'Ahmad faiq rois', '9911202003', 'ahmadfaiqrois@gmail.com', NULL, '$2y$10$QncIO72X1/MP8lX5Sm9O3u0XIVR7ZL6dmD7uC/rpN9b42gzrNKXda', NULL, NULL, NULL),
(139, 'mahasiswa', 'Ahmad bisri nanda nur edi', '361522401012', 'ahmadbisriabnne@gmail.com', NULL, '$2y$10$Y2GkHQfp44F0FmjnyQrGKeIAW.muoTBKgv96c/rOtEz.KuYvn35D2', NULL, NULL, NULL),
(140, 'mahasiswa', 'andi kurniansah', '361521401068', 'andi95kurniansah@gmail.com', NULL, '$2y$10$sepUnAWqNaQv.DMRcC4ayOvIlEkUJcoxzyNtZBYIUb4rZiFAupWtq', NULL, NULL, NULL),
(142, 'mahasiswa', 'Dara Ayumi Rubi Astuti', '361322401110', 'daraayumi949@gmail.com', NULL, '$2y$10$KTGrCBNssvYXP3hJoqiC7.xEb1S9KoJ26HkciDV0sV8ZUy1iHfaFu', NULL, NULL, NULL),
(144, 'mahasiswa', 'Achmad Syifa\'ul Qolbi Al-Faruq', '361522401078', 'syifa.civilengineer@gmail.com', NULL, '$2y$10$VWzTljpKYtTNPYrtM5Uxo.tgDp7J6KODfguaVfR.IKCdP1sSS4oy6', NULL, NULL, NULL),
(145, 'mahasiswa', 'Achmad Reynaldo Maldini', '361522401014', 'achmadreynaldo29@gmail.com', NULL, '$2y$10$nNsjDXiCFWe/zKy2sTi5V.WKm2mxfXWraddLKFSytRNfk3NV11oBu', NULL, NULL, NULL),
(147, 'mahasiswa', 'Adi Setiono', '361555401152', 'adistiono@gmail.com', NULL, '$2y$10$VlPFQoEgLwwTFRprDECb5.9ryIR2SRu16WMwv28Vm4sWal1nnHZkS', NULL, NULL, NULL),
(150, 'mahasiswa', 'Anggun Dwi Pratiwi', '361522401050', 'aanggun402@gmail.com', NULL, '$2y$10$sqUtr42ldOwETugoCc7Am.IWuVpoKUnywD/9W83T/Ea04zg/36A92', NULL, NULL, NULL),
(153, 'mahasiswa', 'Ajeng Dwi Pratiwi', '361422401058', 'ajengdwipratiwi13@gmail.com', NULL, '$2y$10$CeR7K8.jvFK2cbpofDpaOuba0X.BSCVVZPq5Mtqxmsg6drQj/jUBy', NULL, NULL, NULL),
(154, 'mahasiswa', 'Aris Purwanto', '361222401006', 'arisbount@gmail.com', NULL, '$2y$10$4S6P3e4vetmUBXX3Ht8WMefTRzLo6i7IzYif3LO7LFUgCtMmbuDSu', NULL, NULL, NULL),
(157, 'mahasiswa', 'Anggio Dwi Nikolaus', '9908202004', 'anggiodwinikolaus@yahoo.com', NULL, '$2y$10$tNscF/FIi1qArNoEyvo6YuguA.D0EPAvYTlDjWzjmUx.q6C7oOeHO', NULL, NULL, NULL),
(166, 'mahasiswa', 'Ade andrean syah', '9908202040', 'andrefatati1708@gmail.com', NULL, '$2y$10$.w7LgWB9oKHO3L5Of10XRONYq5VQupsNAzE8pE32LECrfz9trdCLW', NULL, NULL, NULL),
(168, 'mahasiswa', 'DWIE ANDINASARI', '361493301120', 'andina.poliwangi@gmail.com', NULL, '$2y$10$n6YzNOYutTnOB0IqGQkuAegiCc/TKNxyRx13q3fEVeAYh15Ab2X8a', NULL, NULL, NULL),
(169, 'mahasiswa', 'Ariyanto Arbi', '361441333021', 'arbiariyanto09@gmail.com', NULL, '$2y$10$OccTSmDVu1VqMwDvFlFPPO712janz3FuVgj/0o021FIwZgCYDt9sm', NULL, NULL, NULL),
(175, 'mahasiswa', 'Adi priatama', '9909202001', 'adi.priatama@ymail.com', NULL, '$2y$10$2ZJGG2gv9g6F8IlxM3H9pO1X.juVsXqZ315AAgUHo7gddkVOyipai', NULL, NULL, NULL),
(178, 'mahasiswa', 'Baruna Aulya Rizkyandi', '361422401043', 'rizq.andy@gmail.com', NULL, '$2y$10$9FsVbIsfIJQgaF.yt6cGfO59sZdLq/DiXMtOe789yPGnRsqOOKnju', NULL, NULL, NULL),
(184, 'mahasiswa', 'Bayu Firman Hutomo', '361522401066', 'bayu.firman97@gmail.com', NULL, '$2y$10$J5PXpCQjkB8Aoaodd.opVOPHb5bLmahlwIO8D2jzZi0yW3Eg5UNxq', NULL, NULL, NULL),
(186, 'mahasiswa', 'Andre Bagoes Hidayat', '361441333010', 'andrebagoeshidayat@gmail.com', NULL, '$2y$10$Im7dTVHQcEc9tGKKHOcmJ.KxXKt5FU47b2xJn2gqobexdRmwuaW6i', NULL, NULL, NULL),
(188, 'mahasiswa', 'Aynur Yakin', '361422401090', 'aynuryakin07@gmail.com', NULL, '$2y$10$FcUzjxdQXRUYs/hjNBKRKu4KZo8ZV1ulUEA.DGtRN5i8s7LkVUGY2', NULL, NULL, NULL),
(189, 'mahasiswa', 'ARIS SETIAWAN', '361341333015', 'arissetiawan9700@gmail.com', NULL, '$2y$10$3IwMI7NFYb2Dv5dvc69FS.zP2/07zgzWSlrFBS0V0O0OztCY7HSUW', NULL, NULL, NULL),
(190, 'mahasiswa', 'Dana Kumala', '361455401024', 'danakumala76@gmail.com', NULL, '$2y$10$Umt/qiqPf0D.41eRlOVXduCCD4Nz.Hw96DYqYDpnZe6/ka23Zjvy.', NULL, NULL, NULL),
(192, 'mahasiswa', 'Diah Hayyu Robia\'atul Al Rosyidah', '361441333001', 'diahhayyu96@gmail.com', NULL, '$2y$10$cqzzLl5wb948BHKRgHNdouSCIyHOBvqwLkDI4DM96HfM.8/4MMw9G', NULL, NULL, NULL),
(193, 'mahasiswa', 'Bagus Saputro', '9908202046', 'bagussaputra34@gmail.com', NULL, '$2y$10$v8bx3NFeL8uek3W0.esPJujUI/ygaPjCOCQmvwcW6BntF1jlOEFNK', NULL, NULL, NULL),
(195, 'mahasiswa', 'Al Hadian', '9909202002', 'alhadian9@gmail.com', NULL, '$2y$10$L58FKa1EfLVHl4vr3e81ke27e5PQ3x6tmdTB1lg56eO4ZxncBYD8a', NULL, NULL, NULL),
(201, 'mahasiswa', 'Arjun Nur Isna Sugata', '361522401052', 'arjunsugata99@gmail.com', NULL, '$2y$10$...uGMb/HRqw.QiiesZn/OVg1D0lUaP3qmj5EBK1jwoySImVPkehO', NULL, NULL, NULL),
(202, 'mahasiswa', 'Anita', '361322401109', 'anitapoliwangi@gmail.com', NULL, '$2y$10$oLttxmTz3vb2GLT.TJOFQORfRDJYoj6VYFH7moPPDUPdbDctwVdP.', NULL, NULL, NULL),
(203, 'mahasiswa', 'Ema Tri Puji Lestari', '361441333013', 'ematripujilestari@gmail.com', NULL, '$2y$10$qMzBO8h2hgwGuq8tTPufjuqa1sKzu0vKNwxES6uzQ6llkR1Ij0cyy', NULL, NULL, NULL),
(204, 'mahasiswa', 'Arfi Yuliyan', '361222401004', 'arfiyulian@gmail.com', NULL, '$2y$10$Viax74mojmRoKFjs1gO0h.82vEtV5i77Ed786kaVWfzb/QS4ER2DK', NULL, NULL, NULL),
(213, 'mahasiswa', 'ARDHIAN DIQRULLAH', '361322401030', 'goardhian@gmail.com', NULL, '$2y$10$sLPfMRx6Mh5ZomJRvwhWsem1Suk7bOKxev7OdKh/mWYbOlTDyxzPS', NULL, NULL, NULL),
(216, 'mahasiswa', 'Ahmad Ikwani', '9908201006', 'makhloek.toehan@gmail.com', NULL, '$2y$10$PxRV2GpNs.nQh6.Coe4B2ub08VrlPt4vXxK17xznl617L7zX45zV2', NULL, NULL, NULL),
(226, 'mahasiswa', 'Dian utami intang refanda', '361522401087', 'dianuir@gmail.com', NULL, '$2y$10$JFoeRHSTu41thHo3tDOoL.1uPjtaTc8CiFL1wwfUU6Lp7wa70nLGm', NULL, NULL, NULL),
(228, 'mahasiswa', 'DEDY PRASTIKO', '361322401014', 'dedyprastiko05@gmail.com', NULL, '$2y$10$nTP0ZGxxFV6/gznZRd7cwuiYfyJC1G3e6ulXH3wCvM2xjQ32HiN6C', NULL, NULL, NULL),
(229, 'mahasiswa', 'Devi Dwi Lestari', '361522401079', 'devidwi605@gmail.com', NULL, '$2y$10$oGxFyG1LU/Wtd.HuWQJAaelYi0sqKzZ0bxcU2Hr4lwKtjNu4yxzaO', NULL, NULL, NULL),
(232, 'mahasiswa', 'Achmad Ainur Rofiq', '361255401002', 'rofiqbwi@gmail.com', NULL, '$2y$10$8IRp1ovgLkHimtP.Kb08q.sE83oaKUuaYF2rkdjLaQ6FmqTuXuqRm', NULL, NULL, NULL),
(233, 'mahasiswa', 'EKO WAHYUDI', '361422401020', 'ekowahyudipoliwangi@gamil.com', NULL, '$2y$10$7QEBtKJJwDMsPK.BKxVpHuye1meHHPHL7HCYpSHHR5Hfa4odRp5Im', NULL, NULL, NULL),
(235, 'mahasiswa', 'DENDI AKHMAN W A', '9908201021', 'dendiawa@gmail.com', NULL, '$2y$10$4oQcl3yHcVu.GFikk8ifS.QsAaQpozZSEiWfYE/vxCjx..Cw7BMie', NULL, NULL, NULL),
(245, 'mahasiswa', 'Ami Kurniawan', '361422401028', 'amikurniawan62@gmail.com', NULL, '$2y$10$X7n15XUpcDvhT7ZUElWE/uywdJGS7jXp/csxCyCZUKi.zdlFxgk7W', NULL, NULL, NULL),
(250, 'mahasiswa', 'DESI IKA WULANDARI', '9909202003', 'desiika712@gmail.com', NULL, '$2y$10$NhTCyGWJUc7ARZgXBYbwx.dxPl6GIDYpvDoAPm2F97Vz14xlng22.', NULL, NULL, NULL),
(252, 'mahasiswa', 'Annisa Maya Shobrina', '361522401077', 'annisamayashobrina@gmail.com', NULL, '$2y$10$2eLq6Mrb8o75rQRiSEzR6OrbgwZnioEJGuNw9te2blOhqUsbzle2G', NULL, NULL, NULL),
(257, 'mahasiswa', 'Akhmad fariz', '361441311061', 'afariz671@gmail.com', NULL, '$2y$10$H11HtatiB/g3dKScfbeeauATN5ktMRf2Y9ChQ4nTHp8M4KkNf/Ko2', NULL, NULL, NULL),
(258, 'mahasiswa', 'Bimo Prawira Dewantono', '361441311120', 'bimodewantono@gmail.com', NULL, '$2y$10$ppvInaWzec9nNqfSUQ4Rhea2bPtRm5.aUyH2RU49hYJtVnxl2wK32', NULL, NULL, NULL),
(260, 'mahasiswa', 'della jannata amadea', '361441311023', 'jannatadella@gmail.com', NULL, '$2y$10$oy.6b5r9YivxfAclARESgOVfEtg.1dTel/nxUc1hwb2XmYNkhlWo.', NULL, NULL, NULL),
(262, 'mahasiswa', 'Ely Kusuma Wardani', '361441311012', 'elykusumaw@gmail.com', NULL, '$2y$10$vwdgCFMybLOTK0aX04WqN.E20/faa0aTE5y29AEtfq2ZeCo3C0nk.', NULL, NULL, NULL),
(264, 'mahasiswa', 'Ardina Febriyanti', '361441311010', 'ardina.agribisnis@gmail.com', NULL, '$2y$10$fKelQvMJ/shKckOPxLmQMe2VI7w26U3XDjzmbZ.WV70Nxx3xs4vae', NULL, NULL, NULL),
(265, 'mahasiswa', 'Danu priambodho', '361522401054', 'danupriambodho@gmail.com', NULL, '$2y$10$ZwRQQ.GEZEg7uLR1DcWofu0S9p/kxfLEN9MkPCpBUthdIFvAJHA66', NULL, NULL, NULL),
(266, 'mahasiswa', 'Agus rahman', '361441333011', 'agusarab400@gmail.com', NULL, '$2y$10$azQ.nOK5kxOXx.VPvtnPSe692rGJI2Fouw8zS817pI2JOJwJP2DAi', NULL, NULL, NULL),
(268, 'mahasiswa', 'ANIS ARMANING TYAS', '361522401020', 'anisarmaning@gmail.com', NULL, '$2y$10$SYWIRYy178D77XOhctiB.eW1wogvlvAUQTaNcpGX3YbZbVp74VjIq', NULL, NULL, NULL),
(275, 'mahasiswa', 'Anwar Anas', '361355401014', 'insannetral@gmail.com', NULL, '$2y$10$9dEaGfLDrCSSTVIKos0aB.clLIYkuoTWXd/SLdbVkwh550N9ZzL8i', NULL, NULL, NULL),
(278, 'mahasiswa', 'Arinda nungki susanti', '361655401181', 'arindanungki.tiaj.poliwangi@gmail.com', NULL, '$2y$10$ct5q01n.5orsEDd2GrOZvewDgOas1HQZ.i0aRkbfOgSevhaICk1FW', NULL, NULL, NULL),
(280, 'mahasiswa', 'Edi siswanto', '361555401002', 'est23.edi@gmail.com', NULL, '$2y$10$..gloMQYIK0zplC6yoLjGugg1vkIp60Oiok7auY.CoNfNhjS3CQxq', NULL, NULL, NULL),
(281, 'mahasiswa', 'BETIA LAYINATUS SHOKIYAH', '361455401060', 'betialayinatuss88@gmail.com', NULL, '$2y$10$Ga4Iye3NdToACjSsrOOxqe96niqNKcuz2Z.Tl2MxBa4Vv/hEWXtre', NULL, NULL, NULL),
(287, 'mahasiswa', 'crisdyant sabbaditya', '361355401041', 'crisdyantdita@gmail.com', NULL, '$2y$10$qjgvoZcp95btlzTRSRqBVOxS1B8U3SmqRpJgMu7SvE1ymrcI5SFLW', NULL, NULL, NULL),
(288, 'mahasiswa', 'Andini setyowati', '361355401064', 'setyoandini68@gmail.com', NULL, '$2y$10$0Ii3lYVHH2LQ0fpFCM9awOIRpX0T2Ami4FzTnwS4cL/6vURanohbS', NULL, NULL, NULL),
(302, 'mahasiswa', 'Adi Irawan', '361555401068', '17adiirawan@gmail.com', NULL, '$2y$10$KjroucUwWUtY.6UOhy04L.t5ifpb66h5t25SUoom5h4pZ1HPlXMAO', NULL, NULL, NULL),
(303, 'mahasiswa', 'Ajeng Apriliyani Eka Saputri', '361555401125', 'ajengapriliani.ti8.poliwangi@gmail.com', NULL, '$2y$10$Zw4coIfQcku4agWFtsyV4.ctwlcE20Nx5dq09SWNieub8n2MKzc9q', NULL, NULL, NULL),
(305, 'mahasiswa', 'Aprilia Setyoningrum', '361555401079', 'apriliasetyoningrum22@gmail.com', NULL, '$2y$10$9EhUDkrz.FYFm36FbNGKTuwQUc.DNqknOJtfp2yeUU/o95OEv85.i', NULL, NULL, NULL),
(309, 'mahasiswa', 'Abdullah Fahmi', '361655401156', 'abdullahfahmi.ti9.poliwangi@gmail.com', NULL, '$2y$10$NjSwAMHTBvZXBjSiNJ1bIOUQP5awU69COdDB8BeB0oGJrHgDnVPLW', NULL, NULL, NULL),
(310, 'mahasiswa', 'Dina Nahdia Safitri', '361655401178', 'dinanahdias.tiaj@gmail.com', NULL, '$2y$10$lIcCVvjUgXQcq0imE.XuRehlxn1kXIMZKaFmKwTCB25vnI7LmUhbS', NULL, NULL, NULL),
(313, 'mahasiswa', 'Arif Agus Fajar Riyanto', '9909201014', 'arif.a.fajar.r@gmail.com', NULL, '$2y$10$TybrsAr5JlffjJX/ZvptIeW/imAlmm8v/ifjJBvi3mYy2HI5UKZC2', NULL, NULL, NULL),
(314, 'mahasiswa', 'Elisa', '361455401004', 'elisasaragih96@gmail.com', NULL, '$2y$10$NpnThOsoOUGfwMz9jG3qQu7OntgbjWljNLxEWRMjIfAT3tceAxafi', NULL, NULL, NULL),
(316, 'mahasiswa', 'Bagus salim chasan syadzali', '361522401046', 'bagussalimcs@gmail.com', NULL, '$2y$10$2KaxU7VS2duiwgBmWjJgSOCu7BYchqfMEUj727ty237opdDnwe9EK', NULL, NULL, NULL),
(318, 'mahasiswa', 'Dinda Esemrelga', '361455401149', 'esmerelgadinda@gmail.com', NULL, '$2y$10$oPWlJpxGA8VEN9lMpvI.SuIjYZAAzWThAN9Cl0ZpIF52bSaJvLzsW', NULL, NULL, NULL),
(320, 'mahasiswa', 'Affan Arinaldy', '361322401073', 'affan2rynael@yahoo.co.id', NULL, '$2y$10$ZP9LqRpqTNN1f2htD4m0M.XIi1kBaVmNsepsYFGZlSnjCsZXZMqnm', NULL, NULL, NULL),
(322, 'mahasiswa', 'Aril fathul dinia', '361455401049', 'arilfathuldinia05@gmail.com', NULL, '$2y$10$ZfY4xoVx.gTa75VW7VsaQuaqg.9vbm6DDpwBqgRgwMZyMcbvhT/9.', NULL, NULL, NULL),
(324, 'mahasiswa', 'Arum Pratiwining Ratri', '361455401067', 'arumahmad98@gmail.com', NULL, '$2y$10$VC9lJ8tGXj1DUlBcE1oqYO1PJcjs93byOSL60FzolyDy7HxHdaVFG', NULL, NULL, NULL),
(326, 'mahasiswa', 'ABDUL AZIZ', '361455401021', 'aziest99@gmail.com', NULL, '$2y$10$dR83HSvXj7q/uCV0OYQfluu/ijSZ0Hawm0xuGK52HCJxyIdheDBH2', NULL, NULL, NULL),
(328, 'mahasiswa', 'ARINI NORMA SURYANI', '361355401153', 'aryninorma@gmail.com', NULL, '$2y$10$df58GR0jwcy1ovKfinaLeOqhCWeFKiVC4Vxmhla5ihFUlkCULheP.', NULL, NULL, NULL),
(335, 'mahasiswa', 'Artha Nugraha Fajar Sidiq', '361355401071', 'arthanugraha82@gmail.com', NULL, '$2y$10$GxgCgiCmuMfHL0d9roA6e.I6LQa9WXA1KJaFvY/uTPp/x1hph6g1q', NULL, NULL, NULL),
(342, 'mahasiswa', 'Ayu Nur Oktavianti', '361555401055', 'ayunuroktavianti.ti8.poliwangi@gmail.com', NULL, '$2y$10$twZ12RLMrXrORBPXSAtOJu2o6jIVtL4XoARYsfJWk8hSZuPjsGwdu', NULL, NULL, NULL),
(344, 'mahasiswa', 'Andrea heru nugroho', '361355401164', 'andreasheru29@gmail.com', NULL, '$2y$10$Mo72gWL7I2KloHkcFsoRiumTy/SyFsT3xYN5keLta/cAsyEYuRIji', NULL, NULL, NULL),
(345, 'mahasiswa', 'Dilfa Dikriyah', '361355401112', 'dilfa.dikriyah@gmail.com', NULL, '$2y$10$vMsRSp28MNNn8RFf9EU3wuCLseNfM.X/ZWf4wOFLb5Dua8dx/yg3q', NULL, NULL, NULL),
(347, 'mahasiswa', 'Ayu Dwija Astuti', '9908202008', 'ayukim99@gmail.com', NULL, '$2y$10$vsgnHUCeCwpOnbIMmtbwA.lvnQ2pWI8CUx0j5t2HlLPTHVEupyMe.', NULL, NULL, NULL),
(349, 'mahasiswa', 'Bayu Syahputera', '361455401080', 'bayusyahputera@gmail.com', NULL, '$2y$10$MQ8B4xoubFJEqIOjUw6aBukSUBrWv7dufTyog184L27IGooXgEEo2', NULL, NULL, NULL),
(353, 'mahasiswa', 'ADITYA WAHYU PRATAMA', '361455401102', 'adityaoji@gmail.com', NULL, '$2y$10$tRHFIyCh.Q/9uXNgRLd8eeLp1.BZ9xrOc2Pf6lS5lXp6DqPKQiW1a', NULL, NULL, NULL),
(357, 'mahasiswa', 'Dwi Cahyono, S.Tr.P', '361441311076', 'dwichyno68@gmail.com', NULL, '$2y$10$3ux/.u2lBMF.UvFG6wScOOUT9IvQakTPBSsAUwbmNkfhCO3Ej9EAi', NULL, NULL, NULL),
(366, 'mahasiswa', 'Dewanti Mutiara Dewi', '361655401170', 'dewantimutiara.ti9.poliwangi@gmail.com', NULL, '$2y$10$YX/FNe0fWnQ5WZLGwN1BI.5mYtPpja8SKO8JCxRV6rjhO6ER2y9ZW', NULL, NULL, NULL),
(368, 'mahasiswa', 'Annisa meiyanur', '9911202004', 'meiyanur.anisa@gmail.com', NULL, '$2y$10$bENnC9GdMCuNaY2sEDLp6eaSoIUPgCcGHfxJ./xBsDzxzKIvFOGFy', NULL, NULL, NULL),
(371, 'mahasiswa', 'Cah ayu maharani', '361422401102', 'maharani398@gmail.com', NULL, '$2y$10$02jT3XEsmbPoGnXZUz7Acef1r9ZFyX.V3uMI75hESwkF2aiyBJWWG', NULL, NULL, NULL),
(374, 'mahasiswa', 'ANISA TRILIA DEWI', '361422401079', 'triliaanisa99@gmail.com', NULL, '$2y$10$.A8xhAz.N9n4M3QObfrnoe7EQSZpacpeXy.vz7MpSH1VwtXjtJkwu', NULL, NULL, NULL),
(376, 'mahasiswa', 'DHIAS FEMY LIANA', '361322401066', 'dhias.femy.liana@gmail.com', NULL, '$2y$10$aLkeTj8bxTkr3UHtk67Zke3zLF0SFQ80PXGtGdVSBwBC09g6Qdm0u', NULL, NULL, NULL),
(382, 'mahasiswa', 'DANAR ARIFIAN SYAH', '361522401096', 'danararifiansyah10@gmail.com', NULL, '$2y$10$.6WO8DCtUZuVriOkoM4/CuLkgVJMcH/2C3xwmzEUg.B1AEntGx9/G', NULL, NULL, NULL),
(386, 'mahasiswa', 'AYU ARINA MANASIKANA PURNAMA HALIM', '361422401019', 'ayuarinamanasikana46@gmail.com', NULL, '$2y$10$WQJeBS9uBlx5/j3rFH/U8e83FSxt7/EOATwr5acprj/8MsT4WQTIy', NULL, NULL, NULL),
(388, 'mahasiswa', 'andika setiawan', '361422401069', 'andika.laros@gmail.com', NULL, '$2y$10$7zQOhIVGtMuqrIBdhJNE9.tnjXr8f.8l/2t8vht6jRjKvWsBHa68C', NULL, NULL, NULL),
(389, 'mahasiswa', 'Andi chairul wafa', '361421401011', 'andiwave7@gmail.com', NULL, '$2y$10$oL9xvZsv//hX6C0pdAHJYe0QlqR8PrwYeV.rqmUTOw4KrhX2vO5Oy', NULL, NULL, NULL),
(394, 'mahasiswa', 'Dwi Arisandi', '361355401150', 'arisandidwi@gmail.com', NULL, '$2y$10$VOsyTj6w7xOkDNdm9AYUnuiQv9mRG9FC68qbOYZdi5PYze1s4fO7W', NULL, NULL, NULL),
(397, 'mahasiswa', 'Dwi Febriani', '361393301004', 'dwifebriani.pariwisata@gmail.com', NULL, '$2y$10$bLrq/dyBRpxqseOrHAgtKu97JzXAsPwlrcvSN4rvwTPQAuHQIKuRO', NULL, NULL, NULL),
(403, 'mahasiswa', 'EKA ARIS AGUSTIN', '361393301043', 'ekarisagustin.pariwisata@gmail.com', NULL, '$2y$10$0MaBb1mQwLESQwbWY.xwR.LaPmb/lezrctdHSmao8t6m829m04m7m', NULL, NULL, NULL),
(406, 'mahasiswa', 'Adella Ayu Nova Riandita', '361393301007', 'adellaayu.pariwisata@gmail.com', NULL, '$2y$10$IDj1X6YmghGuiFgVlFozI.aEc1VU7emz2MlxNFi8sEikI6ew8jyDW', NULL, NULL, NULL),
(411, 'mahasiswa', 'Dafit budi hermanto', '361422401075', 'd.budihermanto@gmail.com', NULL, '$2y$10$7rCo8lbpWk5mUWrYg84nR.teertEBZaJLvYuEzZUgg4cemcn4jGRm', NULL, NULL, NULL),
(414, 'mahasiswa', 'Dewi Januari', '361393301027', 'dewijanuari2@gmail.com', NULL, '$2y$10$aI0QzxFOtMabsVtZuOEVDOWoJnHPKPN1pLtPsosGGsUEPMCsbU.l2', NULL, NULL, NULL),
(419, 'mahasiswa', 'Cahyadi', '361355401095', 'cahyadi244@gmail.com', NULL, '$2y$10$omMMdZckYcjoSf8fKTcLvu.EKgLzqUk6BBR3LK.bOMdB9Jfmwc84G', NULL, NULL, NULL),
(422, 'mahasiswa', 'Andrian Prihantono', '361455401073', 'andrianpoliwangi@gmail.com', NULL, '$2y$10$RCbLw3I3EyDx57KOIA3H4e1jO4GJoO6zlSAZiReWG2ncPXviQ1WIO', NULL, NULL, NULL),
(423, 'mahasiswa', 'ANGGREAN SENDY', '361355401119', 'anggreansendy96@gmail.com', NULL, '$2y$10$sn9gBgGmcZx/ABLM8PSS8.KwAkiBZ72h2ck/BshmJwxt116Xp.S1q', NULL, NULL, NULL),
(426, 'mahasiswa', 'DIKI HARIYANTO PERMANA', '361455401015', 'dikihariyanto956@gmail.com', NULL, '$2y$10$hzsaJTnQK.DgqiZWBK8NBO7an8w/uIlTeL1MZAZysS5TU5WqiQpHa', NULL, NULL, NULL),
(427, 'mahasiswa', 'Ach. Fery setiawan', '361322401048', 'fery071094@gmail.com', NULL, '$2y$10$yTdm8jBnYGB3CZZTFKjJYeUc355gk/tB8Yjeli2xgJVVdYBn6WZEu', NULL, NULL, NULL),
(430, 'mahasiswa', 'CITA DERIL HITALIA', '361455401091', 'citaderilh@gmail.com', NULL, '$2y$10$KgK6FqIdh6tpUoGZUcuGqOIyhJIPak62.9QgjQetbJvFwZADg0tJu', NULL, NULL, NULL),
(438, 'mahasiswa', 'Cynthia Dwi Della Rista', '361393301017', 'cynthiadwidella@gmail.com', NULL, '$2y$10$BGxuCI/9ATEC2uTYsK7cB.i0InKdgtt0AaTSPKMIunuUXlY0VpZ76', NULL, NULL, NULL),
(448, 'mahasiswa', 'Dika Nanda Agusta', '361455401013', 'dikananda.agusta@gmail.com', NULL, '$2y$10$L3B3rg4UV9rpomQL37p1w.1jEnRHDWxQGwAB37fRIYmjNBSe3lROe', NULL, NULL, NULL),
(449, 'mahasiswa', 'Agung rizqi dwi putra', '361322401041', 'rizqiagung77@gmail.com', NULL, '$2y$10$eEE0k/3aaiHhl4G4XcOabO.Z5gGLRdwZ68py5RwRaP//u4S15Mahi', NULL, NULL, NULL),
(451, 'mahasiswa', 'Baktiar Dwi Atmaja', '9911201017', 'baktiarda@gmail.com', NULL, '$2y$10$IWC3JYbkg6UAMr9D.Jz4d./dqPiGwbXWzzYRu.M1a5Sx5PsDlfbIu', NULL, NULL, NULL),
(453, 'mahasiswa', 'Adi Kurnia Wijaya', '361255401004', 'Kurnia@gmail.com', NULL, '$2y$10$5YNWzKHT18cBSwEcKBNpr.NkQkKfIKvotKBad5FmLdp7WdEthEUzW', NULL, NULL, NULL),
(457, 'mahasiswa', 'Billy Wisnu Bimantara', '361321401042', 'billy@gmail.com', NULL, '$2y$10$AD21xzrKKOm6nfkW62Jdcujw2BSu00sAUu7dtNTHorvZ.HbNunBLq', NULL, NULL, NULL),
(473, 'mahasiswa', 'Dhita kharisma dewi', '361322401101', 'dhitakharismadewi@gmail.com', NULL, '$2y$10$6HWt7zwn0.0b/BIWou/jUuSL/gqW2At7tT.NTMelfW5zdaNetVTd2', NULL, NULL, NULL),
(474, 'mahasiswa', 'Arin Maftukha', '361322401080', 'Arinmaftukha911@gmail.com', NULL, '$2y$10$/MGwRzu5kDIh/aS/ATaLCeXwyVELhd7g3TzhW263XeYo15I1FuBjC', NULL, NULL, NULL),
(480, 'mahasiswa', 'ANGGI INDRIYANTI', '361522401001', 'anggiindriyanti0@gmail.com', NULL, '$2y$10$nfe0XDs11xsox03nqJUSruf3vB2WETa.s55TN72A6pDUgyvjYtTNq', NULL, NULL, NULL),
(485, 'mahasiswa', 'Ana ulfilatun nafiah', '361422401031', 'anaulfi.99@gmail.com', NULL, '$2y$10$3pqw.ht9PpxAj2CMxaJt1eCyjcCWDDu/i0t5dCaBx4Q6.Eu3O6tlG', NULL, NULL, NULL),
(486, 'mahasiswa', 'Abd. Ro\'uf', '361421401076', 'roufabd96@gmail.com', NULL, '$2y$10$mR/58TLqr.4JY9IkKkf5COwz3.Z0e3wXzU37ID71ZjvW.TKWs19kC', NULL, NULL, NULL),
(488, 'mahasiswa', 'Ainur Rofiqoh', '361522401019', 'ainurrofiqoh1998@gmail.com', NULL, '$2y$10$jyPC38SrJbEGey4jaX6vqOkln6EDNvSY6N.w1kpqwqSb3jR1.bx/W', NULL, NULL, NULL),
(490, 'mahasiswa', 'Bagus abdi', '361341333004', 'erlinazahra229@gmail.com', NULL, '$2y$10$aM9ilvUymBJj21ZSHMaPIOmOfhAQxo.CaXW1mSLCWs1/oJpD9O5i6', NULL, NULL, NULL),
(506, 'mahasiswa', 'agus ali mukti', '361322401061', 'agus.mukti89@yahoo.co.id', NULL, '$2y$10$7qZc2xhzlTVZ/NInLIEHxeOYawkJk2Zn5FU9Z2x70KnU8v.moJYnW', NULL, NULL, NULL),
(509, 'mahasiswa', 'abdul jalil', '361421401014', 'abduljalil81731@gmail.com', NULL, '$2y$10$IlePqPVTpSgombbN7U/APOlcpG8vK8n6ExPoWhlavUi3q73xxWuAG', NULL, NULL, NULL),
(510, 'mahasiswa', 'Bella Vista', '361322401077', 'bellavvista@gmail.com', NULL, '$2y$10$z6PGLqJEEzov/OMa7mbIE.t8vc/mLiXPtdTxdErmvjojVuESnhFU2', NULL, NULL, NULL),
(511, 'mahasiswa', 'BADI\'ATUL MUKAROMAH', '361522401017', 'badiatul05@gmail.com', NULL, '$2y$10$LVAS0fttl2jdEkD2U.EJSerXVJmMvlvByN6Tpde8EMDNMx52cUj9i', NULL, NULL, NULL),
(515, 'mahasiswa', 'Achmad Aliem Rhobbhany', '9911202001', 'rhobbhany@gmail.com', NULL, '$2y$10$4NNC7beRVyKw9fht6/wn4.POhaFHLzIXsYeV58mrpzKDojp.VdZUC', NULL, NULL, NULL),
(520, 'mahasiswa', 'Andi Wijanarko', '361322401003', 'wijanarko.andi1@gmail.com', NULL, '$2y$10$01KiCf0yTEpIq500l6mZV.O2xJP7g9ejxivu6tAxKWbfpso28mFzu', NULL, NULL, NULL),
(522, 'mahasiswa', 'Diana latifah', '361422401105', 'Latifahdiana64@gmail.com', NULL, '$2y$10$pnrTE9AFyyc/EB6OPOPPHu8bIidNaobyrz3aCaBqrkm7y.zTUlMa6', NULL, NULL, NULL),
(524, 'mahasiswa', 'Ahmad Supiyan', '361341333003', 'ahmadsupiyan01@gmail.com', NULL, '$2y$10$4BelO4MXc0GjrYYbbBrR/ewgG7jhD7AWJ/ZAKCg5daNNl/rM0.RiG', NULL, NULL, NULL),
(530, 'mahasiswa', 'Anang Khoirul Rozikin', '361421401084', '007jamerusak@gmail.com', NULL, '$2y$10$PuVe2.QJEhJRUuGBiu1SY.IhZDPoZff7JhYuw9j7gYpkmDhBmYrEC', NULL, NULL, NULL),
(532, 'mahasiswa', 'Ega Ardiansyah', '361421401082', 'iamhulkman30@gmail.com', NULL, '$2y$10$70cTvS3pO8ju5eAwLInRmeFqJJ65dj2TUgFtYmcoPQ3L9RoPJprUu', NULL, NULL, NULL),
(544, 'mahasiswa', 'Auliatus.saadah', '361493301087', 'auliyatus.s97@gmail.com', NULL, '$2y$10$LG15wj4flCuN5C9YSmF/qOcdlrcaJFB6eQ6yBkktTNksYtytGaWRe', NULL, NULL, NULL),
(547, 'mahasiswa', 'Bagus Rohmadoni', '361455401071', 'bagusnovi2230@gmail.com', NULL, '$2y$10$x5i6CikBedCa9UqeIX68Het1xhcOv9MiWU69/dPTy7ioh8Bq7yw1u', NULL, NULL, NULL),
(555, 'mahasiswa', 'Ahmad Amin Murtadho', '361455401033', 'aminmurtadho17@gmail.com', NULL, '$2y$10$f/w6HNC3jmqKKYkwfR5VCO/Hdi6CIam.EDdYAvyZIopHH7bG./Ar6', NULL, NULL, NULL),
(556, 'mahasiswa', 'Abu Bakar Sidiq', '361455401121', 'abubakar@gmail.com', NULL, '$2y$10$.WYpYsLbwY9XmfHpF8x2EO.mgbbD55fLZ3YpU3Q1ZY3d8yInUwEF.', NULL, NULL, NULL),
(557, 'mahasiswa', 'Alfiatul Rosidah', '361355401050', 'alfyros@gmail.com', NULL, '$2y$10$irUgQv6yVIsKyEmoSCWFiuHLihKgc9dEkn/t6q1YNOOQXMmfA0ys.', NULL, NULL, NULL),
(560, 'mahasiswa', 'Audina Suhartina', '361455401037', 'audina.suhartina@yahoo.com', NULL, '$2y$10$E9oAMUHRb1KHFkPoi4D41uqv2m8Rilq6NfIuxtCQ8xhCBZ1Q/O5au', NULL, NULL, NULL),
(562, 'mahasiswa', 'Didik Edi Santoso', '361455401130', 'didikedi_santoso@yahoo.com', NULL, '$2y$10$AdLGCuwfzSOf4s88Fzr.2eNY9mtAFvwCRWBdAf.C96i4rfWHJw4qm', NULL, NULL, NULL),
(564, 'mahasiswa', 'Dina Maulida', '361455401005', 'misdin99@gmail.com', NULL, '$2y$10$O7W0XBkO7.a98hix015yZ.VtJdExKl0LT.oUvmxgi01ZAPQ4E7rFS', NULL, NULL, NULL),
(566, 'mahasiswa', 'Dira Viviana Mulia Sari', '361455401044', 'diraviviana4@gmail.com', NULL, '$2y$10$lAmYA2Emce7iHnt6nSV9uuZH4.m9S.2Ls8YsmfXGSJOVm1s9cP87i', NULL, NULL, NULL),
(571, 'mahasiswa', 'Amrul rosyadi', '9911201010', 'amrulroesyadi@gmail.com', NULL, '$2y$10$GFxjCqAcA9b95tMrUS8Fb.aNE8sOLbK2HXXoHkr4qOjBpDaUbmUC.', NULL, NULL, NULL),
(573, 'mahasiswa', 'Dimas Gusti Maulana', '361655401069', 'dimasafan13@gmail.com', NULL, '$2y$10$mdPvsM6/lTDETn5BZHFUzO9na4..updhciVBG2DLN9DAtTb5ZJx5.', NULL, NULL, NULL),
(584, 'mahasiswa', 'Ahmad Rofii', '361355401104', 'ahmad.rofii@gmail.om', NULL, '$2y$10$GfyFcGFKY1w2InlMdy3WGurYqFTpNJbjzA9wtWiKlkzYAXUHaIkyy', NULL, NULL, NULL),
(585, 'mahasiswa', 'Alif Munanggar', '361355401023', 'alif.munanggar@gmail.com', NULL, '$2y$10$7ttF.uYzhIO/3GFypqGuqeiEkzzkpFQI5MIKiGijVnKJfp9OGG4b.', NULL, NULL, NULL),
(586, 'mahasiswa', 'ANDRI PUTRA PRATAMA', '361455401131', 'andri.putra@gmail.com', NULL, '$2y$10$lqftajn/CBhyLt6Z2N9oq.b/pFF1loiKRdfPOAv1UXElSxnxKo4ci', NULL, NULL, NULL),
(587, 'mahasiswa', 'AUDEA RAHMEI VERANI RANDA', '361455401156', 'audea.rahmei@gmail.com', NULL, '$2y$10$.oMFELz9AzrVXxBhVbjgoO.2wOEjWB1Ftiapmbujh.D6sfdkbGIiG', NULL, NULL, NULL),
(589, 'mahasiswa', 'AULIA AHMAD AFFAISAL', '361455401135', 'aulia.ahmad@gmail.com', NULL, '$2y$10$Hv/GTBQT4nlXARVNH7xXHOULvFS8Yd5JJeq1qDGh7oGaLU.dDG9DW', NULL, NULL, NULL),
(594, 'mahasiswa', 'DINO WAHYU INDRAWAN', '361455401136', 'dino.wahyu@gmail.com', NULL, '$2y$10$RHkdELxgYxD/jlfRfHF/9OM/skZHYDbKGrlh38X6bVmwnzGpO42KK', NULL, NULL, NULL),
(596, 'mahasiswa', 'EKO HADI SANTOSO', '361455401103', 'eko.hadi@gmail.com', NULL, '$2y$10$5fuh152fpLltShYOuhGEzea9kepddx52hwdqQcokCz/yBnaDI7vUm', NULL, NULL, NULL),
(621, 'mahasiswa', 'Ana Silfia', '361355401013', 'ashilfia@gmail.com', NULL, '$2y$10$tPPWe4z4BY2ucQFyuGyyIu7HQeuVkLM5gTL2oKXP4FAOHUYTZytWu', NULL, NULL, NULL),
(622, 'mahasiswa', 'Ari Julianto', '361355401114', 'arijulianto70@gmail.com', NULL, '$2y$10$tv7cPHSkWnDS6X2Ip73/7OQU7mx08o9bOpPHhQg2onlhrlRla/t3u', NULL, NULL, NULL),
(630, 'mahasiswa', 'Abd qodir', '361421401025', 'abdqodir1996@gmail.com', NULL, '$2y$10$Vphbp9RwZ4PdUi8Sj5Y17ecmMxBUvIM9odBy222.6m4D7WbSXfA2a', NULL, NULL, NULL),
(633, 'mahasiswa', 'Amang bakhtiar', '361321401066', 'amangbaktiar46@yahoo.co.id', NULL, '$2y$10$XpGsfRkv3AGeLL5c58fWAOod//pG8P77GP0Z26ujDJDffcW438Eia', NULL, NULL, NULL),
(642, 'mahasiswa', 'Agung Wijaksono', '361355401127', 'agungwi@gmail.com', NULL, '$2y$10$K2oGV45q2NpMRftuKv5dce/xBlVCwUARrOcNX2Trq70t4a3G4YHF.', NULL, NULL, NULL),
(643, 'mahasiswa', 'Ari Widyanto', '361355401082', 'widiantoari@gmail.com', NULL, '$2y$10$lnKB/SWlKHJBQB0o9t5nGOXNRf3gN4TFd47FmZoZbfOk53.079oi6', NULL, NULL, NULL),
(644, 'mahasiswa', 'ASMAUL HUSNAH', '361455401030', 'asmaulhusnah49@yahoo.co.id', NULL, '$2y$10$0Ude9mxvIwftOTadgCfo/u.F267qx925reR16avElq7SX/G8z.XF.', NULL, NULL, NULL),
(645, 'mahasiswa', 'Ayi Yulita Sari', '361355401043', 'yulitasari44@gmail.com', NULL, '$2y$10$uKAax.6dff9qcew0zlLbV.7078XGHc4JMJ4jj6WZs6rDRKyHja7pe', NULL, NULL, NULL),
(646, 'mahasiswa', 'AYU JAMILAH', '9912201014', 'jamilahayu99@gmail.com', NULL, '$2y$10$5Ji.PIjokc8.UYiXLt22ReYjP0I3F0el3KqaF3w8xBU7hUluxM6xG', NULL, NULL, NULL),
(647, 'mahasiswa', 'Desita Ika Susanti', '361355401143', 'ikadesita1143@gmail.com', NULL, '$2y$10$IUpTu3Ubwp3wb/5s/6apxONqqVknhafXGc/Z0mDQ.qkZsRf5Rr6.m', NULL, NULL, NULL),
(648, 'mahasiswa', 'DEWI IRNAWATI', '361455401045', 'dewi2009@gamil.com', NULL, '$2y$10$.9ok8V5tpgWh0Wh01QBjZezwLn68xTGgf/KbsyJIUMOrKhNQXlGfe', NULL, NULL, NULL),
(649, 'mahasiswa', 'DWI INDAH SARTIKA', '361455401048', 'dwiindah_sartika@yahoo.co.id', NULL, '$2y$10$RDz1QwjVFjzXUIFdDsN1m.rbQDvuWKFPqnMzxoBbaRzv2NxH3O6i6', NULL, NULL, NULL),
(650, 'mahasiswa', 'Elmi Dwi Lestari', '361355401151', 'lestarielmi@gmail.com', NULL, '$2y$10$RJebgqM5j9perHUO5ND31.Aa4.3H5WjZ2OBCjyhD2fAz1TrD23JG6', NULL, NULL, NULL),
(661, 'mahasiswa', 'Ardi Ashari', '361321401065', 'ardiashari889@gmail.com', NULL, '$2y$10$Le/YSAbFAC08SSQYJQuMhOcddBJBHrHdDmYTuEBlPDTCsp146Zgli', NULL, NULL, NULL),
(663, 'mahasiswa', 'Adi surya andika', '361421401001', 'adisuryaandika5@gmail.com', NULL, '$2y$10$MdaHA84InIeo5TczLhYE2u136Ghfxa/Qj8H1IC5RZtyrSNlDNAZxC', NULL, NULL, NULL),
(671, 'mahasiswa', 'Emi Asriati Ningsih', '361341311034', 'emi.asriati@gmail.com', NULL, '$2y$10$x2W.MPj9I/3qGg2n5YMC8uAvvbd6L8YT/khq/Y/kQroRPGu8xBCNS', NULL, NULL, NULL),
(674, 'mahasiswa', 'Elsa Nastya Bella Sundawa', '361341311026', 'elsanastya.poliwangi@gmail.com', NULL, '$2y$10$r47l.JQANXtBSqJhTP.U2.a.zAyJSBN5coiQS5eHuijsP9/z995ZG', NULL, NULL, NULL),
(694, 'mahasiswa', 'DANA WIJAYA', '361341311007', 'danawijaya100@gmail.com', NULL, '$2y$10$q4kvInGiOmLi7KepgVnmmeASktCqxTcNeIiVMyLVQCWU06MvnRM1y', NULL, NULL, NULL),
(698, 'mahasiswa', 'eko hadi susanto', '361621401034', 'ekohadisusanto16@gmail.com', NULL, '$2y$10$m4zEfhf6ZNDK6LDuFT8J4eoKtK2prMrbopJcxkiQvFv8wfvgmR7TS', NULL, NULL, NULL),
(708, 'mahasiswa', 'Ali Mustakim', '361621401030', 'alimustakim1737@gmail.com', NULL, '$2y$10$wKn7ArrQUvLN9G7P0xc/5ehKQ6vx941xwraqwGXZ9ew4JEZmBqiu.', NULL, NULL, NULL),
(727, 'mahasiswa', 'Dewi Kurniawati', '361422401005', 'dewikurniewati16@gmail.com', NULL, '$2y$10$Ueea.FrKa5nQoR5i4x/0D.kkBCLS4W8eIBncxaDeV6N7XKjCdmuVW', NULL, NULL, NULL),
(732, 'mahasiswa', 'Dasilfa Resvitasari', '361341311039', 'dasilfa.resvitasari09@gmail.com', NULL, '$2y$10$FfCi1Xwh8/fYCzGHZOzYLuVesbZcqkImPpSa6wep2Swe8Hj90y1D2', NULL, NULL, NULL),
(739, 'mahasiswa', 'Ari darmawan', '361321401026', 'Darmawana713@Gmail.com', NULL, '$2y$10$9G3jciQ5wmkn5XiLYwx0IOvR/7OJHduUAomtHDfAltbfSgmsqaus6', NULL, NULL, NULL),
(740, 'mahasiswa', 'dedi nuri susanto', '361321401004', 'dedinurisu@yahoo.com', NULL, '$2y$10$W83zDWATJabuyAQz4Em5MOncA0UYILkUbX/syNgRjNt47l5jpVmGa', NULL, NULL, NULL),
(741, 'mahasiswa', 'Dino Irawan', '361321401023', 'kkazuto669@gmail.com', NULL, '$2y$10$b.8eMuSOS5EQKh5XlefJIex1kaVDQly18iPz5RjPkDKTzKKwWN68C', NULL, NULL, NULL),
(743, 'mahasiswa', 'Aan Budi Waskito', '361421401039', 'aanbudiwaskito26@gmail.com', NULL, '$2y$10$JL52lS2JYjJSUBXsh4A4tOQZgxIEVyH/ALxMIzY3qGmVFDbSzhKzq', NULL, NULL, NULL),
(751, 'mahasiswa', 'Ella Nuritasari', '361593301133', 'ellanuritasari51@gmail.com', NULL, '$2y$10$/O7pZavXOJ63Ctzq7BCXqugxK65RhaOCy1QljW42z.M.xWFhkjh2u', NULL, NULL, NULL),
(757, 'mahasiswa', 'Ade novan prasetyo', '361593301053', 'adep1062@gmail.com', NULL, '$2y$10$P2UtwGjjKE.KWHyEJeqeTuQI4Lqo4fs0te/Zb7L9N1HRwx2B464a2', NULL, NULL, NULL),
(758, 'mahasiswa', 'Desi Wulandari', '361493301062', 'desimbpb86@gmail.com', NULL, '$2y$10$pHURbvB/u1Si8lYAZ.I4POmAdOBWMYGpZIP2q.b8w2P7fouEzDf.q', NULL, NULL, NULL),
(763, 'mahasiswa', 'Andina Rosita Ika Dewi', '361593301094', 'ikandina21@gmail.com', NULL, '$2y$10$41Z7rHaO2jYXhuQToHd8GOsRMo7mQUZxaLDbLXwSlG2P1Qev6hjVW', NULL, NULL, NULL),
(766, 'mahasiswa', 'Dina sulistyowati', '361493301048', 'dinasulistyowati042@gmail.com', NULL, '$2y$10$jK86zaTkNkP.pb5pTWBCKOLv/XX792cZLYX1PvdPYma9kGH7HJs4y', NULL, NULL, NULL),
(768, 'mahasiswa', 'Ana fitriani', '361593301025', 'anafitriani50@gmail.com', NULL, '$2y$10$d4EYJKXpBCNcL4BZNgUzqe.1KWVMgVUW5gbBt8NWjeGbFcsywyCF.', NULL, NULL, NULL),
(770, 'mahasiswa', 'Abdul Rokip', '361493301050', 'abdulrokip95@gmail.com', NULL, '$2y$10$cp7u0NR.ulPaKjbxE0kDmugEUxvxlFI1.d.HIHix0mfwmnHuP8Ju2', NULL, NULL, NULL),
(779, 'mahasiswa', 'Annisa Bella Oktavia', '361493301055', 'annisabwi777@gmail.com', NULL, '$2y$10$lYmj6kN5WluEVHEOFqZ42uBOniXd1ClneM3XCu5ST8L3fQ7ED72dK', NULL, NULL, NULL),
(780, 'mahasiswa', 'Anggi Berliana Febrianti', '361593301004', 'anggiberliana69@gmail.com', NULL, '$2y$10$NfYawG89TLJRI0sV0g1KaeI5BUrXEdrsrg4pTR0E5Wvhex6n22LuG', NULL, NULL, NULL),
(781, 'mahasiswa', 'Ana Rofiqoh Alfiati', '361493301099', 'anarofiqoha@gmail.com', NULL, '$2y$10$hSVjCs/kY80vRLOUXc.5J.rY3UAamVH7evZgCeKvDvBFaxVpPeK7m', NULL, NULL, NULL),
(787, 'mahasiswa', 'Cahyaningrum', '361493301085', 'cahyaningrum500@gmail.com', NULL, '$2y$10$HmnyYFCgSg8VH.IfE8FpRuNpuEUwQx7J7aKmsZwBhyGBVpYWvkK72', NULL, NULL, NULL),
(788, 'mahasiswa', 'Diana handayani', '361593301058', 'dianahandayani88@gmail.com', NULL, '$2y$10$NiG.st/722joCT3XBSlk.eQbDO5j6dcYwOcME3xQtd4yec90E7GMu', NULL, NULL, NULL),
(792, 'mahasiswa', 'Arsi Fathurrahman', '361621401108', 'arsifathur41251@gmail.com', NULL, '$2y$10$N9W2wxGc0D84DENyk0/VUuy8.0JpXuNa2DYfbmf9qGdLbTXlsmf0K', NULL, NULL, NULL),
(809, 'mahasiswa', 'Arum Yustisia', '361493301075', 'arumyustisia@gmail.com', NULL, '$2y$10$7RDUuYXr./zt44LKq4EA.eLmz13.77r9ZFdBRRGOSdVbrJ.bDp3s.', NULL, NULL, NULL),
(810, 'mahasiswa', 'Barirotul Azizah', '361622401113', 'bariazizah11@gmail.com', NULL, '$2y$10$TW6Mq96mzXsJZeKo6z64K.T0sgCJkey7qUYd7QH9dlOEhpnkKiA8q', NULL, NULL, NULL),
(812, 'mahasiswa', 'Dimas Khifiatul Hikmah', '361521401031', 'dimasronggolawe123@gmail.com', NULL, '$2y$10$6VCusozQysr9GNwAl8NhDOvYaY1jbx7ghGqPSrswQU7V3AbwxGRAe', NULL, NULL, NULL),
(815, 'mahasiswa', 'Devi Wulandari', '361593301061', 'deviw9185@gmail.com', NULL, '$2y$10$isuPPsmarh.GT3krkPSMqeFQZ7dZPGhB46jHgZE.sevchzyZmdDV2', NULL, NULL, NULL),
(822, 'mahasiswa', 'Canggih Alfan Nusantoro', '361622401002', 'alfannusantoro@gmail.com', NULL, '$2y$10$zDTBRqNn93FicUygAvB.5e5l8fBOtPaaYkMaW4iQUIUmfg/kyOoU6', NULL, NULL, NULL),
(826, 'mahasiswa', 'Ahmad Zaini', '361541333021', 'ahmad.zaini.tpht@gmail.com', NULL, '$2y$10$d0mgIfeovTNsa1UgQSTTXucD7BV3IN0RIa5WwJoK8cPfd7nAsZvrC', NULL, NULL, NULL),
(828, 'mahasiswa', 'Aditya Purnama', '361493301010', 'adityapurnama771@gmail.com', NULL, '$2y$10$UZmR5/BCeHob5Lklaya01.Cysu4rMnFBBA0p.u/MIR.gcxG9bPCKu', NULL, NULL, NULL),
(836, 'mahasiswa', 'Desi Lestianingrum', '361493301046', 'desilesti123@gmail.com', NULL, '$2y$10$vE8BPD.gDA5Yibo0KBDDNOIFnTZSM.nnKWulnyQwG9X3xmMFnFqey', NULL, NULL, NULL),
(838, 'mahasiswa', 'Albertus yoga w', '361655401007', 'albertus.yoga.ti9.poliwangi@gmail.com', NULL, '$2y$10$PBz/Y9jq4EsmyLor9bEbd.EjdfG4UrE7fNit3rh0OHdlm/DD8F/Pm', NULL, NULL, NULL),
(841, 'mahasiswa', 'Ananda Almahmu Tri Pratiwi', '361441333023', 'npratiwi471@gmail.com', NULL, '$2y$10$xymPcSciuJHg48kehTEwC.9Bg98cOsLHZfSOv6G9SIqzdTKgksmAS', NULL, NULL, NULL),
(842, 'mahasiswa', 'Awangku Dimas RezaTullah', '361622401168', 'awangkudimas012@gmail.com', NULL, '$2y$10$cDJlCEL/UF/KLVJowLJJd.2sltRXxaR9istvEeIxD8ZskBJmjA4fK', NULL, NULL, NULL),
(844, 'mahasiswa', 'Andi Yuda Pratama', '361441311141', 'andyyuda69@gmail.com', NULL, '$2y$10$7FuYB3H1ud.P0ET057jdTuabYMU2GU7pwpXsljsJLZ05IdJD4YYBG', NULL, NULL, NULL),
(846, 'mahasiswa', 'Dewi Susanti', '361493301018', 'dewisusanti564@gmail.com', NULL, '$2y$10$CxLy9VxO34goolgZ0kHHFOimgPZT1dynQ4GC83wp/Uj/BNE9yS4Xm', NULL, NULL, NULL),
(847, 'mahasiswa', 'Anjana Novianti', '361593301095', 'anjananovianti@gmail.com', NULL, '$2y$10$Z0IEAzRpnp79AZ9Fa5OaIuO2njpOe/Vvb28wWRvDvtFlCKAasiglq', NULL, NULL, NULL),
(855, 'mahasiswa', 'Cikal Ayu Nurul Azzara', '361593301077', 'cikaluyung31@gmail.com', NULL, '$2y$10$JEeVyf.DDuMFoL0txI1Ble6dqPDKDovSC6NsIF2QZq34BW0WQDvGm', NULL, NULL, NULL),
(862, 'mahasiswa', 'Dwi Hendra Saputra', '361521401060', 'hendrasaputradwi97@gmail.com', NULL, '$2y$10$BPjL15qFUGe45A/CvxWBfeyNDDsqJS0X2pjO23HIc7LLtu2TnLXaa', NULL, NULL, NULL),
(871, 'mahasiswa', 'Anif Irawan', '361521401032', 'anipirawan01@gmail.com', NULL, '$2y$10$TEyoGv5nVFlAk9Vd8GIPQuZ.4cks97G4qIJdoX20334hlGMPEtBf2', NULL, NULL, NULL),
(876, 'mahasiswa', 'Devita Silviana', '361493301106', 'Silvianadevita1@gmail.com', NULL, '$2y$10$rJe/WUQXtdpNdrWv9FFqiuyPDH5gK96y9QTiLDw9eVupSZMSVeelm', NULL, NULL, NULL),
(881, 'mahasiswa', 'BAYU SANJAYA', '361521401034', 'Bayusanjaya414@gmail.com', NULL, '$2y$10$r.uXtI1fpZW4TnCcWYjvFuHfJDFUuahVdVwHRmhO1KXGwupCDdJjO', NULL, NULL, NULL),
(882, 'mahasiswa', 'AIRUL ALRIZAL ROFIQI', '361541333030', 'airulalrizalrofiqi@gmail.com', NULL, '$2y$10$onYQHOPRvgEDE.AfN3mCEOYnDE677wNPfvAQAxNwHIWMpCJEMrEnO', NULL, NULL, NULL),
(888, 'mahasiswa', 'Asylla Aqsiari', '361493301047', 'asyllaaqsiari@gmail.com', NULL, '$2y$10$w4zyd3LO8gs7S6O/nfF4helgoFS8ktoHvnjRF4Y1th0ibZVw3u1Ze', NULL, NULL, NULL),
(889, 'mahasiswa', 'Achmad Roghib Mabrur', '361441311089', 'acheromamabrur@gmail.com', NULL, '$2y$10$6iTBq.nHsSQPz5C3lR9c4.rmEAPmiSIfyVEqcrxdt5hBqZQ7crjzu', NULL, NULL, NULL),
(890, 'mahasiswa', 'Awang Wahyu Widodo', '361521401058', 'awangwahyuw@gmail.com', NULL, '$2y$10$HiJtWcC5oYxQeLGwrba0oO7LsV6hOyn0AVGS.thzzyrmJ5HWgGSiS', NULL, NULL, NULL),
(891, 'mahasiswa', 'Anis Fuadi Wahyu', '361593301121', 'anisfuadiwahyu@gmail.com', NULL, '$2y$10$qg4FaZQiSK7ZYkehb.b.ZOQNpQUKoZ2HVlYfC1UWhIy1poV6y0Qf.', NULL, NULL, NULL),
(901, 'mahasiswa', 'Andi Saputra', '361621401095', 'Andi1520@yahoo.co.id', NULL, '$2y$10$mpEquy9dee2bSQY84rNemO3DkTG.3Cwj4Yj89ajSfJ70d83iGFvVW', NULL, NULL, NULL),
(909, 'mahasiswa', 'Eka Nur Annisa\'', '361541311024', 'ekanurannisa8@gmail.com', NULL, '$2y$10$q05XJSsSJURXqKjKqaNMUe4tulmfpze9a6vebPyOQg2t4KEq10x.m', NULL, NULL, NULL),
(911, 'mahasiswa', 'Bambang prambudi', '361441311107', 'bambang.asia19@gmail.com', NULL, '$2y$10$xWqjEHG7AA4I6ZeuGXVuo.CrpIJxDPxu858wCijIYbPADPxGFDYyG', NULL, NULL, NULL),
(920, 'mahasiswa', 'Arif Sugiharto', '361341311013', 'soegiharto.arief@gmail.com', NULL, '$2y$10$kZiR39f3ypC7Z4j5IjfKTudgeAnrl4r2WN4qLBAwMX6vkATyJ3pxG', NULL, NULL, NULL),
(925, 'mahasiswa', 'Dwi pungky', '361541311078', 'dwipungky15@gmail.com', NULL, '$2y$10$mhjRVKxqRK5tAOTsO3Fv8.D6yPvM66k.fQnDjcnKz7kzdLXqeZcwO', NULL, NULL, NULL),
(931, 'mahasiswa', 'Desy Emy Yanti', '361541311083', 'desyemyyanti@gmail.com', NULL, '$2y$10$X1y3G7WjWwhyeBHauT5OHeKxKZvCC1LUfQ3VLMvqIWr1EBmREe/4.', NULL, NULL, NULL),
(936, 'mahasiswa', 'Dimas Aditya', '361541311131', 'dimasadityad4@gmail.com', NULL, '$2y$10$2pwzWK/P8GMrT5ieYbQNS.Idso5jcONAf4vI6x5TI.onqoYIIzTO6', NULL, NULL, NULL),
(944, 'mahasiswa', 'Berlin Johannes Siagian', '361541311018', 'berlinsiagian4@gmail.com', NULL, '$2y$10$lQbs2UlHB6M7urTfMAJyWOc6N0emx1IchFDvtcG5AE70ACcLUCTLy', NULL, NULL, NULL),
(949, 'mahasiswa', 'Ayu Subardini', '361541311102', 'ayusubardini7@gmail.com', NULL, '$2y$10$uOC6b4mR0UMvKVPXAvOKMuryr5fLx/QHwstw4EB/bxFFfJPBTu0nu', NULL, NULL, NULL),
(951, 'mahasiswa', 'Arief Asmo Saputro', '9912203012', 'riefwalker30@gmail.com', NULL, '$2y$10$s5decOn/1XoRVGaEORblGeAB//zjK2FlMdRHyngAczi3esKQQs1Pi', NULL, NULL, NULL),
(952, 'mahasiswa', 'EKA HENDAR RIYANTO', '9912203023', 'robotedu99@gmail.com', NULL, '$2y$10$RdA5imBGPxXpUOdXJ5QtJOLSCVHkGlmY4RYMHadQ9zu2inS2Nu0O.', NULL, NULL, NULL),
(955, 'mahasiswa', 'AHMAD SANTOSO', '361321401016', 'ahmad.santoosoo@gmail.com', NULL, '$2y$10$1fRzw8CSaJdxqjUiQHGQBu7iElq5jID66gf0z3z2rttwPUHWQrwbm', NULL, NULL, NULL),
(961, 'mahasiswa', 'Aditya Bagus Pradana', '361522401008', 'aadiit9@gmail.com', NULL, '$2y$10$W3QW7owUwInmpl9dh8qC7OduqC46nM4.Z7VEey1sR.ldEpTc2pFbW', NULL, NULL, NULL),
(966, 'mahasiswa', 'Abdurrauf Saleh Bazara\'ah', '9911203001', 'abdurrauf_s@yahoo.co.id', NULL, '$2y$10$DTmUSufUH61WFQrtzTLxYe8MsoLoDozv6wWbG80p/NhMP5vy7lyfu', NULL, NULL, NULL),
(967, 'mahasiswa', 'BADRIAWAN DWI MUHAROM', '361421401054', 'wawan_krend@yahoo.co.id', NULL, '$2y$10$kEzvug4UCfHsaFPTcA9uE.FxEu.9AJzjoXEjaIvw/YfjfbEhInH5e', NULL, NULL, NULL),
(976, 'mahasiswa', 'Deqi pajar pratama', '361221401022', 'deqipoliwangi@gmail.com', NULL, '$2y$10$jzrA4JA9SzXivdNtYxCJoeEMondYnvLaw0Vnkrqu0isbJVe21wEAm', NULL, NULL, NULL),
(978, 'mahasiswa', 'Alif Aditya Septiandika', '361622401001', 'alifaditya14@gmail.com', NULL, '$2y$10$dbTysYU.9yQlWxrdmxRY9e3ELppcuTWIarm2WyLhfUnUhEwqqO1yi', NULL, NULL, NULL),
(980, 'mahasiswa', 'Bayu Eko Saputro', '361321401012', 'bayugaming453@gmail.com', NULL, '$2y$10$Om61tyGnJFCSTEhcmiAGsuxgA80hSiEzX7RNbh5cILjg4EKm0PCBq', NULL, NULL, NULL),
(995, 'mahasiswa', 'Dimas Fitroh Ariadi', '361622401140', 'dimasfitrohariadi291298@gmail.com', NULL, '$2y$10$ueHcPJbbXRDMeHnimAMPEONwFHebh9P8sBIcTZSJba0LXH.0AIOr2', NULL, NULL, NULL),
(1005, 'mahasiswa', 'BAGUS RIO ROHMAN', '361321401007', 'b4gusr10@gmail.com', NULL, '$2y$10$D.PnFWl561/bPgclNGrJ3euoI/S0U9QGgkq0K41cwFTIFACP4708O', NULL, NULL, NULL),
(1014, 'mahasiswa', 'Dinda Diah Septalia', '361622401142', 'dindadiahseptalia0997@gmail.con', NULL, '$2y$10$7WGgJDt0hZDhdjIpT4S72e6FEk3Q9Rm1jvHEpILXwevBas.mCH6x2', NULL, NULL, NULL),
(1048, 'mahasiswa', 'Ahmad Wildan Jauhari', '361655401107', 'awildanjauhari@gmail.com', NULL, '$2y$10$Nzu8ThRbbdccsE3LXEOiy.lxZuu0oxmG4ZxR87R/2u/byz7K074DG', NULL, NULL, NULL),
(1054, 'mahasiswa', 'Eka Wahyuni', '361493301023', 'ekaw7233@gmail.com', NULL, '$2y$10$0f4J5L4f333NRBwU/rbXneBTA.DUkgSinKT56OuH0H8iCUdqYFjfi', NULL, NULL, NULL),
(1056, 'mahasiswa', 'Eko Puguh Wahyudi', '9908203005', 'poegoeh68487@gmail.com', NULL, '$2y$10$CHH8z16ze.Ts.rvkkhcfZucgRyOODvDW9xi7.NmiGJ8WPhVbzVfBm', NULL, NULL, NULL),
(1061, 'mahasiswa', 'Ella Rofika', '361593301020', 'ella.rofikapoliwangi@gmail.com', NULL, '$2y$10$O5TkC76xilsa.0wvOellJ.eUl.YeKfH.pMVJwkuh5CKIaK700hj4O', NULL, NULL, NULL),
(1068, 'mahasiswa', 'Elok Saelinda', '361522401072', 'eloksaelinda03@gmail.com', NULL, '$2y$10$2EjEHfFj5.ZdGg2OVqhh7ebVb6fPtMQGklkcewOU3bERRLNGsneI6', NULL, NULL, NULL),
(1079, 'mahasiswa', 'Desi Putri Wulandari', '361493301056', 'eciputri.wulandari@gmail.com', NULL, '$2y$10$lJzCmBkERLvfhZMRISW2w.HgdLohOFB7Cy.GKddJsHppUnbCM8qUy', NULL, NULL, NULL),
(1082, 'mahasiswa', 'Anggi Novita Riskawati', '361493301121', 'angginovita21@gmail.com', NULL, '$2y$10$dFjqlFWdHYFvjoKSi/5R0.Wc80BKWcJ.Xu6HQ5ewEa3a6QdHqBtN6', NULL, NULL, NULL),
(1092, 'mahasiswa', 'An Amta Alam Saputra', '361341311024', 'anamtaalamsaputra@gmail.com', NULL, '$2y$10$ZmmqfL.I1Rh83fXc6JYVs.rjjq/vZUFND0AthTr.BBnVQJ8TUMRMm', NULL, NULL, NULL),
(1095, 'mahasiswa', 'Achmad Oky Efendi', '361655401079', 'achmadokyefendi.ti9.poliwangi@gmail.com', NULL, '$2y$10$MF3xQ8mP2PFxb9g7eHB8leOuwjBOKmNF1qy5velASFQQt.jROXisa', NULL, NULL, NULL),
(1098, 'mahasiswa', 'Budiono', '361541333018', 'budionos.tr.pt@gmail.com', NULL, '$2y$10$/kxgycnUaePPZ22Jf47YEu7A5ea1LafBziLh8esC0erPfbIoXrYSi', NULL, NULL, NULL),
(1105, 'mahasiswa', 'Bachtiar Adam Pahlevi', '361622401019', 'adambachtiar997@gmail.com', NULL, '$2y$10$SaGjLJLLc01RrJEZsgA23u/l8IQMah3UeSpiYcbUBAniU9MncxjVO', NULL, NULL, NULL),
(1107, 'mahasiswa', 'Ali Mujahidin', '361622401114', 'alimujahidin28@gmail.com', NULL, '$2y$10$xaHNp8eIWPcAiEk80pnwRef7vdqxgi1qZ.adjKNPiOguB7VukFob6', NULL, NULL, NULL),
(1109, 'mahasiswa', 'DENI DWI SAPUTRA', '361622401049', 'denidwis18@gmail.com', NULL, '$2y$10$FJeW0yCepmFmv1IjYgruBeGS4HHn/uecwiYJbJj7kyl97LJVMywIi', NULL, NULL, NULL),
(1122, 'mahasiswa', 'Devi Ariya Sinta', '361593301037', 'sintaariya1228@gmail.com', NULL, '$2y$10$hrKOby9wDgw3jvNzbIdVH.AXz.IO2L/4EhhcJ5CDzyh9Bt07LTwoG', NULL, NULL, NULL),
(1125, 'mahasiswa', 'Agus Budi Purwanto', '361522401088', 'nasigorengenak2019@gmail.com', NULL, '$2y$10$SINMiL.xRiQ9WFE.wmXlEe9k8AvQ4SkJHHsstA.ASRy2IW4YJwwmW', NULL, NULL, NULL),
(1129, 'mahasiswa', 'DYAH USWATUN HASANAH', '361541311052', 'uswatundyah@gmail.com', NULL, '$2y$10$q7Mf1B5rRX/zfyAsleFn9O8gnKb6rjUIEgg05yOlHWjbgKOFFY1.G', NULL, NULL, NULL),
(1136, 'mahasiswa', 'Ari Dermawan', '361655401165', 'aridermawan98@gmail.com', NULL, '$2y$10$mVEOiNYem7trJCVsk9wvJeOgapHRiWhHwZbIQV2SUm4LQ7U08mCNC', NULL, NULL, NULL),
(1148, 'mahasiswa', 'Deni Setiawan Putra', '9910201023', 'denisetiawanputra@gmail.com', NULL, '$2y$10$zwYvGn0YUzCnXE7.vQGJMeuDyVKGB7FxLyFU19MVqMRYtaTVv1wfu', NULL, NULL, NULL),
(1153, 'mahasiswa', 'Eka Ayu Herining Tyas', '361655401130', 'ekaayu0511@gmail.com', NULL, '$2y$10$5N6eod1W3DK4Y.SVbocUt.o0sSWOZz4o5uG7/hcfUj4WsEBouJaGW', NULL, NULL, NULL),
(1186, 'mahasiswa', 'Emy wulandari', '361622401016', 'wulanemy1998@gmail.com', NULL, '$2y$10$fdaEjOSbs125pBo94CXgL.twatRlX18y6hQvBvRLvydnOE9BSmkqC', NULL, NULL, NULL),
(1190, 'mahasiswa', 'ARUM MANGGAR SARI', '361622401054', 'arummanggar0@gmail.com', NULL, '$2y$10$NlnMyXaREiP6LWTXaiaZnuj.aBpwLJbU7DQaSkgAUNrKRspItVvCu', NULL, NULL, NULL),
(1192, 'mahasiswa', 'Abu Bakar Hadi Perwira', '361622401005', 'hadi.perwira117@gmail.com', NULL, '$2y$10$cDRL5TzhyYIoiH93O2qAH.VCQgcK1CkHMcBxfUmzt97IQxu9AjA8C', NULL, NULL, NULL),
(1198, 'mahasiswa', 'Astuti', '361622401060', 'astutirahman586@gmail.com', NULL, '$2y$10$9l31fLy9/SvAb4B9h3yQX.e6IEk8Hb6oNTdDiIt.2PO21HjVH6dTK', NULL, NULL, NULL),
(1217, 'mahasiswa', 'DEKO ING DENADA PUTERI YANUANINDA', '361441333012', 'dekoputeri@gmail.com', NULL, '$2y$10$7W3cjFkH.FCGDxzlFg8y4e6u3BD.P02cbwrQdvU97RKyPU9GCn38O', NULL, NULL, NULL),
(1220, 'mahasiswa', 'Budiono', '361541333018', 'bono4462@gmail.com', NULL, '$2y$10$0zU1JO9qGPyNZ5pYcw.Bau4L7ZH19tiqZKK.fw4bsx2tcimruDw8e', NULL, NULL, NULL),
(1222, 'mahasiswa', 'Ahmad faradito syaiful ali', '361441333007', 'faraditosa@gmail.com', NULL, '$2y$10$C.mzu9L8I3NNqUqJx7/TBem2D90PfiiVRFvzXexh8NjzXM/7VeSma', NULL, NULL, NULL),
(1232, 'mahasiswa', 'Achmad Rosidi', '361541333043', 'rosidi011096@gmail.com', NULL, '$2y$10$GmMPH5ppNhVMJ3AReRBvj.fPEZ.ND9aUSW7JJ4ka7dJO9RATKiSGO', NULL, NULL, NULL),
(1235, 'mahasiswa', 'Andi wahyu sanjaya', '361622401067', 'andiwahyusanjaya@gmail.com', NULL, '$2y$10$8m50591iEJ1uWadkx66QeONjgoWXUGcJglOt7spZVaMun2hAaDyKy', NULL, NULL, NULL),
(1245, 'mahasiswa', 'ATAKA AWWALUL RISQI', '361441333025', 'atakarisqi@gmail.com', NULL, '$2y$10$s1iBua/GhshpBnVpfdglsOGNOVh4b1j8uOKvBdO5IH3cwMbwOi7O.', NULL, NULL, NULL),
(1253, 'mahasiswa', 'Dini Nafisatul Mutmainah', '361441311032', 'dini.nafisatul96@gmail.com', NULL, '$2y$10$KcupiuUNvu4czjrYc1LT5.ZtKPAOb2o/4gERjgQdTr1COBWIZdqgO', NULL, NULL, NULL),
(1257, 'mahasiswa', 'Dyan Fitri Febryani', '361493301063', 'dyanfebryani1@gmail.com', NULL, '$2y$10$Axjs6qQRAUXc0N3J4n3fned2V9Lp6j8EmNtcpb54o.6ZfWbGfxgK2', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `role`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1258, 'mahasiswa', 'Andreas Cahyo Purnomo', '361493301061', 'andreascahyo2@gmail.com', NULL, '$2y$10$0DYB/sRnwhRZ/MuCD.0bDu89yWoKW5.MX/iUZuW2YBOZK0ldVxSS.', NULL, NULL, NULL),
(1261, 'mahasiswa', 'Endang miftakhul janah', '361493301037', 'endangmbpa@gmail.com', NULL, '$2y$10$f/zSe7pW9V4468Y.tvL.MeiGs4KnnaPbRgriiLW5hzQADEI1rQ2fe', NULL, NULL, NULL),
(1270, 'mahasiswa', 'Ega Fresita', '361493301035', 'egaarisaputra25@gmail.com', NULL, '$2y$10$7RE3BHBeCJu4OPmFjc2jaO20Ps1IVDqSP.IUkwTEjcblXV3ypV22O', NULL, NULL, NULL),
(1271, 'mahasiswa', 'Arina Rosalina', '361493301077', 'arinarosalina99@gmail.com', NULL, '$2y$10$rQZ4OjkjBeTZkA3CROQDbOxxrCnrRnhb0qi54z67cjs8lbwTqI1n6', NULL, NULL, NULL),
(1273, 'mahasiswa', 'Dimas Aji Ramadhani', '361493301042', 'dimasajiramadhani00@gmail.com', NULL, '$2y$10$4mzBKZSCyT6QlFM3QEooBO1CsrYbNWyhK84lDx0HlOWDrD8oCIBxW', NULL, NULL, NULL),
(1277, 'mahasiswa', 'Abdul Azis', '361493301064', 'cakkojes2@gmail.com', NULL, '$2y$10$aIHTiOexbAvtJRKC7uJEiO0PJlXF7IdbCyYZVuiLAfVtci45.87ea', NULL, NULL, NULL),
(1284, 'mahasiswa', 'Annisa Eka Apriliany', '361593301091', 'anisaekaapriliany@gmail.com', NULL, '$2y$10$73sRT6pMw7sptGGB9149deBTj9rdB7rZfg1Vtjvc3/2vEEsi7uiEO', NULL, NULL, NULL),
(1286, 'mahasiswa', 'Diah nitami', '361593301079', 'diah.nitami@gmail.com', NULL, '$2y$10$LinEn2lVvZo6uFu87pUqa.JVLGCrv7jnE5gHoA.67nlKcUNiI6TqO', NULL, NULL, NULL),
(1293, 'mahasiswa', 'Eka septi gohmalindo putri', '361593301048', 'putrigoh@gmail.com', NULL, '$2y$10$7eGXvAN2hhYUC79St4W6LevGIsh07cssdc2fpqodkCMs0u43d0ZKq', NULL, NULL, NULL),
(1296, 'mahasiswa', 'BAGAS ANDRY ANDIKA', '361593301073', 'bagasandry23@gmail.com', NULL, '$2y$10$46K143Ks./mcxFH2evxjUe4wICtobF/sPRhsriJLgJ2uLWW0CN.wK', NULL, NULL, NULL),
(1298, 'mahasiswa', 'DEFITHA CANDRA ARE EVERELIA GAMA', '361593301010', 'defithacandra09@gmail.com', NULL, '$2y$10$RD9nuzoBFQu4721wZL0vHun4Vgbda/FoYxEbIiCMe8N23Z7xasfqy', NULL, NULL, NULL),
(1304, 'mahasiswa', 'Adityawan Pratama', '361541333002', 'adityawanpra@gmail.com', NULL, '$2y$10$.KvmS0QFMnfr/HSma2aEPu64dkXLpSEFkPRte8ykaSGKQ0JKrigE.', NULL, NULL, NULL),
(1305, 'mahasiswa', 'Ahmad harisna faisal munif', '361441333005', 'ahmadharisnafaisal@gmail.com', NULL, '$2y$10$mgWMZe/nZPfs.EYfs1Tix.z8PW3SJsI/gA/jLs5wz4vEGedJhUhgy', NULL, NULL, NULL),
(1307, 'mahasiswa', 'Dita Nur Insani', '361493301019', 'ditanurinsani77@gmail.com', NULL, '$2y$10$qhXhVREhvtq346HpKjytiuPdAWKniQJPOopBh7CPT6EuWx5Sf6kGC', NULL, NULL, NULL),
(1308, 'mahasiswa', 'Dwi Kuscahyanti', '361622401037', 'dkuscahyanti@gmail.com', NULL, '$2y$10$GV1FttGaXkHZh0HQdthwMOnMoLjab0glw73xntGzA65GQ4NkuQNNS', NULL, NULL, NULL),
(1310, 'mahasiswa', 'Abdul Ghofur', '361341333029', 'akughofurr@gmail.com', NULL, '$2y$10$zwi/WnWxj2yKIJ6l6pFIu.GdRq8eMLq7PVuvOcXQ2xYVU1tSL9Qm2', NULL, NULL, NULL),
(1318, 'mahasiswa', 'Desi eka safitri', '361493301025', 'desieka51@gmail.com', NULL, '$2y$10$YS1AZyPbpGnE9BNxyfSipuKgQ.FBKNwpCvp7kmjtaJCgbCkpQkKZu', NULL, NULL, NULL),
(1319, 'mahasiswa', 'Andika Ahmad Nursamsu', '361593301076', 'andikanursams@gmail.com', NULL, '$2y$10$dUKNScVos0dXNiz3hDWEpuAKVlSOWxhFt/.J.aU4xnRJM/BQSAJ0C', NULL, NULL, NULL),
(1322, 'mahasiswa', 'Diana Lopita Lestari', '361493301069', 'diana.lopita96@gmail.com', NULL, '$2y$10$CxgTHvKL.4yAWaiO3uXXzunNHcSzx2yGVN9MCrTD8SqCCrM/iwUeO', NULL, NULL, NULL),
(1324, 'mahasiswa', 'Ardhika Kholid Wiguna', '361593301056', 'ardhikakw1996@gmail.com', NULL, '$2y$10$3PaZ0fE7qeMQElgITebh9uV5h25JvUUn090lMyV5YPl/w/LrTA1rC', NULL, NULL, NULL),
(1333, 'mahasiswa', 'Aida Nur Anggraini', '361493301017', 'aidanuranggraini7@gmail.com', NULL, '$2y$10$l8vcsdWgWtMpBkyj8XFzg.7UD1A1H7s3KRVb21uJ5xO.M0i8t/6Gq', NULL, NULL, NULL),
(1334, 'mahasiswa', 'Anggi Syahrul romadi', '361622401129', 'anggisyahrul84@gmail.com', NULL, '$2y$10$vv51nrRZVktGMYgGWiuDD.Aexajvc4eG9TrS0JpYkD3EfGSkUaB0O', NULL, NULL, NULL),
(1340, 'mahasiswa', 'Alvian Iqbal', '361655401101', 'iqballecip@gmail.com', NULL, '$2y$10$M/dBa7z1L9nZSgcHiD0IxOzlf.eN.DPgTvWPkPngs8i47604A0SyC', NULL, NULL, NULL),
(1341, 'mahasiswa', 'Desi Sandita', '361422401037', 'desisandita0@gmail.com', NULL, '$2y$10$k.kgzkmK88XWVuRiNpV6xOphjpRitVc8p6HOZtrqzbfNvG5DigrmW', NULL, NULL, NULL),
(1351, 'mahasiswa', 'Abdi Hartanto', '361621401039', 'abdihartanto2@gmail.com', NULL, '$2y$10$gElZqhK1zgAPerYGVw0t/ekg9BS9VGhOuR.hRvTbBtxr3Kl416w1e', NULL, NULL, NULL),
(1352, 'mahasiswa', 'Ahmad Basofi', '361621401058', 'fifabasofie@gmail.com', NULL, '$2y$10$JNKBm4Wb64afBNZ1hmVZ/.aEayCzFhZlY1gpfSt5u0oZz8UCDBUSW', NULL, NULL, NULL),
(1354, 'mahasiswa', 'Danang putra diansah', '361621401038', 'danangputra757@gmail.com', NULL, '$2y$10$kdNcfL9OL9zMoScS2T0UPO8GqB5hI9YQyOJCHOvYfVyrnquC5Hv86', NULL, NULL, NULL),
(1358, 'mahasiswa', 'Annisa Rachma Sari Dewi', '361655401044', 'annisarsd1907@gmail.com', NULL, '$2y$10$Fz/5DkrGlg7xAXUajfeO4.v/zpucqaQ0E0m7Xm1wJNlESnVLfpjN2', NULL, NULL, NULL),
(1359, 'mahasiswa', 'Avinda Anjarwati', '361655401152', 'avinda.anjarwatii@gmail.com', NULL, '$2y$10$P1Hp382rqrNDWhVK20cuv.eupXYJNH6.vxDO5IjX6De47.0Ehieb.', NULL, NULL, NULL),
(1363, 'mahasiswa', 'Agung Prayogi', '361655401135', 'agungprayogi749@gmail.com', NULL, '$2y$10$9NHcjv3j3Nz3RPh11EPV/.IsMCD29LrSPEAXphtl96df3xqVwisuy', NULL, NULL, NULL),
(1367, 'mahasiswa', 'BAGUS PRATAMA', '361555401016', 'baguspratama.ti.poliwangi@gmail.com', NULL, '$2y$10$U0e1N6/z9p3lZBAslA3uC.gXM/QoojkKojnoqOIn7zlCma6.Mc/GC', NULL, NULL, NULL),
(1370, 'mahasiswa', 'Aan prasojo', '361621401136', 'aanprasojo02@gmail.com', NULL, '$2y$10$Dlo0/UuHRvvI1FxXsExelOgGmKWgmpTtX3WSDI/hLH1zx4s8hHj1q', NULL, NULL, NULL),
(1371, 'mahasiswa', 'DANU ARYA UMAM', '361421401081', 'danuaryaumam@gmail.com', NULL, '$2y$10$xAFknihmna2xmIAMc93QZuVzMGcm3e7D6HepL6xArhqBXE9mM1P8u', NULL, NULL, NULL),
(1381, 'mahasiswa', 'Ardi Tiya Kurniawan', '361655401051', 'adit08051997@gmail.com', NULL, '$2y$10$2ckwd9RpR2w7yx386wsvPe4g8bx.ci36UraNV0FqfGNSe9BaouTF6', NULL, NULL, NULL),
(1382, 'mahasiswa', 'Aris Susanto', '361555401118', 'arissusanto.ti8.poliwangi@gmail.com', NULL, '$2y$10$R.d2Z92ayw8iJjYTETK/pu6SV68OwYp/DxF23QAhVyBHX6MR/hfQi', NULL, NULL, NULL),
(1387, 'mahasiswa', 'Aljihan Maysenda', '361555401030', 'aljihanmaysenda.ti.poliwangi@gmail.com', NULL, '$2y$10$BTftfVZ8KqtLkWP31ajDjOgUdj7LO4dRWZQMUMQIs.2CVhGWHXNci', NULL, NULL, NULL),
(1390, 'mahasiswa', 'Dila Risma', '361555401039', 'Dilarisma21@gmail.com', NULL, '$2y$10$oIzHjzFwAMqwYI0o909Oo.56uFNgy.FB31C5VWrk2PMY7hTy2cpFq', NULL, NULL, NULL),
(1394, 'mahasiswa', 'Alghoiby Mohammad Khautsar', '361655401009', 'alghoiby.m.k.ti9.poliwangi@gmail.com', NULL, '$2y$10$yhevBRpJ0k.Av0AQ1RM9SO270hsTFaMsO5wT67bC9EMahmMtmfsDe', NULL, NULL, NULL),
(1396, 'mahasiswa', 'Ana Nurul Inayah', '361655401127', 'anna.inayah77@gmail.com', NULL, '$2y$10$il90AKbDcy7m9lVPEG3pEORJTW25BOCf7HVT6e7KPIOxCD0n1ruN6', NULL, NULL, NULL),
(1411, 'mahasiswa', 'Desy Masruha', '361555401025', 'desymasruha.ti.poliwangi@gmail.com', NULL, '$2y$10$J4e0apXK6jMLhCYiGhCiwus8ogfhG0YsvmUOkAPSZg8mbcOABvK42', NULL, NULL, NULL),
(1412, 'mahasiswa', 'Ahmad Faqih Ardinata', '361655401078', 'faqiha743@gmail.com', NULL, '$2y$10$UiXhdXr4XR5J9b1pWbT0DeODigyNGh10abC5r33lUgqMD48LT70vK', NULL, NULL, NULL),
(1413, 'mahasiswa', 'Egar Pratama', '361655401121', 'egarpratama99@gmail.com', NULL, '$2y$10$4q6CSLSifPZSzvl8FOYlPeMyYnuzasQnBrcueyE5w/cxEMsf84L7i', NULL, NULL, NULL),
(1417, 'mahasiswa', 'Ariwiana Apria Resti', '361655401016', 'apriaariwiana05@gmail.com', NULL, '$2y$10$NXRXeLPTOQN44UIhU8KovumPTax5dh9wDdtN4crCQfr7DZziPM6Du', NULL, NULL, NULL),
(1418, 'mahasiswa', 'Achmad Vishal Assiddiqi', '361655401088', 'achmadvizhal@gmail.com', NULL, '$2y$10$SBBs61YahAb8sfh.UWTRIOI4.7bwId5tWu62H8Y/A5r3euCQu3rPe', NULL, NULL, NULL),
(1419, 'mahasiswa', 'Anatyas syafarah putri', '361655401123', 'anatyassyafarahp.ti9.poliwangi@yahoo.com', NULL, '$2y$10$yIYl2gJ6OAmAsfiPv4Kt1OKkZXkl1v1CQV3Ei8ukpT/dDxbgZ78Oq', NULL, NULL, NULL),
(1422, 'mahasiswa', 'ENDAH KHOLIFATUS SHOLIHAH', '361555401053', 'endahkholifatus.ti.poliwangi@gmail.com', NULL, '$2y$10$nhtft8ZHLsMXy1USehTtMeYBujq9t5GxRjcxb.fSToiyyx5zjHdC.', NULL, NULL, NULL),
(1428, 'mahasiswa', 'Agis Akmalul Anam', '361655401096', 'agisakmal@gmail.com', NULL, '$2y$10$NEzCjFClEX/MEIHWdv3A8.7Tl3YyEKX/hiBkcgHag0ISS2auEl3sa', NULL, NULL, NULL),
(1432, 'mahasiswa', 'Annisa Arista Bella', '361493301086', 'bellabello@gmail.com', NULL, '$2y$10$1YvenXSoVRYpqgQEkXrUMudDgcZXsWuqkCCc4QDMj9cVJs1rw8I3y', NULL, NULL, NULL),
(1434, 'mahasiswa', 'Dewi Fatmawati', '361593301006', 'fatmawatidewi533@gmail.com', NULL, '$2y$10$KmNiHBBDP6pPCMKhOpJqEO5ZGa6eaKS0Fn0F7OorRTVSPDNf/KRjW', NULL, NULL, NULL),
(1436, 'mahasiswa', 'Desyana Ayu Lestari', '361655401046', 'desyanaayuu@gmail.com', NULL, '$2y$10$zyDRp6.gVwMOwCW8pqpfhukvUOM8T8jJHnaJMo6RIrbRfRMGQY9Pu', NULL, NULL, NULL),
(1437, 'mahasiswa', 'Devi Rahayu', '361655401043', 'devirahayu777@gmail.com', NULL, '$2y$10$4/ZAyDE6qsI0v0KtL/3ttuRRteIX7uc.wfPZmeOkU4xMiLKC4rqNy', NULL, NULL, NULL),
(1446, 'mahasiswa', 'Bonggo suseno', '361593301019', '19bngg@gmail.com', NULL, '$2y$10$U1MJXjFH3ujFde0dGMg1f.F2vrvCzHwwl5bmVlOAHI2PhWKf3ewuG', NULL, NULL, NULL),
(1450, 'mahasiswa', 'Bonggo suseno', '361593301019', '09bngg@gmail.com', NULL, '$2y$10$psUjzzFgbIgn94wDoklIVevsjzaJjvxbsmOv6PQPcK51jFmXnL3kK', NULL, NULL, NULL),
(1451, 'mahasiswa', 'AHMAD DAVID NUR ROHMAN', '361593301115', 'adnr13031997@gmail.com', NULL, '$2y$10$N22IR7TSkVzb5JVxYj5mL.zd0UCfN.mnC7Kisv/TsOXqFuEdUrEBO', NULL, NULL, NULL),
(1457, 'mahasiswa', 'Ditera Angelica Vitaloka', '361593301105', 'Ditera.poliwangi@gmail.com', NULL, '$2y$10$YvfaWApfSKU9T9z7LUcLbOgmhfTfBYvxULPlkQNi0vyCWLks1V4TW', NULL, NULL, NULL),
(1460, 'mahasiswa', 'Bangkit sanjaya', '361493301122', 'bangkitsanjayaa24@gmail.com', NULL, '$2y$10$hvIqxC7lmZp9hPeqcMQy8.TofltxoCCD25/dFna1SR5Sqp8AODgKq', NULL, NULL, NULL),
(1461, 'mahasiswa', 'Emilia zulva', '361393301016', 'emiliazulva.pariwisata@gmail.com', NULL, '$2y$10$xJweQfA58FXuApEqopjqDOSbaixekhjU3JVGIv.tyOUb.Yqthypka', NULL, NULL, NULL),
(1462, 'mahasiswa', 'Dita tri wahyuni', '361593301143', 'ditatriwahyuni@gmail.com', NULL, '$2y$10$xbDv1Gsa89lUZ.RQFEIQ1urhObz0gaUI.BeqCjOmDy/fblMUhavgu', NULL, NULL, NULL),
(1476, 'mahasiswa', 'Awaludin Baharsyah', '361655401018', 'awaludinjakik@gmail.com', NULL, '$2y$10$FV.SLnH0gET3s9ZdKFKKseoTAe5E/saxwv26RYlyMiQ7xicHrY5ye', NULL, NULL, NULL),
(1477, 'mahasiswa', 'Achmad Nasikhin', '361555401060', 'achmadnasikhin96@gmail.com', NULL, '$2y$10$DQSdF7xzG.8RfWyTwErDGOJTgwuX7tlszaosCkJpqZdhsKVI1Lv8.', NULL, NULL, NULL),
(1479, 'mahasiswa', 'Andri Mi\'qyal Faqih', '361521401044', 'icalotong1010@gmail.com', NULL, '$2y$10$cVCxsDATUWGCkKG7yTcStedlUwie0if88TBeKyfEa7K/k5MmZGhOa', NULL, NULL, NULL),
(1483, 'mahasiswa', 'DWI ADI SAPUTRO', '361593301054', 'dwiadisaputro95@gmail.com', NULL, '$2y$10$LqKdb3sqO4Ud1amQKY/3A./5q265WOMWxNGQMM/txq8AuybBloueS', NULL, NULL, NULL),
(1484, 'mahasiswa', 'Citra Aprilia Andela Fransiska', '361541311073', 'citraimanez@gmail.com', NULL, '$2y$10$LB4ekxTag3VzsYS7O.BmyutUan/Pv/HnWRAGIrpCKzt28hxG7ZAOm', NULL, NULL, NULL),
(1486, 'mahasiswa', 'Bagus draja gumelar', '361393301013', 'bagusdrajat805@gmail.com', NULL, '$2y$10$eByi4CFj8fAQx2TF5SjLy.NnT83.y7RWzkWEZoG..jw54aWrIOcuu', NULL, NULL, NULL),
(1494, 'mahasiswa', 'Andhita Eka Sulistyowati', '361593301129', 'andieka48@gmail.com', NULL, '$2y$10$Pp.1i6fG3b7hAyWFN1fLW.JZBOWVzgX6O4fP0KShTsCXEAYvLsDv6', NULL, NULL, NULL),
(1496, 'mahasiswa', 'Dwi candra kusuma', '361493301074', 'dwicandrakusuma@gmail.com', NULL, '$2y$10$smKgURvpVSS.Sahav1Kvfeg2kNZa0/Rh6ABJ9ooaMQYeDHCbMCA6G', NULL, NULL, NULL),
(1499, 'mahasiswa', 'Ahmad ihsan hamdi', '361521401041', 'ihsanhamdi33@gmail.com', NULL, '$2y$10$mpu1pi.cZfAtZXXAoPDefepQAg5Q/qi3Pqaq4gSANRkoK.D3AqALm', NULL, NULL, NULL),
(1500, 'mahasiswa', 'Danang Kurniawan', '361541311065', 'kurniawand720@gmail.com', NULL, '$2y$10$r6.nC89gI0Pb2xzN8uVf7eCjs9sdDeMp3NAurnru1L3Z9wxA00/QS', NULL, NULL, NULL),
(1512, 'mahasiswa', 'Acusta Febryanto', '361622401112', 'acustafebryanto12@gmail.com', NULL, '$2y$10$6yQyASOjwKWSWLEpuvHX2e/rRC/0O3TeyfE1oN3cHgUx6RaPCHZuG', NULL, NULL, NULL),
(1515, 'mahasiswa', 'A. Malik Fajar', '361522401080', 'amalikfajar11@gmail.com', NULL, '$2y$10$ziTlOb.6FptDJoxGWmYn6eU720s4lYI/mPHxsyKQiEo4.S0RRY39G', NULL, NULL, NULL),
(1518, 'mahasiswa', 'DINAR ANGGRI VIANI', '361622401029', 'dinaranggriv22@gmail.com', NULL, '$2y$10$qN5QOXINEzsqxu9NBjtKvuVwZ.qeOvqDyjRFGP4GK/ndiGvEPKyPm', NULL, NULL, NULL),
(1519, 'mahasiswa', 'Dewi Lusiana', '361541333048', 'dewi.lusiana.dl20@gmail.com', NULL, '$2y$10$4/DxwqhnTzWpPnClm8B/uOCp5S7wJ486Z4RSX6Q4i8kvBZRvbtiw.', NULL, NULL, NULL),
(1521, 'mahasiswa', 'DEKA LARASATI', '361622401007', 'dekalarasati9@gmail.com', NULL, '$2y$10$UAM966ucslmCv3m/.wA1tOUxjeqndFXG4sh12yHt327cmMiRm2N/.', NULL, NULL, NULL),
(1527, 'mahasiswa', 'ALFIANTO', '361621401026', 'alfiantofcb1998@gmail.com', NULL, '$2y$10$/gpWjo3ld8uB4h7Cn/eHeeoLHpX.kNPnS.vpsaurb9qSSUpiehVjW', NULL, NULL, NULL),
(1532, 'mahasiswa', 'Andi cahyo utomo', '361621401111', 'andycahyo14.ac@gmail.com', NULL, '$2y$10$TrkTlQIVBDGATRaK/arg7eE5dxWdPltX9v3H11wVrDKVAieuSnV7i', NULL, NULL, NULL),
(1535, 'mahasiswa', 'Alfian Tri Laksana', '361521401024', 'alfiantri541@gmail.com', NULL, '$2y$10$/UQIeyeq6BzWjgx.MMMeiO9bOtN3WIEQCMZyC/qI6sKndFhqaQH5e', NULL, NULL, NULL),
(1538, 'mahasiswa', 'Buing qomarullah', '361522401064', 'buingcivil@gmail.com', NULL, '$2y$10$/I1DrPQVNvDv5b5Axke4PepDWPRlgcUmWe2gta7puJY5tgxmSDBJi', NULL, NULL, NULL),
(1546, 'mahasiswa', 'Eka Fitriyani', '361522401041', 'ekafitriyani777@gmail.com', NULL, '$2y$10$USASZNQ8fdIe5Jnf1VdPle9qdtjFQwgaq1vaMI3fkIvEbySFCA7fG', NULL, NULL, NULL),
(1550, 'mahasiswa', 'Danny Gustyantoro', '361821401066', 'wongsocumplung1@gmail.com', NULL, '$2y$10$qYaU/OeIKRa6b/lGjkFX4O.Sx.tiQY9JWtDlT0X15p.rVDVMn.X2i', NULL, NULL, NULL),
(1606, 'mahasiswa', 'awdawd', '1234234234', 'dawd@mail.com', NULL, '$2y$10$M6JJTF8mPyLaPIJsY88RYOveurdtp3LhzNjqJYPjcmzwn6jLC2VXq', NULL, NULL, NULL),
(1617, 'mahasiswa', 'Adam ferdinan nahdi', '361721401041', 'adamferdinan01@gmail.com', NULL, '$2y$10$j90WlLOSBhWRYwKvOwPfXukM0jTmyWv6VJqCr.p5ArKZQifKCCzVG', NULL, NULL, NULL),
(1623, 'mahasiswa', 'Bagus Ramadhan', '361641333028', 'bagoesr14@gmail.com', NULL, '$2y$10$Idro2H6qJnJiOp.WKcsM3.x5e3KhVcLRVfPoiAdvhE11QN4bDMMkC', NULL, NULL, NULL),
(1624, 'mahasiswa', 'AFIDAH KHOIRU UMMAH', '361641333105', 'ummahfidah@gmail.com', NULL, '$2y$10$P9EaJ9bcqg.ZTfY8PEKAZOdSjRlu/UwEGOjA.f1JebcKv26yoTnNa', NULL, NULL, NULL),
(1630, 'mahasiswa', 'BIMA HERRYDITO AZA', '361622401032', 'azadito81@gmail.com', NULL, '$2y$10$8QUP9ptZQJgvr2R1ZKlqwOpQoCE/zubS4oWmdwQlSshbTlzvDzMXe', NULL, NULL, NULL),
(1638, 'mahasiswa', 'DANICA DONNA NOVITASARI', '361693301060', 'danicadonna09@gmail.com', NULL, '$2y$10$UbAshscgjj3kq.V.HURwYeFbjseeBcW/.F/KIXhS5MMNlOHrUSr9K', NULL, NULL, NULL),
(1642, 'mahasiswa', 'Ani Rahayu Ningtiyas', '361693301054', 'anirahayu296@gmail.com', NULL, '$2y$10$ylvXp1b0E/Ye2mxswG2rW.1f5EXvKzxhUdzFsW9pvy7ZTpFE2dklu', NULL, NULL, NULL),
(1645, 'mahasiswa', 'Diah ayu retno palupi', '361693301037', 'diahayuretnopalupi@gmail.com', NULL, '$2y$10$oc3LnQful9XUsOcifKoyHO2fED/9HQsB5UQc5XMYuO8g72uFgrUKO', NULL, NULL, NULL),
(1646, 'mahasiswa', 'Abdulloh Yakin', '361693301040', 'abdullohyakin@gmail.com', NULL, '$2y$10$3JrzLEmySWhwGtL0bT.iwOAvshc9hvoIILQfHecBkipByrbbdP0Qe', NULL, NULL, NULL),
(1650, 'mahasiswa', 'ALEN PRIMA AULYA', '361693301024', 'alenprimaa@gmail.com', NULL, '$2y$10$xaBvHlpgTLMk0P11mJ0eJOTfOiY7Yez0GtD02.o76Q6NRtcsoAtGa', NULL, NULL, NULL),
(1653, 'mahasiswa', 'Bella Suci Fitri', '361693301130', 'bellasufi13@gmail.com', NULL, '$2y$10$kjOtyzJSPlvjYoJMQkGvNejbtoirhIinPUOFkAdfGZnntnr//RKIS', NULL, NULL, NULL),
(1659, 'mahasiswa', 'Bella Sri Wahyuni', '361693301005', 'bellawahyunu98@gmail.com', NULL, '$2y$10$0yu9bBVgC2YICUjg25PjsOTFe9/JCOgc3Is5Xe1sv1BUxtSltQYKy', NULL, NULL, NULL),
(1667, 'mahasiswa', 'Bimantara Subekti', '361693301104', 'bimantarasubekti63@gmail.com', NULL, '$2y$10$XjPDc6Ev7VP75mWwtpfD2uuEZpqJFnpl1KZkiK3NoQcSSCR0AeEN.', NULL, NULL, NULL),
(1681, 'mahasiswa', 'Davri Indra Dinata', '361622401087', 'maindavri@gmail.con', NULL, '$2y$10$vpUibeIFZnhKFuPsMb7q9eZDaIqaFcfDbeER7XqJHjHVrQQTepcWu', NULL, NULL, NULL),
(1684, 'mahasiswa', 'Aulia Indriyani', '361722401085', 'auliaindriyani514@gmail.com', NULL, '$2y$10$/V.JafLQKoNPeSOMjjGsfOs4ea6Uz5fTrCBS6IVw7esx3E.GMHESG', NULL, NULL, NULL),
(1688, 'mahasiswa', 'Ahmad wira handoko', '361693301081', 'ahmadwira432@gamil.com', NULL, '$2y$10$klIWWr4G9CKM0Plcyqus/.K.hp/4bebsxLd9SIPSUEx9l.cpRnLpa', NULL, NULL, NULL),
(1690, 'mahasiswa', 'Dedik', '361693301071', 'dedi.s.tr.par@gmail.com', NULL, '$2y$10$WprWUHE.lyY5.misb7YnauL8BCzRfKoEy0ld35z5YZhiXubHEn0ii', NULL, NULL, NULL),
(1692, 'mahasiswa', 'Elok Nurfaiz Vauqoh', '361593301103', 'eloknurfaizvauqoh@gmail.com', NULL, '$2y$10$iNUSBwSMdErhgsQAf3VjR.HfTMgXIXJN/kwkU35tfuMY2k1o0ZfBC', NULL, NULL, NULL),
(1695, 'mahasiswa', 'Dita Destiana', '361693301129', 'dita.destiana01@gmail.com', NULL, '$2y$10$PjekbNJ5FV6z3OrkDhrQPOySA2pcrN7VkRJ1WJ.bzlOfdgUPhTA6K', NULL, NULL, NULL),
(1697, 'mahasiswa', 'Anggun Dwi Aprilia', '361693301111', 'anggundaprilia@gmail.com', NULL, '$2y$10$hZ2K2HohhiMHxicpD1aLSOjt3s8wMqUQj7aU116eJyue5wOPAvU.O', NULL, NULL, NULL),
(1698, 'mahasiswa', 'Desy Ayu Purwanti', '361622401165', 'desyayudap@gmail.com', NULL, '$2y$10$SO6PXiVCV80IwsdudUk1SeYG2hxkA37.Tgvx4Q9rXc8Dl3kSo93Rq', NULL, NULL, NULL),
(1699, 'mahasiswa', 'Aliviyah septiyanti', '361693301051', 'aliviyah1997@gmail.com', NULL, '$2y$10$1q7RmMvGgMNQZXLeTVy.quekG4KGDxLGCuicr8Y9VCeVXEaLOPGhu', NULL, NULL, NULL),
(1702, 'mahasiswa', 'Dintami Nur Azizah', '361693301066', 'dintamiazizah@gmail.com', NULL, '$2y$10$HD/NqM5FVZSOfm8ElTq0iOk.kzYo0ENVbOZfZpJrY2L7SQy55tTRe', NULL, NULL, NULL),
(1704, 'mahasiswa', 'Dwi Wijayanti', '361693301030', 'Dwiwijayanti866@gmail.com', NULL, '$2y$10$Loun/.XzvVeOySHSNRM7eOxdw19.WFBKIzXQN5T7fp3yra2v58eTO', NULL, NULL, NULL),
(1709, 'mahasiswa', 'DODI SETIAWAN', '361655401068', 'dodisetiawan.ti9.poliwangi@gmail.com', NULL, '$2y$10$Cu/x60LC8WlKso7BosDBqum4tewq7SE6/guENRgfJUQI0th73WdYa', NULL, NULL, NULL),
(1710, 'mahasiswa', 'Dewi Noviatul Rofikoh', '361693301044', 'dewinovy71@gmail.com', NULL, '$2y$10$8R75xhUfghhMlJeioLTas.PljEyAqD6Lr/zLI3KEA1wjV2QjUuyVm', NULL, NULL, NULL),
(1711, 'mahasiswa', 'Angga Dwi Saputra', '361755401181', 'anggadwisaputra83@gmail.com', NULL, '$2y$10$azW57vH4N7wWw/NI57C5Oe0Z11R/IeMD5Wjz8TukT3IE9YBLG9OJm', NULL, NULL, NULL),
(1712, 'mahasiswa', 'EIVA NOER LATIFATUL MASRUROH', '361755401106', 'eivanoer04@gmail.com', NULL, '$2y$10$pJw2YIHkU5jdXHxOccJfauL9DEa/Qi1wyqwuRDoumWo0qusirR9lu', NULL, NULL, NULL),
(1713, 'mahasiswa', 'Cory Febdela Ulya', '361693301079', 'cfebdelaulya@gmail.com', NULL, '$2y$10$AGpyTBJGPsHi5LqS.fIIE.lV0n4QDkTsmQh9pGlxxMFxkfnzzukc.', NULL, NULL, NULL),
(1715, 'mahasiswa', 'Afif Syarifuddin Maulana', '361693301053', 'afifsyarif97@gmail.com', NULL, '$2y$10$ySxFMoP2qZIOaoqoStUVyepAgQZ4ThXzkl2RceaiSlyq1PnPYDaEG', NULL, NULL, NULL),
(1720, 'mahasiswa', 'Analia Rida Shofi Cahyani', '361755401143', 'anliarida@gmail.com', NULL, '$2y$10$LFQ84YKJSKR8Ixms/CT/HOVbc6lUJnWXiZvMvBS/mYF9pDMb.omKu', NULL, NULL, NULL),
(1722, 'mahasiswa', 'Adi Tiyan Budi Cahyono', '361555401044', 'aditiyan.ti8.poliwangi@gmail.com', NULL, '$2y$10$fS.h2epCOdgat4TdTdnq7eCUneMYtZoBoVLHCJBUko5PpsGiVaYka', NULL, NULL, NULL),
(1723, 'mahasiswa', 'Abdul Basyit Aly', '361655401092', 'basyit.ashqeen28@gmail.com', NULL, '$2y$10$vKVQGXIjdda9phyTqqTBy.YI5.LKGGkqNTXqXCtYBWm2jFGcqp3ve', NULL, NULL, NULL),
(1724, 'mahasiswa', 'Dwi maulitasari', '361693301033', 'dwimaulita8@gmail.com', NULL, '$2y$10$BJxisYV.Dh3wV/FuY1.q0edatef5vo1IzCRHpyR0LmCMWU/9lLEmq', NULL, NULL, NULL),
(1725, 'mahasiswa', 'Achmad fauzi hardiansyah', '361555401144', 'ardifh69@gmail.com', NULL, '$2y$10$L8VgrOkQ6e0VDBjjjop5JeQSNXJ/8EBCDAcPTQw674m93Glp0r4u.', NULL, NULL, NULL),
(1730, 'mahasiswa', 'Aditya dwi kurniawan', '361593301047', 'adityadwikrnwn@gmail.com', NULL, '$2y$10$7RQ/B66vGVelyi/DTaPOWeeR7RaWp.b53sMIwcA.i4Ms60pYEGClC', NULL, NULL, NULL),
(1731, 'mahasiswa', 'Ahmad Rizal Fahlefi', '361755401071', 'ahmadrizalf536@gmail.com', NULL, '$2y$10$w3yyjKxINvhAbQv3rTuzZOnz9rE9KXSUDkKSpLjIowAW9gwNAXxPi', NULL, NULL, NULL),
(1732, 'mahasiswa', 'Dhea Melyadinata', '361755401200', 'dmelyadinata@gmail.com', NULL, '$2y$10$YrPZv2S4ZUO7ShZ6LS8nUu.eqtnZq4Wht9aqlNLtAvAdKgF1BL5Eq', NULL, NULL, NULL),
(1733, 'mahasiswa', 'Abi Sarirayndra', '361755401183', 'abi.sarirayndra@gmail.com', NULL, '$2y$10$FH7uZ53MZJrNN5TNXoWKAuWra781EJBhwfOTcOf641IRbr3Oeju4K', NULL, NULL, NULL),
(1747, 'mahasiswa', 'Aldio kresna bahari', '361655401146', 'aldio.kresna.b@gmail.com', NULL, '$2y$10$wLUqmkYxOpEvhHkHnOc2mOMVskzzx.fJSDevQ/rlStNlYmC1eAvp6', NULL, NULL, NULL),
(1750, 'mahasiswa', 'ANGGANG YOGI PRATAMA', '361641333058', 'yogianggang@gmail.com', NULL, '$2y$10$CzT2KmQSfeGDGL4QJq5Iju7/ldH6sXSPKrkPYAJFQzGLPvRtIl68y', NULL, NULL, NULL),
(1751, 'mahasiswa', 'Ella Indayani', '361641333016', 'ellaindayani13@gmail.com', NULL, '$2y$10$zF7yjrDKi.kEWD.7lGspYunSVwvi/kEM5HqRgibG6OndzvT.8PHXi', NULL, NULL, NULL),
(1772, 'mahasiswa', 'Ade Fani Sabela Imandani', '361722401109', 'ade12fani@gmail.com', NULL, '$2y$10$GxMou2HntltBG9TZqxSlxecETTu6rPoKD7G1co6MssrhGDpX72/FW', NULL, NULL, NULL),
(1774, 'mahasiswa', 'BAHRUL FAHMI', '361641311032', 'bahrulfahmi38@gmail.com', NULL, '$2y$10$LsZQngGSGJFXENVKbSqUG.QTJGnEamctME.180IGY2VEIv3kx1YgO', NULL, NULL, NULL),
(1781, 'mahasiswa', 'Ahmad hasan eka saputra', '361541311125', 'ahmadhasanekasaputra1@gmail.com', NULL, '$2y$10$PqJoqrwkYmI6EYlT.37gL.OLiaL93V2M1qrD8unhn1TVExeVdklBC', NULL, NULL, NULL),
(1784, 'mahasiswa', 'Dini Dwi Lestari', '361641311129', 'lestaridini4@gmail.com', NULL, '$2y$10$4XcQanl2Na8kKn/9VKjMZ.X3cZ2KdKAhahWvTiiVcTUg2QdXVTEHC', NULL, NULL, NULL),
(1785, 'mahasiswa', 'Afiaci Suwandi Putri', '361641311087', 'afiacisuwandiputri@gmail.com', NULL, '$2y$10$FKEJuQ9CHq66EDwWtoqte.GF.UQ5kx2LlzbkW4BnQd1sRTP312FDi', NULL, NULL, NULL),
(1786, 'mahasiswa', 'Diah Vita Sari', '361641311058', 'diahvitasari6@gmail.com', NULL, '$2y$10$29tv2T3EF80Jl//SiFIsUuTg8DebPWndUgBVTqqhkIsk8bw1TPkgS', NULL, NULL, NULL),
(1788, 'mahasiswa', 'ELOK EKA ANY MAGHFIROH', '361722401153', 'elokekaany@gmail.com', NULL, '$2y$10$IHlsjipXqN6In6gDeRmY0ee7Sj3ouGAnDJsW5rTem6wSvS57KqbF.', NULL, NULL, NULL),
(1791, 'mahasiswa', 'Adinda ayu fitriyah', '361541311075', 'adindaayufitriyah29@gmail.com', NULL, '$2y$10$mu26C0L0LBJ.ZQNxt3NrQu8Lt2No1ZN2WfM8f0OuyBNerOz5.FN5q', NULL, NULL, NULL),
(1792, 'mahasiswa', 'DEWI ARAS PRATIWI', '361722401038', 'arasdewi29@gmail.com', NULL, '$2y$10$xwY8LcUo.LETeFyNsgIcgennxpOuYcIRL6eCTNAh7dnyxwuq4XHvO', NULL, NULL, NULL),
(1795, 'mahasiswa', 'Ahmad firdaus firnanda', '361541311094', '094nandafirdaus@gmail.com', NULL, '$2y$10$gRrUOvr3dO/omTirQ9eL4Oyn2cXZSIXXtjHAJMbTTov4UK9rNw/1S', NULL, NULL, NULL),
(1798, 'mahasiswa', 'Choirun Nisa', '361641311064', 'nisa.agb@gmail.com', NULL, '$2y$10$k5P6Qd3/ibRquY/Q99EUQOf1hUTrqDfCd4wng0O9rG3Z49H90GzhG', NULL, NULL, NULL),
(1800, 'mahasiswa', '351641311086', '351641311086', 'sintabelamaret@gmail.com', NULL, '$2y$10$af8j3ygVJVd0YxcBy7PGouIKG2ObOn3iGz8KDfHMO/7xut4emqc0e', NULL, NULL, NULL),
(1801, 'mahasiswa', 'Eka Cici Dewi Ayu Lestari', '361541311088', '03ekacici@gmail.com', NULL, '$2y$10$.PafsqSbuSeH0gC/RFnWUOBhRGQCgmkru.cmtdMVQHQOqelgVDi6q', NULL, NULL, NULL),
(1810, 'mahasiswa', 'Devita Mergiamala', '361693301144', 'mergiamala@gmail.com', NULL, '$2y$10$aPr78c3c906D86rGopw1qeLXkGMXO1itoIteWqBQxZsvD.3tonOse', NULL, NULL, NULL),
(1811, 'mahasiswa', 'Ahmad Nur Firdaus', '361641311038', 'ahmadnurfirdaus28@gmail.com', NULL, '$2y$10$Yv4cWINGuovhRe./MQB7iuMQzLX4T/15AQHa91Jvmv7ABhqRq3SHy', NULL, NULL, NULL),
(1814, 'mahasiswa', 'Arisan Dewi', '361541311117', 'ariskadewi1997@gmail.com', NULL, '$2y$10$2aPtM8sAi5JSVR9dQsdQZ.K5T6mgWTRXI3u2TE3X9eRQNvkMteqUW', NULL, NULL, NULL),
(1821, 'mahasiswa', 'Aris Ambar Arum Pangestuti', '361541311107', 'arisambar608@gmail.com', NULL, '$2y$10$ea.Tv0zeXfFVXXQVcnvDw..KQgnPuqh.uPuj9IgPph2UJGKnExE/C', NULL, NULL, NULL),
(1824, 'mahasiswa', 'Ahmad Fitra solehudin', '361541333039', 'ahmadfitra0396@gmail.com', NULL, '$2y$10$NbiqMtOIhRwZW/QAlUrYGeQr7IVzcxf7IWlBkQc8NaiMaGbPnmWuK', NULL, NULL, NULL),
(1825, 'mahasiswa', 'Deka Sakti Pradana', '361541311003', 'saktip60@gmail.com', NULL, '$2y$10$5F9lA7VfJreVm1wrlKyN4elKYLOtzBpPWvF4p1zFu0DRieR39OXdy', NULL, NULL, NULL),
(1828, 'mahasiswa', 'Ardie Ahmad Fahrezy', '361721401114', 'ardie.fahrezy007@gmail.com', NULL, '$2y$10$GWk0ajyS.DLwxDGUSPcpNe9GRBVR6H13U8BR04LrsZFBMeWmv5yDu', NULL, NULL, NULL),
(1831, 'mahasiswa', 'Dicky Bayuang Pratama', '361721401051', 'dickybayuangpratama@gmail.com', NULL, '$2y$10$vG2WSGxBAXR8hGrGPLkmsO4c5wr2MeSJofyRwX1Ju4ctnEFVr41Gu', NULL, NULL, NULL),
(1835, 'mahasiswa', 'Doni Aprilio', '361721401052', 'doniaprilio0@gmail.com', NULL, '$2y$10$f/PmvydgVfUfvu.c0veACeWqMZEezICwzZ4IgcLdfHueruCpM4LgO', NULL, NULL, NULL),
(1842, 'mahasiswa', 'Della rangga putri', '361541311090', 'dellarangga486@gmail.com', NULL, '$2y$10$chsCdEehMSY27Zhpjy5.lebP6YPtcLPvpGuBKrQJRe.4C3IAcaXX6', NULL, NULL, NULL),
(1843, 'mahasiswa', 'ADENINA AGUSTIN', '361641311054', 'adeninaagustin15@gmail.com', NULL, '$2y$10$IP0vGgsJg.2Wd9HT7qdicOXSNbBq70c.jT0tMDALFcVirADx.PXSy', NULL, NULL, NULL),
(1846, 'mahasiswa', 'DEFHRIAL WAHYU PRAYOGA', '361721401044', 'dwprial23@gmail.com', NULL, '$2y$10$zSVKfeovKF5mtZgHO48/UO1mQY2ipKRWYy4fWw/YLXi.Jnb5Ofid6', NULL, NULL, NULL),
(1856, 'mahasiswa', 'Dewi indah rudiyati', '361541311027', 'indahrudiyati@gmail.com', NULL, '$2y$10$KZva3QPZNp3FS207jCscy.o1Q//ldmdskKBW8WQjsSMQiXT9oPlSK', NULL, NULL, NULL),
(1858, 'mahasiswa', 'Eftitah Ramadani', '361641311068', 'ramadanieftitah@gmail.com', NULL, '$2y$10$sjUFCfwy950ybzK4u1y2z.Tc/BlY.OGi8ijRgyklX44mQNbt8o6gu', NULL, NULL, NULL),
(1859, 'mahasiswa', 'Eka Rusmiatiningsih', '361541311038', 'rusmiaeka12@gmail.com', NULL, '$2y$10$6JuBHEi5uxcI/rtH.fFj7eQ/jtTsLiNnV1zBJWhidLzAxX2y3mmNO', NULL, NULL, NULL),
(1861, 'mahasiswa', 'Ahmad Nur Cahyono', '361541311058', 'ahmadnurc1996@gmail.com', NULL, '$2y$10$n9SZsY05rNXRV8fEl6fd4eF7bqyMaJ2xGzb870XpSr4BsCgnwwJR.', NULL, NULL, NULL),
(1862, 'mahasiswa', 'Dwi Laksana Putri', '361541311103', 'laksanadwi162@gmail.com', NULL, '$2y$10$E9t8.ouspw7puQwuIiL1BeNiVmYTjqsCEpJC/wPOwYmMGOFgOJiqO', NULL, NULL, NULL),
(1864, 'mahasiswa', 'Ellen Diyah Ayu Tania', '361622401157', 'ellenedatce@gmail.com', NULL, '$2y$10$CxRr43hN1FArlBOmHehQ3.R1lxqUwYBx5C3A5Xz7Rwxq/BBMJYvQ2', NULL, NULL, NULL),
(1866, 'mahasiswa', 'Eka nur ainiyah', '361541311057', 'nurainiyaheka@gmail.com', NULL, '$2y$10$BmUvCqGgGqkuaJLXUFvZqutGbT6UeIr.2p8a31hmhLKMGAhiOFiua', NULL, NULL, NULL),
(1870, 'mahasiswa', 'dhonni hermawan', '361541311141', 'dhonnihermawan@gmail.com', NULL, '$2y$10$49mi7iIeBEmfJZr6.shDv.eGfxF8lYTJG/EkuSKZbLbiyCPvDMX6.', NULL, NULL, NULL),
(1873, 'mahasiswa', 'Diana Dwi Hayuning Prastiwi', '361655401122', 'dhayuningprastiwi@gmail.com', NULL, '$2y$10$5oFh7SVb7UOhEFH6QPeGkOzbnv6cjr9Adb1RM4gP8CCQdooU17grG', NULL, NULL, NULL),
(1877, 'mahasiswa', 'DINDA IZZABILLAH FEBRIYANTI', '361755401058', 'dindaizzabillah@gmail.com', NULL, '$2y$10$T93T/O4YwEOp5PVgUo2gX.19GXWTUBDnKd5Gjm.r4/vfweerx5Tdq', NULL, NULL, NULL),
(1889, 'mahasiswa', 'Beni Pramuja Sari', '361655401188', 'benipramuja@gmail.com', NULL, '$2y$10$dZTfFuFsAHTXloqc5DqSmOKrdGRisoDvdh90n03qZ.eZ5moFGrBPK', NULL, NULL, NULL),
(1892, 'mahasiswa', 'Dhimas Panji Sastra', '361755401197', 'dhimaspanji66@gmail.com', NULL, '$2y$10$B.AtYN7m771JPEpJx4EloOM2ESZ88aRlUcX2cAKNBVC8HIwhrTeRe', NULL, NULL, NULL),
(1896, 'mahasiswa', 'ANNISSA EDITA PUTRI', '361755401166', 'nisaputri11@gmail.com', NULL, '$2y$10$PzbOgWdvB/93Gs4LlwsUyeYUtmmW0lR0oo6GbDhF5lT4hVT1voOt2', NULL, NULL, NULL),
(1897, 'mahasiswa', 'Ade Fian Galih Imandani', '361755401136', 'adefian8@gmail.com', NULL, '$2y$10$rGirpJ2/hyn6YUn1zfvaV.0SqIQuPPMocF8f2GGdV.jqYwfF7B0XS', NULL, NULL, NULL),
(1898, 'mahasiswa', 'Andy Ferbiantoro', '361755401010', 'andyfebri742@gmail.com', NULL, '$2y$10$ao3CLc9S7csJusoItdq0OO3Fxs8aag60eVJNlNsqkN121kx0UG5rW', NULL, NULL, NULL),
(1905, 'mahasiswa', 'Edy Prastiyono', '361755401172', 'edyprastiyono7@gmail.com', NULL, '$2y$10$Lq2FNilVtHkS7lP5SCsf4OQlRVDTDL4vbauqK6b7SMfJyq6YrGa/e', NULL, NULL, NULL),
(1909, 'mahasiswa', 'Budi Rahmawan', '361755401124', 'budirahmawan18@gmail.com', NULL, '$2y$10$VYEE3fx5ve2fsGIUPoYv2.iSzcyjG2BurZwdUhyH/s67XTjea6kra', NULL, NULL, NULL),
(1910, 'mahasiswa', 'Anes Alfiana', '361755401080', 'anesalfiana5@gmail.com', NULL, '$2y$10$7uBVni2kwxqeYL/2sWNJ5OkBdISKGTpUVpTwLF5v8MoDVe0hJF4JG', NULL, NULL, NULL),
(1911, 'mahasiswa', 'Della Putri Lutfia', '361755401104', 'lutfiadella02@gmail.com', NULL, '$2y$10$zTRjNr6Hd5af5KRNRNbz5.EuJcUdQcDD/6AE7CCPMBprvnbWQNWxe', NULL, NULL, NULL),
(1916, 'mahasiswa', 'Bintang Dirgandini', '361755401070', 'bintangdirgandini@gmail.com', NULL, '$2y$10$oCDXRinl10.hBxnO5qaF7OEgZDD0AF9XycKPt5inMtvW8yQZt7flS', NULL, NULL, NULL),
(1919, 'mahasiswa', 'Ely Murti Anggraini', '361755401137', 'elymurti1@gmail.com', NULL, '$2y$10$diREjE7AcO1IhJIJHFzUqeFSJ3oKZxWEXQtuwRdZwtZcVE07jy2c.', NULL, NULL, NULL),
(1921, 'mahasiswa', 'DIMAS MAULANA HAIDAR ALY', '361541311085', 'dimasmaulanahaidaraly08@gmail.com', NULL, '$2y$10$7MoX0q/BrriQQAh4FW0s4ejoLK.17xy7w6sdV2aIRjWtmjDV0Upda', NULL, NULL, NULL),
(1927, 'mahasiswa', 'Dwiyanti oktavia', '361693301095', 'dwiyantioktavia97@gmail.com', NULL, '$2y$10$mSdYW8gmV04jkSCoQzR9A.R0nD7OZPUDqgWOTpAD3a3Fu11BQiDmi', NULL, NULL, NULL),
(1929, 'mahasiswa', 'Dian Novitasari', '361693301069', 'diannovitasari716@gmail.com', NULL, '$2y$10$bvk3zVKypm.70P6Upwppf.Ek8fx153AwSo7ufB52EyybzfTmp67jy', NULL, NULL, NULL),
(1930, 'mahasiswa', 'Dwi Nurul Choirina', '361541311026', 'choirinadwi@gmail.com', NULL, '$2y$10$RD1rYhYPCC0uV56SNOH87OfEe99E82VpNw3jhzu/zvwp4oU8o3WFi', NULL, NULL, NULL),
(1934, 'mahasiswa', 'Citra Ayu Indriyani', '361755401153', 'citraayuindri@gmail.com', NULL, '$2y$10$JlDK4drddzPa2UF4g9FIjeb5slAja6Ym8O0qGEMM.17CQOBLXENjK', NULL, NULL, NULL),
(1939, 'mahasiswa', 'AYU INDAH AINUN NIKMAH', '361693301090', 'ayuindahainunnikmah@gmail.com', NULL, '$2y$10$kF/3tz.Yf/uUHpLEClCSGOKatTUf01tRSwuI35tyvpsgSKh1LAVOS', NULL, NULL, NULL),
(1944, 'mahasiswa', 'ANGGI SUKMAWATI', '361722401154', 'anggisukmawati231@gmail.com', NULL, '$2y$10$xm8srMr2uIIRw1Cq9huSQ.9sAk9tvBSPfSE66jrQ5B8RvJ7FIdJD6', NULL, NULL, NULL),
(1954, 'mahasiswa', 'Cindy Ghenny Fitrianie', '361722401122', 'Cindyghenny7865@gmail.com', NULL, '$2y$10$uMixlUsjkUHT5xBc9Sp/fezvVxWuKt.ogiHXrF1L4gRqAWrMm0ETi', NULL, NULL, NULL),
(1968, 'mahasiswa', 'dicky.riskiynto2598@gmail.com', '361722401092', 'dicky.riskiynto2598@gmail.com', NULL, '$2y$10$bbxY/Ple9yY4TBrL9F7l9u8sdy3SFcXNISpeOjr4nPg.Cp8X//ita', NULL, NULL, NULL),
(1969, 'mahasiswa', 'Abd. Manaf', '361721401010', 'abdmanaf936@gmail.com', NULL, '$2y$10$3yekWYQg/kSpCdgI6rJGL.ZQlOiu5Tm1yffw.UgUO3DGidYDQ4NHO', NULL, NULL, NULL),
(1972, 'mahasiswa', 'ARIEL NUR FARHAN', '361722401015', 'arielnurfarhan@gmail.com', NULL, '$2y$10$tVSgtCbkDKFCN3Dn83hF.eulGk4XdIs2qzVzn.mDllKi0Nzpdbpk2', NULL, NULL, NULL),
(1974, 'mahasiswa', 'Alwi mubarok', '361721401013', 'alwimubarok19@gmail.com', NULL, '$2y$10$vUCz2bwJ3zBT9uv/RNQm7O6cGIu9uCd3KHkYtTf18.Fh2dQVYHsWK', NULL, NULL, NULL),
(1983, 'mahasiswa', 'Alaika Khumaini', '361622401066', 'alaikak.khumaini@gmail.com', NULL, '$2y$10$heKsvhze4UlXFPoZ2rNQA.s8wo8Z.LNDrLgQq3BNx1xhS945x0ql6', NULL, NULL, NULL),
(1984, 'mahasiswa', 'Bunga larasati Priyandini', '36162281121', 'bpriandini@gmail.com', NULL, '$2y$10$sXX1e2jKd1OSXdMveLXDzOMYnxM/Z/wfFqXz6DsOxIFre1svIrfl6', NULL, NULL, NULL),
(1985, 'mahasiswa', 'Ach. Dani maualana', '361722401117', 'achdani22@gmail.com', NULL, '$2y$10$2oOxxwbBFQ0l5oCwlmXSPeFy4vGMisro.r8DDbEvVRUNHUTJDh2TG', NULL, NULL, NULL),
(1990, 'mahasiswa', 'Ajeng Bulan Sarmila', '361722401074', 'ajengbulan014@gmail.com', NULL, '$2y$10$VexhVGWHOvoHfajj6O2WVOxFsONV4EsRP68gfri/YdWMqJpfEZ7X6', NULL, NULL, NULL),
(1991, 'mahasiswa', 'DIMAS BAGUS PRAYOGO', '361721401085', 'dimasbagusprayogo1997@gmail.com', NULL, '$2y$10$I/Rk4kEW0zT7sz02R9p6/eDgqAhGQu2MrtbIXTjalivvCD9MzXUPW', NULL, NULL, NULL),
(1993, 'mahasiswa', 'BAGUS SUGIARTO', '361722401055', 'bagussugik9@gmail.com', NULL, '$2y$10$xWw23fWB8OskXidEfdHN1.u0jkSi676FL0sLFE6LNOQ1Wpu2i06Ry', NULL, NULL, NULL),
(1996, 'mahasiswa', 'Egi Primanta', '361522401084', 'egiprimanta99@gmail.com', NULL, '$2y$10$OihS9ZPGghazibC1.7atlO.AT.JDHdFtfbvcqmt8DdAIGYJip4cVG', NULL, NULL, NULL),
(1999, 'mahasiswa', 'Dewi Atmisari', '361622401156', 'Dewi.sari121998@gmail.com', NULL, '$2y$10$Vd09Hz5daYcBz/Q27TFya.s2BRp7TLjcWgxMj6dzs.9hei7U.CDH6', NULL, NULL, NULL),
(2000, 'mahasiswa', 'Ardika wiradana', '361722401032', 'ardikabwi2@gmail.com', NULL, '$2y$10$7fersOTRSt.IDfT4LA/CkOQlNWWtrnudvyiGdpDo3bb6AWCGsMGcy', NULL, NULL, NULL),
(2001, 'mahasiswa', 'Dino Imanda Budianto', '361721401001', 'dinoimandano@gmail.com', NULL, '$2y$10$xEmVpWb57/fu9AlY8LBOUuRt0mDqEHGumkS9iwAJChsPKYsQdRM8W', NULL, NULL, NULL),
(2003, 'mahasiswa', 'Astrid Ernanda', '361722401110', 'astridernanda926@gmail.com', NULL, '$2y$10$29Qxelft/YRaSzHHqVNqDeM9z1O56SByd0JIvoaujmcyySwTDVi/i', NULL, NULL, NULL),
(2010, 'mahasiswa', 'Diky Nurwahyudi', '361721401121', 'wahyudiki028@gmail.com', NULL, '$2y$10$ys.INUKVFJRhHa5xYDbMkeh1EJcNVbt9E8GKwPNkZ0Yhg8TJPbudO', NULL, NULL, NULL),
(2012, 'mahasiswa', 'Choirun Nisa Rofiqoh Hardiyanti', '361722401127', 'nissacrh1709@gmail.com', NULL, '$2y$10$RHtWQKw4AoZcAXlk4TLuZe.k24L0Tr.jx3h//3VUC8DfmiSv6XWSC', NULL, NULL, NULL),
(2013, 'mahasiswa', 'Darusman Fadli', '361722401126', 'farismanfadli98@gmail.com', NULL, '$2y$10$Cb/mT/QWXl6upzhxtPIr8uKWKu9Yez.d6PXrewy/wYKZ1zTFgIIlC', NULL, NULL, NULL),
(2016, 'mahasiswa', 'Afdilla Masniarahma', '361722401007', 'afdillamasniarahma@gmail.com', NULL, '$2y$10$bQXSKcXgKqH2GXfykxF5/O6Z6T5cFjJ.wgYVVD4xj0uzJmzCNL4/.', NULL, NULL, NULL),
(2020, 'mahasiswa', 'Catharina Mirandha Noviandini', '361722401078', 'mirandhanoviandini1@gmail.com', NULL, '$2y$10$cuivkcMefRNdKCDjxT1oyeF.HqHDysZxw5HSY23/9CdX6hDXehzA.', NULL, NULL, NULL),
(2034, 'mahasiswa', 'Aviatut Daroini', '361755401188', 'aviatutdaroini04@gmail.com', NULL, '$2y$10$jrT/2n9pQPyTV0Szt6yx0u9iIAj6re3GLrUDvMEjqDjUYZoAgAZkC', NULL, NULL, NULL),
(2036, 'mahasiswa', 'Abdul basit hamdani', '361755401025', 'gimansantosa05@gmail.com', NULL, '$2y$10$gVWZLj3JJy0sgRh10E.5n./XNjt7GkLUTGhUokQUASgkK6qjWfF5u', NULL, NULL, NULL),
(2046, 'mahasiswa', 'Ana Putri Utami', '361655401141', 'anaputriutami@gmail.com', NULL, '$2y$10$Q07s8WVlQQ2XHPMLLLZLe.aJRGGv0vCtdVXtsKsXjKG0uCEPYp94m', NULL, NULL, NULL),
(2050, 'mahasiswa', 'Brillian Boby Pratama', '361755401098', 'brilliantboby6@gmail.com', NULL, '$2y$10$DvRgBI51VKbxqCBeGTpcI.iHbw0dVz5PD15JxBBV0UZee5C8WZNGy', NULL, NULL, NULL),
(2052, 'mahasiswa', 'ADILA AULIA MUNTAZA', '361755401111', 'adilaauliam@gmail.com', NULL, '$2y$10$MclxGICMrvqIt1AqtFf/Kugjzuy0zJMrHRppQgpa0M.fDQtJOZYBu', NULL, NULL, NULL),
(2054, 'mahasiswa', 'Ahmad Fijay Ramadhan', '361755401069', 'ramadhanfijay@gmail.com', NULL, '$2y$10$VmKO3azzlQeaq6Ls4AYtoeQ5L05UxSINN3x3lSD1vt.wOQifkW7vO', NULL, NULL, NULL),
(2056, 'mahasiswa', 'Ahmad Hidayat', '361721302012', 'ahihidayat13@gmail.com', NULL, '$2y$10$ahOzZ7tduJLlrs52D1/hVepszztgULqaITzyGq641ocCtwY.blHZe', NULL, NULL, NULL),
(2063, 'mahasiswa', 'Dewi Masithoh', '361755401190', 'masithohdewi13@gmail.com', NULL, '$2y$10$bJNTYIFYFf3hZBY42cbvnuWxClx2ebvyXEcWGlo1lLMTGi1jOKf3.', NULL, NULL, NULL),
(2066, 'mahasiswa', 'Edy Hariyanto', '361621401036', 'hariyantoedy95@gmail.com', NULL, '$2y$10$ugzmWabmKckCHr4qqMKgIegzNHVQclAgNYh4aB09Tc2URqRabplOO', NULL, NULL, NULL),
(2070, 'mahasiswa', 'Dwika Prasetyo', '361621401055', 'dwikapras23@gmail.com', NULL, '$2y$10$wHtkiY.1U3/rcJyflNFBwO46MUo//6aNx2KknGtKsZx2FYjCzC8fq', NULL, NULL, NULL),
(2071, 'mahasiswa', 'Arya rusdi pratama', '361621401106', 'aryarusdi26@gmail.com', NULL, '$2y$10$UUo8jq0PRSJ1tarIpkeUAOFos1MWR5kdxyfOwmN1jSpMFNE6b1yKG', NULL, NULL, NULL),
(2075, 'mahasiswa', 'Dimas Artono Nugroho', '361655401075', 'dartononugroho17@gmail.com', NULL, '$2y$10$KA/6FXnE55vyOQwrvGKIi.AC47I9Q9fbsgxF53T9Znj6GAILhC1Nm', NULL, NULL, NULL),
(2076, 'mahasiswa', 'Eka Amaliyah', '361755401159', 'ekaamaliyah.ti10.poliwangi@gmail.com', NULL, '$2y$10$aqels3454AZbOijCBk4UIuQvAHxIw598Vsk9.9dj0Kt6upAdpTc.S', NULL, NULL, NULL),
(2078, 'mahasiswa', 'AJIE RAKA SIWI', '361655401071', 'ajieraka.s@gmail.com', NULL, '$2y$10$Hny5BeEl54ByKsDq9BuI2O7YddjBhcxqZ2J50aBlUhzyH.xSJ9sfC', NULL, NULL, NULL),
(2079, 'mahasiswa', 'Aprio Syah Husaini', '361755401081', 'apriosyah@gmail.com', NULL, '$2y$10$xK0Qk4D9CU1Tl2jPS/4iPOahSBIJL9WOHSyJHtNj9Qcp3asQULUv6', NULL, NULL, NULL),
(2080, 'mahasiswa', 'BAGAS ADE DEWANTORO', '361721401037', 'bagasadedewantoro1997@gmail.com', NULL, '$2y$10$RacOfKDTlj0qqTKJnWTJouP5WKmWIHw/hs4NQ2O9d4C7hZNaYzyGO', NULL, NULL, NULL),
(2082, 'mahasiswa', 'BINTANG ANUGERAH PERDANA', '361655401080', 'bintangperdana1504@gmail.com', NULL, '$2y$10$G02affoQuwx5EX3AROKzVeeqhsNCdTMzyRnsDbgQQGMLfWvDDezye', NULL, NULL, NULL),
(2083, 'mahasiswa', 'Ahmad Farisya', '361755401095', 'farisya783@gmail.com', NULL, '$2y$10$ODzIDIh6RYSpL.qUqH0cgewfMrCB6aSNMViPugmxS6lXfGvrinAFu', NULL, NULL, NULL),
(2091, 'mahasiswa', 'Edilugito', '361621401045', 'edilugito111@gmail.com', NULL, '$2y$10$DLzmdu/ekvcqzolfwsR1n.WUpdtgSs5DYuyCQzko.jNehfbukBKMi', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_ukms`
--
ALTER TABLE `anggota_ukms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_ukms_id_user_foreign` (`id_user`);

--
-- Indexes for table `devisi_anggotas`
--
ALTER TABLE `devisi_anggotas`
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
-- Indexes for table `tbl_pendaftaran_ukms`
--
ALTER TABLE `tbl_pendaftaran_ukms`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `devisi_anggotas`
--
ALTER TABLE `devisi_anggotas`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pendaftaran_events`
--
ALTER TABLE `pendaftaran_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `profile_users`
--
ALTER TABLE `profile_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT for table `tbl_pendaftaran_ukms`
--
ALTER TABLE `tbl_pendaftaran_ukms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_event`
--
ALTER TABLE `tb_event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_sertifikat`
--
ALTER TABLE `tb_sertifikat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_ukm`
--
ALTER TABLE `tb_ukm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2092;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_ukms`
--
ALTER TABLE `anggota_ukms`
  ADD CONSTRAINT `anggota_ukms_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `profile_users`
--
ALTER TABLE `profile_users`
  ADD CONSTRAINT `profile_users_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
