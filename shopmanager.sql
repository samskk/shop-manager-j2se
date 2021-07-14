-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 12:14 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_email_id` varchar(50) NOT NULL,
  `customer_mobile_no` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_address`, `customer_email_id`, `customer_mobile_no`) VALUES
(1, 'sam', 'sa', 'oih', '57657');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `serial_number` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `expense_description` varchar(250) NOT NULL,
  `expense_amount` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_bill`
--

CREATE TABLE `purchase_bill` (
  `purchase_bill_number` int(11) NOT NULL,
  `purchase_bill_date` date NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchase_bill_amount` decimal(13,4) NOT NULL,
  `purchase_bill_type` varchar(50) CHARACTER SET armscii8 NOT NULL,
  `purchase_bill_payed_amount` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_bill`
--

INSERT INTO `purchase_bill` (`purchase_bill_number`, `purchase_bill_date`, `supplier_id`, `purchase_bill_amount`, `purchase_bill_type`, `purchase_bill_payed_amount`) VALUES
(0, '2021-07-14', 0, '2134.0000', 'sada', '2134.0000');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_bill_credit`
--

CREATE TABLE `purchase_bill_credit` (
  `serial_numbe` int(11) NOT NULL,
  `purchase_bill_number` int(11) NOT NULL,
  `purchase_bill_credit_pay_date` date NOT NULL,
  `purchase_bill_credit_payed_amount` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item`
--

CREATE TABLE `purchase_item` (
  `serial_number` int(11) NOT NULL,
  `purchase_bill_number` int(11) NOT NULL,
  `purchase_item_id` int(11) NOT NULL,
  `purchase_item_quantity` int(11) NOT NULL,
  `purchase_item_price` decimal(13,4) NOT NULL,
  `purchase_item_amount` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_bill`
--

CREATE TABLE `sales_bill` (
  `sales_bill_number` int(11) NOT NULL,
  `sales_bill_date` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sales_bill_amount` decimal(13,4) NOT NULL,
  `sales_bill_type` varchar(50) NOT NULL,
  `sales_bill_payed_amount` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_bill_credit`
--

CREATE TABLE `sales_bill_credit` (
  `serial_number` int(11) NOT NULL,
  `sales_bill_number` int(11) NOT NULL,
  `sales_bill_credit_pay_date` date NOT NULL,
  `sales_bill_credit_payed_amount` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_item`
--

CREATE TABLE `sales_item` (
  `serial_number` int(11) NOT NULL,
  `sales_bill_number` int(11) NOT NULL,
  `sales_item_id` int(11) NOT NULL,
  `sales_item_quantity` int(11) NOT NULL,
  `sales_item_price` decimal(13,4) NOT NULL,
  `sales_item_amount` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_item_id` int(11) NOT NULL,
  `stock_item_name` varchar(50) CHARACTER SET armscii8 NOT NULL,
  `stock_item_quantity` int(11) NOT NULL,
  `stock_item_selling_price` decimal(13,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_item_id`, `stock_item_name`, `stock_item_quantity`, `stock_item_selling_price`) VALUES
(1, 'yudsttdsa', 22, '673763.0000'),
(2, 'hhd', 44, '343.0000'),
(3, 'sam', 66555, '55.0000'),
(4, 'sam', 676, '66778.0000'),
(5, 'sam', 545, '635.0000'),
(6, 'jfhsj', 4, '4343.0000');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(50) CHARACTER SET armscii8 NOT NULL,
  `supplier_address` varchar(50) CHARACTER SET armscii8 NOT NULL,
  `supplier_email_id` varchar(50) CHARACTER SET armscii8 NOT NULL,
  `supplier_mobile_no` varchar(50) CHARACTER SET armscii8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_email_id`, `supplier_mobile_no`) VALUES
(0, 'sam', 'cbzbc', 'xzbxbzbw', '234432424243');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`serial_number`);

--
-- Indexes for table `purchase_bill`
--
ALTER TABLE `purchase_bill`
  ADD PRIMARY KEY (`purchase_bill_number`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purchase_bill_credit`
--
ALTER TABLE `purchase_bill_credit`
  ADD PRIMARY KEY (`serial_numbe`),
  ADD KEY `purchase_bill_credit_ibfk_1` (`purchase_bill_number`);

--
-- Indexes for table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD PRIMARY KEY (`serial_number`),
  ADD KEY `purchase_item_ibfk_2` (`purchase_bill_number`);

--
-- Indexes for table `sales_bill`
--
ALTER TABLE `sales_bill`
  ADD PRIMARY KEY (`sales_bill_number`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `sales_bill_credit`
--
ALTER TABLE `sales_bill_credit`
  ADD PRIMARY KEY (`serial_number`),
  ADD KEY `sales_bill_number` (`sales_bill_number`);

--
-- Indexes for table `sales_item`
--
ALTER TABLE `sales_item`
  ADD PRIMARY KEY (`serial_number`),
  ADD KEY `sales_bill_number` (`sales_bill_number`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_item_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_bill_credit`
--
ALTER TABLE `purchase_bill_credit`
  MODIFY `serial_numbe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_item`
--
ALTER TABLE `purchase_item`
  MODIFY `serial_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_bill_credit`
--
ALTER TABLE `sales_bill_credit`
  MODIFY `serial_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_item`
--
ALTER TABLE `sales_item`
  MODIFY `serial_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchase_bill`
--
ALTER TABLE `purchase_bill`
  ADD CONSTRAINT `purchase_bill_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_bill_credit`
--
ALTER TABLE `purchase_bill_credit`
  ADD CONSTRAINT `purchase_bill_credit_ibfk_1` FOREIGN KEY (`purchase_bill_number`) REFERENCES `purchase_bill` (`purchase_bill_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD CONSTRAINT `purchase_item_ibfk_2` FOREIGN KEY (`purchase_bill_number`) REFERENCES `purchase_bill` (`purchase_bill_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales_bill`
--
ALTER TABLE `sales_bill`
  ADD CONSTRAINT `sales_bill_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `sales_bill_credit`
--
ALTER TABLE `sales_bill_credit`
  ADD CONSTRAINT `sales_bill_credit_ibfk_1` FOREIGN KEY (`sales_bill_number`) REFERENCES `sales_bill` (`sales_bill_number`);

--
-- Constraints for table `sales_item`
--
ALTER TABLE `sales_item`
  ADD CONSTRAINT `sales_item_ibfk_1` FOREIGN KEY (`sales_bill_number`) REFERENCES `sales_bill` (`sales_bill_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
