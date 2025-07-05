-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2025 at 04:53 AM
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
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id`, `tanggal`, `nominal`, `created_at`, `updated_at`) VALUES
(1, '2025-07-01', 60253, '2025-07-04 16:21:05', '2025-07-04 16:21:05'),
(2, '2025-07-02', 139276, '2025-07-04 16:21:05', '2025-07-04 16:21:05'),
(3, '2025-07-03', 55608, '2025-07-04 16:21:05', '2025-07-04 16:21:05'),
(4, '2025-07-04', 125567, '2025-07-04 16:21:05', '2025-07-04 16:21:05'),
(5, '2025-07-05', 136461, '2025-07-04 16:21:05', '2025-07-04 16:21:05'),
(6, '2025-07-06', 138990, '2025-07-04 16:21:05', '2025-07-04 16:21:05'),
(7, '2025-07-07', 94893, '2025-07-04 16:21:05', '2025-07-04 17:21:49'),
(8, '2025-07-08', 67307, '2025-07-04 16:21:05', '2025-07-04 16:21:05'),
(9, '2025-07-09', 70000, '2025-07-04 16:21:05', '2025-07-04 17:32:05'),
(11, '2025-07-26', 20001, '2025-07-04 17:20:41', '2025-07-04 17:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(11, '2025-05-07-143542', 'App\\Database\\Migrations\\User', 'default', 'App', 1746631264, 1),
(12, '2025-05-07-143554', 'App\\Database\\Migrations\\Product', 'default', 'App', 1746631264, 1),
(13, '2025-05-07-143604', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1746631264, 1),
(14, '2025-05-07-143616', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1746631264, 1),
(16, '2025-05-07-150454', 'App\\Database\\Migrations\\ProductCategory', 'default', 'App', 1746632390, 2),
(17, '2025-07-04-161920', 'App\\Database\\Migrations\\CreateDiskonTable', 'default', 'App', 1751646009, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'BMW M4 Coupe 2025', 3500000000, 5, '1748273820_a30d06c97790dcdc84d4.jpg', '2025-05-22 13:36:48', '2025-05-26 16:20:15'),
(2, 'Toyota 86', 1000000000, 6, '1748274136_b358aa8155a46e05f861.jpg', '2025-05-20 13:38:41', '2025-05-26 15:42:16'),
(3, 'Ford Mustang GT', 2900000000, 4, '1748274243_c89c2ca13e49cd3cca47.jpg', '2025-05-28 13:39:30', '2025-05-26 15:44:03'),
(4, 'Honda Civic Type R', 1200000000, 7, '1748274002_169a776ec81491dc347a.jpg', '2025-05-23 14:52:00', '2025-05-26 15:40:02'),
(5, 'Toyota Innova Venturer', 650000000, 10, '1748274412_29af6ffdb981cda028e9.jpg', '2025-05-26 15:46:52', '2025-05-26 15:49:03'),
(6, 'Toyota Yaris', 350000000, 12, '1748274525_ca3ffc3309fc7bc67f02.jpg', '2025-05-26 15:48:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `nama`) VALUES
(1, 'Mobil Honda'),
(5, 'Mobil Toyota'),
(6, 'Mobil BMW'),
(7, 'Mobil Ford'),
(10, 'Laptop HP');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `username`, `total_harga`, `alamat`, `ongkir`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mujur.simanjuntak', 7000350000, 'smg', 350000, 1, '2025-07-04 14:43:29', '2025-07-04 14:43:29'),
(2, 'mujur.simanjuntak', 999914433, 'smg', 40000, 0, '2025-07-04 17:58:35', '2025-07-04 17:58:35'),
(3, 'mujur.simanjuntak', 3499914433, 'bulu', 40000, 1, '2025-07-04 18:06:38', '2025-07-04 18:06:38'),
(4, 'mujur.simanjuntak', 1000374433, 'pwd', 500000, 0, '2025-07-04 18:08:30', '2025-07-04 18:08:30'),
(5, 'mujur.simanjuntak', 3500574433, 'kendal', 700000, 0, '2025-07-04 19:07:25', '2025-07-04 19:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_detail`
--

INSERT INTO `transaction_detail` (`id`, `transaction_id`, `product_id`, `jumlah`, `diskon`, `subtotal_harga`, `created_at`, `updated_at`) VALUES
(3, 3, 1, 1, 125567, 3499748866, '2025-07-04 18:06:38', '2025-07-04 18:06:38'),
(4, 4, 2, 1, 125567, 999748866, '2025-07-04 18:08:30', '2025-07-04 18:08:30'),
(5, 5, 1, 1, 125567, 3499748866, '2025-07-04 19:07:25', '2025-07-04 19:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(4, 'gina77', 'hamima72@pudjiastuti.go.id', '$2y$10$m8kz66GFaGX3JqCDqf2kPuQ4z9MEsF9Z6Oq5O5xBgOk2PdIYNBBRq', 'guest', '2025-05-23 13:56:32', NULL),
(5, 'viktor82', 'hsuartini@wibisono.go.id', '$2y$10$pIrQZM50N2T/Ig8gc2fpi.w5Q5TOC54ZuJg7ZPsHEAaHF89tStLOm', 'admin', '2025-05-23 13:56:32', NULL),
(6, 'iriana38', 'inamaga@yahoo.co.id', '$2y$10$lkLjakWGHGcX5qQuOkFXCOg8ELlQ5C7/0CVUwCAtgQAgpjEq9cL.C', 'admin', '2025-05-23 13:56:33', NULL),
(7, 'nasim50', 'kartika35@thamrin.co.id', '$2y$10$07kiIntLRleAaof2h.oI0OJTSaAKTTy.AqsN/vgzd7nzsO9Fogd2u', 'guest', '2025-05-23 13:56:33', NULL),
(8, 'ramadan.raisa', 'alatupono@putra.com', '$2y$10$FHak8oKyDC0nIHfQ9Xxd/OXdqLYYHRzbHRh7gt.XfbYYIctsEoQ8i', 'guest', '2025-05-23 13:56:33', NULL),
(9, 'nadia88', 'tarihoran.sabrina@gmail.com', '$2y$10$Se0ylLbfOKniWf/ZRY1Yh.XaH8C7UNcn5/ST6UwrBtSm2LWomivou', 'admin', '2025-05-23 13:56:33', NULL),
(10, 'mujur.simanjuntak', 'aurora.thamrin@yuliarti.name', '$2y$10$rQPT5SByqmSTnnyJa.LdHeVLQil9G7.xhp3gFLy4EBG9IG2mJpLPm', 'admin', '2025-05-23 13:56:33', NULL),
(11, 'hidayat.bahuwirya', 'dpudjiastuti@prasetyo.tv', '$2y$10$yL0rO7QlvKduGlya7gheo.SrWJx1gI2gOnXOu5UkhirMUCpfBvjme', 'admin', '2025-05-23 13:56:33', NULL),
(12, 'jatmiko.purnawati', 'novitasari.jessica@sinaga.net', '$2y$10$7HJ9J1BnSHBMXbRjd5ndPe/24otYybV1KyqHMlheZQ5ez4mV.O68i', 'admin', '2025-05-23 13:56:33', NULL),
(13, 'ylailasari', 'oktaviani.wulan@gmail.co.id', '$2y$10$e1UDifahqKI.W3awKEANYOpnJlZcSKWUdBnfuhHCImrRX27jNpTvi', 'guest', '2025-05-23 13:56:33', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
