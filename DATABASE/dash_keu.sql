-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2019 at 02:25 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

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
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `customer` varchar(20) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `biaya` int(20) DEFAULT NULL,
  `no_kwitansi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id`, `tanggal`, `customer`, `keterangan`, `biaya`, `no_kwitansi`) VALUES
(1, '2019-07-21', 'bambang', 'bayar sewa web sekolah', 80000, 'K-001'),
(2, '2019-07-21', 'joko', 'bayar sewa web sekolah', 80000, 'K-002'),
(3, '2019-07-22', 'adi', 'bayar sewa web sekolah', 80000, 'K-003'),
(4, '2019-07-23', 'ahmad', 'sponsorship', 400000000, 'K-004'),
(5, '2019-07-28', 'bilal', 'event di sekolah', 250000, 'K-005'),
(6, '2019-08-01', 'inu', 'sponsorship', 400000, 'K-006'),
(7, '2019-08-01', 'adis', 'bayar sewa web sekolah', 80000, 'K-007'),
(8, '2019-08-01', 'johan', 'event di sekolah', 250000, 'K-008'),
(9, '2019-08-03', 'dede', 'event di sekolah', 250000, 'K-009'),
(10, '2019-08-05', 'ana', 'bayar sewa web sekolah', 80000, 'K-010'),
(11, '2019-08-06', 'anom', 'bayar sewa web sekolah', 80000, 'K-011'),
(12, '2019-08-07', 'kaka', 'bayar sewa web sekolah', 80000, 'K-012'),
(13, '2019-08-08', 'awe', 'bayar sewa web sekolah', 80000, 'K-013'),
(14, '2019-08-11', 'johan', 'event di sekolah', 250000, 'K-014'),
(15, '2019-08-11', 'dede', 'sponsorship', 400000, 'K-015'),
(16, '2019-08-12', 'adis', 'event di sekolah', 250000, 'K-016'),
(17, '2019-08-13', 'gege', 'event di sekolah', 250000, 'K-017'),
(18, '2019-08-13', 'made', 'sponsorship', 400000, 'K-018'),
(19, '2019-08-18', 'lusi', 'sponsorship', 400000, 'K-019'),
(20, '2019-08-21', 'bambang', 'bayar sewa web sekolah', 80000, 'K-020'),
(21, '2019-08-21', 'joko', 'bayar sewa web sekolah', 80000, 'K-021'),
(22, '2019-08-22', 'adi', 'bayar sewa web sekolah', 80000, 'K-022'),
(23, '2019-08-24', 'anom', 'event di sekolah', 250000, 'K-023'),
(24, '2019-08-26', 'ana', 'sponsorship', 400000, 'K-024'),
(25, '2019-09-01', 'adis', 'bayar sewa web sekolah', 80000, 'K-025'),
(26, '2019-09-02', 'johan', 'sponsorship', 400000, 'K-026'),
(27, '2019-09-02', 'joko', 'event di sekolah', 250000, 'K-027'),
(28, '2019-09-03', 'dede', 'event di sekolah', 250000, 'K-028'),
(29, '2019-09-05', 'ana', 'bayar sewa web sekolah', 80000, 'K-029'),
(30, '2019-09-06', 'anom', 'bayar sewa web sekolah', 80000, 'K-030'),
(31, '2019-07-22', 'yuhu', 'Sewa Kamar', 70000, 'K-031');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(10) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `harga_satuan` int(20) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `no_kwitansi` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `tanggal`, `keterangan`, `harga_satuan`, `jumlah`, `no_kwitansi`) VALUES
(1, '2019-07-21', 'kursi', 200000, 2, 'K-001'),
(2, '2019-07-21', 'meja', 500000, 3, 'K-002'),
(3, '2019-07-22', 'brewer', 600000, 4, 'K-003'),
(4, '2019-07-23', 'dispenser', 340000, 2, 'K-004'),
(5, '2019-07-28', 'lampu', 46000, 11, 'K-005'),
(6, '2019-08-01', 'lemari', 540000, 4, 'K-006'),
(7, '2019-08-01', 'karpet', 125000, 6, 'K-007'),
(8, '2019-08-01', 'sofa', 800000, 5, 'K-008'),
(9, '2019-08-03', 'kopi', 15000, 8, 'K-009'),
(10, '2019-08-05', 'gula', 10000, 15, 'K-010'),
(11, '2019-08-06', 'mie instan', 40000, 22, 'K-011'),
(12, '2019-08-06', 'speaker', 424000, 8, 'K-012'),
(13, '2019-08-06', 'kursi', 200000, 7, 'K-013'),
(14, '2019-08-11', 'meja', 500000, 8, 'K-014'),
(15, '2019-08-11', 'brewer', 600000, 2, 'K-015'),
(16, '2019-08-12', 'dispenser', 340000, 3, 'K-016'),
(17, '2019-08-13', 'lampu', 46000, 4, 'K-017'),
(18, '2019-08-13', 'lemari', 540000, 5, 'K-018'),
(19, '2019-08-18', 'karpet', 125000, 6, 'K-019'),
(20, '2019-08-21', 'sofa', 800000, 8, 'K-020'),
(21, '2019-08-21', 'kopi', 15000, 40, 'K-021'),
(22, '2019-08-24', 'gula', 10000, 44, 'K-022'),
(23, '2019-08-24', 'mie instan', 40000, 21, 'K-023'),
(24, '2019-08-26', 'speaker', 424000, 7, 'K-024'),
(25, '2019-08-26', 'lampu meja', 126000, 8, 'K-025'),
(26, '2019-08-26', 'sofa', 800000, 5, 'K-026'),
(27, '2019-08-26', 'kertas', 50000, 7, 'K-027'),
(28, '2019-08-26', 'kursi', 200000, 1, 'K-028'),
(29, '2019-08-26', 'meja', 500000, 2, 'K-029'),
(30, '2019-08-26', 'mie instan', 40000, 3, 'K-030');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `total_pemasukan` int(20) DEFAULT '0',
  `total_pengeluaran` int(20) DEFAULT '0',
  `saldo` int(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `tanggal`, `total_pemasukan`, `total_pengeluaran`, `saldo`) VALUES
