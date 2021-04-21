-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 12:44 AM
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
(1, 'Tugas Harian', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-05-21 21:02:19', 'Cukup Penting', '2021-04-22 05:42:16', '2021-04-22 05:42:16'),
(2, 'Tugas Mingguan', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-05-11 21:02:19', 'Penting', '2021-04-22 05:42:33', '2021-04-22 05:42:33'),
(3, 'Tugas Makul', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-05-11 21:02:19', 'Cukup Penting', '2021-04-22 05:42:47', '2021-04-22 05:42:47'),
(4, 'Tugas Rumah', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-06-11 21:02:19', 'Prioritas', '2021-04-22 05:43:02', '2021-04-22 05:43:02'),
(5, 'Project 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-06-11 21:02:19', 'Cukup Penting', '2021-04-22 05:44:00', '2021-04-22 05:44:00'),
(6, 'Project 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-07-11 21:02:19', 'Cukup Penting', '2021-04-22 05:44:06', '2021-04-22 05:44:06'),
(7, 'Project 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-07-12 21:02:19', 'Cukup Penting', '2021-04-22 05:44:11', '2021-04-22 05:44:11'),
(8, 'Project 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-07-12 21:02:19', 'Cukup Penting', '2021-04-22 05:44:14', '2021-04-22 05:44:14'),
(9, 'Project 5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-07-12 21:02:19', 'Penting', '2021-04-22 05:44:19', '2021-04-22 05:44:19'),
(10, 'Project 6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-07-22 21:02:19', 'Penting', '2021-04-22 05:44:24', '2021-04-22 05:44:24'),
(11, 'Project 7', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-07-24 21:02:19', 'Penting', '2021-04-22 05:44:31', '2021-04-22 05:44:31'),
(12, 'Project 8', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2021-08-24 21:02:19', 'Penting', '2021-04-22 05:44:38', '2021-04-22 05:44:38');

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
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
