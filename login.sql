-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 08:20 AM
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
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `saver`
--

CREATE TABLE `saver` (
  `id` int(255) NOT NULL,
  `income` varchar(255) NOT NULL,
  `expense` varchar(255) NOT NULL,
  `savings` varchar(255) NOT NULL,
  `current_balance` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saver`
--

INSERT INTO `saver` (`id`, `income`, `expense`, `savings`, `current_balance`) VALUES
(1, '20000', '200', '6000', ''),
(10, '50000', '250', '6000', ''),
(11, '10000', '5000', '2000', ''),
(13, '10000', '500', '100', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'm.geller@gmail.com', '$2y$10$TPNJReVZDS964OaATCv0be7z9yveXm6IZLD9vtlchBB82uMbas1cC', '2022-12-17'),
(2, 'nusrat@gmail.com', '$2y$10$3xm8x.oR7x8AiIMeIO15BePBmqxqg611m4dsnxN8rUnci9LMp3ppa', '2022-12-17'),
(3, 'chandler@gmail.com', '$2y$10$CwUK0rmQ2irXb29cNPjJzenFjjofrQa/ZB1ukVueO5YDGdeqaqCuu', '2022-12-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `saver`
--
ALTER TABLE `saver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `saver`
--
ALTER TABLE `saver`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
