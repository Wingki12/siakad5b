-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Nov 09, 2026 at 07:01 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakad5b`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint UNSIGNED NOT NULL,
  `nidn` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `jabatan_fungsional` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `nama`, `email`, `telepon`, `alamat`, `created_at`, `updated_at`, `jabatan_fungsional`) VALUES
(1, '0097327189', 'Dewi Lazuardi, S.Si., M.Cs.', 'aagustina@example.org', '084396994973', 'Jr. Bak Mandi No. 657, Gorontalo 62008, Sumbar', '2026-10-23 15:39:20', '2026-11-03 04:22:03', NULL),
(2, '0091984239', 'Irfan Suryatmi, S.T., M.T.', 'mala.wastuti@example.net', '085561360428', 'Ds. Hasanuddin No. 509, Bima 14965, DIY', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(3, '0024005343', 'Nadine Prastuti, S.Kom., M.Kom.', 'kala71@example.com', '085025843929', 'Ds. Lembong No. 362, Kupang 96746, Kepri', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(4, '0060754607', 'Violet Firmansyah, S.Kom., M.Kom.', 'sarah76@example.net', '082424183446', 'Jln. Monginsidi No. 333, Solok 47738, Sulbar', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(5, '0033358293', 'Ciaobella Aryani, S.Si., M.Cs.', 'bakti.laksmiwati@example.net', '081542365462', 'Dk. Babakan No. 353, Dumai 87970, Pabar', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(6, '0036642520', 'Siska Salahudin, S.T., M.T.', 'nsuryatmi@example.com', '080561672684', 'Jr. Batako No. 855, Metro 71354, NTT', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(7, '0068746751', 'Pangestu Usada, S.T., M.T.', 'aswani74@example.net', '082209283440', 'Kpg. Mahakam No. 574, Bukittinggi 63463, Malut', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(8, '0003245973', 'Hardi Kusmawati, S.Kom., M.Eng.', 'wnugroho@example.net', '082530438394', 'Jr. Bagis Utama No. 301, Tegal 65754, Sumut', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(9, '0057775042', 'Aslijan Uyainah, S.Kom., M.Kom.', 'xsinaga@example.org', '081477935219', 'Kpg. Rajawali No. 914, Tual 79930, Riau', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL),
(10, '0073736884', 'Kenzie Pertiwi, S.Kom., M.Kom.', 'kayun.permata@example.net', '089539945293', 'Jln. Bakin No. 253, Ambon 97637, Sulteng', '2026-10-23 15:39:20', '2026-10-23 15:39:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id` bigint UNSIGNED NOT NULL,
  `mahasiswa_id` bigint UNSIGNED NOT NULL,
  `tahun_akademik` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` enum('Ganjil','Genap') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('draft','diajukan','disetujui','ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id`, `mahasiswa_id`, `tahun_akademik`, `semester`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(2, 2, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(3, 3, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(4, 4, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(6, 6, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(7, 7, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(8, 8, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(9, 9, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(10, 10, '2026/2027', 'Ganjil', 'draft', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(12, 22, '2026/2027', 'Ganjil', 'diajukan', '2026-11-08 14:27:49', '2026-11-09 06:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `krs_detail`
--

CREATE TABLE `krs_detail` (
  `id` bigint UNSIGNED NOT NULL,
  `krs_id` bigint UNSIGNED NOT NULL,
  `mata_kuliah_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `krs_detail`
--

INSERT INTO `krs_detail` (`id`, `krs_id`, `mata_kuliah_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(2, 1, 7, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(3, 1, 5, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(4, 1, 9, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(5, 1, 3, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(6, 2, 10, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(7, 2, 2, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(8, 2, 4, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(9, 2, 3, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(10, 2, 1, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(11, 3, 6, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(12, 3, 9, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(13, 3, 1, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(14, 3, 7, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(15, 3, 5, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(16, 4, 8, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(17, 4, 5, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(18, 4, 10, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(19, 4, 2, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(20, 4, 4, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(26, 6, 3, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(27, 6, 6, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(28, 6, 7, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(29, 6, 10, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(30, 6, 4, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(31, 7, 10, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(32, 7, 7, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(33, 7, 4, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(34, 7, 2, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(35, 7, 5, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(36, 8, 6, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(37, 8, 8, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(38, 8, 5, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(39, 8, 1, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(40, 8, 3, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(41, 9, 3, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(42, 9, 5, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(43, 9, 4, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(44, 9, 9, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(45, 9, 7, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(46, 10, 2, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(47, 10, 1, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(48, 10, 9, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(49, 10, 5, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(50, 10, 8, '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(54, 12, 2, '2026-11-08 14:27:49', '2026-11-08 14:27:49'),
(55, 12, 4, '2026-11-08 14:27:49', '2026-11-08 14:27:49'),
(56, 12, 5, '2026-11-08 14:27:49', '2026-11-08 14:27:49'),
(57, 12, 7, '2026-11-08 14:27:49', '2026-11-08 14:27:49'),
(58, 12, 3, '2026-11-09 06:50:47', '2026-11-09 06:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint UNSIGNED NOT NULL,
  `nim` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` smallint UNSIGNED NOT NULL,
  `program_studi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'D3 Teknik Informatika',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `email`, `angkatan`, `program_studi`, `created_at`, `updated_at`) VALUES
(1, '2403039226', 'Eman Mansur', 'L', '2403039226@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(2, '2203039070', 'Malika Maryati', 'P', '2203039070@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(3, '2403030981', 'Zaenab Yuniar', 'P', '2403030981@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(4, '2203039374', 'Darmaji Novitasari', 'L', '2203039374@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(6, '2203033144', 'Karta Waskita', 'L', '2203033144@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(7, '2403035828', 'Ulya Waluyo', 'P', '2403035828@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(8, '2203031794', 'Sadina Utami', 'P', '2203031794@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(9, '2403037174', 'Unjani Saptono', 'P', '2403037174@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(10, '2303034064', 'Umay Pudjiastuti', 'L', '2303034064@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(11, '2203033398', 'Ifa Pudjiastuti', 'P', '2203033398@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(12, '2203030898', 'Hafshah Widodo', 'P', '2203030898@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(13, '2403038076', 'Karta Siregar', 'L', '2403038076@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(14, '2303034789', 'Elon Halim', 'L', '2303034789@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(15, '2503034329', 'Raharja Mandasari', 'L', '2503034329@mhs.example.com', 2025, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(16, '2203039315', 'Vicky Mayasari', 'P', '2203039315@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(17, '2203032343', 'Umaya Lestari', 'L', '2203032343@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(18, '2403036700', 'Daruna Tamba', 'L', '2403036700@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(19, '2303030409', 'Victoria Zulaika', 'P', '2303030409@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(20, '2203034262', 'Nadine Yolanda', 'P', '2203034262@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(21, '2203031482', 'Zahra Hassanah', 'P', '2203031482@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(22, '2303031250', 'Amelia Permadi', 'P', '2303031250@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(23, '2203038457', 'Asirwanda Mustofa', 'L', '2203038457@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(24, '2403035473', 'Nabila Purnawati', 'P', '2403035473@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(25, '2503036553', 'Syahrini Sihombing', 'P', '2503036553@mhs.example.com', 2025, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(26, '2403031900', 'Keisha Napitupulu', 'P', '2403031900@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(27, '2203036024', 'Makara Permata', 'L', '2203036024@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(28, '2203037011', 'Kamila Mayasari', 'P', '2203037011@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(29, '2203030467', 'Maria Hassanah', 'P', '2203030467@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(30, '2403032645', 'Warsa Winarno', 'L', '2403032645@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(31, '2403030687', 'Daruna Maulana', 'L', '2403030687@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(32, '2303037681', 'Balangga Suwarno', 'L', '2303037681@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(33, '2303038097', 'Ganjaran Kusmawati', 'L', '2303038097@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(34, '2503038536', 'Nadia Melani', 'P', '2503038536@mhs.example.com', 2025, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(36, '2303039223', 'Dinda Saragih', 'P', '2303039223@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(37, '2503030871', 'Umay Ardianto', 'L', '2503030871@mhs.example.com', 2025, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(38, '2203038563', 'Nadia Waskita', 'P', '2203038563@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(39, '2303034788', 'Gaman Wahyuni', 'L', '2303034788@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(40, '2403036894', 'Prayogo Ardianto', 'L', '2403036894@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(41, '2503033841', 'Sari Salahudin', 'P', '2503033841@mhs.example.com', 2025, 'D3 Teknik Informatika', '2026-10-23 15:39:20', '2026-10-23 15:39:20'),
(42, '2403036528', 'Kamila Tampubolon', 'P', '2403036528@mhs.example.com', 2024, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(43, '2503030821', 'Koko Melani', 'L', '2503030821@mhs.example.com', 2025, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(44, '2303031043', 'Jasmin Gunawan', 'P', '2303031043@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(45, '2203032548', 'Iriana Lestari', 'P', '2203032548@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(46, '2203037135', 'Cinta Wibowo', 'P', '2203037135@mhs.example.com', 2022, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(47, '2303031105', 'Carub Wijayanti', 'L', '2303031105@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(48, '2503039055', 'Artanto Ardianto', 'L', '2503039055@mhs.example.com', 2025, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(49, '2303034314', 'Bella Rahimah', 'P', '2303034314@mhs.example.com', 2023, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_mk` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` tinyint UNSIGNED NOT NULL,
  `semester` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `program_studi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'D3 Teknik Informatika',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id`, `kode_mk`, `nama_mk`, `sks`, `semester`, `program_studi`, `created_at`, `updated_at`) VALUES
(1, 'TI101', 'Pengantar Teknologi Informasi', 2, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(2, 'TI102', 'Algoritma dan Pemrograman', 4, 3, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-11-09 06:48:17'),
(3, 'TI103', 'Matematika Diskrit', 3, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(4, 'TI201', 'Basis Data', 3, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(5, 'TI202', 'Desain Web', 3, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(6, 'TI203', 'Pemrograman Web', 3, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(7, 'TI204', 'Jaringan Komputer', 3, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(8, 'TI301', 'Rekayasa Perangkat Lunak', 3, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(9, 'TI302', 'Pemrograman Berorientasi Objek', 3, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21'),
(10, 'TI303', 'Sistem Operasi', 2, 1, 'D3 Teknik Informatika', '2026-10-23 15:39:21', '2026-10-23 15:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_10_20_104554_add_role_to_users_table', 1),
(5, '2026_10_20_110518_create_dosen_table', 1),
(6, '2026_10_20_110536_create_mahasiswa_table', 1),
(7, '2026_10_20_110551_create_mata_kuliah_table', 1),
(8, '2026_10_20_112139_create_krs_table', 1),
(9, '2026_10_20_112150_create_krs_detail_table', 1),
(10, '2026_10_23_222857_add_jabatan_fungsional_to_dosen_table', 1),
(11, '2026_10_29_000931_add_last_login_at_to_users_table', 2),
(12, '2026_11_06_140840_add_semester_and_program_studi_to_mata_kuliah_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Zy1sbBeYFLJ2jClk9gfICwjv6TlK92CnV8LJhVJc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1U1ZXNXdjFrT2Y4Nmhza3pCMTNRS2ZqdDUxZmJkcEtMY3BVR01vSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1794207187);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','dosen','mahasiswa') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mahasiswa',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `last_login_at`) VALUES
(1, 'Administrator SIAKAD', 'admin@siakad.test', NULL, '$2y$12$5CuXFhwEdl.F0DgOjbgscu2xPjzYbquy3.GFulJKLEGaRJJzGsml2', 'admin', NULL, '2026-10-23 15:39:19', '2026-11-09 06:40:09', '2026-11-09 06:40:09'),
(2, 'Dosen Uji', 'dosen@siakad.test', NULL, '$2y$12$IgnYKRlAtXdQnW.oAHoMwOo2i05nWkQphjFk3y8y0YUyDPdC72yNG', 'dosen', NULL, '2026-10-23 15:39:19', '2026-11-09 06:52:38', '2026-11-09 06:52:38'),
(3, 'Mahasiswa Uji', 'mahasiswa@siakad.test', NULL, '$2y$12$cKJMHtswroxxzz0lz/AjIOvufMOaNdNdy1gTCKZrh5iUB6MTPIUDu', 'mahasiswa', NULL, '2026-10-23 15:39:20', '2026-11-09 06:52:52', '2026-11-09 06:52:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dosen_nidn_unique` (`nidn`),
  ADD UNIQUE KEY `dosen_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `krs_mahasiswa_id_tahun_akademik_semester_unique` (`mahasiswa_id`,`tahun_akademik`,`semester`);

--
-- Indexes for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `krs_detail_krs_id_mata_kuliah_id_unique` (`krs_id`,`mata_kuliah_id`),
  ADD KEY `krs_detail_mata_kuliah_id_foreign` (`mata_kuliah_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswa_nim_unique` (`nim`),
  ADD UNIQUE KEY `mahasiswa_email_unique` (`email`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mata_kuliah_kode_mk_unique` (`kode_mk`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `krs_detail`
--
ALTER TABLE `krs_detail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD CONSTRAINT `krs_detail_krs_id_foreign` FOREIGN KEY (`krs_id`) REFERENCES `krs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `krs_detail_mata_kuliah_id_foreign` FOREIGN KEY (`mata_kuliah_id`) REFERENCES `mata_kuliah` (`id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
