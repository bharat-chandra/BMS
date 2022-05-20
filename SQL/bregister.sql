-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 06:41 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bldbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bregister`
--

CREATE TABLE `bregister` (
  `bid` int(11) NOT NULL,
  `bname` varchar(45) NOT NULL,
  `bld` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` text DEFAULT NULL,
  `phno` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bregister`
--

INSERT INTO `bregister` (`bid`, `bname`, `bld`, `address`, `email`, `phno`) VALUES
(2, 'rainbow donors', 'A+', 'vizag', 'rainbowo@gmail.com', '9273926518'),
(3, 'rainbow donors', 'ab+', 'vizag', 'rainbowo@gmail.com', '9273926518');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bregister`
--
ALTER TABLE `bregister`
  ADD PRIMARY KEY (`bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bregister`
--
ALTER TABLE `bregister`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
