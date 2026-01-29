-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2026 at 04:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kosku`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_12c6fc06c99a462375eeb3f43dfd832b08ca9e17', 'i:2;', 1769613492),
('laravel_cache_12c6fc06c99a462375eeb3f43dfd832b08ca9e17:timer', 'i:1769613492;', 1769613492),
('laravel_cache_4d134bc072212ace2df385dae143139da74ec0ef', 'i:1;', 1769614031),
('laravel_cache_4d134bc072212ace2df385dae143139da74ec0ef:timer', 'i:1769614031;', 1769614031),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1769646456),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1769646456;', 1769646456);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kos`
--

CREATE TABLE `kos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mixed',
  `facilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kos`
--

INSERT INTO `kos` (`id`, `name`, `address`, `description`, `gender`, `facilities`, `price`, `image`, `rules`, `deleted_at`, `contact_person`, `rating`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'La Boutique Lux\'s Kos', 'Jl. Margonda Raya No. 150, Beji, Depok, Jawa Barat', 'Selamat datang di Melati Residence for Ladies, hunian eksklusif bergaya modern yang dirancang khusus untuk kenyamanan dan keamanan para wanita muda. Lokasi strategis dekat kampus, mall, dan halte TransJogja membuat kos ini ideal bagi mahasiswi maupun pekerja profesional. Suasana tenang, bersih, dan fasilitas lengkap siap mendukung aktivitas harianmu!', 'mixed', '[\"wifi\",\"ac\",\"TV\",\"security\",\"laundry\"]', 1000000, '[\"01JX8B4GJM228ZZYAWZ1V59AAS.jpg\",\"01JX8B4GJSEWT8XJC69QJVM47Q.jpg\",\"01JX8B4GJX1HJ08A8XESEG3EAW.jpg\",\"01JX8B4GJZM7PPB5659X38R4WR.jpg\",\"01JX8B4GK1V2XT792V64B4EW82.jpg\",\"01JX8B4GK4G2CEXW75RXADND3R.jpg\"]', 'Khusus penghuni perempuan\n\nDilarang membawa lawan jenis ke kamar\n\nTidak diperbolehkan merokok di dalam bangunan\n\nTidak boleh membawa hewan peliharaan\n\nJam malam maksimal pukul 22.00 WIB', NULL, 'Bu Agus - 081234567890', 0, 2, '2025-06-08 10:23:07', '2026-01-26 22:47:50'),
(5, 'The Haven Residence', 'Jl. Tunjungan No. 45, Genteng, Surabaya, Jawa Timur', 'The Haven Residence adalah kost eksklusif yang mengutamakan kenyamanan dan keamanan bagi para penghuninya. Terletak di kawasan strategis dengan akses mudah ke pusat kota dan fasilitas umum. Cocok untuk pelajar, pekerja, maupun profesional muda.', 'male', '[\"laundry\",\"parking\",\"wifi\",\"ac\",\"kitchen\",\"security\",\"TV\"]', 240000, '[\"01JX8D7GQV920ZM036YV2YB649.jpg\",\"01JX8D7GR7A7CRJN5VK3RBBHME.jpg\",\"01JX8D7GRHVEZSNQW6E9HWFVJM.jpeg\",\"01JXKZAPSMHRSN32K7XW0GBV67.jpg\",\"01JXKZAPTSCXD7DQY1W9ZFWD7F.jpg\",\"01JXKZAPTVDK8J636ZQJHHW73E.jpg\"]', 'Khusus perempuan dan laki-laki terpisah\n\nTidak diperbolehkan merokok di dalam kamar\n\nDilarang membawa tamu menginap tanpa izin\n\nJaga ketertiban dan kebersihan lingkungan kos\n\nJam malam pukul 22.00 WIB', NULL, 'Pak Hadi – 0812-3344-5566', 0, 9, '2025-06-08 11:35:44', '2025-06-12 23:23:42'),
(6, 'Urban Nest', 'Jl. Balai Kota No. 1, Kesawan, Medan Barat, Kota Medan', 'Urban Nest adalah kost nyaman dan modern yang cocok untuk mahasiswa dan pekerja muda. Dengan lokasi strategis dekat kampus dan pusat kota, Urban Nest memberikan kenyamanan serta fasilitas lengkap untuk menunjang aktivitas sehari-hari.', 'mixed', '[\"laundry\",\"parking\",\"ac\",\"wifi\",\"security\",\"kitchen\",\"TV\"]', 1100000, '[\"01JX8DHZ3Y3VVJ2VQQN0NM1XJ4.jpg\",\"01JX8DHZ4AZANMPDKNR49RKJHE.webp\",\"01JX8DHZ4J3E5VRHAWW92Y0AGY.webp\",\"01JX8DHZ4VBB5PT81CJT78Z7K4.jpg\",\"01JX8DHZ54G893FBA23WEX2WVK.webp\",\"01JX8DHZ5CMS19K9QD3S70A27Z.jpg\"]', 'Hanya menerima penghuni perempuan berbusana sopan\n\nTidak diperbolehkan membawa lawan jenis ke area kos\n\nWajib menjaga waktu ibadah dan ketertiban lingkungan\n\nMusik keras atau aktivitas mengganggu dilarang\n\nDilarang membawa makanan/minuman haram (alkohol, dsb)', NULL, 'Ibu Lestari – 0821-9987-3321', 4.3636, 9, '2025-06-08 11:41:27', '2025-06-12 08:32:14'),
(7, 'Greenwood Residence', 'Jl. Gajah Mada No. 15, Dauh Puri, Denpasar Barat, Kota Denpasar', 'Greenwood Residence menawarkan hunian nyaman dengan konsep hijau dan sejuk di tengah kota Jakarta Barat. Cocok untuk profesional dan mahasiswa yang menginginkan lingkungan asri namun tetap mudah dijangkau dari pusat aktivitas.', 'female', '[\"parking\",\"laundry\",\"ac\",\"wifi\",\"TV\",\"kitchen\",\"security\"]', 1350000, '[\"01JX8E5H4XECP3CAVEN3F1H1GB.jpg\",\"01JX8E5H54FM441SDKCDJCWZJR.jpg\",\"01JX8E5H59VWCJG8MEWG8W9JJZ.jpg\",\"01JX8E5H5E76F5RBQFAZXTCHY9.jpg\",\"01JX8E5H5KW8YHHP04V2H4HQDD.jpg\",\"01JX8E5H5S4EZHXTRV6Y23RK28.jpeg\"]', 'Tamu boleh berkunjung di ruang tamu maksimal sampai pukul 21.00\n\nKamar pribadi dan fasilitas bersama harus dijaga kebersihannya\n\nDiperbolehkan membawa alat elektronik pribadi (rice cooker, setrika, dll)\n\nDilarang melakukan aktivitas jual-beli atau bisnis dari kamar\n\nWajib lapor jika ada kerusakan fasilitas\n\n', NULL, 'Pak Arif – 0813-4567-8910', 0, 9, '2025-06-08 11:52:08', '2025-06-08 12:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_29_181645_create_kos_table', 1),
(5, '2025_05_30_130911_add_user_id_to_kos_table', 1),
(6, '2025_05_31_042030_add_avatar_to_users_table', 1),
(7, '2025_06_02_171145_add_type_and_room_size_to_kos_table', 1),
(8, '2025_06_03_051317_update_image_column_to_json_in_kos_table', 1),
(9, '2025_06_03_101622_add_gender_to_kos_table', 1),
(10, '2025_06_08_171120_create_reviews_table', 1),
(11, '2025_06_08_191133_create_password_reset_otps_table', 2),
(12, '2025_06_09_073404_create_saved_kos_table', 3),
(13, '2025_06_12_000000_create_reviews_table', 4),
(14, '2025_06_12_120000_add_rating_to_kos_table', 5),
(15, '2025_06_13_090818_add_images_to_reviews_table', 6),
(16, '2025_06_14_165337_create_reports_table', 7),
(17, '2025_06_14_170251_add_priority_and_subject_to_reports_table', 8),
(18, '2025_06_14_171933_create_notifications_table', 9),
(19, '2025_06_15_111144_add_performance_indexes', 10);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('018f900a-c237-4014-8b0f-2e7448467094', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Andi Pratama: Gagal Login ke Akun Pengguna\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/36\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:00:34', '2025-06-15 02:00:34'),
('0849ab4a-46d0-4b6d-89ce-87cf14a89cfc', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from ssssssssssss: ggggggggggggggggg\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/30\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 00:55:23', '2025-06-15 00:55:23'),
('086fd431-7029-4e41-9bc7-e41642bf2c2e', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User: Test Report Submission\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/23\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:03:27', '2025-06-14 14:03:27'),
('0cc29b44-1105-4024-aca5-3459687ab496', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from cccc: vvvvvv\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/42\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:47:39', '2025-06-15 02:47:39'),
('19e75e40-fd9c-4578-8766-34738f1f4b46', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from John Doe: Test Report - System Issues\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/16\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:34:30', '2025-06-14 11:34:30'),
('1e69a871-507f-484f-88ac-6f5841c48a96', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from sasas: sasasasa\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/21\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 13:47:28', '2025-06-14 13:47:28'),
('2054101f-3425-496c-b76b-5aaaa64ec3a6', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from b nnnn: bb\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/40\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:29:10', '2025-06-15 02:29:10'),
('210dadd8-1210-4665-8e6a-adb7593020d9', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Adinda Putri: AC Kamar No. 204 Tidak Dingin & Berbunyi\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/47\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2026-01-27 01:11:59', '2026-01-27 01:11:59'),
('215e7033-d88b-4da8-b4b1-b3525a9379bb', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from v: b\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/46\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:50:49', '2025-06-15 02:50:49'),
('21c80e4e-58ea-4d61-b25f-f5ba1247c75a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from kkkk: kkkkkk\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/18\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:42:53', '2025-06-14 11:42:53'),
('27545054-57d2-4542-a881-ef5ebbbd1c0a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from sadasd: aaaaaaaaaaa\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/22\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 13:57:40', '2025-06-14 13:57:40'),
('29b3e91c-03d8-4021-ac7e-99b829e0f131', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Aldo: saya gasuka pelayanan nya\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/20\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 12:37:45', '2025-06-14 12:37:45'),
('2f96930f-bac6-4cca-b07f-d936ce512a32', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from z: z\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/43\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:49:08', '2025-06-15 02:49:08'),
('30709cc2-4c23-476a-bc3b-7cc1bffa46c6', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from hghghg: hhhhhhhhh\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/26\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:15:11', '2025-06-14 14:15:11'),
('31dccad4-6946-4346-94a3-a69a93deefc7', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from f: g\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/44\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:49:57', '2025-06-15 02:49:57'),
('353f97dc-1a5d-439e-ab76-7a950f0fb7ae', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Sarah Wijayanti: Formulir pendaftaran tidak bisa dikirim\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/37\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:01:39', '2025-06-15 02:01:39'),
('46088515-6a93-4219-b5bc-1e468c9dcd08', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from d: d\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/45\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:50:22', '2025-06-15 02:50:22'),
('4d373036-b663-417b-a024-7077d283ec30', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from b nnnn: bb\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/40\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:29:10', '2025-06-15 02:29:10'),
('547f2b57-d9e4-4486-937b-53607db1f6fb', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User: Test Report Submission\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/23\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:03:27', '2025-06-14 14:03:27'),
('58c466e3-55a5-475f-b17b-34b6ea482e89', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Rizky Hidayat: Pembayaran berhasil tetapi status belum diperbarui\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/38\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:03:30', '2025-06-15 02:03:30'),
('5e615521-8885-4e31-9b35-c51bc44466ba', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from f: g\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/44\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:49:57', '2025-06-15 02:49:57'),
('6013e0c3-1d9d-4819-bc4e-69b86e160972', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from sdsda: wwwwwwwwwwwww\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/29\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 00:54:07', '2025-06-15 00:54:07'),
('60802154-3253-4cc0-a725-90ffb5641679', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Rizky Hidayat: Pembayaran berhasil tetapi status belum diperbarui\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/38\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:03:30', '2025-06-15 02:03:30'),
('65ab4a74-2b1e-4355-976c-67e2eaf190cf', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from sdsda: wwwwwwwwwwwww\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/29\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 00:54:07', '2025-06-15 00:54:07'),
('75efe4c5-69ff-4de8-a9fa-d86c25b5f5b0', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Sarah Wijayanti: Formulir pendaftaran tidak bisa dikirim\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/37\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:01:39', '2025-06-15 02:01:39'),
('7925ccc4-8945-4474-ad24-84cca0dad0ec', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from cccc: vvvvvv\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/42\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:47:39', '2025-06-15 02:47:39'),
('7de54a66-429c-4e7f-8303-e20b599a9dde', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Demo User: Demo: System Performance Issue\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/19\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:56:01', '2025-06-14 11:56:01'),
('85b75f8e-669b-4c30-995c-23cf4343702d', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User: Test Report Submission\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/24\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:07:46', '2025-06-14 14:07:46'),
('868ca7a2-104a-4513-b57f-45e7c9fe97e3', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from hghghg: hhhhhhhhh\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/26\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:15:11', '2025-06-14 14:15:11'),
('892b6ee7-573e-4397-9ddb-6336eeb83b47', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from sasas: ffffffff\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/39\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:19:30', '2025-06-15 02:19:30'),
('9117f75c-3c7f-42c7-b231-d451a703d55f', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Demo User: Demo: System Performance Issue\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/19\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:56:01', '2025-06-14 11:56:01'),
('95c1bb7a-0348-4b50-807a-3a2e46569bc7', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from wwww: aaaaaaaaaaas\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/28\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 00:43:38', '2025-06-15 00:43:38'),
('96013c64-af45-430a-be1e-a41023a15f4b', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from sda: sdad\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/14\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:34:30', '2025-06-14 11:34:30'),
('97aef8e8-4a6c-4609-acaf-a9f8b38e01ed', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from v: b\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/46\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:50:49', '2025-06-15 02:50:49'),
('981c451e-7af8-4e19-87ed-9ef4b34df296', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from ssssssssssss: ggggggggggggggggg\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/30\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 00:55:23', '2025-06-15 00:55:23'),
('9a8dcc63-e74b-4575-95ac-1188136a38e9', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from asa: saaaaaaaa\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/15\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:34:30', '2025-06-14 11:34:30'),
('9cb90e43-9f24-4083-9edd-98779e9a0902', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from sasas: ffffffff\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/39\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:19:30', '2025-06-15 02:19:30'),
('a3b57d0a-6b5e-4eeb-bdf5-e0de50ff53dd', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from sasas: sssssssssssss\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/41\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:47:07', '2025-06-15 02:47:07'),
('a4008cee-2b18-48ed-b31e-663939c88f50', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from dwww: sssssss\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/34\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 01:15:46', '2025-06-15 01:15:46'),
('a80be9db-7686-4fec-b0d0-b7282ab18280', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from sasas: sasasasa\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/21\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 13:47:28', '2025-06-14 13:47:28'),
('b0143026-06cb-4f1e-a76f-55b10d774dfa', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from sasas: sssssssssssss\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/41\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:47:07', '2025-06-15 02:47:07'),
('b35837b7-1c68-410b-b676-02b71153be95', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from d: d\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/45\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:50:22', '2025-06-15 02:50:22'),
('b5b10e19-0770-4432-9e97-c20ae0be0d72', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from dwww: sssssss\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/34\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 01:15:46', '2025-06-15 01:15:46'),
('ba006be1-55d7-4272-a674-8082607ae08f', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Adinda Putri: AC Kamar No. 204 Tidak Dingin & Berbunyi\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/47\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2026-01-27 01:11:59', '2026-01-27 01:11:59'),
('ba86f36f-4a30-44b4-85db-a6c40e2f3579', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from kkkk: kkkkkk\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/18\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:42:53', '2025-06-14 11:42:53'),
('bfc59b24-ebde-42c9-b674-b3fcf09d8924', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Andi Pratama: Gagal Login ke Akun Pengguna\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/36\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:00:34', '2025-06-15 02:00:34'),
('c372285f-456b-446a-a906-9cf9b6cf60fd', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 18, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Adinda Putri: AC Kamar No. 204 Tidak Dingin & Berbunyi\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/47\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2026-01-27 01:11:59', '2026-01-27 01:11:59'),
('c4b6338b-2ba1-41bc-9318-8a4eb29e6646', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from sda: sdad\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/14\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:34:30', '2025-06-14 11:34:30'),
('c511f975-8c8b-4f58-bcd7-02a7e216d83d', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from John Doe: Test Report - System Issues\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/16\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:34:30', '2025-06-14 11:34:30'),
('c6344181-1c41-43c3-a7d1-6e75d3030e87', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Budi Santoso: Pompa Air Mati di Area Laundry\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/48\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2026-01-27 01:21:38', '2026-01-27 01:21:38'),
('c8236e0b-2e4f-44dd-ae0f-e70d6df33b29', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Budi Santoso: Pompa Air Mati di Area Laundry\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/48\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2026-01-27 01:21:38', '2026-01-27 01:21:38'),
('c859a44c-cfe8-4143-8c95-03c20f544e02', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from Aldo: saya gasuka pelayanan nya\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/20\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 12:37:45', '2025-06-14 12:37:45'),
('cad87dce-e038-4dc8-97d6-ae346002cf27', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from asa: saaaaaaaa\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/15\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:34:30', '2025-06-14 11:34:30'),
('d482f504-03eb-4c57-88a9-99cbe288af79', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New low priority report from sadasd: aaaaaaaaaaa\",\"color\":\"info\",\"icon\":\"heroicon-o-information-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/22\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 13:57:40', '2025-06-14 13:57:40'),
('dc785c07-2cb0-47ef-a7f6-82a006eb1037', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 18, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Budi Santoso: Pompa Air Mati di Area Laundry\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/48\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2026-01-27 01:21:38', '2026-01-27 01:21:38'),
('e11f30eb-ab6f-4ba7-8e69-33a4fc88ad6d', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from ddd: lllllllllll\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/31\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 01:05:17', '2025-06-15 01:05:17'),
('e45713c4-07cc-4862-921a-1714ea7e1534', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User Flow: Test Complete Flow\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/17\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:37:20', '2025-06-14 11:37:20'),
('e63bd375-3724-42b7-a46f-2d129257fd35', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User: Test Report Submission\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/24\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:07:46', '2025-06-14 14:07:46'),
('eac0f395-7f00-4037-b260-dd0d028a77a9', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from ddd: lllllllllll\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/31\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 01:05:17', '2025-06-15 01:05:17'),
('ee528b46-72cd-4bcc-8c58-e3be23903692', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User Flow: Test Complete Flow\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/17\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 11:37:20', '2025-06-14 11:37:20'),
('f28380f0-f329-46fa-98b3-b87149034846', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User: Test Report Submission\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/25\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:11:57', '2025-06-14 14:11:57'),
('f5131520-d445-44b4-92d3-885e5ad604b1', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from z: z\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/43\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 02:49:08', '2025-06-15 02:49:08'),
('f816b1e1-8b71-40ba-b3c3-0da6d00b146b', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from Test User: Test Report Submission\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/25\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-14 14:11:57', '2025-06-14 14:11:57'),
('f83bb9ad-e80e-4ae5-b072-69e1c1bda020', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 15, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from aaa: ddd\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/35\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 01:38:33', '2025-06-15 01:38:33'),
('fc3c2458-8eda-44de-a9fa-d303efc0763a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New high priority report from wwww: aaaaaaaaaaas\",\"color\":\"danger\",\"icon\":\"heroicon-o-exclamation-triangle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/28\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 00:43:38', '2025-06-15 00:43:38'),
('fe1c7ca0-4e87-4bc8-a3ff-e049e831750c', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 16, '{\"title\":\"New Report Received\",\"body\":\"New medium priority report from aaa: ddd\",\"color\":\"warning\",\"icon\":\"heroicon-o-exclamation-circle\",\"actions\":[{\"name\":\"view\",\"label\":\"View Report\",\"url\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/reports\\/35\",\"button\":true,\"color\":\"primary\"},{\"name\":\"dismiss\",\"label\":\"Dismiss\",\"color\":\"gray\",\"close\":true}],\"format\":\"filament\",\"duration\":\"persistent\"}', NULL, '2025-06-15 01:38:33', '2025-06-15 01:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_otps`
--

