-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2020 at 05:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `connection`
--

CREATE TABLE `connection` (
  `id` int(11) NOT NULL,
  `Email1` varchar(50) NOT NULL,
  `Name1` varchar(50) NOT NULL,
  `Skill1` varchar(50) NOT NULL,
  `LearningSkill1` varchar(50) NOT NULL,
  `Email2` varchar(50) NOT NULL,
  `Name2` varchar(50) NOT NULL,
  `Skill2` varchar(50) NOT NULL,
  `LearningSkill2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `connection`
--

INSERT INTO `connection` (`id`, `Email1`, `Name1`, `Skill1`, `LearningSkill1`, `Email2`, `Name2`, `Skill2`, `LearningSkill2`) VALUES
(20, 'mariam@gmail.com', 'mariam khan', 'Java', 'Python', 'areeb@gmail.com', 'sss Iqbal', 'Python', 'Java'),
(83, 'areeb@gmail.com', 'sss Iqbal', 'Python', 'Java', 'mariam@gmail.com', 'mariam khan', 'Java', 'Python'),
(84, 'areeb@gmail.com', 'sss Iqbal', 'Python', 'Java', 'fyp@gmail.com', 'Fatima Saib', 'Java', 'Python');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `UserTo` varchar(100) NOT NULL,
  `UserFrom` varchar(100) NOT NULL,
  `Progress` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `learning skills`
--

CREATE TABLE `learning skills` (
  `Email` varchar(50) NOT NULL,
  `Learning Skills` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning skills`
--

INSERT INTO `learning skills` (`Email`, `Learning Skills`) VALUES
('areeb@gmail.com', 'Python'),
('mariam@gmail.com', 'Java'),
('mariam@gmail.com', 'C++/C'),
('fyp@gmail.com', 'Java'),
('iqbal@gmail.com', 'C++/C'),
('iqbal@gmail.com', 'Database'),
('huzaifa@gmail.com', 'Java');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `First Name` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Education` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`First Name`, `Name`, `Email`, `Password`, `Phone`, `Education`) VALUES
('sss', 'Iqbal', 'areeb@gmail.com', 'abc', '12455', 'Masters'),
('Fatima', 'Saib', 'fyp@gmail.com', 'abc', '12444', 'Matriculation'),
('huzaifa', 'vohra', 'huzaifa@gmail.com', 'abc', '339933', 'Intermediate'),
('iqbal', 'vohra', 'iqbal@gmail.com', 'abc', '033324322', 'Masters'),
('mariam', 'khan', 'mariam@gmail.com', 'abc', '03335689965', 'Bachelors');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `Email` varchar(50) NOT NULL,
  `Skills` varchar(50) NOT NULL,
  `Learning Skills` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`Email`, `Skills`, `Learning Skills`) VALUES
('areeba@gmail.com', 'Linux,Database,', 'Java,Python,'),
('areebaiqbal333@gmail.com', 'Python,Java,', 'Linux,Database,'),
('iqbal333@gmail.com', 'Python,Java,', 'Linux,Database,');

-- --------------------------------------------------------

--
-- Table structure for table `skills own`
--

CREATE TABLE `skills own` (
  `Email` varchar(100) NOT NULL,
  `Skills` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills own`
--

INSERT INTO `skills own` (`Email`, `Skills`) VALUES
('areeb@gmail.com', 'Java'),
('mariam@gmail.com', 'Python'),
('fyp@gmail.com', 'Python'),
('iqbal@gmail.com', 'Java'),
('iqbal@gmail.com', 'Python'),
('huzaifa@gmail.com', 'Computer Basics'),
('huzaifa@gmail.com', 'Database');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `msg_body` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(10, 'mariam@gmail.com', 'areeb@gmail.com', ' hi', '2020-08-31 21:55:51', 'no'),
(11, 'mariam@gmail.com', 'areeb@gmail.com', ' hello', '2020-08-31 22:13:41', 'no'),
(12, 'areeb@gmail.com', 'mariam@gmail.com', ' get lost', '2020-08-31 22:14:26', 'no'),
(13, 'mariam@gmail.com', 'areeb@gmail.com', ' ok', '2020-08-31 22:15:03', 'no'),
(17, 'fyp@gmail.com', 'areeb@gmail.com', ' hello', '2020-09-01 10:16:38', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `connection`
--
ALTER TABLE `connection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `connection`
--
ALTER TABLE `connection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
