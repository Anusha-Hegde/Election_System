-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 09:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electiondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `cno` int(11) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `pno` int(11) NOT NULL,
  `ano` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`cno`, `cname`, `pno`, `ano`) VALUES
(542, 'Ramesh', 2323, 1),
(543, 'Gowtham', 1212, 1),
(653, 'Hema', 1212, 2),
(654, 'Ashray', 3434, 2),
(764, 'Siddiqui', 3434, 3),
(765, 'Parvati', 2323, 3),
(875, 'Riya', 2323, 4),
(876, 'Hitesh', 1212, 4),
(986, 'Raghav', 1212, 5),
(987, 'Divanshi', 3434, 5),
(431, 'Jahnavi', 4545, 6),
(432, 'Lokesh', 2323, 6),
(320, 'Manju', 5656, 7),
(321, 'Suhana', 3434, 7),
(218, 'Gandhi', 3434, 8),
(219, 'Wathiq', 1212, 8),
(197, 'Joseph', 4545, 9),
(198, 'Suraj', 2323, 9),
(220, 'Prakash', 5656, 8),
(433, 'Kalyan', 1212, 6);

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE `constituency` (
  `ano` int(11) NOT NULL,
  `aname` varchar(20) DEFAULT NULL,
  `district` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituency`
--

INSERT INTO `constituency` (`ano`, `aname`, `district`, `state`) VALUES
(1, 'Anekal', 'Bangalore Urban', 'Karnataka'),
(2, 'Bagalkot', 'Bagalkot', 'Karnataka'),
(3, 'Chamundeshwari', 'Mysore', 'Karnataka'),
(4, 'Davangere', 'Davangere South', 'Karnataka'),
(5, 'Magadi', 'Ramnagar', 'Karnataka'),
(6, 'Kundapur', 'Udupi', 'Karnataka'),
(7, 'Bhadravati', 'Shivamogga', 'Karnataka'),
(8, 'Bellary', 'Bellary', 'Karnataka'),
(9, 'Manvi', 'Raichur', 'Karnataka');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`firstname`, `lastname`, `country`, `email`, `question`) VALUES
('', '', '', '', ''),
('Vinutna', 'K', 'usa', 'v@gmail.com', 'All good'),
('Vinutna', 'K', 'usa', 'v@gmail.com', 'All good'),
('Abhishek', 'k', 'india', 'narasimham.kvl@outlo', 'jjj'),
('Abhishek', 'k', 'india', 'mmm', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `count_table`
--

CREATE TABLE `count_table` (
  `ano` int(11) NOT NULL,
  `cno` int(11) NOT NULL,
  `no_of_votes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `count_table`
--

INSERT INTO `count_table` (`ano`, `cno`, `no_of_votes`) VALUES
(1, 542, 2),
(1, 543, 1),
(2, 653, 1),
(2, 654, 2),
(3, 764, 2),
(3, 765, 1),
(4, 875, 1),
(4, 876, 2),
(5, 986, 2),
(5, 987, 1),
(6, 431, 2),
(6, 432, 1),
(6, 433, 1),
(7, 320, 2),
(7, 321, 1),
(8, 218, 1),
(8, 219, 2),
(8, 220, 1),
(9, 197, 1),
(9, 198, 3);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `pno` int(11) NOT NULL,
  `pname` varchar(20) DEFAULT NULL,
  `phead` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`pno`, `pname`, `phead`) VALUES
(1212, 'BJP', 'Yeddyurappa'),
(2323, 'JDS', 'Kumaraswamy'),
(3434, 'INC', 'Siddharamaiah'),
(4545, 'BSP', 'Mayawati'),
(5656, 'CPI(M)', 'Raja'),
(7878, 'TRS', 'KCR');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `cno` int(11) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `aname` varchar(20) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`cno`, `cname`, `pname`, `aname`, `position`) VALUES
(542, 'Ramesh', 'JDS', 'Anekal', 1),
(543, 'Gowtham', 'BJP', 'Anekal', 2),
(654, 'Ashray', 'INC', 'Bagalkot', 1),
(653, 'Hema', 'BJP', 'Bagalkot', 2),
(764, 'Siddiqui', 'INC', 'Chamundeshwari', 1),
(765, 'Parvati', 'JDS', 'Chamundeshwari', 2),
(875, 'Riya', 'JDS', 'Davangere', 2),
(876, 'Hitesh', 'BJP', 'Davangere', 1),
(986, 'Raghav', 'BJP', 'Magadi', 1),
(987, 'Divanshi', 'INC', 'Magadi', 2),
(431, 'Jahnavi', 'BSP', 'Kundapur', 1),
(432, 'Lokesh', 'JDS', 'Kundapur', 2),
(433, 'Kalyan', 'BJP', 'Kundapur', 3),
(320, 'Manju', 'CPI(M)', 'Bhadravati', 1),
(321, 'Suhana', 'INC', 'Bhadravati', 2),
(218, 'Gandhi', 'INC', 'Bellary', 2),
(219, 'Wathiq', 'BJP', 'Bellary', 1),
(220, 'Prakash', 'CPI(M)', 'Bellary', 3),
(197, 'Joseph', 'BSP', 'Manvi', 2),
(198, 'Suraj', 'JDS', 'Manvi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `vno` int(11) NOT NULL,
  `vname` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `relname` varchar(20) DEFAULT NULL,
  `ano` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`vno`, `vname`, `age`, `relname`, `ano`) VALUES
