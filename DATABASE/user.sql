-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jul 2019 pada 14.16
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

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
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `nama`, `email`, `jenis_kelamin`, `no_telp`, `alamat`, `password`, `bio`, `skill`, `education`, `notes`, `pertanyaan`, `jawaban`) VALUES
(101, 'admin', 'Ilham Ibnu Purnomo', 'social.inupurnomo@gmail.com', 'L', '085723688655', 'Kebumen', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit, libero dignissimos reiciendis necessitatibus soluta placeat?', 'PHP, CodeIgniter', 'Telkom Schools Purwokerto', 'Keep Crazy!', 'Apa warna kesukaan anda ?', 'hitam'),
(105, 'adiscanr', 'Adisca Naufal R', '', '', '', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '', '', '', '', '0', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
