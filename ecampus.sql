-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 08:23 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `PF_NO:` int(10) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Date Creation` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`PF_NO:`, `Designation`, `Date Creation`) VALUES
(1234, 'Instructional Designer', '2021-02-10 09:15:48.00000'),
(2345, 'E-Learning System Support Specialist', '2021-02-10 09:16:47.00000'),
(3456, 'E-library', '2021-02-10 09:17:31.00000'),
(4567, 'Web-Programmer', '2021-02-10 09:18:00.00000');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `Username` varchar(30) NOT NULL,
  `Password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `PF_No:` int(10) NOT NULL,
  ` Name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Phone No.` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`PF_No:`, ` Name`, `email`, `Password`, `Phone No.`) VALUES
(1234, 'Peter Kiprotich', 'pkiprotich@maseno.ac.ke', 'Peter', '0722458142');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `Leavetype` varchar(100) NOT NULL,
  `FromDate` datetime(6) NOT NULL,
  `ToDate` datetime(5) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `StandIn` varchar(50) NOT NULL,
  `Director Remark` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `leavetype`
--

CREATE TABLE `leavetype` (
  `Emergency` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
