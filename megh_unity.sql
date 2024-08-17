-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 12:37 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramyaa_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `balance` int(10) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`name`, `email`, `balance`, `id`)
 VALUES
('Meghna', 'megh@gmail.com', 5900, 1),
('Keerthi', 'keer@gmail.com', 840, 2),
('Rohan', 'rohan@gmail.com', 4950, 3),
('Shahid', 'shahid@gmail.com', 10010, 4),
('Nitha', 'nitha@gmail.com', 15000, 5),
('Sandy', 'sandy@gmail.com', 19000, 6),
('Sarosh', 'saro@gmail.com', 31100, 7),
('Abhishma', 'abhi@gmail.com', 49000, 8),
('Adhwaidh', 'adhu@gmail.com', 75000, 9),
('Jude', 'judy@gmail.com', 101000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `t_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`t_id`, `from_id`, `to_id`, `amount`) VALUES
(1, 6, 7, 1000),
(2, 8, 6, 1000),
(3, 6, 8, 1000),
(4, 3, 2, 10),
(5, 3, 2, 10),
(6, 1, 3, 120),
(7, 3, 1, 100),
(8, 9, 10, 1000),
(9, 2, 1, 100),
(10, 2, 1, 10),
(11, 2, 5, 10),
(12, 3, 7, 100),
(13, 5, 4, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `transfer_ibfk_1` (`from_id`),
  ADD KEY `transfer_ibfk_2` (`to_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`from_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`to_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
