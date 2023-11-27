-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 08:13 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasmind_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `sn` int(11) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `package` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `plateform` varchar(50) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`sn`, `filename`, `package`, `plateform`, `status`, `timestamp`) VALUES
(1, 'File', 'Package', 'market', 2, '2023-11-23 11:18:30'),
(2, 'test', 'yogesh', 'market', 1, '2023-11-24 06:58:34'),
(3, 'byunew', 'com.byu.id', 'market', 2, '2023-11-23 11:18:30'),
(4, 'test2', 'yt', 'market', 2, '2023-11-23 11:18:30'),
(5, 'test23', 'todays', 'market', 2, '2023-11-23 11:18:30'),
(6, '111', 'tw', 'dom', 1, '2023-11-27 02:42:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