(101, 'Ramesh', 45, 'Gowda', 1),
(102, 'Gowtham', 65, 'Naidu', 1),
(103, 'Kavya', 25, 'Pawar', 1),
(104, 'Hema', 37, 'Suresh', 2),
(105, 'Ashray', 37, 'Pavan', 2),
(106, 'Puttamma', 81, 'Lakshman', 2),
(107, 'Manya', 20, 'Saurav', 3),
(108, 'Siddiqui', 40, 'Basha', 3),
(109, 'Parvati', 53, 'Kumar', 3),
(110, 'Sanjana', 19, 'Rama', 4),
(111, 'Hitesh', 44, 'Janak', 4),
(112, 'Riya', 32, 'Bhuvan', 4),
(113, 'Divanshi', 49, 'Bhaskar', 5),
(114, 'Pavitra', 29, 'Chandrashekar', 5),
(115, 'Raghav', 64, 'Vaidya', 5),
(116, 'Chaitra', 25, 'Sushant', 6),
(117, 'Jahnavi', 42, 'Dinesh', 6),
(118, 'Lokesh', 52, 'Kamalnath', 6),
(119, 'Kalyan', 23, 'Dixit', 6),
(120, 'Manju', 35, 'Sathish', 7),
(121, 'Suhana', 56, 'Prateek', 7),
(122, 'Hriday', 48, 'Roshan', 7),
(123, 'Gaurav', 29, 'Praveen', 8),
(124, 'Prakash', 39, 'Reddy', 8),
(125, 'Gandhi', 67, 'Gangadhar', 8),
(126, 'Wathiq', 62, 'Rehman', 8),
(127, 'Dheemanth', 50, 'Rathod', 9),
(128, 'Joseph', 70, 'Kurien', 9),
(129, 'Suraj', 48, 'Joshi', 9),
(130, 'Shiny', 18, 'Singh', 9),
(131, 'Aakash', 66, 'Raman', 9);

-- --------------------------------------------------------

--
-- Table structure for table `voter_table`
--

CREATE TABLE `voter_table` (
  `vno` int(11) NOT NULL,
  `vname` varchar(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `ano` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voter_table`
--

INSERT INTO `voter_table` (`vno`, `vname`, `pname`, `ano`) VALUES
(101, 'Ramesh', 'JDS', 1),
(102, 'Gowtham', 'BJP', 1),
(103, 'Kavya', 'JDS', 1),
(104, 'Hema', 'BJP', 2),
(105, 'Ashray', 'INC', 2),
(106, 'Puttamma', 'INC', 2),
(107, 'Manya', 'INC', 3),
(108, 'Siddiqui', 'INC', 3),
(109, 'Parvati', 'JDS', 3),
(110, 'Sanjana', 'JDS', 4),
(111, 'Hitesh', 'BJP', 4),
(112, 'Riya', 'JDS', 4),
(113, 'Divanshi', 'INC', 5),
(114, 'Pavitra', 'BJP', 5),
(115, 'Raghav', 'BJP', 5),
(116, 'Chaitra', 'BSP', 6),
(117, 'Jahnavi', 'BSP', 6),
(118, 'Lokesh', 'JDS', 6),
(119, 'Kalyan', 'BJP', 6),
(120, 'Manju', 'CPI(M)', 7),
(121, 'Suhana', 'INC', 7),
(122, 'Hriday', 'CPI(M)', 7),
(123, 'Gaurav', 'BJP', 8),
(124, 'Prakash', 'CPI(M)', 8),
(125, 'Gandhi', 'INC', 8),
(126, 'Wathiq', 'BJP', 8),
(127, 'Dheemanth', 'JDS', 9),
(128, 'Joseph', 'BSP', 9),
(129, 'Suraj', 'JDS', 9),
(130, 'Shiny', 'JDS', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`cno`),
  ADD UNIQUE KEY `person` (`pno`,`ano`);

--
-- Indexes for table `constituency`
--
ALTER TABLE `constituency`
  ADD PRIMARY KEY (`ano`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`pno`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`vno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
