-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2014 at 08:46 AM
-- Server version: 5.5.37-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `at`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `sub` varchar(7) NOT NULL,
  PRIMARY KEY (`sub`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`username`, `password`, `sub`) VALUES
('nitin.pujari@pes.edu', 'welcome123', '10cs253'),
('chandru@pes.edu', 'cao', '10cs251'),
('ask.kumaradhara@gmail.com', 'algo', '10cs252'),
('kavi.mahesh@pes.edu', 'fafl', '10cs254'),
('narahari@pes.edu', 'linear', '10ma251'),
('prafulatha@pes.edu', 'dbms', '10cs255'),
('leela@pes.edu', 'maths', '10ma151'),
('roopa@gmail.com', 'ppl', '10cs304'),
('sahana.patil@gmail.com', 'java', '10cs305'),
('nitin.pujari@pes.edu', 'welcome123', '10cs256');

-- --------------------------------------------------------

--
-- Table structure for table `sub1`
--

CREATE TABLE IF NOT EXISTS `sub1` (
  `Name` varchar(40) NOT NULL,
  `USN` varchar(12) NOT NULL,
  `Subject_code` varchar(12) NOT NULL,
  `Max_no_of_class` int(5) NOT NULL,
  `Class_conducted` int(5) NOT NULL,
  `Class_attended` int(5) NOT NULL,
  `Section` char(5) NOT NULL,
  PRIMARY KEY (`USN`,`Subject_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub1`
--

INSERT INTO `sub1` (`Name`, `USN`, `Subject_code`, `Max_no_of_class`, `Class_conducted`, `Class_attended`, `Section`) VALUES
('James', '1pi10cs001', '10cs251', 52, 30, 28, 'A'),
('James', '1pi10cs001', '10cs252', 52, 27, 20, 'A'),
('James', '1pi10cs001', '10cs253', 52, 31, 7, 'A'),
('James', '1pi10cs001', '10cs254', 39, 20, 18, 'A'),
('James', '1pi10cs001', '10cs255', 39, 24, 18, 'A'),
('James', '1pi10cs001', '10cs256', 52, 37, 29, 'A'),
('Gosling', '1pi10cs002', '10cs251', 52, 30, 20, 'A'),
('Gosling', '1pi10cs002', '10cs253', 52, 31, 25, 'A'),
('Gosling', '1pi10cs002', '10cs254', 39, 20, 15, 'A'),
('Gosling', '1pi10cs002', '10cs255', 39, 24, 21, 'A'),
('Gosling', '1pi10cs002', '10cs256', 52, 37, 27, 'A'),
('Rohith', '1pi10cs071', '10cs253', 52, 31, 24, 'B'),
('Sankarshan', '1pi10cs078', '10cs253', 52, 31, 19, 'B'),
('Vikyath', '1pi10cs116', '10cs253', 52, 31, 23, 'B'),
('Ullas', '1pi10cs134', '10cs253', 52, 31, 30, 'A');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
