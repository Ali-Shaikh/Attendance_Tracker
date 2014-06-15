-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2014 at 02:28 PM
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
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `USN` varchar(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`USN`),
  UNIQUE KEY `USN` (`USN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`USN`, `Name`, `password`) VALUES
('1pi10cs001', 'Ryan Giggs', 'manutd'),
('1pi10cs002', 'Paul Scholes', 'manutd'),
('1pi10cs003', 'David Beckham', 'manutd'),
('1pi10cs004', 'Nicky Butt', 'manutd'),
('1pi10cs005', 'Gary Neville', 'manutd'),
('1pi10cs006', 'Phil Neville', 'manutd');

-- --------------------------------------------------------

--
-- Table structure for table `sub1`
--

CREATE TABLE IF NOT EXISTS `sub1` (
  `USN` varchar(12) NOT NULL,
  `Subject_code` varchar(12) NOT NULL,
  `Max_no_of_class` int(5) NOT NULL,
  `Class_conducted` int(5) NOT NULL,
  `Class_attended` int(5) NOT NULL,
  `Section` char(5) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  PRIMARY KEY (`USN`,`Subject_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub1`
--

INSERT INTO `sub1` (`USN`, `Subject_code`, `Max_no_of_class`, `Class_conducted`, `Class_attended`, `Section`, `teacher`) VALUES
('1pi10cs001', '10cs251', 52, 30, 28, 'A', 'daviddegea@manutd.com'),
('1pi10cs001', '10cs252', 52, 27, 20, 'A', 'daviddegea@manutd.com'),
('1pi10cs001', '10cs253', 52, 31, 7, 'A', 'waynerooney@manutd.com'),
('1pi10cs001', '10cs254', 39, 20, 18, 'A', 'jonnyevans@manutd.com'),
('1pi10cs001', '10cs255', 39, 24, 18, 'A', 'juanmata@manutd.com'),
('1pi10cs001', '10cs256', 52, 37, 29, 'A', 'waynerooney@manutd.com'),
('1pi10cs002', '10cs251', 52, 30, 20, 'A', 'daviddegea@manutd.com'),
('1pi10cs002', '10cs253', 52, 31, 25, 'A', 'waynerooney@manutd.com'),
('1pi10cs002', '10cs254', 39, 20, 15, 'A', 'jonnyevans@manutd.com'),
('1pi10cs002', '10cs255', 39, 24, 21, 'A', 'juanmata@manutd.com'),
('1pi10cs002', '10cs256', 52, 37, 27, 'A', 'waynerooney@manutd.com'),
('1pi10cs071', '10cs253', 52, 31, 24, 'B', 'waynerooney@manutd.com'),
('1pi10cs078', '10cs253', 52, 31, 19, 'B', 'waynerooney@manutd.com'),
('1pi10cs116', '10cs253', 52, 31, 23, 'B', 'waynerooney@manutd.com'),
('1pi10cs134', '10ma151', 52, 31, 30, 'A', 'daviddegea@manutd.com');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`username`, `password`, `name`) VALUES
('adnanjanuzaj@manutd.com', 'manutd', 'Adnan Januzaj'),
('daviddegea@manutd.com', 'manutd', 'David De Gea'),
('jonnyevans@manutd.com', 'manutd', 'Jonny Evans'),
('juanmata@manutd.com', 'manutd', 'Juan Mata'),
('patriceevra@manutd.com', 'manutd', 'Patrice Evra'),
('philjones@manutd.com', 'manutd', 'Phil Jones'),
('rafaeldasilva@manutd.com', 'manutd', 'Rafael Da Silva'),
('robinvanpersie@manutd.com', 'manutd', 'Robin Van Persie'),
('vrij@manutd.com', 'manutd', 'Vrij'),
('waynerooney@manutd.com', 'manutd', 'Wayne Rooney');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
