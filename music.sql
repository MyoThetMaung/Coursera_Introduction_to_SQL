-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2022 at 07:17 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albumn`
--

CREATE TABLE `albumn` (
  `albumn_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albumn`
--

INSERT INTO `albumn` (`albumn_id`, `title`, `artist_id`) VALUES
(1, 'good morning', 1),
(2, 'good evening', 1),
(3, 'good night', 2),
(4, 'good afternoon', 2),
(5, 'good bye', 3);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `name`) VALUES
(1, 'saimon'),
(2, 'david'),
(3, 'john');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genre_id`, `name`) VALUES
(1, 'rock'),
(2, 'metal');

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `track_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `length` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `albumn_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`track_id`, `title`, `length`, `rating`, `count`, `albumn_id`, `genre_id`) VALUES
(1, 'one', 100, 5, 0, 1, 1),
(2, 'two', 100, 5, 0, 1, 1),
(3, 'three', 100, 5, 0, 1, 1),
(4, 'four', 100, 5, 0, 1, 1),
(5, 'five', 100, 5, 0, 1, 1),
(6, 'six', 100, 5, 0, 2, 1),
(7, 'seven', 100, 5, 0, 2, 1),
(8, 'nine', 100, 5, 0, 2, 1),
(9, 'ten', 100, 5, 0, 2, 1),
(10, 'eleven', 100, 5, 0, 2, 1),
(11, 'twelve', 100, 5, 0, 3, 2),
(12, 'thirteen', 100, 5, 0, 3, 2),
(13, 'fourteen', 100, 5, 0, 3, 2),
(14, 'fifteen', 100, 5, 0, 3, 2),
(15, 'sixteen', 100, 5, 0, 3, 2),
(16, 'seventeen', 100, 5, 0, 4, 2),
(17, 'eigtheen', 100, 5, 0, 4, 2),
(18, 'nighteen', 100, 5, 0, 4, 2),
(19, 'twenty', 100, 5, 0, 4, 2),
(20, 'eight', 100, 5, 0, 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albumn`
--
ALTER TABLE `albumn`
  ADD PRIMARY KEY (`albumn_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`track_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albumn`
--
ALTER TABLE `albumn`
  MODIFY `albumn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
