-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 21, 2025 at 09:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore1`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(6, 'Bashundhara'),
(10, 'kazi farms'),
(11, 'Pran'),
(14, 'speed');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(6, 'Oil'),
(9, 'Drinks'),
(11, 'milk');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 1, 1898569907, 3, 1, 'confirmed'),
(2, 1, 1156944908, 9, 1, 'pending'),
(3, 2, 570655058, 9, 1, 'pending'),
(4, 2, 1642507099, 9, 1, 'confirmed'),
(5, 2, 1764992692, 9, 1, 'pending'),
(6, 2, 1349758990, 9, 1, 'pending'),
(7, 2, 226536120, 9, 1, 'pending'),
(8, 2, 1080151348, 9, 4, 'pending'),
(9, 2, 957640829, 10, 7, 'pending'),
(10, 2, 99736585, 10, 8, 'pending'),
(11, 2, 922282615, 13, 4, 'pending'),
(12, 2, 761238640, 13, 1, 'pending'),
(13, 2, 157560278, 14, 2, 'pending'),
(14, 2, 610308699, 11, 1, 'pending'),
(15, 2, 627682692, 13, 3, 'pending'),
(16, 2, 478244609, 12, 1, 'pending'),
(17, 2, 549295842, 15, 4, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(10, 'Kazi farms Apple', 'fresh apple', 'fresh,organic', 0, 0, 'apple 1.jpg', 'apple 2.jpg', 'Apple.webp', '200', '2024-12-03 17:22:15', 'true'),
(11, 'Speed energy drink', 'Caffeine drink', 'stimulating,drink,thirsty', 9, 14, 'Speed drink.jpg', 'speed drink 1.png', 'Speed drink.jpg', '30', '2024-12-03 17:21:20', 'true'),
(12, 'Newzealand dairy milk', 'fresh milk', 'milk,fresh,dairy,organic', 11, 10, 'Milk powder 2.webp', 'milk powder 1.webp', 'milk-powder.jpg', '300', '2024-12-03 17:26:56', 'true'),
(13, 'Bashundhara oil', 'soybean oil', 'healthy,vegetable oil,cheap', 6, 6, 'Basundhora.oil.jpg', 'oil2.jpg', 'oil.jpeg', '300', '2024-12-03 17:28:50', 'true'),
(14, 'Mr noddles', 'Instant noodles', 'instant,noodles', 8, 11, 'mr noodles1.jpg', 'mr noodles 2.jpeg', 'mr noodles.webp', '30', '2024-12-03 17:35:01', 'true'),
(15, '', 'Soft drink', 'thirsty,drink', 11, 14, 'mojo.webp', 'mojo 2.jpg', 'mojo 1.webp', '40', '2024-12-04 12:28:18', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(3, 2, 100, 570655058, 1, '2024-12-03 14:30:04', 'Complete'),
(4, 2, 100, 1642507099, 1, '2024-12-03 15:49:59', 'Complete'),
(5, 2, 100, 1764992692, 1, '2024-12-04 10:18:29', 'Complete'),
(6, 2, 100, 1349758990, 1, '2024-12-03 16:08:34', 'pending'),
(7, 2, 100, 226536120, 1, '2024-12-04 12:42:24', 'Complete'),
(8, 2, 0, 1808435537, 0, '2024-12-03 16:25:05', 'pending'),
(9, 2, 0, 1080151348, 1, '2024-12-04 05:02:51', 'pending'),
(10, 2, 1400, 957640829, 1, '2024-12-04 05:04:09', 'Complete'),
(11, 2, 1600, 99736585, 1, '2024-12-04 05:12:30', 'Complete'),
(12, 2, 1200, 922282615, 1, '2024-12-04 05:19:18', 'pending'),
(13, 2, 300, 761238640, 1, '2024-12-04 05:20:07', 'pending'),
(14, 2, 660, 157560278, 2, '2024-12-04 07:31:33', 'pending'),
(15, 2, 30, 610308699, 1, '2024-12-04 10:52:14', 'Complete'),
(16, 2, 990, 627682692, 2, '2024-12-04 10:22:03', 'Complete'),
(17, 2, 500, 478244609, 2, '2024-12-04 10:52:04', 'pending'),
(18, 2, 2560, 549295842, 3, '2024-12-04 12:37:52', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(2, 3, 570655058, 100, 'Rocket', '2024-12-03 14:30:04'),
(3, 4, 1642507099, 100, 'Rocket', '2024-12-03 15:49:59'),
(4, 10, 957640829, 1400, 'Nagad', '2024-12-04 05:04:09'),
(5, 11, 99736585, 1600, 'Cash on Delivery', '2024-12-04 05:12:30'),
(6, 5, 1764992692, 100, 'BKash', '2024-12-04 10:18:29'),
(7, 16, 627682692, 990, 'Rocket', '2024-12-04 10:22:03'),
(8, 15, 610308699, 30, 'Rocket', '2024-12-04 10:52:14'),
(9, 7, 226536120, 100, 'BKash', '2024-12-04 12:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(2, 'anam', 'anam@gmail.com', '$2y$10$HwQmCo0dvLQbAYKAjp.GhutHWYCd2FVCA6SGrbXlsVQc4GeD6N.GO', 'rohit.png', '::1', 'dinajpur', '0123'),
(3, 'Rohit', 'rohit@gmail.com', '$2y$10$CCcYq4yIL1ZC1nG0Vxiq/O6y/138p4TFkJFusaxSG4DIirqxIWYPa', 'user.JPG', '::1', 'Rangpur', '01645455');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
