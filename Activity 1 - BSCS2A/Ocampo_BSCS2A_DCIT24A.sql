-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2025 at 03:29 PM
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
-- Database: `bookslist`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(150) NOT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `publisher` varchar(150) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `isbn`, `genre`, `publisher`, `publication_year`, `language`, `description`) VALUES
(1, 'Noli Me Tangere', 'José Rizal', '9789715500014', 'Historical Fiction', 'National Historical Commission of the Philippines', 1887, 'Filipino', 'A novel exposing the injustices of Spanish rule in the Philippines.'),
(2, 'El Filibusterismo', 'José Rizal', '9789715500021', 'Political Fiction', 'National Historical Commission of the Philippines', 1891, 'Filipino', 'A sequel to Noli Me Tangere highlighting revenge and revolution.'),
(3, 'Banaag at Sikat', 'Lope K. Santos', '9789716100007', 'Socialist Literature', 'Anvil Publishing', 1907, 'Filipino', 'A classic promoting workers’ rights and social justice.'),
(4, 'Dekada 70', 'Lualhati Bautista', '9789712604103', 'Historical Fiction', 'Cacho Publishing House', 1983, 'Filipino', 'A story about a family living under Martial Law in the Philippines.'),
(5, 'Smaller and Smaller Circles', 'F.H. Batacan', '9789712731373', 'Crime Fiction', 'University of the Philippines Press', 2002, 'English', 'A crime novel about Jesuit priests investigating serial murders in Manila.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
