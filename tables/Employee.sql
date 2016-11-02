-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2016 at 03:33 PM
-- Server version: 5.1.73
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AHR`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE IF NOT EXISTS `Employee` (
  `emp_id` char(10) NOT NULL,
  `emp_last_name` varchar(25) NOT NULL,
  `emp_first_name` varchar(30) NOT NULL,
  `emp_middle_name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `emp_status` int(5) NOT NULL,
  `emp_group` int(5) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postal_code` char(4) NOT NULL,
  `tel_num` varchar(40) NOT NULL,
  `mobile_num` char(15) NOT NULL,
  `hiring_date` date DEFAULT NULL,
  `resignation_date` date DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `civil_status` enum('Single','Married','Legally Separated','Single Parent') DEFAULT 'Single',
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `is_deleted` enum('Yes','No') DEFAULT 'No',
  `ATM_num` varchar(25) NOT NULL,
  `BDO_ATM_num` varchar(25) NOT NULL,
  `SSS_num` varchar(25) NOT NULL,
  `PhilHealth_num` varchar(25) NOT NULL,
  `TIN_num` varchar(25) NOT NULL,
  `PagIbig_num` varchar(25) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Master List of Employees in APC';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
