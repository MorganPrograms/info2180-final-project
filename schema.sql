-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 01:50 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schema`
--
CREATE DATABASE IF NOT EXISTS `schema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `schema`;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
  `id` int(11) NOT NULL,
  `title` int(35) NOT NULL,
  `description` longtext NOT NULL,
  `type` char(35) NOT NULL,
  `priority` char(35) NOT NULL,
  `status` char(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `firstname` char(35) NOT NULL,
  `lastname` char(35) NOT NULL,
  `password` char(35) NOT NULL,
  `email` char(35) NOT NULL,
  `date_joined` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `password`, `email`, `date_joined`) VALUES
(0, 'Admin', 'Gai', 'password123', 'admin@bugme.com', '2019-11-24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
