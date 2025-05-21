-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 08:17 AM
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
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul_buku` varchar(25) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `deskripsi` text NOT NULL,
  `cover` varchar(255) NOT NULL,
  `jumlah_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `judul_buku`, `pengarang`, `tahun_terbit`, `deskripsi`, `cover`, `jumlah_buku`) VALUES
(10, 34, 'How to become a \"Decent\" ', 'Navies', '2025-05-19', 'Buku ini berisikan cara bagaimana untuk menjadi programmer yang layak', 'https://bookcoverarchive.com/wp-content/uploads/amazon/all_the_sad_young_literary_men.jpg', 1),
(11, 36, 'Bocchi The Rock', 'Idk tbh', '2025-05-19', 'Yearning to make friends and perform live with a band, lonely and socially anxious Hitori ', 'https://cdn.myanimelist.net/images/anime/1448/127956.jpg', 1),
(12, 35, 'Lawson', 'Aji Rama', '2025-05-19', 'dasdadsasdads', 'https://picsum.photos/536/354', 1),
(13, 7, 'Shadow House', 'Navies', '2025-05-19', 'Rumah Bayangan', 'https://images.pexels.com/photos/1690800/pexels-photo-1690800.jpeg?auto=compress&cs=tinysrgb&w=600', 1),
(14, 5, 'My \"Ordinary\" Life Part 2', 'Navies', '2025-05-19', 'Bercerita tentang keseharian seseorang yang sendirian', 'https://images.pexels.com/photos/2409694/pexels-photo-2409694.jpeg?auto=compress&cs=tinysrgb&w=600', 1),
(15, 1, 'Indonesia  Emas 2025', 'Pemerintah', '2025-05-19', 'Berisikan angan - angan Penulis', 'https://images.pexels.com/photos/47047/gold-ingots-golden-treasure-47047.jpeg?auto=compress&cs=tinysrgb&w=600', 1),
(16, 11, 'Memoir', 'Aji Rama', '2025-05-19', 'Memoir', 'https://images.pexels.com/photos/3690052/pexels-photo-3690052.jpeg?auto=compress&cs=tinysrgb&w=600', 1),
(17, 29, 'COTE', 'Ray', '2016-01-01', 'GWEJ BANGET', 'https://cdn.myanimelist.net/images/anime/5/86830.jpg', 1),
(18, 12, 'sdfghn', 'sdfgbnm', '2025-05-19', 'Rumah Bayangan', 'https://cdn.myanimelist.net/images/anime/1448/127956.jpg', 1);

--
-- Triggers `buku`
--
DELIMITER $$
CREATE TRIGGER `after_insert_buku` AFTER INSERT ON `buku` FOR EACH ROW INSERT INTO log_aktivitas (aksi, tabel, id_terkait, pengguna)
VALUES ('INSERT', 'buku', NEW.id_buku, 'SYSTEM')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Fiction'),
(2, 'Non-Fiction'),
(3, 'Mystery'),
(4, 'Thriller'),
(5, 'Romance'),
(6, 'Science Fiction'),
(7, 'Fantasy'),
(8, 'Historical Fiction'),
(9, 'Biography'),
(10, 'Autobiography'),
(11, 'Memoir'),
(12, 'Self-Help'),
(13, 'Health & Fitness'),
(14, 'Science'),
(15, 'Philosophy'),
(16, 'Psychology'),
(17, 'Religion & Spirituality'),
(18, 'Politics'),
(19, 'Business & Economics'),
(20, 'Art & Photography'),
(21, 'Travel'),
(22, 'True Crime'),
(23, 'Poetry'),
(24, 'Drama'),
(25, 'Classic'),
(26, 'Horror'),
(27, 'Young Adult'),
(28, 'Children’s'),
(29, 'Education'),
(30, 'Comics & Graphic Novels'),
(31, 'Cookbooks'),
(32, 'Sports'),
(33, 'Technology'),
(34, 'Computers & Programming'),
(35, 'Law'),
(36, 'Music'),
(37, 'Parenting'),
(38, 'Crafts & Hobbies'),
(39, 'Essays'),
(40, 'Anthology');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `level` varchar(11) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `username`, `password`, `level`, `status`) VALUES
(101014, 'admin', 'admin', 'admin', 'admin', 'Aktif'),
(101016, 'Muhammad Navies Ramadhan', 'Navies', 'FireBlade', 'admin', 'Aktif'),
(101017, ' Nox', 'Petugas', 'Tugas', 'petugas', 'Aktif'),
(101018, 'Aji', 'Ray Restu', 'NasiLemak1', 'user', 'aktif'),
(101019, 'Navies', 'NvsNox', 'BacaBuku', 'admin', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id_log` int(11) NOT NULL,
  `aksi` varchar(50) DEFAULT NULL,
  `tabel` varchar(50) DEFAULT NULL,
  `id_terkait` int(11) DEFAULT NULL,
  `waktu` datetime DEFAULT current_timestamp(),
  `pengguna` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(11) NOT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` enum('Dipinjam','Kembali') DEFAULT 'Dipinjam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_buku` (`id_buku`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101022;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
