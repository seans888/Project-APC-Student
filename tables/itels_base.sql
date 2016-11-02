-- phpMyAdmin SQL Dump
-- version 4.4.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2015 at 09:04 AM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itels`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL,
  `department_name` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sss_number` varchar(255) DEFAULT NULL,
  `tax_identification_number` varchar(255) DEFAULT NULL,
  `philhealth_number` varchar(255) DEFAULT NULL,
  `pagibig_number` varchar(255) DEFAULT NULL,
  `hiring_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_certifications`
--

CREATE TABLE IF NOT EXISTS `employee_certifications` (
  `employee_certification_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `certification_name` varchar(255) DEFAULT NULL,
  `date_acquired` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL,
  `item_tag` varchar(255) CHARACTER SET latin1 NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `photo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `acquisition_date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `active` char(1) CHARACTER SET latin1 NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_type`
--

CREATE TABLE IF NOT EXISTS `item_type` (
  `item_type_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `active` char(1) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_type`
--

INSERT INTO `item_type` (`item_type_id`, `title`, `description`, `active`) VALUES
(1, 'Desktop', 'Complete desktop set', 'Y'),
(2, 'Laptop', 'Complete laptop set', 'Y'),
(3, 'Computer accessory', 'An accessory for a computer', 'Y'),
(4, 'Storage drive', 'Storage hardware', 'Y'),
(5, 'Optical drive', 'Reader for optical media', 'Y'),
(6, 'Magnetic drive', 'Reader for magnetic disks', 'N'),
(7, 'Small projector', 'Projector good from discussion rooms', 'N'),
(8, 'Midsized projector', 'Projectors used in classrooms and conference rooms', 'Y'),
(9, 'Large projector', 'Projectors used in auditoriums', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `lending`
--

CREATE TABLE IF NOT EXISTS `lending` (
  `lending_id` int(11) NOT NULL,
  `lending_tag` varchar(255) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `request_date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `remarks` varchar(255) CHARACTER SET latin1 NOT NULL,
  `transaction_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lending_items`
--

CREATE TABLE IF NOT EXISTS `lending_items` (
  `lending_items_id` int(11) NOT NULL,
  `lending_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_custodian` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 NOT NULL,
  `movement_date` varchar(255) CHARACTER SET latin1 NOT NULL,
  `transaction_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `position_id` int(11) NOT NULL,
  `parent_position_id` int(11) NOT NULL,
  `position_name` varchar(255) DEFAULT NULL,
  `base_salary` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `fk_employee_position1_idx` (`position_id`),
  ADD KEY `fk_employee_department1_idx` (`department_id`);

--
-- Indexes for table `employee_certifications`
--
ALTER TABLE `employee_certifications`
  ADD PRIMARY KEY (`employee_certification_id`),
  ADD KEY `fk_employee_certifications_employee_idx` (`employee_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `item_type`
--
ALTER TABLE `item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `lending`
--
ALTER TABLE `lending`
  ADD PRIMARY KEY (`lending_id`);

--
-- Indexes for table `lending_items`
--
ALTER TABLE `lending_items`
  ADD PRIMARY KEY (`lending_items_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`),
  ADD KEY `fk_position_position1_idx` (`parent_position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_certifications`
--
ALTER TABLE `employee_certifications`
  MODIFY `employee_certification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_type`
--
ALTER TABLE `item_type`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lending`
--
ALTER TABLE `lending`
  MODIFY `lending_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lending_items`
--
ALTER TABLE `lending_items`
  MODIFY `lending_items_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `fk_employee_department1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_employee_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `employee_certifications`
--
ALTER TABLE `employee_certifications`
  ADD CONSTRAINT `fk_employee_certifications_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `fk_position_position1` FOREIGN KEY (`parent_position_id`) REFERENCES `position` (`position_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
