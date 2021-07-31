-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2021 at 12:34 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote_india`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `party` varchar(15) NOT NULL,
  `votes` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`party`, `votes`) VALUES
('aap', 8),
('bjp', 12),
('congress', 14);

-- --------------------------------------------------------

--
-- Table structure for table `voter_registration`
--

CREATE TABLE `voter_registration` (
  `voter_id` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_no` int(13) NOT NULL,
  `state` varchar(15) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `vote_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `voter_registration`
--

INSERT INTO `voter_registration` (`voter_id`, `name`, `email`, `phone_no`, `state`, `age`, `gender`, `password`, `vote_status`) VALUES
('ABC1234567', 'Abhishek', 'abhi@shek.com', 2147483647, 'MadhyaPradesh', 21, 'MALE', 'project', 1),
('1234567890', 'Gabbar Singh', 'gabbar@singh.com', 2147483647, 'Delhi', 50, 'MALE', 'holikabhai', 1),
('ABCDEFGHIJ', 'romy', 'ggoo', 2147483647, 'Bihar', 21, 'MALE', 'joy', 0),
('kumar', 'mishra', 'rasg678', 9876, 'Bihar', 20, 'MALE', 'vijay', 1),
('ESE2021611', 'Abhishek kumar mishr', 'abhishek@gmail.com', 2147483647, 'Mumbai', 22, 'MALE', 'Abhishek7', 1),
('ABD3333333', 'hola', 'hhhll', 908778000, 'Mumbai', 789, 'MALE', 'kk', 0),
('XYZ2021060', 'Abhishek kumar mishr', 'abhishek@gmail.com', 2147483647, 'Mumbai', 22, 'MALE', 'password', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`votes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
