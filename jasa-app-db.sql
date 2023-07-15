-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jul 2023 pada 16.50
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasa-app-db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `advantage_service`
--

CREATE TABLE `advantage_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `advantage` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `advantage_service`
--

INSERT INTO `advantage_service` (`id`, `service_id`, `advantage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hot Service', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(2, 1, 'Goals Tujuan', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(3, 1, 'Anak Cakep', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(4, 1, 'Garansi  1 Bulan', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(5, 2, 'bisa maintenance', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39'),
(6, 2, 'bisa maintenance', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39'),
(7, 2, 'bisa maintenance', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `advantage_user`
--

CREATE TABLE `advantage_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `advantage` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `advantage_user`
--

INSERT INTO `advantage_user` (`id`, `service_id`, `advantage`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Body Goals', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(2, 1, 'Keren', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(3, 1, 'Ganteng', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(4, 1, 'Good', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(5, 2, 'wordpress', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39'),
(6, 2, 'plugin', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39'),
(7, 2, 'UI UX', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_supplier` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_barang` varchar(191) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `id_supplier`, `nama_barang`, `harga`, `stock`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_user`
--

CREATE TABLE `detail_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `photo` longtext DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `contact_number` varchar(191) DEFAULT NULL,
  `biography` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_user`
--

INSERT INTO `detail_user` (`id`, `users_id`, `photo`, `role`, `contact_number`, `biography`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/photo/7oX1mHV9LFBcHZi0jEp1KUXwaA44qEBBd655nB9M.jpg', 'Full-Stack Developer', '085714156294', 'test123', NULL, '2023-06-18 20:21:24', '2023-07-08 07:39:24'),
(2, 2, 'assets/photo/fkIiz9fiz0DHvZyMI1ljpIiJzDVZsb1psWp60P7C.png', 'Wordpress designer', '085714156294', NULL, NULL, '2023-06-18 20:21:24', '2023-07-08 19:39:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `experience_user`
--

CREATE TABLE `experience_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `detail_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `experience` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `experience_user`
--

INSERT INTO `experience_user` (`id`, `detail_user_id`, `experience`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Maintenance server', NULL, '2023-07-01 01:30:01', '2023-07-08 07:40:27'),
(2, 1, 'Full-Stack Developer AWS', NULL, '2023-07-01 01:30:01', '2023-07-08 07:40:27'),
(3, 1, 'Hyundai Head IT', NULL, '2023-07-01 01:30:01', '2023-07-08 07:40:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_05_21_100000_create_teams_table', 1),
(7, '2020_05_21_200000_create_team_user_table', 1),
(8, '2020_05_21_300000_create_team_invitations_table', 1),
(9, '2023_06_07_170625_create_sessions_table', 1),
(10, '2023_06_09_154033_create_detail_user_table', 1),
(11, '2023_06_09_154054_create_experience_user_table', 1),
(12, '2023_06_09_154954_create_advantage_user_table', 1),
(13, '2023_06_09_155020_create_tagline_table', 1),
(14, '2023_06_09_155040_create_advantage_service_table', 1),
(15, '2023_06_09_155125_create_thumbnail_service_table', 1),
(16, '2023_06_09_160749_create_service_table', 1),
(17, '2023_06_09_161434_create_order_table', 1),
(18, '2023_06_09_161451_create_order_status_table', 1),
(19, '2023_06_09_163805_add_foreign_keys_detail_user', 1),
(20, '2023_06_09_163943_add_foreign_keys_experience_user', 1),
(21, '2023_06_10_172016_add_foreign_keys_service', 1),
(22, '2023_06_10_173446_add_foreign_keys_to_advantage_user', 1),
(23, '2023_06_10_173554_add_foreign_keys_to_advantag_service', 1),
(24, '2023_06_10_173622_add_foreign_keys_to_tagline', 1),
(25, '2023_06_10_173702_add_foreign_keys_to_thumbnail_service', 1),
(26, '2023_06_10_181554_add_foreign_keys_to_order', 1),
(27, '2023_06_19_140036_create_barang_table', 1),
(28, '2023_06_19_140059_create_supplier_table', 1),
(29, '2023_06_19_140128_create_transaksi_table', 1),
(30, '2023_06_19_140142_create_pembayaran_table', 1),
(31, '2023_06_19_140152_create_pembeli_table', 1),
(32, '2023_06_19_142209_add_foreign_keys_supplier', 1),
(33, '2023_06_19_142228_add_foreign_keys_transaksi', 1),
(34, '2023_06_19_142245_add_foreign_keys_pembayaran', 1),
(35, '2023_06_19_142300_add_foreign_keys_pembeli', 1),
(36, '2023_06_19_145852_add_foreign_keys_barang', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `freelancer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `buyer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` longtext DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `order_status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order`
--

INSERT INTO `order` (`id`, `service_id`, `freelancer_id`, `buyer_id`, `file`, `note`, `expired`, `order_status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 1, 'assets/order/attachment/CaCxgWKXKYmOC1yuO8KO2VA4zbtz1FejJGc61jC7.zip', 'bisa pesan sekarang', '2023-07-11', 1, NULL, '2023-07-08 08:14:45', '2023-07-08 10:31:01'),
(2, 2, 2, 1, NULL, NULL, '2023-07-11', 3, NULL, '2023-07-08 08:16:24', '2023-07-08 09:03:53'),
(3, 2, 2, 1, NULL, NULL, '2023-07-11', 3, NULL, '2023-07-08 08:21:48', '2023-07-08 09:03:51'),
(4, 2, 2, 1, NULL, NULL, '2023-07-11', 3, NULL, '2023-07-08 08:23:17', '2023-07-08 09:03:50'),
(5, 2, 2, 1, NULL, NULL, '2023-07-11', 3, NULL, '2023-07-08 08:27:15', '2023-07-08 09:03:48'),
(6, 2, 2, 1, NULL, NULL, '2023-07-11', 3, NULL, '2023-07-08 08:33:28', '2023-07-08 09:03:45'),
(7, 1, 1, 2, 'assets/order/attachment/yrXHMuJCGNx0dIlG0GpXfuWqG7JOrAcGXc30sXEX.zip', 'edit', '2023-07-11', 2, NULL, '2023-07-08 08:45:45', '2023-07-08 10:31:56'),
(8, 1, 1, 2, NULL, NULL, '2023-07-12', 2, NULL, '2023-07-08 19:45:48', '2023-07-08 19:46:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_status`
--

CREATE TABLE `order_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Approved', NULL, '2023-06-18 20:21:24', '2023-06-18 20:21:24'),
(2, 'Progress', NULL, '2023-06-18 20:21:24', '2023-06-18 20:21:24'),
(3, 'Rejected', NULL, '2023-06-18 20:21:24', '2023-06-18 20:21:24'),
(4, 'Waiting', NULL, '2023-06-18 20:21:24', '2023-06-18 20:21:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `id_transaksi` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pembeli` varchar(191) DEFAULT NULL,
  `no_telp` int(11) DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `jk` char(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id`, `nama_pembeli`, `no_telp`, `alamat`, `jk`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Yaya', 851652355, 'Jl baru gang II', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service`
--

CREATE TABLE `service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `delivery_time` int(11) DEFAULT NULL,
  `revision_limit` int(11) DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `service`
--

INSERT INTO `service` (`id`, `users_id`, `title`, `description`, `delivery_time`, `revision_limit`, `price`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jasa Pembuatan Anak Keliling', 'Buta Langsung Jadi', 2, 2, '2500000', 'Bisa request tempat', NULL, '2023-07-02 03:38:22', '2023-07-08 19:45:05'),
(2, 2, 'Pembuatan website dengan wordpress', 'wordpress', 8, 7, '3000000', 'bisa pesan sekarang', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('i4azMGt4370kKjsRwnvT3mp8kaa0yUGjh8XZ08CW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickt4UGVWamJMQnVrNFFmNzBnODlWMHRPUHA4YUdwNjVZUVdqRzJ0YiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1689432563),
('pW8tzpbVx1gQoaJg0qeIBBDn6CANQQCfULkIlyDA', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZEpqZ3FJaHduaTBXelg3bWgwakVBOEh0MjlPcEZlMllncWJsVlVQdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tZW1iZXIvb3JkZXIiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1688838039),
('tj5BDn3vFocWaZAUhGVrHY6iQ3z3RlnlRh0XbEPa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWdCNjV0QjhtQWVLSlU1NkUxUkNHRjkyZTZyVUNrcW1qeE14eFNwTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1688870781),
('xjnvhVgxBC4XwV8Ep8Zn2tPBT7WrYv2bYtit6MIz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.67', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYXRpZWFXa3hZZko0R0xDaW5NdFZNQ1lGMlZGaEF3QWgzZlZPdUN2OCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1688870357);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_supplier` varchar(191) DEFAULT NULL,
  `no_telp` int(11) DEFAULT NULL,
  `alamat` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `no_telp`, `alamat`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Yaya', 857141562, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagline`
--

CREATE TABLE `tagline` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tagline` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tagline`
--

INSERT INTO `tagline` (`id`, `service_id`, `tagline`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bisa gaya apa aja', NULL, '2023-07-02 03:38:23', '2023-07-08 19:45:05'),
(2, 1, 'Bisa gaya miring', NULL, '2023-07-02 03:38:23', '2023-07-08 19:45:05'),
(3, 2, 'bisa pesan sekarang', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `role` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `thumbnail_service`
--

CREATE TABLE `thumbnail_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `thumbnail` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `thumbnail_service`
--

INSERT INTO `thumbnail_service` (`id`, `service_id`, `thumbnail`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/service/thumbnail/ToHTAAJ4wgO8C1W6ag5RjojiNumdsaKyAwu5bXon.jpg', NULL, '2023-07-02 03:38:23', '2023-07-08 19:45:05'),
(2, 1, 'assets/service/thumbnail/woNgHTgtUGm1gOpT5zc7Dwk1cNXYev5NBCXaSZaO.png', NULL, '2023-07-02 03:38:23', '2023-07-08 19:45:05'),
(3, 1, 'assets/service/thumbnail/PgptU94GwYOWIJVYgCtCwzqjVooQ6D4pRNQv7lxM.jpg', NULL, '2023-07-02 03:38:23', '2023-07-08 19:45:05'),
(4, 1, 'assets/service/thumbnail/84vZH22ROJVy5Y0c30zfF5FJfNcPSBS5QntrcjYc.png', NULL, '2023-07-02 03:38:23', '2023-07-08 19:45:05'),
(5, 1, 'assets/service/thumbnail/l3XItDLBCLCh7OclcKCLQFy2nMrhlkKkz8nxOqJl.png', NULL, '2023-07-08 07:21:52', '2023-07-08 07:21:52'),
(6, 2, 'assets/service/thumbnail/CVVUuFzSohigjsHC5OG09tMoQjSEfvx9D2ONS2as.jpg', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39'),
(7, 2, 'assets/service/thumbnail/zILlaaNBzzoy1XirHv6cNYpBxTEXDeDRdRPZge8U.png', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39'),
(8, 2, 'assets/service/thumbnail/fYOIKxG4BLP1tJckgypvbEo4CDkP1YS1UCbcrv7R.png', NULL, '2023-07-08 08:13:39', '2023-07-08 08:13:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pembeli` bigint(20) UNSIGNED DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Apriyansyah', 'muhammadapriyansyah191@gmail.com', NULL, '$2y$10$h/zmVcRfhLcaEfIfpi7J2e0irVE7c8qyy1jEVWrJ5JsLpMyguYc4e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-18 20:21:24', '2023-06-18 20:21:24'),
(2, 'Regina Sephiani', 'reginasephiani099@gmail.com', NULL, '$2y$10$mmlwWVlQRj7mMtcePhP5fuWM.5t8jklIfqWOGTSNOFEmsiv0zyLqG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-18 20:21:24', '2023-06-18 20:21:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `advantage_service`
--
ALTER TABLE `advantage_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_advantage_service_to_service` (`service_id`);

--
-- Indeks untuk tabel `advantage_user`
--
ALTER TABLE `advantage_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service_id_to_service` (`service_id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_barang_to_bsupplier` (`id_supplier`);

--
-- Indeks untuk tabel `detail_user`
--
ALTER TABLE `detail_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_user_to_users` (`users_id`);

--
-- Indeks untuk tabel `experience_user`
--
ALTER TABLE `experience_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_experience_user_to_detail_user` (`detail_user_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_service_to_users` (`service_id`),
  ADD KEY `fk_order_freelancer_to_users` (`freelancer_id`),
  ADD KEY `fk_order_buyer_to_users` (`buyer_id`),
  ADD KEY `fk_order_to_order_status` (`order_status_id`);

--
-- Indeks untuk tabel `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembayaran_to_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service_to_users` (`users_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tagline`
--
ALTER TABLE `tagline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tagline_to_service` (`service_id`);

--
-- Indeks untuk tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indeks untuk tabel `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indeks untuk tabel `thumbnail_service`
--
ALTER TABLE `thumbnail_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_thumbnail_service_to_service` (`service_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transaksi_to_barang` (`id_barang`),
  ADD KEY `fk_transaksi_to_pembeli` (`id_pembeli`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `advantage_service`
--
ALTER TABLE `advantage_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `advantage_user`
--
ALTER TABLE `advantage_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `detail_user`
--
ALTER TABLE `detail_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `experience_user`
--
ALTER TABLE `experience_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service`
--
ALTER TABLE `service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tagline`
--
ALTER TABLE `tagline`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `thumbnail_service`
--
ALTER TABLE `thumbnail_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `advantage_service`
--
ALTER TABLE `advantage_service`
  ADD CONSTRAINT `fk_advantage_service_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `advantage_user`
--
ALTER TABLE `advantage_user`
  ADD CONSTRAINT `fk_service_id_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `fk_barang_to_bsupplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_user`
--
ALTER TABLE `detail_user`
  ADD CONSTRAINT `fk_detail_user_to_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `experience_user`
--
ALTER TABLE `experience_user`
  ADD CONSTRAINT `fk_experiece_user_to_detail_user` FOREIGN KEY (`detail_user_id`) REFERENCES `detail_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_buyer_to_users` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_freelancer_to_users` FOREIGN KEY (`freelancer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_service_to_users` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_to_order_status` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `fk_pembayaran_to_transaksi` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `fk_service_to_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tagline`
--
ALTER TABLE `tagline`
  ADD CONSTRAINT `fk_tagline_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `thumbnail_service`
--
ALTER TABLE `thumbnail_service`
  ADD CONSTRAINT `fk_thumbnail_service_to_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_transaksi_to_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_transaksi_to_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
