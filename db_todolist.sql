-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 12:39 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_todolist`
--

-- --------------------------------------------------------

--
-- Table structure for table `todolists`
--

CREATE TABLE `todolists` (
  `id` int(15) NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_desc` text NOT NULL,
  `t_dedline` datetime NOT NULL,
  `t_priority` varchar(50) NOT NULL,
  `t_created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `t_updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todolists`
--

INSERT INTO `todolists` (`id`, `t_name`, `t_desc`, `t_dedline`, `t_priority`, `t_created_at`, `t_updated_at`) VALUES
(1, 'Tes1', 'asdasd213123dasdasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 22:26:46', '2021-04-21 22:26:46'),
(3, 'Tes112asd', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 22:30:55', '2021-04-21 22:30:55'),
(4, 'Tes113', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:29:45', '2021-04-21 23:29:45'),
(5, 'Tes111', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:29:51', '2021-04-21 23:29:51'),
(6, 'Tes112', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:29:55', '2021-04-21 23:29:55'),
(7, 'Tes116', '1121adsasd', '2021-05-21 21:02:19', 'Prioritas', '2021-04-21 23:29:58', '2021-04-21 23:29:58'),
(8, 'Tes117', '1121adsasd', '2021-05-21 21:02:19', 'Cukup Penting', '2021-04-21 23:30:01', '2021-04-21 23:30:01'),
(9, 'Tes115', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:30:04', '2021-04-21 23:30:04'),
(10, 'Tes114', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:30:07', '2021-04-21 23:30:07'),
(11, 'Tes101', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:30:11', '2021-04-21 23:30:11'),
(13, 'Tes103', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:30:16', '2021-04-21 23:30:16'),
(14, 'Tes104', '1121adsasd', '2021-05-21 21:02:19', 'Penting', '2021-04-21 23:30:19', '2021-04-21 23:30:19'),
(15, 'Mengajar', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-05-21 21:02:19', 'Prioritas', '2021-04-22 01:57:11', '2021-04-22 01:57:11'),
(16, 'Mengajar1212', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-05-21 21:02:19', 'Cukup Penting', '2021-04-22 05:17:51', '2021-04-22 05:17:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todolists`
--
ALTER TABLE `todolists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todolists`
--
ALTER TABLE `todolists`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
