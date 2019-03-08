-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2019 at 06:03 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `fullname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `age` int(11) NOT NULL,
  `gender` text NOT NULL,
  `location` text NOT NULL,
  `bloodgroup` text NOT NULL,
  `email` text NOT NULL,
  `contact` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `firstname`, `lastname`, `fullname`, `username`, `password`, `age`, `gender`, `location`, `bloodgroup`, `email`, `contact`) VALUES
(1, 'john', 'Doe', 'John Doe', 'johndoe', 'johndoe', 79, 'Male', 'Chennai', 'O+ve', 'johndoe@example.com', 9876543210),
(2, 'abcd', 'efgh', 'abcd efgh', 'abcdefgh', 'abcdefgh', 100, 'Male', 'abcd', 'O+ve', 'abcd@abcd', 879638247),
(3, 'qwerty', 'asdf', 'qwerty asdf', 'qwerty', 'qwerty', 12, 'female', 'qwerty', 'O-ve', 'qwrty@asdf', 1234567897),
(4, 'rgevrg', 'gegfg', 'rgevrg gegfg', 'dfgdfsg', 'dfgdsgd', 24, 'Male', 'dgfdg', 'O+ve', 'etewrtew@dfgdfg', 345325342);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
