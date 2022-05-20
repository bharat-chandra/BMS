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
-- Table structure for table `uregister`
--

CREATE TABLE `uregister` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `bld` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uregister`
--

INSERT INTO `uregister` (`id`, `userid`, `name`, `email`, `mobile`, `gender`, `age`, `bld`, `location`, `pass`) VALUES
(2, 5, 'bharat', 'bharat@gmail.com', '9676085525', 'male', '22', 'A+', 'vizag', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uregister`
--
ALTER TABLE `uregister`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uregister`
--
ALTER TABLE `uregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `uregister`
--
ALTER TABLE `uregister`
  ADD CONSTRAINT `uregister_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
