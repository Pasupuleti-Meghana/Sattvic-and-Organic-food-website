-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2023 at 06:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 31, 'Prathyusha', 'prathyu@gmail.com', '6787809089', 'when my order will be delivered.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(24, 'salad', 'sprouts', 'vegetable salad', 20, 'chunky.jpeg'),
(28, 'Apple', 'fruits&vegetables', ' 1kg', 120, 'applefruit.jpeg'),
(30, 'Avocado', 'fruits', '1kg', 316, 'avocado.jpg'),
(33, 'cashew nuts', 'nuts', ' Nuts:320, 1kg', 969, 'cashews.jpeg'),
(34, 'Banana', 'fruits', '1kg\r\nyou save:24%', 39, 'bananafruit.jpeg'),
(35, 'Barley salad', 'sprouts', 'Sprouts&Nuts salad\r\ncalories:220', 315, 'barley-salad.jpg'),
(36, ' papaya juice', 'sprouts', ' 500ml', 160, 'Avocado-and-papaya-Juice.jpg'),
(37, 'Carrots', 'fruits', '500g', 20, 'carrots.jpeg'),
(39, 'Broccoli', 'fruits', '500gm', 22, 'broccoli.jpeg'),
(40, 'Kismis', 'nuts', '1kg\r\nyou save:21%', 474, 'kismis.jpeg'),
(41, 'cucumber', 'fruits', '1kg', 30, 'cucumber.jpeg'),
(42, 'cucumber,kale&pear juice', 'sprouts', '500ml', 160, 'Cucumber-kale-and-pear-Juice.jpg'),
(43, 'Amla juice', 'sprouts', '250ml', 160, 'Amla-Juice.jpg'),
(46, 'Apple juice', 'sprouts', '500ml', 50, 'Apple-Juice.jpg'),
(47, 'Black-grape juice', 'sprouts', '250ml', 30, 'Black-Grape-Juice.jpg'),
(49, 'Carrot&Black grape salad', 'sprouts', '1 cup', 100, 'carrotblackgrape-salad.jpeg'),
(50, 'Apricot', 'nuts', '1kg', 200, 'apricot.jpeg'),
(51, 'Almonds', 'nuts', '1kg', 1000, 'almonds.jpeg'),
(52, 'Beetroot', 'fruits', '1kg', 34, 'beetroot.jpeg'),
(53, 'sattvic Burger', 'food', '1 Burger', 100, 'sattvicburger.jpeg'),
(54, 'coconut Milk', 'sprouts', '250ml\r\n', 70, 'coconutmilk.jpeg'),
(55, 'sattvic thali', 'food', '1 plate\r\n', 200, 'sattvicthali.jpeg'),
(56, 'sattvic rice', 'food', '1 plate\r\n', 100, 'sattvicfood.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'prathyusha', 'prathyu@gmail.com', '1b518fcab9abfa214f2168645b0a463a', 'user', '1667710007944.jpg'),
(32, 'admin', 'adminpr@gmail.com', '1b518fcab9abfa214f2168645b0a463a', 'admin', '1667710007944.jpg'),
(33, 'Neerajakshi', 'neeraja@gmail.com', '0c72eb6113d3a009473b7a428498b7f6', 'user', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
