-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Sep 18, 2022 at 11:23 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
CREATE TABLE IF NOT EXISTS `buyer` (
  `name` varchar(100) DEFAULT NULL,
  `contactNo` varchar(10) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`contactNo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`name`, `contactNo`, `email`, `address`, `gender`) VALUES
('Roshan Kawishka', '0714578456', 'roshan@gmail.com', 'Matara', 'Male'),
('Inoth Vishwa', '0745478236', 'inoth@gmail.com', 'Malimbada', 'Male'),
('Kusal Mendis', '0784512356', 'kusal@gmail.com', 'Halawatha', 'Male'),
('Ranuk Ella', '0768912456', 'ranuk@gmail.com', 'Colombo 5', 'Male'),
('Ganesh Sundar', '0751245789', 'gane@gmail.com', 'Sellakatharagama', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `name` varchar(250) DEFAULT NULL,
  `contactNo` varchar(10) DEFAULT NULL,
  `pId` int(10) DEFAULT NULL,
  `pName` varchar(100) DEFAULT NULL,
  `Date` varchar(100) DEFAULT NULL,
  `Time` varchar(100) DEFAULT NULL,
  `Total` varchar(100) DEFAULT NULL,
  `Paid_amount` varchar(100) DEFAULT NULL,
  `Return_amount` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`name`, `contactNo`, `pId`, `pName`, `Date`, `Time`, `Total`, `Paid_amount`, `Return_amount`) VALUES
('Roshan Kawishka', '0714578456', 2, 'Nike', '18-09-2022', '16:15:13', '3800', '4000', '200'),
('Inoth Vishwa', '0745478236', 1, 'Adidas', '18-09-2022', '16:40:40', '400', '500', '100'),
('Ganesh Sundar', '0751245789', 2, 'Nike', '18-09-2022', '16:44:42', '1500', '2000', '500'),
('Ranuk Ella', '0768912456', 2, 'Nike', '18-09-2022', '16:45:41', '1500', '2000', '500');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pId` int(10) DEFAULT NULL,
  `pName` varchar(100) DEFAULT NULL,
  `rate` int(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `activate` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pId`, `pName`, `rate`, `description`, `activate`) VALUES
(1, 'Adidas', 400, 'Sport shoes', 'Yes'),
(2, 'Nike', 1500, 'Bag', 'Yes');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
