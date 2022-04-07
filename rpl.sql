-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2022 pada 17.20
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `created`, `modified`, `status`) VALUES
(2, 'wkwkwk', 'wahyu@gmail.com', '8797q7', '2022-03-23 14:27:08', '2022-03-23 14:28:57', '1'),
(3, 'asip', 'wahyu@gmail.com', '87977', '2022-03-23 14:27:24', '2022-03-23 14:28:43', '1'),
(4, 'Asep', 'wahyu@gmail.com', '1221221', '2022-03-23 14:27:54', '2022-03-23 14:27:54', '1'),
(5, 'aris', 'wahyu@gmail.com', '287397397917', '2022-03-23 14:28:09', '2022-03-23 14:28:09', '1'),
(6, 'arip', 'wahyu@gmail.com', '567222', '2022-03-23 14:28:25', '2022-03-23 14:28:25', '1'),
(7, 'sumanto', 'wahyu@gmail.com', '762826386382', '2022-03-23 14:29:18', '2022-03-23 14:29:18', '1'),
(8, 'dimas', 'wahyu@gmail.com', '628292', '2022-03-23 14:29:28', '2022-03-23 14:31:06', '1'),
(9, 'bobi', 'wahyu@gmail.com', '6722882828', '2022-03-23 14:29:53', '2022-03-23 14:29:53', '1'),
(10, 'bian', 'wahyu@gmail.com', '77282222', '2022-03-23 14:30:03', '2022-03-23 14:30:03', '1'),
(11, 'cia', 'wahyu@gmail.com', '672727822', '2022-03-23 14:30:21', '2022-03-23 14:30:21', '1'),
(12, 'wawan', 'wahyu@gmail.com', '82992922', '2022-03-23 14:30:33', '2022-03-23 14:30:33', '1'),
(13, 'hiana', 'wahyu@gmail.com', '7266227272', '2022-03-23 14:30:48', '2022-03-23 14:30:48', '1'),
(14, 'alsa', 'awp@gmail.com', '7662816282', '2022-03-23 14:55:35', '2022-03-23 14:55:35', '1'),
(15, 'alma', 'asa@gmail.com', '62y8179', '2022-03-23 14:55:52', '2022-03-23 14:55:52', '1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
