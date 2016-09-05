-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2016 at 06:49 AM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `detail` text NOT NULL,
  `sex` int(1) NOT NULL,
  `date_record` datetime DEFAULT NULL,
  `date_modify` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ตารางเก็บความคิดเห็น';

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `detail`, `sex`, `date_record`, `date_modify`, `status`) VALUES
(3, 222, 'ทดสอบPHP MySQL กับการบันทึกข้อมูล : SUNZANDESIGN.BLOGSPOT.COM ', 1, '2016-08-11 06:12:42', '0000-00-00 00:00:00', 1),
(4, 444, 'ข้อมูลใหม่', 2, '2016-08-17 23:08:45', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `OrderDate` datetime NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Tel` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `Name`, `Address`, `Tel`, `Email`) VALUES
(00001, '2012-03-15 09:59:13', 'Weerachai Nukitram', '1234 Lapharo Bangkok Thailand', '0819876107', 'is_php@hotmail.com'),
(00002, '2012-03-15 10:15:03', 'Weerachai Nukitram', '1234 Latpharo Bangkok Thailand', '0819876107', 'is_php@hotmail.com'),
(00003, '2016-09-06 06:26:53', 'asdf', 'asdf', 'asdf', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE `orders_detail` (
  `DetailID` int(5) NOT NULL,
  `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL,
  `ProductID` int(4) NOT NULL,
  `Qty` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`DetailID`, `OrderID`, `ProductID`, `Qty`) VALUES
(1, 00001, 4, 1),
(2, 00002, 3, 3),
(3, 00002, 1, 1),
(4, 00002, 4, 1),
(5, 00003, 1, 1),
(6, 00003, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(4) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Price` double NOT NULL,
  `Picture` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Price`, `Picture`) VALUES
(1, 'Product 1', 100, '1.gif'),
(2, 'Product 2', 200, '2.gif'),
(3, 'Product 3', 300, '3.gif'),
(4, 'Product 4', 400, '4.gif'),
(5, 'ทดสอบเพิ่มสินค้า', 250, 'new_product.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`) VALUES
(1, 'TEST New user'),
(222, 'Cyberman'),
(444, 'LIZA');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_attraction`
--

CREATE TABLE `tourist_attraction` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tourist_attraction`
--

INSERT INTO `tourist_attraction` (`id`, `title`, `detail`) VALUES
(1, 'วัดพระแก้ว', 'ตัวเมืองเชียงราย'),
(2, ' ร้านกาแฟ Singha Park Café ', 'มหาวิทยาลัยแม่ฟ้าหลวง'),
(3, 'จุดชมวิว 360 องศา @วัดดอยกองข้าว', 'บ้านฮ่องอ้อ ตำบลดอยฮาง อำเภอเมืองเชียงราย'),
(4, 'ล่องแพ หนองบัวหลวง', 'เส้นทางเชียงราย - แม่จัน – เชียงแสน'),
(5, 'บ้านกะเหรี่ยงรวมมิตร..', 'ตำบลแม่ยาว ระยางทางประมาณ 7 กม'),
(6, 'พิพิธภัณฑ์ลื้อลายคำ', 'บ้านศรีดอนชัย อ.เชียงของ จ.เชียงราย '),
(7, 'ถนนคนเดินเชียงราย', 'อยู่ใจกลางเมืองเชียงราย');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourist_attraction`
--
ALTER TABLE `tourist_attraction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `DetailID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;
--
-- AUTO_INCREMENT for table `tourist_attraction`
--
ALTER TABLE `tourist_attraction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
