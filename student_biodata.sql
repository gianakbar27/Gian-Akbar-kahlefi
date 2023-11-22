-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 09:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_biodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` int(11) NOT NULL,
  `nama_agama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `nama_agama`) VALUES
(1, 'Kristen Protestan'),
(2, 'Kristen Karismatik'),
(3, 'Kristen Pantekosta'),
(4, 'Katolik Ortodoks'),
(5, 'Konghuchu'),
(6, 'Hindu buddha'),
(7, 'Hindu'),
(8, 'Islam'),
(9, 'Buddha'),
(10, 'Atheis');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `tahun_pelajaran` int(10) DEFAULT NULL,
  `keterangan` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `jurusan`, `tahun_pelajaran`, `keterangan`) VALUES
(1, 'X-RPL 1', 'rekayasa perangkat lunak', 2022, 'mempelajari basic-basic pembelajaran pemrograman yaitu flowchart, figma dan java'),
(2, 'XI-RPL 1', 'rekayasa perangkat lunak', 2023, 'mempelajari bahasa pemrograman dasar seperti HTML, CSS, JavaScript, SQL dan php'),
(3, 'XII-RPL 1', 'rekayasa perangkat lunak', 2024, 'mempelajari bahasa pemrograman dengan tingkat kesulitan menengah seperti Laravel, C# dan C++');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `tmpt_lahir` varchar(225) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(225) DEFAULT NULL,
  `hobi` varchar(225) DEFAULT NULL,
  `cita_cita` varchar(100) DEFAULT NULL,
  `jmlh_saudara` int(10) DEFAULT NULL,
  `idkelas` int(10) DEFAULT NULL,
  `idagama` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `tmpt_lahir`, `tgl_lahir`, `alamat`, `hobi`, `cita_cita`, `jmlh_saudara`, `idkelas`, `idagama`) VALUES
(2, 'Bagas nadyantora', 'Jerman', '1993-05-22', 'Jl.Achmad Yani, Danz residence, 15DFA', 'Berkuda', 'Menteri keuangan', 4, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `role` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `role`) VALUES
(1, '', 'vn', 'e0e2087b3efad83c23c899efb0059a16d9ee9d4ef51349c6066548b8d01f1ab8', 'IT-Support');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkelas` (`idkelas`),
  ADD KEY `idagama` (`idagama`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`idkelas`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`idagama`) REFERENCES `agama` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
