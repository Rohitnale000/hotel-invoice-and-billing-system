-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 03:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123'),
('admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bill`
--

CREATE TABLE `customer_bill` (
  `cid` int(20) NOT NULL,
  `cname` varchar(25) DEFAULT NULL,
  `cmob` varchar(25) DEFAULT NULL,
  `ctable` int(25) DEFAULT NULL,
  `waiter` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_bill`
--

INSERT INTO `customer_bill` (`cid`, `cname`, `cmob`, `ctable`, `waiter`) VALUES
(1, 'nehal', '9888909022', 2, 'Kiran'),
(2, 'soham', '9822121572', 1, 'santosh'),
(3, 'raj', '9822232425', 6, 'Kiran'),
(4, 'rohit', '9823988812', 4, 'Suraj'),
(5, 'saurabh', '9822121213', 9, 'santosh'),
(6, 'Ajay', '98200550311', 6, 'santosh'),
(7, 'suresh', '9822151213', 4, 'sammer'),
(8, 'Shailesh', '98221213', 3, 'santosh'),
(9, 'Akash', '98221215', 6, 'santosh'),
(10, 'Kiran', '9823222111122', 3, 'Suraj'),
(11, 'Madhuri', '8674424', 5, 'santosh');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(20) NOT NULL,
  `itype` varchar(25) DEFAULT NULL,
  `iname` varchar(25) DEFAULT NULL,
  `iprice` int(25) DEFAULT NULL,
  `istatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `itype`, `iname`, `iprice`, `istatus`) VALUES
(1, 'veg', 'panner masala', 180, 'spicy'),
(2, 'Veg', 'Kaju Kari', 180, 'sweet'),
(4, 'Veg', 'panner tikka masala', 200, 'sweet'),
(6, 'Non-Veg', 'Chikan 65', 250, 'Spicy'),
(7, 'BreakFast', 'Vada-Pav', 10, '-'),
(8, 'Cold-Drinks', 'Sprite(big)', 80, '-'),
(9, 'Non-Veg', 'Chikan Kari', 200, 'Spicy'),
(10, 'BreakFast', 'Misal', 40, 'spicy'),
(11, 'BreakFast', 'spl-Misal', 70, 'spicy'),
(13, 'Cold-Drinks', 'Sprit', 40, 'cold'),
(14, 'Veg', 'Panner 65', 89, 'spicy');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `fname` text DEFAULT NULL,
  `lname` text DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fname`, `lname`, `username`, `password`, `email`) VALUES
(1, 'Rohit', 'Nale', 'rohit', '1234', 'rohitnale0000@gmail.com'),
(2, 'kiran', 'patil', 'admin', '12345', 'kiranpatil003@gmail.com'),
(3, 'abhijit', 'lavhe', 'abhi', '9800', 'lavhe0@gmail.com'),
(4, 'Mohit', 'nale', 'mohit', '7100', 'mohitnale3673@gmail.com'),
(5, 'Ram', 'khole', 'Ram@123', '1234', 'ram11@gmail.com'),
(6, 'sandesh', 'shinde', 'sandesh@123', '1234', 'sandesh@co.in'),
(27, 'Suraj', 'Patil', 'Suraj@123', '12345', 'Surajpatil@gamil.com'),
(28, 'Ajay', 'patil', 'ajay@123', '1234', 'ajay@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `waiter`
--

CREATE TABLE `waiter` (
  `wid` int(20) NOT NULL,
  `wname` varchar(25) DEFAULT NULL,
  `wadd` varchar(25) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waiter`
--

INSERT INTO `waiter` (`wid`, `wname`, `wadd`, `phone`, `email`) VALUES
(1, 'Suraj', 'Delhi', '9822121511', 'rohitnale0000@gmail.com'),
(2, 'Kiran', 'MP', '7720343415', 'kk@gmail.com'),
(3, 'santosh', 'UP', '7822898967', 'satosh00@gmail.com'),
(9, 'sammer', 'UP', '9822121517', 'sammer200@co.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_bill`
--
ALTER TABLE `customer_bill`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `waiter`
--
ALTER TABLE `waiter`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_bill`
--
ALTER TABLE `customer_bill`
  MODIFY `cid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `waiter`
--
ALTER TABLE `waiter`
  MODIFY `wid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
