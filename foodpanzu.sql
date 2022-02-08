-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2022 at 06:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodpanzu`
--
CREATE DATABASE IF NOT EXISTS `foodpanzu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `foodpanzu`;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuCode` int(11) NOT NULL,
  `fdName` text NOT NULL,
  `fdDesc` text NOT NULL,
  `fdImage` text NOT NULL,
  `price` double NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuCode`, `fdName`, `fdDesc`, `fdImage`, `price`, `category`) VALUES
(6, 'Pizza', 'lorem ipsum', 'https://assets.grab.com/wp-content/uploads/sites/8/2018/11/19135857/pizza-delivery-malaysia.jpg', 20, 'Food'),
(7, 'Coca-Cola', 'lorem ipsum', 'https://static.turbosquid.com/Preview/001153/615/0T/3D-model-coca-cola_600.jpg', 3.5, 'Drink'),
(8, 'Nasi Lemak with Chicken', 'lorem ipsum', 'https://www.elmundoeats.com/wp-content/uploads/2021/02/FP-Nasi-lemak-with-all-its-trimmings.jpg', 3.2, 'Food'),
(9, 'French Fries', 'lorem ipsum', 'https://static.toiimg.com/thumb/54659021.cms?width=1200&height=900', 5, 'Food'),
(15, 'Peach Ice Tea', 'lorem ipsum', 'https://static.toiimg.com/photo/84818808.cms', 3, 'Drink'),
(16, 'Black Coffee', 'lorem ipsum', 'https://coffeegearx.com/wp-content/uploads/2019/08/What-Is-Black-Coffee.jpg', 2.9, 'Drink'),
(17, 'Choco Shake', 'lorem ipsum', 'https://www.gfbfood.com.my/wp-content/uploads/2020/03/Untitled-design-1.jpg', 5.3, 'Drink'),
(18, 'Chicken Chop', 'lorem ipsum', 'https://www.sidechef.com/recipe/bf2ae123-0553-4605-a564-e790d69d29fb.jpg?d=1408x1120', 15.2, 'Food'),
(19, 'Burger Special', 'lorem ipsum', 'https://www.tasteofhome.com/wp-content/uploads/2020/03/Smash-Burgers_EXPS_TOHcom20_246232_B10_06_10b.jpg', 7.5, 'Food');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `bookingid` text NOT NULL,
  `foodname` text NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`bookingid`, `foodname`, `quantity`) VALUES
('A023', 'Nasi Lemak with Chicken', 1),
('A023', 'Chicken Chop', 1),
('A023', 'Pizza', 1),
('B023', 'French Fries', 1),
('B023', 'Pizza', 1),
('B023', 'Coca-Cola', 1),
('B023', 'Nasi Lemak with Chicken', 1),
('B023', 'French Fries', 1),
('B023', 'Pizza', 1),
('B023', 'Coca-Cola', 1),
('B023', 'Nasi Lemak with Chicken', 1),
('C033', 'Coca-Cola', 1),
('C033', 'Nasi Lemak with Chicken', 1),
('C033', 'Peach Ice Tea', 1),
('A999', 'Nasi Lemak with Chicken', 1),
('A999', 'French Fries', 1),
('A999', 'Pizza', 1),
('A999', 'Black Coffee', 1),
('B9202', 'Nasi Lemak with Chicken', 1),
('B9202', 'Chicken Chop', 1),
('B9202', 'Coca-Cola', 1),
('B9202', 'French Fries', 1),
('B9202', 'Burger Special', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `name` text NOT NULL,
  `bookingid` text NOT NULL,
  `reserveTable` int(11) NOT NULL,
  `person` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`name`, `bookingid`, `reserveTable`, `person`, `price`) VALUES
('Husny', 'A023', 2, 3, 38),
('Husny', 'B023', 4, 5, 32),
('Husny', 'B023', 4, 5, 32),
('Husny', 'C033', 3, 1, 10),
('Husny', 'A999', 1, 2, 31),
('Husny', 'B9202', 5, 5, 34);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `email`, `password`, `isAdmin`) VALUES
('husnymusharraf', 'Husny', 'lokikong@mail.com', '0123456789', 0),
('ucny', 'Kikilala', 'admin1@mail.moc', 'polokiki', 1),
('ucny', 'Kikilala', 'admin1@mail.moc', 'polokiki', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