(1, '2019-07-21', 160000, 1900000, -1740000),
(2, '2019-07-22', 150000, 2400000, -2250000),
(3, '2019-07-23', 400000000, 680000, 399320000),
(4, '2019-07-28', 250000, 506000, -256000),
(5, '2019-08-01', 730000, 6910000, -6180000),
(6, '2019-08-03', 250000, 120000, 130000),
(7, '2019-08-05', 80000, 150000, -70000),
(8, '2019-08-06', 80000, 5672000, -5592000),
(9, '2019-08-07', 80000, 0, 80000),
(10, '2019-08-08', 80000, 0, 80000),
(11, '2019-08-11', 650000, 5200000, -4550000),
(12, '2019-08-12', 250000, 1020000, -770000),
(13, '2019-08-13', 650000, 2884000, -2234000),
(14, '2019-08-18', 400000, 750000, -350000),
(15, '2019-08-21', 160000, 7000000, -6840000),
(16, '2019-08-22', 80000, 0, 80000),
(17, '2019-08-24', 250000, 1280000, -1030000),
(18, '2019-08-26', 400000, 9646000, -9246000),
(19, '2019-09-01', 80000, 0, 80000),
(20, '2019-09-02', 650000, 0, 650000),
(21, '2019-09-03', 250000, 0, 250000),
(22, '2019-09-05', 80000, 0, 80000),
(23, '2019-09-06', 80000, 0, 80000);

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
  `notes` varchar(200) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `email`, `jenis_kelamin`, `no_telp`, `alamat`, `password`, `bio`, `skill`, `education`, `notes`, `pertanyaan`, `jawaban`) VALUES
(101, 'admin', 'Ilham Ibnu Purnomo', 'social.inupurnomo@gmail.com', 'L', '085723688655', 'Kebumen', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit, libero dignissimos reiciendis necessitatibus soluta placeat?', 'PHP, CodeIgniter', 'Telkom Schools Purwokerto', 'Keep Crazy!', 'Apa warna kesukaan anda ?', 'hitam'),
(105, 'adiscanr', 'Adisca Naufal R', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '0', ''),
(120, 'brader', 'Ahmad Rizky Prayogi', 'arizkyprayogi@inditech.id', 'L', '085720966872', 'Cianjur', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Edanken tong aya Reman!!!', 'PHP, CodeIgniter', 'Telkom Yuhu', 'Gasken Bray!', 'Apa warna kesukaan anda ?', 'hitam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
