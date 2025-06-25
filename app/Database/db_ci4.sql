-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2025 at 11:27 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2025-05-09-034657', 'App\\Database\\Migrations\\User', 'default', 'App', 1747271769, 1),
(2, '2025-05-09-034704', 'App\\Database\\Migrations\\Product', 'default', 'App', 1747271769, 1),
(3, '2025-05-09-034711', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1747271769, 1),
(4, '2025-05-09-034721', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1747271769, 1),
(6, '2025-05-15-181602', 'App\\Database\\Migrations\\ProductCategory', 'default', 'App', 1747333186, 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'MSI Modern 8519', 10645359.4, 28, 'msi-modern.jpg', '2024-12-26 13:42:03', '2025-04-30 03:05:41'),
(2, 'Acer Nitro 5201', 9553592.71, 25, 'acer-nitro.jpg', '2025-02-18 12:53:52', '2025-05-07 00:37:16'),
(3, 'Lenovo IdeaPad 8577', 28709997.16, 22, 'lenovo-ideapad.jpg', '2025-01-21 21:55:03', '2025-05-16 02:27:34'),
(4, 'Apple MacBook Pro 1794', 13923932.23, 30, 'apple-macbook-pro.jpg', '2024-06-23 04:33:50', '2025-05-16 04:36:09'),
(5, 'Asus VivoBook 8722', 20750113.89, 30, 'asus-vivobook.jpg', '2024-06-26 22:54:16', '2025-05-20 16:31:51'),
(6, 'Razer Blade 4685', 18625588.53, 35, 'razer-blade.jpg', '2024-12-03 02:20:52', '2025-05-01 00:38:02'),
(7, 'HP Pavilion 1382', 13035345.76, 23, 'hp-pavilion.jpg', '2024-06-12 09:03:38', '2025-05-06 00:49:07'),
(8, 'MSI Modern 7015', 11383234.13, 29, 'msi-modern.jpg', '2024-12-18 14:34:46', '2025-05-20 23:35:15'),
(9, 'Asus ZenBook 2555', 16226102.97, 13, 'asus-zenbook.jpg', '2025-01-19 17:03:06', '2025-05-12 10:55:56'),
(10, 'Dell Inspiron 7620', 14615482.08, 20, 'dell-inspiron.jpg', '2024-06-22 00:11:17', '2025-05-20 18:21:01'),
(11, 'Lenovo IdeaPad 9705', 4446096.59, 28, 'lenovo-ideapad.jpg', '2024-07-26 18:46:31', '2025-05-11 17:29:20'),
(12, 'Samsung Notebook 5901', 12546944.41, 47, 'samsung-notebook.jpg', '2024-06-01 17:19:06', '2025-05-17 19:33:36'),
(13, 'Razer Blade 2908', 28671531.46, 31, 'razer-blade.jpg', '2024-08-25 10:49:47', '2025-04-27 04:40:52'),
(14, 'Dell XPS 4312', 27120894.86, 44, 'dell-xps.jpg', '2025-01-14 15:39:27', '2025-05-04 16:11:59'),
(15, 'MSI Modern 5031', 4782618.68, 3, 'msi-modern.jpg', '2025-04-03 15:32:16', '2025-05-05 22:06:15');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `kategori`) VALUES
(1, 'Gaming'),
(2, 'Gaming'),
(3, 'Gaming'),
(4, 'Gaming'),
(5, 'Non-Gaming'),
(6, 'Gaming'),
(7, 'Non-Gaming'),
(8, 'Gaming'),
(9, 'Gaming'),
(10, 'Non-Gaming'),
(11, 'Gaming'),
(12, 'Gaming'),
(13, 'Gaming'),
(14, 'Non-Gaming'),
(15, 'Non-Gaming');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'fitria\r\n', 'perkasa44@yahoo.com', '$2y$10$5/.XeTjRFWb.piM6hQ85bO9zsmfO4/lkW3N3vrK8np6dGMRx.2bOe', 'guest', '2025-05-15 01:18:38', NULL),
(2, 'prastuti.bala', 'harsana76@utami.sch.id', '$2y$10$457UBCM9bIwxTA0dkVoUpeQeMlFZEUXHRlrVNz86XCxepmlqywlbe', 'admin', '2025-05-15 01:18:38', NULL),
(3, 'suartini.rahayu', 'irawan.jasmani@salahudin.mil.id', '$2y$10$20JGcWLu.NJxLdthHY8Oy.64tsVfZlE0cheG1wjTzEtV9IlfP3Di2', 'admin', '2025-05-15 01:18:38', NULL),
(4, 'cawisadi.napitupulu', 'prabu.halimah@hutasoit.go.id', '$2y$10$9ofHHEb3JNciHRXs/0h3BeOCCGktkwcfA93.erOjr4xfC0q15oQgi', 'guest', '2025-05-15 01:18:38', NULL),
(5, 'novi.astuti', 'riyanti.restu@pranowo.sch.id', '$2y$10$yKoR.YW9HvQqZxpFrqMnMevnvlspOOZePOabxmS/FBm/9I2XdJuya', 'admin', '2025-05-15 01:18:39', NULL),
(6, 'uhastuti', 'tarihoran.kanda@anggriawan.name', '$2y$10$lEeo3PrViDSWOsiwpQTIfelg5g7bjwXeTWwvnBT3Z7dHORlvoAHLS', 'guest', '2025-05-15 01:18:39', NULL),
(7, 'nasyiah.upik', 'wpangestu@gmail.com', '$2y$10$MNfwsmshV5tggHWfPkHidOc.5TlF9TuZeZ1G0eHffvo7Gq1UObWq2', 'admin', '2025-05-15 01:18:39', NULL),
(8, 'pranowo.prasetyo', 'yolanda.oliva@maheswara.info', '$2y$10$bKhUFHubysRfF8wrPafwGeLspVlnecEFRrLf0avR6Wa4ctNm098nO', 'admin', '2025-05-15 01:18:39', NULL),
(9, 'emaryati', 'gsitompul@utami.org', '$2y$10$mK.PLSMqnneTrAxFDlvAnuZXZ6yEcphT9BK4WIXdk5zbMo5xdw/bC', 'guest', '2025-05-15 01:18:39', NULL),
(10, 'makuta64', 'puspasari.belinda@hariyah.in', '$2y$10$K0I6B.i/3EYuRBjlL2f9fezc9zpHa/4UvSC5NKdvaFV6nRBFQGYx.', 'admin', '2025-05-15 01:18:39', NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
