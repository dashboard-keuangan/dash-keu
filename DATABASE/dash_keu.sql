-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2019 at 10:36 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dash_keu`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `no_kwitansi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id`, `kode`, `tanggal`, `keterangan`, `jumlah`, `no_kwitansi`) VALUES
(1, 'P-132', '2019-07-17', 'qwe', 150000, 'K-123'),
(2, 'P-133', '2019-07-14', 'ert', 500000, '');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `no_kwitansi` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(300) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `no_kwitansi`, `tanggal`, `keterangan`, `jumlah`) VALUES
(1, 'K-123', '2019-07-14', 'Beli TOA', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(9999) NOT NULL,
  `bio` varchar(9999) NOT NULL,
  `skill` varchar(300) NOT NULL,
  `education` varchar(100) NOT NULL,
  `notes` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `email`, `jenis_kelamin`, `no_telp`, `alamat`, `password`, `bio`, `skill`, `education`, `notes`) VALUES
(101, 'admin', 'Ilham Ibnu Purnomo', 'social.inupurnomo@gmail.com', 'L', '085723688655', 'Kebumen', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit, libero dignissimos reiciendis necessitatibus soluta placeat?', 'PHP, CodeIgniter', 'Telkom Schools Purwokerto', 'Keep Crazy!'),
(105, 'adiscanr', 'Adisca Naufal R', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
