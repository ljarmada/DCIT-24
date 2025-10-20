-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2025 at 10:20 PM
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
-- Database: `available_books_in_the_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `available books`
--

CREATE TABLE `available books` (
  `Title` varchar(45) NOT NULL,
  `Book ID` int(30) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `ISBN` int(45) NOT NULL,
  `Genre/Category` varchar(45) NOT NULL,
  `Publisher` varchar(45) NOT NULL,
  `Language` varchar(45) NOT NULL,
  `Description/Abstract` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `borrowed_books`
--

CREATE TABLE `borrowed_books` (
  `Title` varchar(45) NOT NULL,
  `Book ID` int(30) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `ISBN` int(30) NOT NULL,
  `Genre/Category` varchar(45) NOT NULL,
  `Publisher` varchar(45) NOT NULL,
  `Language` varchar(45) NOT NULL,
  `Description/Abstract` varchar(45) NOT NULL,
  `Checkout Date` int(11) NOT NULL,
  `Due Date` int(30) NOT NULL,
  `Name of Borrower` varchar(45) NOT NULL,
  `Library Card ID Number` int(30) NOT NULL,
  `Email Address` varchar(45) NOT NULL,
  `Contact Number` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `missing_books`
--

CREATE TABLE `missing_books` (
  `Title` varchar(45) NOT NULL,
  `Book ID` int(30) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `ISBN` int(45) NOT NULL,
  `Genre/Category` varchar(45) NOT NULL,
  `Publisher` varchar(45) NOT NULL,
  `Language` varchar(45) NOT NULL,
  `Description/Abstract` varchar(45) NOT NULL,
  `Checkout Date` int(30) NOT NULL,
  `Due Date` int(30) NOT NULL,
  `Name of Last Borrower` varchar(45) NOT NULL,
  `Library card ID Number` int(30) NOT NULL,
  `Email Address` varchar(45) NOT NULL,
  `Contact Number` int(30) NOT NULL,
  `Resoution Option` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
