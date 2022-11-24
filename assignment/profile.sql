-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2022 at 10:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXIST profile (
  id int(100) NOT NULL,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  bio varchar(255) NOT NULL
);

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `bio`) VALUES
(1, 'peetambar', 'pk123@gmail.com', 'Loves cricket'),
(2, 'Test', 'test123@gmail.com', 'Test bio'),
(3, 'Test', 'dede@gmail.com', 'skmkdmdc'),
(4, 'testt', 'dsnjnd@gm.com', 'jssm'),
(5, 'sasm', 'jjj@jj.com', 'sakmksa'),
(6, 'Test Name', 'test321@gmail.com', 'This is my bio'),
(7, 'Peetamber Kohli', 'pk@gmail.com', 'I love sumo fight');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