CREATE TABLE `password_reset_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `priority` varchar(255) NOT NULL DEFAULT 'medium',
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('pending','in_progress','resolved','closed') NOT NULL DEFAULT 'pending',
  `read_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `name`, `email`, `category`, `priority`, `subject`, `message`, `status`, `read_at`, `admin_id`, `admin_notes`, `created_at`, `updated_at`) VALUES
(36, 'Andi Pratama', 'andi.pratama21@gmail.com', 'account', 'medium', 'Gagal Login ke Akun Pengguna', 'Saya mengalami masalah saat mencoba login ke akun saya. Setiap kali saya memasukkan email dan password, sistem hanya menampilkan loading singkat lalu kembali ke halaman login tanpa notifikasi apapun. Saya sudah mencoba menggunakan perangkat dan jaringan yang berbeda, serta memastikan akun saya aktif. Mohon dicek apakah ada kendala di sisi server atau validasi login.', 'resolved', '2026-01-27 00:50:22', NULL, NULL, '2025-06-15 02:00:28', '2026-01-27 00:51:17'),
(37, 'Sarah Wijayanti', 'sarah.wijayanti92@gmail.com', 'technical', 'medium', 'Formulir pendaftaran tidak bisa dikirim', 'Saya mencoba mengisi formulir pendaftaran untuk membuat akun baru di website, namun setelah semua kolom terisi, tombol \"Kirim\" tidak merespon apa-apa. Saya sudah mencoba reload halaman dan mengisi ulang formulir beberapa kali, bahkan menggunakan browser lain, tapi hasilnya tetap sama. Mohon bantuannya untuk memeriksa apakah ada error pada script atau validasi form.', 'resolved', '2026-01-27 00:50:19', NULL, NULL, '2025-06-15 02:01:34', '2026-01-27 00:50:42'),
(38, 'Rizky Hidayat', 'rizky.hidayat88@gmail.com', 'account', 'medium', 'Pembayaran berhasil tetapi status belum diperbarui', 'Saya telah melakukan pembayaran melalui transfer bank pada tanggal 13 Juni 2025 pukul 10:45 WIB untuk tagihan bulan ini. Bukti pembayaran sudah saya unggah dan terkonfirmasi oleh sistem, namun sampai sekarang status di dashboard masih menunjukkan “Belum Dibayar”. Saya khawatir ini mengganggu proses berikutnya. Mohon bantuannya untuk segera memverifikasi dan memperbarui status pembayaran saya.', 'resolved', '2025-06-15 02:08:18', NULL, NULL, '2025-06-15 02:03:24', '2026-01-27 00:50:01'),
(47, 'Adinda Putri', 'adinda.p@gmail.com', 'other', 'high', 'AC Kamar No. 204 Tidak Dingin & Berbunyi', 'Halo Admin, saya ingin melaporkan bahwa AC di kamar nomor 204 (Lantai 2) tidak dingin sejak semalam. Selain itu, unit indoor mengeluarkan bunyi berisik yang cukup mengganggu saat dinyalakan. Mohon segera dicek oleh teknisi karena cuaca sedang sangat panas. Terima kasih.', 'pending', NULL, NULL, NULL, '2026-01-27 01:11:48', '2026-01-27 01:11:48'),
(48, 'Budi Santoso', 'budi.santoso99@yahoo.com', 'technical', 'high', 'Pompa Air Mati di Area Laundry', 'Selamat siang Admin. Saya ingin menginfokan bahwa pompa air untuk area laundry lantai 1 sepertinya mati total sejak tadi pagi. Air tidak mengalir sama sekali ke mesin cuci, sehingga banyak penghuni yang tidak bisa mencuci pakaian hari ini. Mohon segera diperbaiki karena ini fasilitas umum yang krusial.', 'pending', NULL, NULL, NULL, '2026-01-27 01:21:30', '2026-01-27 01:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kos_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint(4) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `kos_id`, `name`, `rating`, `comment`, `images`, `created_at`, `updated_at`) VALUES
(23, 7, 'Sarah', 5, 'Gak nyesel pilih kos di sini! Kamarnya estetik banget, furniture masih baru, dan pencahayaan alaminya mantap buat konten.', '[]', '2026-01-27 01:26:39', '2026-01-27 01:26:39'),
(24, 7, 'Riska', 2, 'Kamarnya lumayan, tapi air di kamar mandi sering macet kalau pagi. Tolong diperbaiki pompanya.', '[]', '2026-01-27 01:28:22', '2026-01-27 01:28:22'),
(25, 7, 'Risti', 3, 'Lokasi oke, tapi wifi sering RTO. Buat yang kerja online bakal susah kalau begini terus.', '[]', '2026-01-27 01:30:02', '2026-01-27 01:30:02'),
(26, 7, 'Adel', 5, 'Area bersamanya bersih dan nyaman. Dapur lengkap banget alat-alatnya, jadi hemat bisa masak sendiri tiap hari.', '[]', '2026-01-27 01:34:07', '2026-01-27 01:34:07'),
(27, 6, 'Bayu', 1, 'Kecewa banget. AC di kamar ternyata mati pas saya masuk, respon penjaga lambat buat benerinnya.', '[]', '2026-01-27 02:46:29', '2026-01-27 02:46:29'),
(28, 6, 'Alfiran', 4, 'Lokasi strategis dekat dengan minimarket. Penjaga kosnya juga ramah dan sangat membantu.', '[]', '2026-01-27 02:48:37', '2026-01-27 02:48:37'),
(29, 6, 'Kelvianov', 5, 'Nyaman banget tinggal di sini, lingkungannya tenang tidak berisik. Recomended buat mahasiswa!', '[]', '2026-01-27 02:50:20', '2026-01-27 02:50:20'),
(30, 6, 'Jule', 3, 'Kamar mandi dalam bersih, tapi parkiran motor agak sempit kalau sudah malam. Sisanya oke.', '[]', '2026-01-27 02:51:22', '2026-01-27 02:51:22'),
(33, 5, 'Bigmo', 1, 'Lingkungan bising banget kalau malam, banyak yang nongkrong berisik di depan kamar. Tidak cocok buat yang butuh ketenangan.', '[]', '2026-01-28 17:38:35', '2026-01-28 17:38:35'),
(34, 5, 'Reyhan', 2, 'Ukuran kamar ternyata lebih kecil dari yang terlihat di foto. Untuk harga segini, rasanya kurang worth it dibanding kos sebelah.', '[]', '2026-01-28 17:39:10', '2026-01-28 17:39:10'),
(35, 5, 'Yusuf', 5, 'Sistem keamanannya jempolan, pakai smart lock dan ada CCTV 24 jam. Jadi merasa aman banget taruh barang-barang di kamar.', '[]', '2026-01-28 17:39:50', '2026-01-28 17:39:50'),
(36, 5, 'Giri', 4, 'Owner-nya sangat kooperatif. Ada kendala sedikit langsung ditangani di hari yang sama. Pengalaman tinggal yang menyenangkan!', '[]', '2026-01-28 17:40:09', '2026-01-28 17:40:09'),
(37, 1, 'Rizki', 5, 'Kos paling homey yang pernah saya tempati. Pencahayaannya bagus buat yang suka foto-foto, interior minimalis tapi fungsional.', '[]', '2026-01-28 17:43:03', '2026-01-28 17:43:03'),
(38, 1, 'Hana', 5, 'Kebersihan area komunal selalu terjaga, setiap pagi ada petugas yang bersih-bersih. Sangat nyaman untuk jangka panjang.', '[]', '2026-01-28 17:43:22', '2026-01-28 17:43:22'),
(39, 1, 'Iki', 5, 'Fasilitas laundry dan dapur bersama sangat membantu mahasiswa. Lingkungan juga sangat tenang, tidak dekat jalan raya yang bising.', '[]', '2026-01-28 17:43:46', '2026-01-28 17:43:46'),
(40, 1, 'Lestari', 1, 'Saya meberikan bintang 1 karena saya iri, saya adalah pemilik kos sebelah.', '[]', '2026-01-28 17:45:30', '2026-01-28 17:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `saved_kos`
--

CREATE TABLE `saved_kos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kos_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('oJ9jTdeEXND19ByGmziMi0d5KI3nBykWmsYYGfrR', 25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQXR5WjlzeG9jR1Z2M1FiMks2UDJTcFdtQVp5a25xRFl6MXJVSDFhQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9yZXZpZXdzLzc/cGFnZT0xJnBlcl9wYWdlPTciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyNTt9', 1769630271),
('PjFwPFyh6NcclIM3Oj928gUrev7qbRDHSY9I4s7c', 28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidkJ0UGZwMjRBeFFneFZrMHBCeU1pRlNaczZFWUFPQ2VPaEswS2RhZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9rb3MiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJFBzcGU4eExOVVJuak93SlV4WEhwVS5zUW9WLzAyVVoxcHZ4Ty96ZU91czkuWkJIckFwdXFDIjt9', 1769647808);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','owner','tenant') NOT NULL DEFAULT 'tenant',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Test User', 'test@example.com', '2025-06-09 01:07:24', '$2y$12$1dUoqgBfAy1HMQhEoi1FKOg/8hd/VQyMFbnHxJAfGIrgBIyqSUloa', 'tenant', 'htBXcATAep', '2025-06-08 10:15:55', '2026-01-27 08:13:10', 'default-avatar.svg'),
(2, 'Admin KosKu', 'admin@kosku.com', NULL, '$2y$12$1HCwMF/Ti1McNmH8TBS7fur3UZ7okjtO9j2IcIiRTSxt0EWu3LSR2', 'tenant', NULL, '2025-06-08 10:23:07', '2026-01-27 08:13:10', 'default-avatar.svg'),
(3, 'Budi Santoso', 'budi.santoso@gmail.com', NULL, '$2y$12$872alOQJ3QoNz1sWAKrzEuGt4D8958osrE1JRs26j/2uwSnRFvqh6', 'owner', NULL, '2025-06-08 10:44:09', '2026-01-27 08:13:10', 'default-avatar.svg'),
(4, 'Sari Wijaya', 'sari.wijaya@gmail.com', NULL, '$2y$12$QMH.o0tFAL4pblUUZEMiqe2lyE2lGUl0J4hUPctLhfWvCVH/3lF2u', 'owner', NULL, '2025-06-08 10:44:09', '2026-01-27 08:13:10', 'default-avatar.svg'),
(5, 'Ahmad Rahman', 'ahmad.rahman@gmail.com', NULL, '$2y$12$rufwWQCV2eNSTm.FjCDZ/OZ/vdxTK.3XPHbnFtLQdPWY6BoVt/FRG', 'owner', NULL, '2025-06-08 10:44:09', '2026-01-27 08:13:10', 'default-avatar.svg'),
(6, 'Maya Kusuma', 'maya.kusuma@gmail.com', NULL, '$2y$12$jnFQJisHxJbVVbVjt9nyduLULp58graWqfcdoenypK3M2/ZPbVPo2', 'owner', NULL, '2025-06-08 10:44:09', '2026-01-27 08:13:10', 'default-avatar.svg'),
(7, 'Rudi Hermawan', 'rudi.hermawan@gmail.com', NULL, '$2y$12$9Y1bwdPjA8NnFAJmPNDfaOYltE2FNC6ubjBxtG7NY/mqNzHfPZw0W', 'owner', NULL, '2025-06-08 10:44:10', '2026-01-27 08:13:10', 'default-avatar.svg'),
(9, 'AdminTest1', 'admin1@example.com', '2025-06-08 11:30:34', '$2y$12$ou8q07OuvYp6Cfj90Az/kORZxXUHDY2OngDlvO4aKA1NkqCC4Qi0i', 'owner', NULL, '2025-06-08 11:29:14', '2026-01-27 08:13:10', 'default-avatar.svg'),
(11, 'sad', 'oo@example.com', '2025-06-09 05:32:54', '$2y$12$X2WktumDNKfNX/yBdVpSkOxkyQ2rYp1oRDHBzGwtmbJu/0vGtArXq', 'tenant', NULL, '2025-06-09 05:32:36', '2026-01-27 08:13:10', 'default-avatar.svg'),
(12, 'adasda', 'sadav@example.com', NULL, '$2y$12$sBDKcp6EJsxQMw4tLJ.JR.gP5FXih2dSxjAPeieJnh3mnSbYrOKmO', 'owner', NULL, '2025-06-10 03:33:07', '2026-01-27 08:13:10', 'default-avatar.svg'),
(13, 'adasda', 'sadasav@example.com', NULL, '$2y$12$jv8RzkiDot28NM/W/WgcreoOO5iT/FV1ONdsREZnXvjNnPE7Fx93K', 'owner', NULL, '2025-06-10 03:34:29', '2026-01-27 08:13:10', 'default-avatar.svg'),
(14, 'adasda', 'swwwv@example.com', '2025-06-10 03:35:41', '$2y$12$puvN.fYDsYK6/Pa6dVhwvuIuajNFmUHEVXgwJ3bCVTt8ap5VloXHK', 'owner', NULL, '2025-06-10 03:35:18', '2026-01-27 08:13:10', 'default-avatar.svg'),
(15, 'Admin NeedKos', 'admin@needkos.com', '2025-06-14 10:21:45', '$2y$12$riivK1JkbqHviNZ6O.0YfezJCBFX5nzQTKvUC7w1bI144g.VfWEQe', 'admin', NULL, '2025-06-14 10:21:45', '2026-01-27 08:13:10', 'default-avatar.svg'),
(16, 'Super Admin', 'superadmin@needkos.com', '2025-06-14 10:21:46', '$2y$12$5MIrhHRvYgcb6pEG2I5LWuzipH6CTRTOrwWX1k8OkrLXswEydEGCu', 'admin', NULL, '2025-06-14 10:21:46', '2026-01-27 08:13:10', 'default-avatar.svg'),
(18, 'admin', 'kelvianov10@gmail.com', NULL, '$2y$12$NKT6HeEkQQdxbtJ9mmWxP.BuzHSSEs5XIAh5Nx2Tc4kCeeUfbMBKy', 'admin', 'NcGVvfoW0WtOlgmJDEXrsuBA9nQNJDyBF45tYjdwhc6N0AH0Fu11fX6a2Pqu', '2025-07-24 06:39:08', '2026-01-27 08:13:10', 'default-avatar.svg'),
(19, 'Aditya', 'aditya@gmail.com', NULL, '$2y$12$YBHKI2J3se9INBCjcgwdMe5SNS5OdlbA73IPqtBstAqgYaeHjYtqS', 'tenant', NULL, '2025-09-22 01:32:34', '2026-01-27 08:13:10', 'default-avatar.svg'),
(26, 'Super Admin', 'superadmin@gmail.com', NULL, '$2y$12$B05V93eave0DCayui7I67OuxUDhrGASlw/aeoLZDI6oXSsSSALOZm', 'admin', NULL, '2026-01-28 17:24:33', '2026-01-28 17:24:33', NULL),
(27, 'Penyewa Kos', 'penyewakos@gmail.com', '2026-01-28 17:35:36', '$2y$12$TYdVRNmk5PRxIZ7u6Dwb1eEAJ7A9uMut8wovfXTEPFvWflQ/ARciG', 'tenant', NULL, '2026-01-28 17:35:02', '2026-01-28 17:35:36', NULL),
(28, 'Pemilik Kos', 'pemilikkos@gmail.com', '2026-01-28 17:49:48', '$2y$12$Pspe8xLNURnjOwJUxXHpU.sQoV/02UZ1pvxO/zeOus9.ZBHrApuqC', 'owner', NULL, '2026-01-28 17:49:16', '2026-01-28 17:49:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `kos`
--
ALTER TABLE `kos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kos_user_id_index` (`user_id`),
  ADD KEY `kos_user_id_created_at_index` (`user_id`,`created_at`),
  ADD KEY `kos_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_reset_otps`
--
ALTER TABLE `password_reset_otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_reset_otps_email_index` (`email`),
  ADD KEY `password_reset_otps_otp_index` (`otp`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_admin_id_foreign` (`admin_id`),
  ADD KEY `reports_created_at_index` (`created_at`),
  ADD KEY `reports_status_created_at_index` (`status`,`created_at`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_kos_id_foreign` (`kos_id`);

--
-- Indexes for table `saved_kos`
--
ALTER TABLE `saved_kos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `saved_kos_user_id_kos_id_unique` (`user_id`,`kos_id`),
  ADD KEY `saved_kos_kos_id_foreign` (`kos_id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_index` (`role`),
  ADD KEY `users_role_created_at_index` (`role`,`created_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `kos`
--
ALTER TABLE `kos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `password_reset_otps`
--
ALTER TABLE `password_reset_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `saved_kos`
--
ALTER TABLE `saved_kos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kos`
--
ALTER TABLE `kos`
  ADD CONSTRAINT `kos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_kos_id_foreign` FOREIGN KEY (`kos_id`) REFERENCES `kos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_kos`
--
ALTER TABLE `saved_kos`
  ADD CONSTRAINT `saved_kos_kos_id_foreign` FOREIGN KEY (`kos_id`) REFERENCES `kos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_kos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
