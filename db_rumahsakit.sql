-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2025 at 04:10 AM
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
-- Database: `db_rumahsakit`
--

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
(1, '2025_06_20_021056_create_rumah_sakits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakits`
--

CREATE TABLE `rumah_sakits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_rumah_sakit` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rumah_sakits`
--

INSERT INTO `rumah_sakits` (`id`, `nama_rumah_sakit`, `alamat`, `no_telepon`, `tipe`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'RS Sehat Sentosa4', 'Jl. Merdeka No. 45, Jakarta', '081275549631', 'umum', -6.208763, 106.845599, '2025-06-20 02:40:51', '2025-06-21 17:03:11'),
(11, 'RSUD Dr. Sulaiman', ' Jl. Dr. Abdul Rivai No.1', '0555666', 'khusus', -0.299706, 100.366122, '2025-06-25 00:51:40', '2025-06-25 00:51:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rumah_sakits`
--
ALTER TABLE `rumah_sakits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rumah_sakits`
--
ALTER TABLE `rumah_sakits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
