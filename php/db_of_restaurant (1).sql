-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 11:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_of_restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`) VALUES
(1, 'tunis'),
(2, 'nabeul'),
(3, 'bizert'),
(4, 'sousse'),
(5, 'sfax');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone_number` int(8) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`f_name`, `l_name`, `city`, `address`, `phone_number`, `email`) VALUES
('jihene', 'gazzeh', 'sousse', 'kalaa sghira', 26874009, 'jihengazzeh80@gmail.com'),
('takwa', 'hmidi', 'tunis', 'nn', 26874009, 'jihengazzeh80@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` int(20) NOT NULL,
  `rating` int(2) NOT NULL,
  `type_id` int(20) NOT NULL,
  `size_id` int(20) NOT NULL,
  `r_name` varchar(20) NOT NULL,
  `city_id` int(11) NOT NULL,
  `location` varchar(20) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `description`, `price`, `rating`, `type_id`, `size_id`, `r_name`, `city_id`, `location`, `image`) VALUES
(1, 'pizza cheese&sauce t', 'cheese-tomato', 6000, 4, 1, 1, 'guitarra', 1, 'mourouj 3', 'pizza1.jpg'),
(2, 'pizza bbq chicken', 'chicken-bbq sauce-green peppers-onion', 8000, 4, 1, 1, 'foodie', 1, 'marsa', 'pizza2.jpg'),
(3, 'tuna salad sandwich', 'tuna-salad-onion-cheese', 6000, 4, 4, 2, 'resto', 1, 'mourouj 1', 'Tuna.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `r_menu`
--

CREATE TABLE `r_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `name`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'big'),
(4, 'family');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'pizza'),
(2, 'burger'),
(3, 'drinks'),
(4, 'sandwish');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
