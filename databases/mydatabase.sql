-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 02:23 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantily` int(10) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartID`, `ProductID`, `Quantily`, `UserName`) VALUES
(51, 3, 1, 'thai'),
(55, 5, 1, 'thai'),
(60, 6, 1, 'thai'),
(61, 2, 1, 'thai'),
(62, 15, 1, 'thai');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Honda'),
(2, 'Suzuki'),
(3, 'Yamaha'),
(4, 'Piaggio'),
(5, 'Kawasaki'),
(6, 'Trinx'),
(7, 'Merida'),
(8, 'Trek'),
(9, 'Specialized'),
(10, 'Scott');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `Prices` int(20) DEFAULT NULL,
  `Description` varchar(3000) DEFAULT NULL,
  `Images` varchar(200) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Prices`, `Description`, `Images`, `CategoryID`) VALUES
(1, 'Honda Winner X-Sport', 2000, 'The moto is imported, high quality, for both men and women.', 'images/moto1-1.jpg', 1),
(2, 'Honda Winner RSX 2019', 1500, 'The moto is imported, high quality, for both men and women.', 'images/moto1-3.jpg', 1),
(3, 'Suzuki GD110', 1100, 'The moto is imported, high quality, for both men and women.', 'images/moto2-1.jfif', 2),
(4, 'Suzuki GZ150', 2250, 'The moto is imported, high quality, for both men and women.', 'images/moto2-2.jpg', 2),
(5, 'Yamaha MotoGP', 2000, 'The moto is imported, high quality, for both men and women.', 'images/moto3-1.png', 3),
(6, 'Yamaha YZF-R3', 5000, 'The moto is imported, high quality, for both men and women.', 'images/moto3-2.png', 3),
(7, 'Piggio Liberty 125', 2100, 'The moto is imported, high quality, for both men and women.', 'images/moto4-1.jfif', 4),
(8, 'Kawasaki Ninja H2', 40000, 'The moto is imported, high quality, for both men and women.', 'images/moto5-1.jpg', 5),
(10, 'Trinx Free 2.0', 270, 'The moto is imported, high quality, for both men and women.', 'images/bike6-2.png', 6),
(11, 'Merida Wolt 1', 450, 'The moto is imported, high quality, for both men and women.', 'images/bike7-1.jfif', 7),
(12, 'Merida Ride 91', 300, 'The moto is imported, high quality, for both men and women.', 'images/bike7-2.jpg', 7),
(13, 'Trek 920', 200, 'The moto is imported, high quality, for both men and women.', 'images/bike8-1.jpg', 8),
(14, 'Specialized Allez Sport', 700, 'The moto is imported, high quality, for both men and women.', 'images/bike9-1.jfif', 9),
(15, 'Honda Winner X 2020', 2300, 'The moto is imported, high quality, for both men and women.', 'images/moto1-2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` int(30) DEFAULT NULL,
  `permission` varchar(10) DEFAULT NULL,
  `Avatar` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`, `Phone`, `permission`, `Avatar`) VALUES
(1, 'thai2001', 'thai2001', 'th2001@gmail.com', 1632982733, 'admin', NULL),
(2, 'thai', 'thai', 'vanthai@gmail.com', 578663357, '', 'avatar.jpg'),
(4, 'nguyenminh', 'minhminh', 'minhminh@gmail.com', 475889686, '', 'icon1.png'),
(8, 'thai123', 'thai123', 'thai123@gmail.com', 123425, '', 'login.png'),
(9, 'tha', 'tha', 'tha@gmail.com', 123425, '', 'bike6-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `UserName` (`UserName`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `UserID_2` (`UserID`),
  ADD KEY `UserID_3` (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`UserName`) REFERENCES `users` (`Username`),
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
