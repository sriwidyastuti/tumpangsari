-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 02:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `email`, `alamat`) VALUES
(1, 'Sri', 'adm@gmail.com', 'desa menyali'),
(3, 'widyas', 'sri.widyastuti@undiksha.ac.id', 'Desa Sawan'),
(8, 'as', 'as', 'as'),
(10, 'Erik', 'erik@gmail.com', 'Sawan'),
(11, 'Sandi', 'sandikagalih@gmail.com', 'Lemukih');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `stok` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode`, `gambar`, `nama`, `stok`, `keterangan`) VALUES
(4, 'mioyeng.jpeg', 'Indomie Goreng', 100, 'Rp. 3.000/pcs'),
(5, 'miesoto.jpeg', 'Indomie Kuah Rasa Soto', 100, 'Rp. 3.000/pcs'),
(6, 'mieayambawang.jpeg', 'Indomie Kuah Rasa Ayam Bawang', 100, 'Rp. 3.000/pcs'),
(7, 'miekari.jpeg', 'Indomie Kuah Rasa Kari Ayam', 100, 'Rp. 3.000/pcs'),
(8, 'mieigapenyet.jpeg', 'Mie Goreng Rasa Iga Penyet', 100, 'Rp. 3.000/pcs'),
(16, 'A6794820000988-1.jpg', 'Indomie Goreng Aceh', 100, 'Rp. 3.000/pcs'),
(17, 'miecabeijo.jpeg', 'Indomie Goreng Cabe Ijo', 100, 'Rp. 3.000/pcs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'sri', '$2y$10$YF0zzuiDM4ORuqwplQmHu.9ZTUJyW15fPGjnNBEx9/xF.pj6IP8Ui'),
(2, 'widyas', '$2y$10$iAEJi0tPldQq6y8flmhn5ehZFI8dqkc28KwJFHoNaU53.NGDJloI6'),
(3, 'adm', '$2y$10$NEdQodPkFL7BfEricIw/eugpKPDiKiVl9j2VXdsOpucIWzGQVwyOa'),
(4, 'wiid', '$2y$10$I3PUalVZTwcJua4hKV6o3eg9cOaMISn91CnkzDgvouJHF/zHoojMa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
