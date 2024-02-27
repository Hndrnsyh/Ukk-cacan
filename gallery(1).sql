-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 04:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(80, 'hobi', '         volly        ', '2024-02-06', 16),
(81, 'Alghifari', '                  Rekayasa perangkat lunak                ', '2024-02-07', 13),
(82, 'Teman', 'sandi dan riski', '2024-02-07', 13),
(83, 'Teknologi', 'teknologi', '2024-02-07', 17),
(84, 'makanan', '         makanan ringan', '2024-02-12', 22),
(85, 'Adrian', '         Pecinta morgan        ', '2024-02-19', 23),
(87, 'Rpl', 'Rekayasa perangkat lunak', '2024-02-12', 24),
(88, 'Mobil', 'GTR 35', '2024-02-12', 24),
(89, 'Transportasi', '         Mobil dan Motor        ', '2024-02-13', 25),
(90, 'Kendaraan', 'kendaraan', '2024-02-13', 25),
(91, 'Benda', 'Buat belajar', '2024-02-13', 25),
(92, 'Presiden', 'calon presiden', '2024-02-15', 26),
(93, 'Makanan', '           Bakso           ', '2024-02-20', 25),
(94, 'DPD', 'Para calon DPD', '2024-02-19', 26),
(95, 'Jurusan', 'Di SMK ALGHIFARI', '2024-02-19', 26),
(102, 'Rokok', 'Rokok', '2024-02-23', 34);

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(37, 'random', 'di kelas', '2024-02-07', '1080670781.LEGO.png', 82, 13),
(43, 'basreng', 'enak', '2024-02-12', '655864800.4288610583.webp', 84, 22),
(48, 'komputer', 'spek bagus', '2024-02-12', '333529664.a-komputer.jpg', 87, 24),
(49, 'mobil sport', 'GTR', '2024-02-12', '1143505402.GTR.jpg', 88, 24),
(50, 'digital', 'perdigitalan', '2024-02-12', '505212697.digital.jpg', 83, 17),
(52, 'Bus Sekolah', 'Khusus anak sekolah', '2024-02-15', '894202183.images.jpg', 89, 25),
(53, 'Motor 2tak', '         ninja ss', '2024-02-13', '448252781.ss.jpg', 90, 25),
(54, 'Mobil Sport', '         Mobil Buggati', '2024-02-13', '797467530.buggati.jpg', 90, 25),
(55, 'Tas', 'Tas slempang', '2024-02-13', '570233817.tas.jpg', 91, 25),
(56, 'Alat tulis', 'Pulpen dan pensil', '2024-02-13', '214110600.pp.jpg', 91, 25),
(57, 'Anis - Amin', 'paslon 1', '2024-02-15', '2027773806.1.jpg', 92, 26),
(58, 'Prabowo - Gibran', 'paslon 2', '2024-02-15', '1529280404.calo2.jpg', 92, 26),
(59, 'Ganjar - Mahfud', 'paslon 3', '2024-02-15', '888282141.gm.jpg', 92, 26),
(61, 'Komeng', 'uhuyy', '2024-02-19', '708341197.komeng.jpg', 94, 26),
(62, 'RPL', 'Membuat Aplikasi', '2024-02-19', '1080214066.33-243x300.jpg', 95, 26),
(64, 'TKRO', '      Tentang Mobil', '2024-02-20', '716422439.11-250x300.jpg', 95, 26),
(72, 'Seblak', 'ceker dan tulang', '2024-02-23', '1736694737.h.webp', 84, 25),
(74, 'LA ice', 'Harga 40.000', '2024-02-23', '653156341.la.jpg', 102, 34);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(4, 37, 17, 'nicee', '2024-02-07'),
(6, 43, 22, 'menyala abangkuh', '2024-02-12'),
(7, 43, 22, 'Beli dulu gak si', '2024-02-12'),
(9, 37, 22, 'pogo', '2024-02-12'),
(10, 37, 22, '990900', '2024-02-12'),
(14, 48, 24, 'info harga bang', '2024-02-12'),
(16, 49, 17, 'p balap sama buggati', '2024-02-12'),
(17, 43, 25, 'xcvfef', '2024-02-13'),
(26, 43, 25, 'sabaraha euy', '2024-02-19'),
(32, 54, 25, 'anjaii kamu bohong', '2024-02-20'),
(37, 61, 26, 's', '2024-02-20'),
(38, 59, 26, '', '2024-02-21'),
(40, 64, 26, '', '2024-02-21'),
(41, 62, 26, 'Aplikasi pinjol', '2024-02-21'),
(45, 72, 26, 'tulang anjing', '2024-02-23'),
(46, 74, 34, 'Rokok membunuhmu ', '2024-02-23'),
(47, 57, 36, '1', '2024-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(141, 43, 24, '2024-02-12'),
(145, 48, 24, '2024-02-12'),
(146, 48, 13, '2024-02-12'),
(147, 49, 24, '2024-02-12'),
(148, 37, 17, '2024-02-12'),
(149, 43, 17, '2024-02-12'),
(153, 48, 17, '2024-02-12'),
(154, 49, 17, '2024-02-12'),
(156, 48, 25, '2024-02-13'),
(159, 43, 25, '2024-02-13'),
(162, 50, 25, '2024-02-13'),
(165, 53, 25, '2024-02-13'),
(166, 54, 25, '2024-02-13'),
(167, 55, 25, '2024-02-13'),
(168, 53, 24, '2024-02-13'),
(169, 54, 24, '2024-02-13'),
(174, 37, 25, '2024-02-13'),
(175, 56, 25, '2024-02-13'),
(176, 57, 26, '2024-02-15'),
(180, 57, 25, '2024-02-15'),
(181, 58, 25, '2024-02-15'),
(182, 59, 25, '2024-02-15'),
(184, 59, 26, '2024-02-19'),
(186, 37, 26, '2024-02-19'),
(187, 62, 26, '2024-02-19'),
(188, 61, 27, '2024-02-19'),
(189, 62, 27, '2024-02-19'),
(190, 52, 27, '2024-02-19'),
(191, 57, 27, '2024-02-19'),
(192, 58, 27, '2024-02-19'),
(193, 59, 27, '2024-02-19'),
(195, 53, 27, '2024-02-19'),
(196, 54, 27, '2024-02-19'),
(197, 55, 27, '2024-02-19'),
(198, 56, 27, '2024-02-19'),
(199, 43, 27, '2024-02-19'),
(201, 37, 27, '2024-02-19'),
(202, 48, 27, '2024-02-19'),
(203, 49, 27, '2024-02-19'),
(204, 50, 27, '2024-02-19'),
(205, 52, 25, '2024-02-19'),
(207, 61, 26, '2024-02-20'),
(208, 64, 26, '2024-02-20'),
(215, 61, 25, '2024-02-21'),
(216, 62, 25, '2024-02-21'),
(218, 64, 25, '2024-02-21'),
(221, 72, 25, '2024-02-23'),
(222, 72, 26, '2024-02-23'),
(223, 74, 34, '2024-02-23'),
(224, 61, 36, '2024-02-26'),
(225, 64, 36, '2024-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(5, 'admin', '123', 'sansanhendriansyah455@gmail.com', 'habi', 'kp.cikukuk'),
(10, 'sansan', '827ccb0eea8a706c4c34a16891f84e7b', 'sansan@gmail.com', 'SanSan Hendriansyah', 'kp.cibatek'),
(12, 'sandi', 'ac9b4e0b6a21758534db2a6324d34a54', 'aa@gmail.com', 'sandi ganteng', 'bbr'),
(13, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', 'admin', 'skj'),
(15, 'udin', 'd489a3289ecdc847cb67f7a480e6f9fa', 'ade@gmail.com', 'saepudin', 'dangder'),
(16, 'arika', 'fb45615cea1183af03479d88ad4da5cd', 'sansan@gmail.com', 'arika', 'Cibatek'),
(17, 'hendrian', '827ccb0eea8a706c4c34a16891f84e7b', 'sansan@gmail.com', 'hendriansyah', 'indonesia'),
(22, 'ujang', 'c959810f01adc10791f46e1b3ecab45a', 'ujang@gmail.com', 'ujang', 'Cibatek'),
(23, 'Adrian', 'c63dcf82d620a423d24f9fd536f115a4', 'aa@gmail.com', 'Adrian ', 'Japan'),
(24, 'Saepudin', 'f9323f5b51fc23e30c10623bd38de6ff', 'saepudin@gmail.com', 'Saepudin', 'Cibatek'),
(25, 'sandi', '07811dc6c422334ce36a09ff5cd6fe71', 'ade@gmail.com', 'Pria misterius', 'Cibatek'),
(26, 'iis', 'c7c9b5abc39fc757817e8a49a1e269ae', 'ade@gmail.com', 'Jason statham', 'inggris'),
(27, 'cacan', 'a34b27e35f42c05dbd80ede22e0dc6be', 'cacan@gmail.com', 'SanSan Hendriansyah', 'Japan'),
(32, 'ss', '3691308f2a4c2f6983f2880d32e29c84', 'aa@gmail.com', 'prabowo', 'd'),
(33, 'oo', 'd95679752134a2d9eb61dbd7b91c4bcc', 'om@gmail.com', 'o', 'o'),
(34, 'exp', 'b0ab0254bd58eb87eaee3172ba49fefb', 'aa@gmail.com', 'Yhuzong', 'land of down'),
(35, 'exp', 'b0ab0254bd58eb87eaee3172ba49fefb', 'ade@gmail.com', 'Zilong', 'Sumedang'),
(36, 'cc', 'e0323a9039add2978bf5b49550572c7c', 'rangga01@gaml.com', 'prabowo', 'ra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
