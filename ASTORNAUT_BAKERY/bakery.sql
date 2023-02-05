-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 03:40 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` varchar(30) NOT NULL,
  `PASS` varchar(30) DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `PASS`, `NAME`) VALUES
('admin', 'admin', 'admin default');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `NAME` varchar(30) NOT NULL,
  `EMAIL` varchar(60) NOT NULL,
  `MOBILE` int(11) NOT NULL,
  `ID` varchar(30) NOT NULL,
  `PASS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`NAME`, `EMAIL`, `MOBILE`, `ID`, `PASS`) VALUES
('Zahra Cantik', 'jaracantik@kasir.com', 859959995, 'jara', 'jara'),
('kasir default', 'kasirdefault@kasirdefault.com', 2143682147, 'kasir', 'kasir');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `NAME` varchar(30) NOT NULL,
  `PRICE` varchar(10) NOT NULL,
  `STOCK` int(5) DEFAULT NULL,
  `CODE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`NAME`, `PRICE`, `STOCK`, `CODE`) VALUES
('Red Velvet', '120000', 99, 'A001'),
('Bolu Kukus', '42000', 100, 'A002'),
('Bika Ambon', '40000', 100, 'A003'),
('Donut', '23000', 98, 'A004'),
('Chiffon Cake', '76000', 100, 'A005'),
('Black Forest', '55000', 100, 'A006'),
('Lemon Taart', '143000', 100, 'A007'),
('Bolu Gulung', '92000', 100, 'A008'),
('Lemon Taart', '143000', 100, 'A009'),
('Bolu Gulung', '92000', 100, 'A010'),
('Chiken Pie', '19500', 100, 'B001'),
('Choco Ecliar', '12600', 100, 'B002'),
('Sausage Broad', '16500', 100, 'B003'),
('Almond Pastry', '15000', 100, 'B004'),
('Croissant', '11000', 100, 'B005'),
('Cruffin Roll', '14500', 100, 'B006'),
('Palmir', '8500', 96, 'B007'),
('Sweet Cheese Crunch', '18000', 100, 'B008'),
('Egg Tart', '16000', 100, 'B009'),
('Smoke Beef Cheese Puff', '21000', 100, 'B010'),
('Cruffin Roll', '14500', 98, 'B016'),
('Palmir', '8500', 100, 'B017'),
('Sweet Cheese Crunch', '18000', 100, 'B018'),
('Egg Tart', '16000', 100, 'B019'),
('Bundle Indonesian Cake & Bread', '890000', 49, 'C001'),
('Bundle Chinesse Cake & Bread', '550000', 50, 'C002'),
('Bundle Japan Cake & Bread', '540000', 50, 'C003'),
('Bundle Holland Cake & Bread', '850000', 50, 'C004'),
('Bundle Korena Cake & Bread', '680000', 50, 'C005'),
('Bundle France Cake & Bread', '695000', 50, 'C006'),
('Bundle American Cake & Bread', '645000', 50, 'C007'),
('Bundle England Cake & Bread', '775000', 50, 'C008'),
('Bundle Turkey Cake & Bread', '675000', 50, 'C009'),
('Bundle Indian Cake & Bread', '525000', 50, 'C010');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SALES` decimal(6,2) DEFAULT NULL,
  `DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SALES`, `DATE`) VALUES
('7000.00', '2022-01-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`CODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

DESC sales;
SHOW DATABASES;
USE astornaut_bakery;
SHOW TABLES;
SELECT * FROM sales;

SELECT stock, code FROM item;

ALTER TABLE sales MODIFY sales FLOAT;