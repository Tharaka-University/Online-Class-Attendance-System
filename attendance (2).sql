-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 02:16 PM
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
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `check` varchar(10) NOT NULL,
  `registrationNumber` varchar(50) NOT NULL,
  `unitCode` varchar(20) NOT NULL,
  `unitTitle` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `firstName`, `lastName`, `check`, `registrationNumber`, `unitCode`, `unitTitle`, `date`, `time`) VALUES
(1, 'Francis', 'mwalimu', 'checkIn', 'EDV2/09813/23', '0283', 'project II', '2024-10-31', '13:11:00'),
(2, 'jack', 'vack', 'checkIn', 'EDV2/0972/23', 'DIIT 0283', 'project II', '2024-10-30', '15:12:00'),
(3, 'BARBARA', 'LAYLAH', 'checkIn', 'EDV2/09754/23', 'DIIT 0283', 'project II', '2024-10-30', '16:00:00'),
(4, 'Francis', 'mwalimu', 'checkIn', 'EDV2/09754/23', 'DIIT 0283', 'project II', '2024-10-31', '15:15:00'),
(5, 'R', 'K', 'checkIn', 'MMM', ',,,', 'KKK', '1111-11-11', '11:11:00'),
(6, 'peter', 'JJ', 'checkOut', 'EDV2/07113/23', 'DIIT 0221', 'LEARNING', '2024-11-01', '11:52:00'),
(7, 'Alex', 'njega', 'checkIn', 'EDV2/07113/23', 'DIIT 0221', 'LEARNING', '2024-11-27', '21:15:00'),
(8, 'Francis', 'mwalimu', 'checkOut', 'EDV2/09813/23', '2334', 'hsyug', '2024-11-26', '20:15:00'),
(9, 'Francis', 'mwalimu', 'checkOut', 'EDV2/09813/23', '2334', 'hsyug', '2024-11-02', '10:09:00'),
(10, 'Alex', 'njega', 'checkIn', 'EDV2/07113/23', 'PHY103', 'General Physics', '2024-11-02', '11:43:00'),
(11, 'Amehd', 'mudavadi', 'checkIn', 'CBT/06812/22', 'ENG104', 'English Composition', '2024-11-02', '12:51:00'),
(12, 'Amehd', 'mudavadi', 'checkIn', 'CBT/06812/22', 'CSC101', 'Introduction to Computer Science', '2024-11-04', '09:32:00'),
(13, 'Alex', 'njega', 'checkOut', 'CBT/06812/22', 'MTH102', 'General Physics', '2024-11-04', '10:21:00'),
(14, 'Alex', 'njega', 'checkIn', 'EDV2/09759/23', 'PHY103', 'General Physics', '2024-11-04', '16:34:00'),
(15, 'lucy', 'nduku', 'checkIn', 'EDV2/09767/23', 'DIIT 0283', 'Web Development', '2024-11-11', '09:25:00'),
(16, 'martin', 'obeng', 'checkIn', 'EDV2/07113/23', 'COSC 0261', 'E-Commerce', '2024-11-11', '13:06:00'),
(17, 'peter', 'munuve', 'checkIn', 'EDV2/07113/23', 'DIIT 0228', 'ICT Project II', '2024-11-12', '14:57:00'),
(18, 'Francis', 'mwalimu', 'checkIn', 'EDV2/07113/23', 'ENG104', 'English Composition', '2024-11-13', '13:51:00'),
(19, 'Brenda', 'M', 'checkIn', 'EDV2/09813/23', 'CSC101', 'Introduction to Computer Science', '2024-11-13', '19:00:00'),
(20, 'Brenda', 'M', 'checkIn', 'EDV2/09813/23', 'PHY103', 'English Composition', '2024-11-14', '14:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'francis mwalimu', 'fj880458@gmail.com', '$2y$10$ETdfmrR/LFyk5ECUwUGckOg6KoBAQwB2nF3kwL1prvCG6RYfEeWTW', '2024-11-11 13:24:11'),
(2, 'Grace Makena', 'edv2.10274.23@student.tharaka.ke', '$2y$10$442zHwJ9QUQF2T2a1BcJneT/p/RPMsXV1roTv0H.FqsUi1T/L/TMe', '2024-11-11 13:30:10'),
(3, 'Dancan Waweru', 'Gasoline@gmail.com', '$2y$10$7RwV9bsvxyYUq/j7l2eOH.XsGhUrjFzddwqVyukR6bmbMSs2QrXMO', '2024-11-11 13:44:56'),
(4, 'Veronica Njeri', 'edv2.09719.23@student.tharaka.ke', '$2y$10$ZBdttBQItLf5lUr/B7jn0erCgh7pqaWDX8faoF7/87J.DuRGhHKnW', '2024-11-12 07:00:33'),
(5, 'Brenda M', 'brenda44@gmail.com', '$2y$10$iKGgfyjK15gW9kg9DhSy0e7ejwSqnth.MMCXAgoqWf.cQ.qeUk6nu', '2024-11-13 15:59:03'),
(6, 'BRAYAN', 'JK@GMAIL.COM', '$2y$10$8LhVTJ2TS.o9qu4RCA524OFSJ5QWSw04MMIu1RIo1YZwH9CVyE6u2', '2024-11-14 11:08:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
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
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
