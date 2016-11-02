-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2016 at 04:56 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE IF NOT EXISTS `award` (
  `award_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `database_connection`
--

CREATE TABLE IF NOT EXISTS `database_connection` (
  `DB_Connection_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_Name` varchar(255) NOT NULL,
  `Hostname` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Database` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `database_connection`
--

INSERT INTO `database_connection` (`DB_Connection_ID`, `Project_ID`, `DB_Connection_Name`, `Hostname`, `Username`, `Password`, `Database`) VALUES
('Bcw9hMa4XjQYgU9DvR0Z4A', 'niWzp0HMbTdOVzO1puUgXQ', 'con1', 'localhost', 'root', '', 'itels'),
('5AIrBOdlJBk6YDuUbtztHg', 'GgSaxyl0ukMDguHArJAwRg', 'con1', 'localhost', 'root', '', 'itels'),
('J4DWiApQoR98sxVzvkQSpw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'con1', 'localhost', 'root', '', 'barangay'),
('vQB09xn7XfJ+m4bkkw3Kzw', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'con1', 'localhost', 'root', '', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int(11) NOT NULL,
  `dept_short_name` varchar(255) NOT NULL,
  `dept_official_name` varchar(255) NOT NULL,
  `dept_head` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `civil_status` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `hiring_date` date NOT NULL,
  `dept_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `salary_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_awards`
--

CREATE TABLE IF NOT EXISTS `employee_awards` (
  `emp_id` varchar(255) NOT NULL,
  `auto_id` int(11) NOT NULL,
  `award_id` int(11) NOT NULL,
  `date_received` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee_hobbies`
--

CREATE TABLE IF NOT EXISTS `employee_hobbies` (
  `emp_id` varchar(255) NOT NULL,
  `auto_id` int(11) NOT NULL,
  `hobby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `experiments`
--

CREATE TABLE IF NOT EXISTS `experiments` (
  `experiment_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `preliminary_result` varchar(255) NOT NULL,
  `intermediate_result` varchar(255) NOT NULL,
  `final_result` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `office_docs`
--

CREATE TABLE IF NOT EXISTS `office_docs` (
  `code_1` char(4) NOT NULL,
  `code_2` char(2) NOT NULL,
  `code_3` char(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `file_upload` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `Page_ID` char(44) NOT NULL,
  `Page_Name` varchar(255) NOT NULL,
  `Generator` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`Page_ID`, `Page_Name`, `Generator`, `Description`) VALUES
('+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Add1', 'Add1.php', 'Standard input form'),
('alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Edit1', 'Edit1.php', 'Standard edit form'),
('AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'DetailView1', 'DetailView1.php', 'Detail View of a record'),
('Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'ListView', 'ListView1.php', 'List View of a table'),
('qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Delete1', 'Delete1.php', 'Standard record deletion page'),
('DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'CSVExport1', 'CSVExport1.php', 'Standard export data to CSV module'),
('X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'ReporterInterface1', 'ReporterInterface1.php', 'Default "custom reporting tool" interface'),
('/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'ReporterResult1', 'ReporterResult1.php', 'Default "custom reporting tool" result page'),
('EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'ReporterResultPDF1', 'ReporterResultPDF1.php', 'Default "custom reporting tool" PDF result');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `position_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `Project_ID` char(44) NOT NULL,
  `Project_Name` varchar(255) NOT NULL,
  `Client_Name` varchar(255) NOT NULL,
  `Project_Description` text NOT NULL,
  `Base_Directory` varchar(255) NOT NULL,
  `Database_Connection_ID` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_ID`, `Project_Name`, `Client_Name`, `Project_Description`, `Base_Directory`, `Database_Connection_ID`) VALUES
('niWzp0HMbTdOVzO1puUgXQ', 'itels', '.', '.', 'C:\\xampp\\htdocs\\cobalt\\Generator\\Projects', 'Bcw9hMa4XjQYgU9DvR0Z4A'),
('tl05Ti9Zu+yEKfnKwsEg6g', 'Barangay System', 'Abner Arrieta', '.', 'barangay', 'J4DWiApQoR98sxVzvkQSpw'),
('GgSaxyl0ukMDguHArJAwRg', 'itels1', '.', '.', 'itels', '5AIrBOdlJBk6YDuUbtztHg'),
('IhxDA1VuVT3u4PTJ1KAtIQ', 'Student Assistant', 'Sr. Mackie Dizon', 'Asia Pacific College', 'Student Assistant', 'vQB09xn7XfJ+m4bkkw3Kzw');

-- --------------------------------------------------------

--
-- Table structure for table `salary_grade`
--

CREATE TABLE IF NOT EXISTS `salary_grade` (
  `salary_grade_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `Table_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_ID` varchar(255) NOT NULL,
  `Table_Name` varchar(255) NOT NULL,
  `Remarks` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`Table_ID`, `Project_ID`, `DB_Connection_ID`, `Table_Name`, `Remarks`) VALUES
('h/3uII4EiMg1P0KY6Wgd6Q', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'department', ''),
('G3MVI200wv/CzEwgyQNCCg', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'employee', ''),
('gElvU6hWE0jypHA1z/F+XA', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'employee_certifications', ''),
('SGTpjNa1U0+pEkZ5UKK81A', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'item', ''),
('aDaRx2ctonKdTCS6LV4Z6g', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'item_type', ''),
('Z07dDK1JPgrzGx+4NFbz7A', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'lending', ''),
('BQRN52d9aoT8q+8z0o4LlQ', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'lending_items', ''),
('D9bgTjAuuUKd48TXB2y2xA', 'niWzp0HMbTdOVzO1puUgXQ', 'Bcw9hMa4XjQYgU9DvR0Z4A', 'position', ''),
('PJLuqV2HSUWR+ikNdUXPGg', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'department', ''),
('H73ud0QWLx2Se7p9eUkasg', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'employee', ''),
('Doe+KB5zM7tWgsZhpqAp5w', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'employee_certifications', ''),
('vv1exa8MbX4K7IXMl/FEJQ', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'item', ''),
('T2hM+p3raP+HFxiFlxDlKg', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'item_type', ''),
('Cy2c9Vee7ISma5phtovGKA', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'lending', ''),
('ghh9dSVsnOf4D68tIWSMWA', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'lending_items', ''),
('HO34F+jhddQkxXVUtHcm5Q', 'GgSaxyl0ukMDguHArJAwRg', '5AIrBOdlJBk6YDuUbtztHg', 'position', ''),
('kch1paJBspKqHl6fM21LIA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'barangay', ''),
('M7NKzXX4dDhEoTBVWxfT1w', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'bulletin', ''),
('BYf9jiy4n/VsHSmtJap8gQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'citizen', ''),
('pcl44WGaRerapbAbZaPRDw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'city', ''),
('UGoYijf1uPZygkK4aKL3BA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'notification', ''),
('xkysH6HvJxGLLSd2T3REVA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'official', ''),
('x3AlSCd+MSQBJWgb+ieaEA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'province', ''),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'region', ''),
('8vOhn2ORuhNxJpFj7a8QwQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'request', ''),
('nmbVh8cTNAERRSM0wIEn9Q', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'request_has_requirement', ''),
('nmtwEtRPmkvjrEu8/qsjaw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'requirement', ''),
('RetMn8vVODRi4ThYc8FCVA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'service', ''),
('fWWWOpaZCVXE+q5P4kM0Hg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'J4DWiApQoR98sxVzvkQSpw', 'validate', ''),
('khEvtdbGWIXDHrCuWITY5Q', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'vQB09xn7XfJ+m4bkkw3Kzw', 'refstudent', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields`
--

CREATE TABLE IF NOT EXISTS `table_fields` (
  `Field_ID` char(44) NOT NULL,
  `Table_ID` char(44) NOT NULL,
  `Field_Name` varchar(255) NOT NULL,
  `Data_Type` varchar(255) NOT NULL,
  `Nullable` varchar(255) NOT NULL,
  `Length` int(11) NOT NULL,
  `Attribute` varchar(255) NOT NULL,
  `Auto_Increment` char(1) NOT NULL,
  `Control_Type` varchar(255) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `In_Listview` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields`
--

INSERT INTO `table_fields` (`Field_ID`, `Table_ID`, `Field_Name`, `Data_Type`, `Nullable`, `Length`, `Attribute`, `Auto_Increment`, `Control_Type`, `Label`, `In_Listview`) VALUES
('jdAuvhr0SJDRfZYhs+iClg', 'h/3uII4EiMg1P0KY6Wgd6Q', 'department_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Department ID', 'no'),
('Wf2u1ejUZ2ebzuGwu1AgsA', 'h/3uII4EiMg1P0KY6Wgd6Q', 'department_name', 'text', 'NO', 0, '', 'N', 'textarea', 'Department Name', 'yes'),
('ea+RGCyUOJH/PCoVZ+VuwA', 'G3MVI200wv/CzEwgyQNCCg', 'employee_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee ID', 'no'),
('ICA6jdpqVQ0XD9mCWC0O1Q', 'G3MVI200wv/CzEwgyQNCCg', 'department_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Department ID', 'yes'),
('5YPyUGrRjOzUW7vHkUnMLA', 'G3MVI200wv/CzEwgyQNCCg', 'position_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Position ID', 'yes'),
('1KDNfXopNQiRrTfvOYGDlw', 'G3MVI200wv/CzEwgyQNCCg', 'first_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'First Name', 'yes'),
('z7cNEzcSe/XjASrIEz5sjg', 'G3MVI200wv/CzEwgyQNCCg', 'middle_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Middle Name', 'yes'),
('+nr9KKfo4wRi4ddJ2PVTCQ', 'G3MVI200wv/CzEwgyQNCCg', 'last_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Last Name', 'yes'),
('4IGNDcv8TwrBeG4ek+WtbQ', 'G3MVI200wv/CzEwgyQNCCg', 'address', 'varchar', 'YES', 255, '', 'N', 'textarea', 'Address', 'yes'),
('fYbV7O/vFwEp45QlmDhLyA', 'G3MVI200wv/CzEwgyQNCCg', 'contact_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Contact Number', 'yes'),
('KLGc/emfqwdCLlOJ/ISkzA', 'G3MVI200wv/CzEwgyQNCCg', 'email_address', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Email Address', 'yes'),
('ZXKzP/O48ggCTEIaZY6Abg', 'G3MVI200wv/CzEwgyQNCCg', 'gender', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Gender', 'yes'),
('/eoeqevYjkAt/mSvOullpg', 'G3MVI200wv/CzEwgyQNCCg', 'civil_status', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Civil Status', 'yes'),
('QWiBubZUU89WLWC8nBQbzQ', 'G3MVI200wv/CzEwgyQNCCg', 'birthday', 'date', 'YES', 0, '', 'N', 'date controls', 'Birthday', 'yes'),
('hmX8gumKZDowPzYNs4l+og', 'G3MVI200wv/CzEwgyQNCCg', 'sss_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Sss Number', 'yes'),
('6EOovEzzrW3IpzP9JblosA', 'G3MVI200wv/CzEwgyQNCCg', 'tax_identification_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Tax Identification Number', 'yes'),
('poKOdW3+kbNTB+lpnj4PpA', 'G3MVI200wv/CzEwgyQNCCg', 'philhealth_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Philhealth Number', 'yes'),
('/m1LX1lJpgU8ruZI1h5yPQ', 'G3MVI200wv/CzEwgyQNCCg', 'pagibig_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Pagibig Number', 'yes'),
('08j2pWXH9bu2IE4BPeubdw', 'G3MVI200wv/CzEwgyQNCCg', 'hiring_date', 'date', 'YES', 0, '', 'N', 'date controls', 'Hiring Date', 'yes'),
('CAvTsl3rttTewMCkhlOIDw', 'gElvU6hWE0jypHA1z/F+XA', 'employee_certification_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee Certification ID', 'no'),
('ytlZfScNcPi4KA469pf3kQ', 'gElvU6hWE0jypHA1z/F+XA', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('qwhEpItrICS2skRsO2foVQ', 'gElvU6hWE0jypHA1z/F+XA', 'certification_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Certification Name', 'yes'),
('wb3W47a8MKGYo+fp0sfdCg', 'gElvU6hWE0jypHA1z/F+XA', 'date_acquired', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Date Acquired', 'yes'),
('lBoVy8fAsG9eiFShnpAZhA', 'SGTpjNa1U0+pEkZ5UKK81A', 'item_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item ID', 'no'),
('1wXz2EIVOmRradGj+ZPBWw', 'SGTpjNa1U0+pEkZ5UKK81A', 'item_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Item Tag', 'yes'),
('lQ+dkPUBHOpXR/DcX3u/cw', 'SGTpjNa1U0+pEkZ5UKK81A', 'name', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Name', 'yes'),
('Gk3p8/6Rhx+x25PF+qF98g', 'SGTpjNa1U0+pEkZ5UKK81A', 'item_type_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Type ID', 'yes'),
('797P1TPaYfyo0YfCdQaCeA', 'SGTpjNa1U0+pEkZ5UKK81A', 'photo', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Photo', 'yes'),
('FWGO9z7HXNRYDy+UHKyBHg', 'SGTpjNa1U0+pEkZ5UKK81A', 'acquisition_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Acquisition Date', 'yes'),
('/sqtC1sitxmOExYwEab5ig', 'SGTpjNa1U0+pEkZ5UKK81A', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('DGXeQARkUbFIn4sAz6kokQ', 'SGTpjNa1U0+pEkZ5UKK81A', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('5xpaqtpa5Wcs4k3NJIVgXg', 'SGTpjNa1U0+pEkZ5UKK81A', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('NeBSkwkwLzKytRPgdnSFBw', 'aDaRx2ctonKdTCS6LV4Z6g', 'item_type_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item Type ID', 'no'),
('qNYBJ47OWInGHQkXXvRVEw', 'aDaRx2ctonKdTCS6LV4Z6g', 'title', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Title', 'yes'),
('Fnr/Wz5AlaywxPMXMQN/qQ', 'aDaRx2ctonKdTCS6LV4Z6g', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('ORgQX/IBw4IZJjehpYX1Jw', 'aDaRx2ctonKdTCS6LV4Z6g', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('t7Poi60rW27aGhyUt/yZEw', 'Z07dDK1JPgrzGx+4NFbz7A', 'lending_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending ID', 'no'),
('o6p+4M9y2pWpeFaOdMdOKg', 'Z07dDK1JPgrzGx+4NFbz7A', 'lending_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Lending Tag', 'yes'),
('Cbl3npPayd1WcYhGE03vdw', 'Z07dDK1JPgrzGx+4NFbz7A', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('w/MxerZ4XWNzI6gY86QE4A', 'Z07dDK1JPgrzGx+4NFbz7A', 'request_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Request Date', 'yes'),
('2GUZWj8eZsKavVtxUseICg', 'Z07dDK1JPgrzGx+4NFbz7A', 'remarks', 'varchar', 'NO', 255, '', 'N', 'textarea', 'Remarks', 'yes'),
('KvIIA1OB39oaXPcKa5H/xQ', 'Z07dDK1JPgrzGx+4NFbz7A', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('uAsJaXrCdKFwgw0P4jLpFw', 'BQRN52d9aoT8q+8z0o4LlQ', 'lending_items_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending Items ID', 'no'),
('XpAy4Z2dFoE0mRwTaI4zaw', 'BQRN52d9aoT8q+8z0o4LlQ', 'lending_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Lending ID', 'yes'),
('WfoDpR+mFn50WkI9ru+LHQ', 'BQRN52d9aoT8q+8z0o4LlQ', 'item_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item ID', 'yes'),
('JV8XrQwwFPvLpAOcztYhsA', 'BQRN52d9aoT8q+8z0o4LlQ', 'item_custodian', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Custodian', 'yes'),
('LXNrP3KXKY+WnkQvn0LAYA', 'BQRN52d9aoT8q+8z0o4LlQ', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('e1awnhouhBculKN14I9/1g', 'BQRN52d9aoT8q+8z0o4LlQ', 'movement_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Movement Date', 'yes'),
('Q2vmdFBX0hioAL2KfO+qiQ', 'BQRN52d9aoT8q+8z0o4LlQ', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('3UVu0jFCJBl4pLGHaUt1xA', 'D9bgTjAuuUKd48TXB2y2xA', 'position_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Position ID', 'no'),
('2csOQb6CgBWukArwKGVqFg', 'D9bgTjAuuUKd48TXB2y2xA', 'parent_position_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Parent Position ID', 'yes'),
('SK5MpheYC07CuUNHvE5XcQ', 'D9bgTjAuuUKd48TXB2y2xA', 'position_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Position Name', 'yes'),
('ojMZUCDG0pJxSqLfAJ1mvw', 'D9bgTjAuuUKd48TXB2y2xA', 'base_salary', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Base Salary', 'yes'),
('7nMzknfNaqrQ7RQI4Edk7A', 'PJLuqV2HSUWR+ikNdUXPGg', 'department_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Department ID', 'no'),
('uF34iCe03S5hxcUBlOmPew', 'PJLuqV2HSUWR+ikNdUXPGg', 'department_name', 'text', 'NO', 0, '', 'N', 'textarea', 'Department Name', 'yes'),
('uiO6Lt2WGmhTz3rudJ3Ciw', 'H73ud0QWLx2Se7p9eUkasg', 'employee_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee ID', 'no'),
('lDM4gDuXQFrwVf0y3Zr2oQ', 'H73ud0QWLx2Se7p9eUkasg', 'department_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Department', 'yes'),
('kgzD552p7CbDhL1w4aC/bw', 'H73ud0QWLx2Se7p9eUkasg', 'position_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Position', 'yes'),
('APi4f9E5/YzX51wa7MC+1Q', 'H73ud0QWLx2Se7p9eUkasg', 'first_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'First Name', 'yes'),
('einVNxo74P6dHjTpi2Vc9w', 'H73ud0QWLx2Se7p9eUkasg', 'middle_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Middle Name', 'yes'),
('HfkTzVJSvBxu19hHkh+SNA', 'H73ud0QWLx2Se7p9eUkasg', 'last_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Last Name', 'yes'),
('heD9xaiYmE1kAcch+3EE0Q', 'H73ud0QWLx2Se7p9eUkasg', 'address', 'varchar', 'YES', 255, '', 'N', 'textarea', 'Address', 'yes'),
('4UI7Pol+noOirDYvxMxPHQ', 'H73ud0QWLx2Se7p9eUkasg', 'contact_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Contact Number', 'yes'),
('Bj48cbUME+6BxLnisV/QQQ', 'H73ud0QWLx2Se7p9eUkasg', 'email_address', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Email Address', 'yes'),
('tOxuFHuhQn7CzT3yGmTtRA', 'H73ud0QWLx2Se7p9eUkasg', 'gender', 'varchar', 'YES', 255, 'none', 'N', 'radio buttons', 'Gender', 'yes'),
('vbTTDiTjdDNlCltj5Ag5gA', 'H73ud0QWLx2Se7p9eUkasg', 'civil_status', 'varchar', 'YES', 255, 'none', 'N', 'drop-down list', 'Civil Status', 'yes'),
('j7PiLzJJh/2CYaMJceLI1g', 'H73ud0QWLx2Se7p9eUkasg', 'birthday', 'date', 'YES', 0, '', 'N', 'date controls', 'Birthday', 'yes'),
('dGMPVPwwXDHc8mwEy5BKaw', 'H73ud0QWLx2Se7p9eUkasg', 'sss_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Sss Number', 'yes'),
('uAoDtwRaHkOXYYMyGPfKuA', 'H73ud0QWLx2Se7p9eUkasg', 'tax_identification_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Tax Identification Number', 'yes'),
('gtaTuyy16uI3VV3pr0K1vA', 'H73ud0QWLx2Se7p9eUkasg', 'philhealth_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Philhealth Number', 'yes'),
('Ne+mqhxPjIVpYPXEHddEcw', 'H73ud0QWLx2Se7p9eUkasg', 'pagibig_number', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Pagibig Number', 'yes'),
('HpvJUhP5cs70U5wYCDxlaQ', 'H73ud0QWLx2Se7p9eUkasg', 'hiring_date', 'date', 'YES', 0, '', 'N', 'date controls', 'Hiring Date', 'yes'),
('Xe1aMDiv1o6Sjmg1x4T3hQ', 'Doe+KB5zM7tWgsZhpqAp5w', 'employee_certification_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Employee Certification ID', 'no'),
('UadWzbYu1nGy36wiuUl8Fg', 'Doe+KB5zM7tWgsZhpqAp5w', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('ctH0wWxvBjqbil7uZofDWw', 'Doe+KB5zM7tWgsZhpqAp5w', 'certification_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Certification Name', 'yes'),
('bEXEyXaOskCxeenlz2cIyQ', 'Doe+KB5zM7tWgsZhpqAp5w', 'date_acquired', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Date Acquired', 'yes'),
('sm+nihar1zB1cMgfTkuqeA', 'vv1exa8MbX4K7IXMl/FEJQ', 'item_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item ID', 'no'),
('YI/h9m4rgKP2i2LHb4TWYA', 'vv1exa8MbX4K7IXMl/FEJQ', 'item_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Item Tag', 'yes'),
('RqUpt6iWb/z4agTftXyJ2g', 'vv1exa8MbX4K7IXMl/FEJQ', 'name', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Name', 'yes'),
('97LYg6IIIgEZTnN5lYsezQ', 'vv1exa8MbX4K7IXMl/FEJQ', 'item_type_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Type ID', 'yes'),
('MtXnu0/ch7Z3BUm46vPnPA', 'vv1exa8MbX4K7IXMl/FEJQ', 'photo', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Photo', 'yes'),
('eDlkfv0XTqKuPy8YpqRijQ', 'vv1exa8MbX4K7IXMl/FEJQ', 'acquisition_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Acquisition Date', 'yes'),
('kQQESS2DqOjMZYo3/rdjLA', 'vv1exa8MbX4K7IXMl/FEJQ', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('XAd1Vcxc8w+kf6TFNsdFZQ', 'vv1exa8MbX4K7IXMl/FEJQ', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('NhClphAVC6xroPQi4qCibg', 'vv1exa8MbX4K7IXMl/FEJQ', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('68/8TPBGxq823yyZKL1RrQ', 'T2hM+p3raP+HFxiFlxDlKg', 'item_type_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Item Type ID', 'no'),
('gUfW0lvwTMW4MJY3P00JIQ', 'T2hM+p3raP+HFxiFlxDlKg', 'title', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Title', 'yes'),
('q3wQ0XkYoNYQJaDHI23UVA', 'T2hM+p3raP+HFxiFlxDlKg', 'description', 'text', 'NO', 0, '', 'N', 'textarea', 'Description', 'yes'),
('UgRAVCy+Qo8v62xYKiFtPw', 'T2hM+p3raP+HFxiFlxDlKg', 'active', 'varchar', 'NO', 1, '', 'N', 'textbox', 'Active', 'yes'),
('9tfD9DBntHrOq/gJ8O4pfA', 'Cy2c9Vee7ISma5phtovGKA', 'lending_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending ID', 'no'),
('mh0SS+na+zhXnZmwwjcRVw', 'Cy2c9Vee7ISma5phtovGKA', 'lending_tag', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Lending Tag', 'yes'),
('WFKvzWdK27N0gKP5zJBWgQ', 'Cy2c9Vee7ISma5phtovGKA', 'employee_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Employee ID', 'yes'),
('plqEqLcD0WU12rCfTKg/FA', 'Cy2c9Vee7ISma5phtovGKA', 'request_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Request Date', 'yes'),
('8J+PivXLSdXP8C6HIdIKMQ', 'Cy2c9Vee7ISma5phtovGKA', 'remarks', 'varchar', 'NO', 255, '', 'N', 'textarea', 'Remarks', 'yes'),
('td0E4SfRwnGBgFy7xrGQzQ', 'Cy2c9Vee7ISma5phtovGKA', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('fkqOYi4N8Y8T9uU4QNvwMg', 'ghh9dSVsnOf4D68tIWSMWA', 'lending_items_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Lending Items ID', 'no'),
('8iT3vp/kJvKB3lsK1tublQ', 'ghh9dSVsnOf4D68tIWSMWA', 'lending_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Lending ID', 'yes'),
('cJWUGOCik99nV1gzn0csFw', 'ghh9dSVsnOf4D68tIWSMWA', 'item_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item ID', 'yes'),
('gwxnW2SdZM9OguuUQ/sEPw', 'ghh9dSVsnOf4D68tIWSMWA', 'item_custodian', 'integer', 'NO', 11, '', 'N', 'textbox', 'Item Custodian', 'yes'),
('AqIUvDrhK/jqc868p0zFXQ', 'ghh9dSVsnOf4D68tIWSMWA', 'status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Status', 'yes'),
('Sbr173bt0JL3g7Feo9aGcw', 'ghh9dSVsnOf4D68tIWSMWA', 'movement_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Movement Date', 'yes'),
('pd6Owq9aQaMMmRl/HB4e+g', 'ghh9dSVsnOf4D68tIWSMWA', 'transaction_date', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Transaction Date', 'yes'),
('u9wkogwQglAzp6gfbrBMsA', 'HO34F+jhddQkxXVUtHcm5Q', 'position_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Position ID', 'no'),
('xsIenPzLxv+1xKfxR5NTsQ', 'HO34F+jhddQkxXVUtHcm5Q', 'parent_position_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Parent Position ID', 'yes'),
('/JeXItd3F+SJ4rb/swbFSQ', 'HO34F+jhddQkxXVUtHcm5Q', 'position_name', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Position Name', 'yes'),
('NdlQ6xuhkfRXA/nBqFiIPQ', 'HO34F+jhddQkxXVUtHcm5Q', 'base_salary', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Base Salary', 'yes'),
('tMmCaiH8ZhrA6wOtndds5w', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Bulletin ID', 'no'),
('eJMZ0MJZhKyOFHHuLuHNsQ', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Bulletin Name', 'yes'),
('3g/8jZkVurSQOP8RrT4hIw', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_description', 'text', 'NO', 0, '', 'N', 'textarea', 'Bulletin Description', 'yes'),
('ZnZ+F/IkFmnsFMl8ifujag', 'M7NKzXX4dDhEoTBVWxfT1w', 'bulletin_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Bulletin Date', 'yes'),
('DgaQ0Ri0lYD6CivO6ymdiQ', 'M7NKzXX4dDhEoTBVWxfT1w', 'file_document', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'File Document', 'yes'),
('Vmn8cLkblrNWShARYqs27Q', 'M7NKzXX4dDhEoTBVWxfT1w', 'category', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Category', 'yes'),
('i+rCyOlTgqdBuiUgDlgAkQ', 'M7NKzXX4dDhEoTBVWxfT1w', 'is_show', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Show', 'yes'),
('cHo/nvf3Q/khtTuE9ZTcmw', 'BYf9jiy4n/VsHSmtJap8gQ', 'citizen_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Citizen ID', 'no'),
('pbEU5yfIMuRmkTDNjDEvlg', 'BYf9jiy4n/VsHSmtJap8gQ', 'first_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'First Name', 'yes'),
('tvE5xS1PO5RXS6lctYccdA', 'BYf9jiy4n/VsHSmtJap8gQ', 'middle_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Middle Name', 'yes'),
('fn2gUYY3djgiEuCfDYk+eQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'last_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Last Name', 'yes'),
('EYe/KuLeYmDvjcCC6C821Q', 'BYf9jiy4n/VsHSmtJap8gQ', 'gender', 'varchar', 'NO', 6, 'none', 'N', 'radio buttons', 'Gender', 'yes'),
('tI8+tIWhXf9/8P27XTD8ew', 'BYf9jiy4n/VsHSmtJap8gQ', 'birth_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Birth Date', 'yes'),
('MftqTyezCbDApKNPzoKhxw', 'BYf9jiy4n/VsHSmtJap8gQ', 'birth_place', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Birth Place', 'yes'),
('RFyJsZu62EmGO0J0gl0xzA', 'BYf9jiy4n/VsHSmtJap8gQ', 'weight', 'decimal', 'NO', 6, '', 'N', 'textbox', 'Weight', 'yes'),
('KE0YiqdyN3xSj6AltLtRbQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'height', 'integer', 'NO', 3, '', 'N', 'textbox', 'Height', 'yes'),
('1VFxpTj1eVriDZwsjNpqzQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'civil_status', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Civil Status', 'yes'),
('+3Fr+V1w66aXXH3GWrFvuA', 'BYf9jiy4n/VsHSmtJap8gQ', 'occupation', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Occupation', 'yes'),
('/QsTjPgWLNgJikzqJt5LYg', 'BYf9jiy4n/VsHSmtJap8gQ', 'cellphone_number', 'integer', 'YES', 11, '', 'N', 'textbox', 'Cellphone Number', 'yes'),
('wjth8ogcYkW50d7wAo11LA', 'BYf9jiy4n/VsHSmtJap8gQ', 'telephone_number', 'integer', 'YES', 7, '', 'N', 'textbox', 'Telephone Number', 'yes'),
('UK6aBxDF1ZUCunHHWF8Ypw', 'BYf9jiy4n/VsHSmtJap8gQ', 'region', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Region', 'yes'),
('Ip2EeaXbcIbQuzsZ8BAXcQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'province', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Province', 'yes'),
('V/Ci7v2oPGROR0+GJjv2bQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'city', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'City', 'yes'),
('outvMZSuP5S6OUljIEW/LQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'district', 'varchar', 'NO', 45, '', 'N', 'textbox', 'District', 'yes'),
('H84dM/cy+Ep+Z6COB5Mw9w', 'BYf9jiy4n/VsHSmtJap8gQ', 'barangay', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Barangay', 'yes'),
('hVKI0jU73Fqk7z5zibyHRQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'zip_code', 'integer', 'NO', 5, '', 'N', 'textbox', 'Zip Code', 'yes'),
('x6R+m5DNXqYJLhAECENJhg', 'BYf9jiy4n/VsHSmtJap8gQ', 'street', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Street', 'yes'),
('Y2++c7+ERz2Upz727Ja7tA', 'BYf9jiy4n/VsHSmtJap8gQ', 'house_number', 'varchar', 'NO', 45, '', 'N', 'textbox', 'House Number', 'yes'),
('217rUeP4FPYuECz6Mi4gmg', 'BYf9jiy4n/VsHSmtJap8gQ', 'nationality', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Nationality', 'yes'),
('Kzqpat5HZHq/XrwiylRAHQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'username', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Username', 'yes'),
('i5t1VIjySolnXuREuD1pww', 'BYf9jiy4n/VsHSmtJap8gQ', 'password', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Password', 'yes'),
('1LdzGQwffoi8I8+rmyuiiw', 'BYf9jiy4n/VsHSmtJap8gQ', 'email_address', 'varchar', 'YES', 45, '', 'N', 'textbox', 'Email Address', 'yes'),
('3tMqLq9UBxfYpaP0RCF1IQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_first_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Father First Name', 'yes'),
('gUeLsUr0BzpDlp4CePNa7w', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_middle_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Father Middle Name', 'yes'),
('Rq2anVSvtt4xDnL2u1B+EQ', 'BYf9jiy4n/VsHSmtJap8gQ', 'father_last_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Father Last Name', 'yes'),
('2I10jC/hCxOoo+TJOabZmA', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_first_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Mother First Name', 'yes'),
('EoKs0Kg2YKUL1xJVPwKo6w', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_middle_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Mother Middle Name', 'yes'),
('kBbxMrpaymC/fj96lEbAIg', 'BYf9jiy4n/VsHSmtJap8gQ', 'mother_last_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Mother Last Name', 'yes'),
('3JrbqGZJBwQj3pu2nUbWXg', 'BYf9jiy4n/VsHSmtJap8gQ', 'is_citizen', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Citizen', 'yes'),
('lZ2MDOhlbgY/13+AZOpbIg', 'BYf9jiy4n/VsHSmtJap8gQ', 'date_registered', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Registered', 'yes'),
('13ntnFmAGrb9CozeM3vG/w', 'BYf9jiy4n/VsHSmtJap8gQ', 'is_official', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Official', 'yes'),
('kksp9jS2h5jmYH1pKg8BYQ', 'pcl44WGaRerapbAbZaPRDw', 'city_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'City ID', 'no'),
('9mpj8yxUzBck1BujO/4WDA', 'pcl44WGaRerapbAbZaPRDw', 'city_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'City Name', 'yes'),
('Rsl/AH1hKCpjKrb+3Omh7g', 'pcl44WGaRerapbAbZaPRDw', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('5//5txbJyXTTfLfirfpaHg', 'pcl44WGaRerapbAbZaPRDw', 'province_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Province', 'yes'),
('SrlZNhkm02iM5nXtWC5nSw', 'UGoYijf1uPZygkK4aKL3BA', 'notification_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Notification ID', 'no'),
('cR9mUSr1wrKonrPVUBnB+w', 'UGoYijf1uPZygkK4aKL3BA', 'request_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Request ID', 'yes'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 'UGoYijf1uPZygkK4aKL3BA', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('szo216Gf0eHlMwkFJI9MHA', 'UGoYijf1uPZygkK4aKL3BA', 'notification_letter', 'text', 'NO', 0, '', 'N', 'textarea', 'Notification Letter', 'yes'),
('cN/RxmE2AnxTwwmg0d6wqQ', 'xkysH6HvJxGLLSd2T3REVA', 'official_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Official ID', 'no'),
('Q9+HlJold/JFXijpZa01KQ', 'xkysH6HvJxGLLSd2T3REVA', 'official_name', 'varchar', 'NO', 45, 'foreign key', 'N', 'drop-down list', 'Official Name', 'yes'),
('wUjSjA/CK5aJnrapBe4FYg', 'xkysH6HvJxGLLSd2T3REVA', 'position', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Position', 'yes'),
('smQV5lnWjlj7DFisN0aabg', 'xkysH6HvJxGLLSd2T3REVA', 'term_period_from', 'date', 'NO', 0, '', 'N', 'date controls', 'Term Period From', 'yes'),
('1Tl7YAoMQgZbPjq/qKbJOw', 'xkysH6HvJxGLLSd2T3REVA', 'term_period_to', 'date', 'NO', 0, '', 'N', 'date controls', 'Term Period To', 'yes'),
('DaCaF/LNAD+NrntWVERRAA', 'x3AlSCd+MSQBJWgb+ieaEA', 'province_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Province ID', 'no'),
('Oendr3sedvqoU4ofpsq9gQ', 'x3AlSCd+MSQBJWgb+ieaEA', 'province_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Province Name', 'yes'),
('K+SZOWgg4tRYHmShytJ2sw', 'x3AlSCd+MSQBJWgb+ieaEA', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('iAKNZw1+MJiWreQbewFQkw', 'x3AlSCd+MSQBJWgb+ieaEA', 'region_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Region', 'yes'),
('TgmwlovJin+MKDkuHeY75w', 'GB0Q7RZu5fE49cK0i9Q+7Q', 'region_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Region ID', 'no'),
('y4OqjZ65Vr+QzMmhCb7Vlg', 'GB0Q7RZu5fE49cK0i9Q+7Q', 'region_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Region Name', 'yes'),
('ePOVthS+xbW9V392hSo71A', 'GB0Q7RZu5fE49cK0i9Q+7Q', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('pj9x53y0fty/QoDGrIPcHg', 'nmtwEtRPmkvjrEu8/qsjaw', 'requirement_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Requirement ID', 'no'),
('m/IsstLbGToF3K2RtXtxMQ', 'nmtwEtRPmkvjrEu8/qsjaw', 'service_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Service', 'yes'),
('aBALCWFAIbvMi469YsLDSA', 'nmtwEtRPmkvjrEu8/qsjaw', 'service_requirement', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Service Requirement', 'yes'),
('RdeA40JoKmPRVvS/jw7hkg', 'RetMn8vVODRi4ThYc8FCVA', 'service_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Service ID', 'no'),
('2+l5w/BXAQuZmTxLEDu+gg', 'RetMn8vVODRi4ThYc8FCVA', 'service_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Service Name', 'yes'),
('3iTyB2CqErGMrSlcLcZIZQ', 'RetMn8vVODRi4ThYc8FCVA', 'service_description', 'text', 'NO', 0, '', 'N', 'textarea', 'Service Description', 'yes'),
('KQySMrsA/ZFEzXTF+vwYnw', 'RetMn8vVODRi4ThYc8FCVA', 'date_offered', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Offered', 'yes'),
('MsWwNA6MWwt3jsEAtvfbcw', 'RetMn8vVODRi4ThYc8FCVA', 'is_offered', 'varchar', 'NO', 3, 'none', 'N', 'radio buttons', 'Is Offered', 'yes'),
('Jlqi6NVsrCe5h9Yld/xz8w', 'kch1paJBspKqHl6fM21LIA', 'barangay_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Barangay ID', 'no'),
('VpCinIZRLbJ5AQBNvWy8tg', 'kch1paJBspKqHl6fM21LIA', 'barangay_name', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Barangay Name', 'yes'),
('dHyRyrQyCu9LnpNpxtxXMA', 'kch1paJBspKqHl6fM21LIA', 'nscb_code', 'integer', 'NO', 11, '', 'N', 'textbox', 'Nscb Code', 'yes'),
('WYWPYEFN8tErOSiWAxrP7Q', 'kch1paJBspKqHl6fM21LIA', 'district_number', 'varchar', 'NO', 45, '', 'N', 'textbox', 'District Number', 'yes'),
('zUI65Og69DOpMZt4h7iQzg', 'kch1paJBspKqHl6fM21LIA', 'city_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'City', 'yes'),
('yfVu7j/qaBIYchJgetHcaA', 'nmbVh8cTNAERRSM0wIEn9Q', 'request_has_requirement_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Request Has Requirement ID', 'no'),
('qMJ3jKo8Fo80ondIn5yK9g', 'nmbVh8cTNAERRSM0wIEn9Q', 'date_submitted', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Submitted', 'yes'),
('ULRdbMK3EdSiHtY9zMk4Uw', 'nmbVh8cTNAERRSM0wIEn9Q', 'requirement_document', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'Requirement Document', 'yes'),
('/uqCG7F+eXHD039Y2V7DgQ', 'nmbVh8cTNAERRSM0wIEn9Q', 'request_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Request', 'yes'),
('GrGlxb0d8rYDiLrB/tCqCA', 'fWWWOpaZCVXE+q5P4kM0Hg', 'validate_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Validate ID', 'no'),
('Ja9NvH8U35gFWyWZYY3uFg', 'fWWWOpaZCVXE+q5P4kM0Hg', 'proof_of_id', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'Proof Of ID', 'yes'),
('yffhEniB6LJzdPBDtecrWQ', 'fWWWOpaZCVXE+q5P4kM0Hg', 'proof_of_address', 'varchar', 'NO', 255, 'none', 'N', 'upload', 'Proof Of Address', 'yes'),
('uG2OgNC0dTQelamNTpyjoQ', 'fWWWOpaZCVXE+q5P4kM0Hg', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('CT/VApQ35fIiPb4y9epJ2g', 'fWWWOpaZCVXE+q5P4kM0Hg', 'status', 'varchar', 'NO', 45, 'none', 'N', 'drop-down list', 'Status', 'yes'),
('lHtPbk/+hibdx5bKdqffvQ', '8vOhn2ORuhNxJpFj7a8QwQ', 'request_id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'Request ID', 'no'),
('CuHbgKcUmiLtu4hZ1zyOKg', '8vOhn2ORuhNxJpFj7a8QwQ', 'service_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Service', 'yes'),
('7230OIL1TXCgaX1dKca3kg', '8vOhn2ORuhNxJpFj7a8QwQ', 'citizen_id', 'integer', 'NO', 11, 'foreign key', 'N', 'drop-down list', 'Citizen', 'yes'),
('bMenjmIdY+1IIIEyFHp9RQ', '8vOhn2ORuhNxJpFj7a8QwQ', 'date_filed', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Filed', 'yes'),
('k3sLKx/KB1n2IxDEeJQ7LA', '8vOhn2ORuhNxJpFj7a8QwQ', 'date_served', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Served', 'yes'),
('yd3v9xjcAGV1jyNpJLUXqg', 'nmbVh8cTNAERRSM0wIEn9Q', 'status', 'varchar', 'NO', 45, 'none', '', 'drop-down list', 'status', 'yes'),
('Tyi2cpOzQf7MVMt40lgCLg', 'khEvtdbGWIXDHrCuWITY5Q', 'student_id', 'varchar', 'NO', 11, 'primary key', 'N', 'textbox', 'Student ID', 'yes'),
('TJRvMBcxY49JrSs9wofpbA', 'khEvtdbGWIXDHrCuWITY5Q', 'student_last_name', 'varchar', 'NO', 25, '', 'N', 'textbox', 'Student Last Name', 'yes'),
('uCrVAKsey8NrhThqHk1Log', 'khEvtdbGWIXDHrCuWITY5Q', 'student_first_name', 'varchar', 'NO', 30, '', 'N', 'textbox', 'Student First Name', 'yes'),
('/HWNJlZO7HFyglLoJqQDtw', 'khEvtdbGWIXDHrCuWITY5Q', 'student_middle_name', 'varchar', 'NO', 25, '', 'N', 'textbox', 'Student Middle Name', 'yes'),
('e1X3F8oKxbN/q++HcmrbsA', 'khEvtdbGWIXDHrCuWITY5Q', 'birth_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Birth Date', 'yes'),
('VTrH8AS+M8DK9svSz7E1MA', 'khEvtdbGWIXDHrCuWITY5Q', 'birth_place', 'varchar', 'NO', 35, '', 'N', 'textbox', 'Birth Place', 'yes'),
('24RhMBA0Teya0GRkDkg1IA', 'khEvtdbGWIXDHrCuWITY5Q', 'admission_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Admission Date', 'yes'),
('g8ycQQfY3j/h6GGWLO6tfQ', 'khEvtdbGWIXDHrCuWITY5Q', 'entry_level', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Entry Level', 'yes'),
('ayXwXdJA5ua/U8OahqTvXA', 'khEvtdbGWIXDHrCuWITY5Q', 'admission_credential', 'varchar', 'YES', 2500, '', 'N', 'textbox', 'Admission Credential', 'yes'),
('jKzO8cUWcjEpI1ofm6Pb6w', 'khEvtdbGWIXDHrCuWITY5Q', 'mail_grades_to', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Mail Grades To', 'yes'),
('A6YP3vcogtzlxv8z0aSkqA', 'khEvtdbGWIXDHrCuWITY5Q', 'exit_level', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Exit Level', 'yes'),
('F77Bfd12LCTDm1eRyxGzaw', 'khEvtdbGWIXDHrCuWITY5Q', 'nationality', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Nationality', 'yes'),
('IvAEL01ufi0pPqgomRd5VA', 'khEvtdbGWIXDHrCuWITY5Q', 'gender', 'varchar', 'NO', 255, 'none', 'N', 'radio buttons', 'Gender', 'yes'),
('tK5GJjkv5ZgzEO08/u0YEQ', 'khEvtdbGWIXDHrCuWITY5Q', 'address', 'varchar', 'NO', 250, '', 'N', 'textarea', 'Address', 'yes'),
('Rnt2pud+mrywYXOqVF5ypw', 'khEvtdbGWIXDHrCuWITY5Q', 'postal_code', 'varchar', 'YES', 250, '', 'N', 'textbox', 'Postal Code', 'yes'),
('g8a7RZrQSt8vo2IunmBaFg', 'khEvtdbGWIXDHrCuWITY5Q', 'tel_num', 'varchar', 'YES', 250, '', 'N', 'textbox', 'Tel Num', 'yes'),
('vCT4bEzDUDoGwYpBV3rUoA', 'khEvtdbGWIXDHrCuWITY5Q', 'mobile_num', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Mobile Num', 'yes'),
('mbnNVoHlxnImTWaOf16t5Q', 'khEvtdbGWIXDHrCuWITY5Q', 'email', 'varchar', 'YES', 250, '', 'N', 'textbox', 'Email', 'yes'),
('ZvfDr5pYGblXei/DTRdYUA', 'khEvtdbGWIXDHrCuWITY5Q', 'religion', 'varchar', 'YES', 25, '', 'N', 'textbox', 'Religion', 'yes'),
('amK1Mw/71GD2LoQjqjKpng', 'khEvtdbGWIXDHrCuWITY5Q', 'civil_status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Civil Status', 'yes'),
('NXptQLUu0YDNN6wIcCFlxA', 'khEvtdbGWIXDHrCuWITY5Q', 'box_num', 'varchar', 'NO', 250, '', 'N', 'textbox', 'Box Num', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_book_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_book_list` (
  `Field_ID` char(44) NOT NULL,
  `Book_List_Generator` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_list` (
  `Field_ID` char(44) NOT NULL,
  `List_ID` char(44) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_list`
--

INSERT INTO `table_fields_list` (`Field_ID`, `List_ID`) VALUES
('13ntnFmAGrb9CozeM3vG/w', 'BtHsaDrhY32mojB4JSJpGg'),
('1VFxpTj1eVriDZwsjNpqzQ', 'OXApXCXrQ0o29Tim2Ab/AA'),
('3JrbqGZJBwQj3pu2nUbWXg', 'BtHsaDrhY32mojB4JSJpGg'),
('CT/VApQ35fIiPb4y9epJ2g', 'cTXvZ82is1Q3KJrEgQLZ8g'),
('EYe/KuLeYmDvjcCC6C821Q', 'xU2EOzkpO45LTbiuI+pMtg'),
('i+rCyOlTgqdBuiUgDlgAkQ', 'BtHsaDrhY32mojB4JSJpGg'),
('IvAEL01ufi0pPqgomRd5VA', 'mBLNFUS7V2AaS6Vb+3s0uA'),
('MsWwNA6MWwt3jsEAtvfbcw', 'BtHsaDrhY32mojB4JSJpGg'),
('tOxuFHuhQn7CzT3yGmTtRA', 'XQAsiwKFaecnsPMlXNfrlA'),
('vbTTDiTjdDNlCltj5Ag5gA', '2YY+ife0WSgLXENCMLQnCg'),
('Vmn8cLkblrNWShARYqs27Q', 'XC1i0GotE5lwgiQJB/gGuQ'),
('wUjSjA/CK5aJnrapBe4FYg', 'kN5/C+bWX4OKBFbQg76/sg'),
('yd3v9xjcAGV1jyNpJLUXqg', 'cTXvZ82is1Q3KJrEgQLZ8g');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_select`
--

CREATE TABLE IF NOT EXISTS `table_fields_list_source_select` (
  `Field_ID` char(44) NOT NULL,
  `Auto_ID` int(11) NOT NULL,
  `Select_Field_ID` char(44) NOT NULL,
  `Display` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_list_source_select`
--

INSERT INTO `table_fields_list_source_select` (`Field_ID`, `Auto_ID`, `Select_Field_ID`, `Display`) VALUES
('kgzD552p7CbDhL1w4aC/bw', 1, 'u9wkogwQglAzp6gfbrBMsA', 'No'),
('kgzD552p7CbDhL1w4aC/bw', 2, '/JeXItd3F+SJ4rb/swbFSQ', 'Yes'),
('lDM4gDuXQFrwVf0y3Zr2oQ', 1, '7nMzknfNaqrQ7RQI4Edk7A', 'No'),
('lDM4gDuXQFrwVf0y3Zr2oQ', 2, 'uF34iCe03S5hxcUBlOmPew', 'Yes'),
('UK6aBxDF1ZUCunHHWF8Ypw', 2, 'y4OqjZ65Vr+QzMmhCb7Vlg', 'Yes'),
('iAKNZw1+MJiWreQbewFQkw', 1, 'TgmwlovJin+MKDkuHeY75w', 'No'),
('iAKNZw1+MJiWreQbewFQkw', 2, 'y4OqjZ65Vr+QzMmhCb7Vlg', 'Yes'),
('/uqCG7F+eXHD039Y2V7DgQ', 2, 'lHtPbk/+hibdx5bKdqffvQ', 'Yes'),
('/uqCG7F+eXHD039Y2V7DgQ', 1, 'lHtPbk/+hibdx5bKdqffvQ', 'No'),
('m/IsstLbGToF3K2RtXtxMQ', 1, 'RdeA40JoKmPRVvS/jw7hkg', 'No'),
('m/IsstLbGToF3K2RtXtxMQ', 2, '2+l5w/BXAQuZmTxLEDu+gg', 'Yes'),
('7230OIL1TXCgaX1dKca3kg', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('7230OIL1TXCgaX1dKca3kg', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('7230OIL1TXCgaX1dKca3kg', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('7230OIL1TXCgaX1dKca3kg', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('CuHbgKcUmiLtu4hZ1zyOKg', 1, 'RdeA40JoKmPRVvS/jw7hkg', 'No'),
('uG2OgNC0dTQelamNTpyjoQ', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('uG2OgNC0dTQelamNTpyjoQ', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('uG2OgNC0dTQelamNTpyjoQ', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('uG2OgNC0dTQelamNTpyjoQ', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('CuHbgKcUmiLtu4hZ1zyOKg', 2, '2+l5w/BXAQuZmTxLEDu+gg', 'Yes'),
('UK6aBxDF1ZUCunHHWF8Ypw', 1, 'TgmwlovJin+MKDkuHeY75w', 'No'),
('Q9+HlJold/JFXijpZa01KQ', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('Q9+HlJold/JFXijpZa01KQ', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('Q9+HlJold/JFXijpZa01KQ', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('Q9+HlJold/JFXijpZa01KQ', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('zUI65Og69DOpMZt4h7iQzg', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('zUI65Og69DOpMZt4h7iQzg', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 1, 'cHo/nvf3Q/khtTuE9ZTcmw', 'No'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 2, 'pbEU5yfIMuRmkTDNjDEvlg', 'Yes'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 3, 'tvE5xS1PO5RXS6lctYccdA', 'Yes'),
('G0Z0U3WeQKPRU8e8wdOzWQ', 4, 'fn2gUYY3djgiEuCfDYk+eQ', 'Yes'),
('H84dM/cy+Ep+Z6COB5Mw9w', 2, 'VpCinIZRLbJ5AQBNvWy8tg', 'Yes'),
('H84dM/cy+Ep+Z6COB5Mw9w', 1, 'Jlqi6NVsrCe5h9Yld/xz8w', 'No'),
('V/Ci7v2oPGROR0+GJjv2bQ', 1, 'kksp9jS2h5jmYH1pKg8BYQ', 'No'),
('V/Ci7v2oPGROR0+GJjv2bQ', 2, '9mpj8yxUzBck1BujO/4WDA', 'Yes'),
('5//5txbJyXTTfLfirfpaHg', 1, 'DaCaF/LNAD+NrntWVERRAA', 'No'),
('5//5txbJyXTTfLfirfpaHg', 2, 'Oendr3sedvqoU4ofpsq9gQ', 'Yes'),
('Ip2EeaXbcIbQuzsZ8BAXcQ', 1, 'DaCaF/LNAD+NrntWVERRAA', 'No'),
('Ip2EeaXbcIbQuzsZ8BAXcQ', 2, 'Oendr3sedvqoU4ofpsq9gQ', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_where`
--

CREATE TABLE IF NOT EXISTS `table_fields_list_source_where` (
  `Field_ID` char(44) NOT NULL,
  `Where_Field_ID` char(44) NOT NULL,
  `Where_Field_Operand` varchar(20) NOT NULL,
  `Where_Field_Value` varchar(200) NOT NULL,
  `Where_Field_Connector` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_list_source_where`
--

INSERT INTO `table_fields_list_source_where` (`Field_ID`, `Where_Field_ID`, `Where_Field_Operand`, `Where_Field_Value`, `Where_Field_Connector`) VALUES
('kgzD552p7CbDhL1w4aC/bw', '0', '', '', ''),
('lDM4gDuXQFrwVf0y3Zr2oQ', '0', '', '', ''),
('iAKNZw1+MJiWreQbewFQkw', '0', '', '', ''),
('/uqCG7F+eXHD039Y2V7DgQ', '0', '', '', ''),
('m/IsstLbGToF3K2RtXtxMQ', '0', '', '', ''),
('uG2OgNC0dTQelamNTpyjoQ', '0', '', '', ''),
('CuHbgKcUmiLtu4hZ1zyOKg', '0', '', '', ''),
('7230OIL1TXCgaX1dKca3kg', '0', '', '', ''),
('Q9+HlJold/JFXijpZa01KQ', '0', '', '', ''),
('zUI65Og69DOpMZt4h7iQzg', '0', '', '', ''),
('G0Z0U3WeQKPRU8e8wdOzWQ', '0', '', '', ''),
('H84dM/cy+Ep+Z6COB5Mw9w', '0', '', '', ''),
('V/Ci7v2oPGROR0+GJjv2bQ', '0', '', '', ''),
('5//5txbJyXTTfLfirfpaHg', '0', '', '', ''),
('Ip2EeaXbcIbQuzsZ8BAXcQ', '0', '', '', ''),
('UK6aBxDF1ZUCunHHWF8Ypw', '0', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_predefined_list` (
  `List_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `List_Name` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list`
--

INSERT INTO `table_fields_predefined_list` (`List_ID`, `Project_ID`, `List_Name`, `Remarks`) VALUES
('weeWNvA/esJyw0t6pEjhXQ', 'niWzp0HMbTdOVzO1puUgXQ', 'Male/Female', 'Male/Female gender list'),
('uDoLALxZbwu8aOtbtW6mhw', 'niWzp0HMbTdOVzO1puUgXQ', 'On/Off', 'On/Off status list'),
('UBGVL4E+2J8RMa6FGHlHEA', 'niWzp0HMbTdOVzO1puUgXQ', 'TRUE/FALSE', 'TRUE/FALSE list'),
('7tK/WugYOc4ZUAjObSqF1A', 'niWzp0HMbTdOVzO1puUgXQ', 'M/F', 'Single character male/female gender list'),
('e6BVIvz2FyZNOKAWxd6q4g', 'niWzp0HMbTdOVzO1puUgXQ', 'Yes/No', 'Yes/No list'),
('wV6tLILqqTgb3q54WwCxEg', 'niWzp0HMbTdOVzO1puUgXQ', 'Y/N', 'Single character yes/no list'),
('xU2EOzkpO45LTbiuI+pMtg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Male/Female', 'Male/Female gender list'),
('4to6m4+hY9QX2ngP0+6Szg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'On/Off', 'On/Off status list'),
('WwZwuqCXEA2F+tP4PqIj4A', 'tl05Ti9Zu+yEKfnKwsEg6g', 'TRUE/FALSE', 'TRUE/FALSE list'),
('iOG2mArXQBvw5vz5W6QuYg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'M/F', 'Single character male/female gender list'),
('BtHsaDrhY32mojB4JSJpGg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Yes/No', 'Yes/No list'),
('Yy7KrS3GL14d3P1rLM7EaA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Y/N', 'Single character yes/no list'),
('XQAsiwKFaecnsPMlXNfrlA', 'GgSaxyl0ukMDguHArJAwRg', 'Male/Female', 'Male/Female gender list'),
('EyucR9PN1xdR/ylAZTb4Pw', 'GgSaxyl0ukMDguHArJAwRg', 'On/Off', 'On/Off status list'),
('Rcb2nsaiUEkPoKsYIAvI0Q', 'GgSaxyl0ukMDguHArJAwRg', 'TRUE/FALSE', 'TRUE/FALSE list'),
('gUHAHVWX1snhzySN0NuzIw', 'GgSaxyl0ukMDguHArJAwRg', 'M/F', 'Single character male/female gender list'),
('G3dUxYHr9WhlGkKVlcKeyg', 'GgSaxyl0ukMDguHArJAwRg', 'Yes/No', 'Yes/No list'),
('M44GQsyCZkX543GGlhFO1Q', 'GgSaxyl0ukMDguHArJAwRg', 'Y/N', 'Single character yes/no list'),
('2YY+ife0WSgLXENCMLQnCg', 'GgSaxyl0ukMDguHArJAwRg', 'Civil status', '.'),
('OXApXCXrQ0o29Tim2Ab/AA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'civil status', 'civil status'),
('LSyaOqtoqXV6l3Ikzulpew', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Region', '.'),
('kN5/C+bWX4OKBFbQg76/sg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'Position', 'Officials position'),
('cTXvZ82is1Q3KJrEgQLZ8g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'status', 'status of request'),
('XC1i0GotE5lwgiQJB/gGuQ', 'tl05Ti9Zu+yEKfnKwsEg6g', 'category', 'category of the bulletin'),
('WHKmomL2dhn4+2ZSSIVvSg', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'Male/Female', 'Male/Female gender list'),
('gVp3LAOBEKtWsA5/lM+/sQ', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'On/Off', 'On/Off status list'),
('fCC4KDpGxOuzOauSw/y1+w', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'TRUE/FALSE', 'TRUE/FALSE list'),
('pd+uZbZNwFpHuwXHdhOMaQ', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'M/F', 'Single character male/female gender list'),
('NfuQbopIV6dRJVas1OBuSA', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'Yes/No', 'Yes/No list'),
('SbdOd+q7QW7sIMuTIHXfOw', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'Y/N', 'Single character yes/no list'),
('mBLNFUS7V2AaS6Vb+3s0uA', 'IhxDA1VuVT3u4PTJ1KAtIQ', 'gender', 'to identify gender');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list_items`
--

CREATE TABLE IF NOT EXISTS `table_fields_predefined_list_items` (
  `List_ID` char(44) NOT NULL,
  `Number` int(11) NOT NULL,
  `List_Item` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list_items`
--

INSERT INTO `table_fields_predefined_list_items` (`List_ID`, `Number`, `List_Item`) VALUES
('weeWNvA/esJyw0t6pEjhXQ', 1, 'Male'),
('weeWNvA/esJyw0t6pEjhXQ', 2, 'Female'),
('uDoLALxZbwu8aOtbtW6mhw', 1, 'On'),
('uDoLALxZbwu8aOtbtW6mhw', 2, 'Off'),
('UBGVL4E+2J8RMa6FGHlHEA', 1, 'TRUE'),
('UBGVL4E+2J8RMa6FGHlHEA', 2, 'FALSE'),
('7tK/WugYOc4ZUAjObSqF1A', 1, 'M'),
('7tK/WugYOc4ZUAjObSqF1A', 2, 'F'),
('e6BVIvz2FyZNOKAWxd6q4g', 1, 'Yes'),
('e6BVIvz2FyZNOKAWxd6q4g', 2, 'No'),
('wV6tLILqqTgb3q54WwCxEg', 1, 'Y'),
('wV6tLILqqTgb3q54WwCxEg', 2, 'N'),
('xU2EOzkpO45LTbiuI+pMtg', 1, 'Male'),
('xU2EOzkpO45LTbiuI+pMtg', 2, 'Female'),
('4to6m4+hY9QX2ngP0+6Szg', 1, 'On'),
('4to6m4+hY9QX2ngP0+6Szg', 2, 'Off'),
('WwZwuqCXEA2F+tP4PqIj4A', 1, 'TRUE'),
('WwZwuqCXEA2F+tP4PqIj4A', 2, 'FALSE'),
('iOG2mArXQBvw5vz5W6QuYg', 1, 'M'),
('iOG2mArXQBvw5vz5W6QuYg', 2, 'F'),
('BtHsaDrhY32mojB4JSJpGg', 1, 'Yes'),
('BtHsaDrhY32mojB4JSJpGg', 2, 'No'),
('Yy7KrS3GL14d3P1rLM7EaA', 1, 'Y'),
('Yy7KrS3GL14d3P1rLM7EaA', 2, 'N'),
('EyucR9PN1xdR/ylAZTb4Pw', 1, 'On'),
('EyucR9PN1xdR/ylAZTb4Pw', 2, 'Off'),
('Rcb2nsaiUEkPoKsYIAvI0Q', 1, 'TRUE'),
('Rcb2nsaiUEkPoKsYIAvI0Q', 2, 'FALSE'),
('gUHAHVWX1snhzySN0NuzIw', 1, 'M'),
('gUHAHVWX1snhzySN0NuzIw', 2, 'F'),
('G3dUxYHr9WhlGkKVlcKeyg', 1, 'Yes'),
('G3dUxYHr9WhlGkKVlcKeyg', 2, 'No'),
('M44GQsyCZkX543GGlhFO1Q', 1, 'Y'),
('M44GQsyCZkX543GGlhFO1Q', 2, 'N'),
('XQAsiwKFaecnsPMlXNfrlA', 1, 'Male'),
('XQAsiwKFaecnsPMlXNfrlA', 2, 'Female'),
('2YY+ife0WSgLXENCMLQnCg', 1, 'single'),
('2YY+ife0WSgLXENCMLQnCg', 2, 'married'),
('LSyaOqtoqXV6l3Ikzulpew', 1, 'National Capital Region (NCR)'),
('LSyaOqtoqXV6l3Ikzulpew', 2, 'Ilocos Region(Region I)'),
('LSyaOqtoqXV6l3Ikzulpew', 3, 'Cordillera Administrative Region(CAR)'),
('LSyaOqtoqXV6l3Ikzulpew', 4, 'Cagayan Valley(Region II)'),
('LSyaOqtoqXV6l3Ikzulpew', 5, 'Central Luzon(Region III)'),
('LSyaOqtoqXV6l3Ikzulpew', 6, 'CALABARZON(Region IV-A)'),
('LSyaOqtoqXV6l3Ikzulpew', 7, 'MIMAROPA(Region IV-B)'),
('LSyaOqtoqXV6l3Ikzulpew', 8, 'Bicol Region(Region V)'),
('LSyaOqtoqXV6l3Ikzulpew', 9, 'Western Visayas(Region VI)'),
('LSyaOqtoqXV6l3Ikzulpew', 10, 'Negros IslandRegion(NIR or Region XVIII)'),
('LSyaOqtoqXV6l3Ikzulpew', 11, 'Central Visayas(Region VII)'),
('LSyaOqtoqXV6l3Ikzulpew', 12, 'Eastern Visayas(Region VIII)'),
('LSyaOqtoqXV6l3Ikzulpew', 13, 'ZamboangaPeninsula(Region IX)'),
('LSyaOqtoqXV6l3Ikzulpew', 14, 'Northern Mindanao(Region X)'),
('LSyaOqtoqXV6l3Ikzulpew', 15, 'Caraga(Region XIII)'),
('LSyaOqtoqXV6l3Ikzulpew', 16, 'Davao Region(Region XI)'),
('LSyaOqtoqXV6l3Ikzulpew', 17, 'SOCCSKSARGEN(Region XII)'),
('LSyaOqtoqXV6l3Ikzulpew', 18, 'Autonomous Regionin Muslim Mindanao(ARMM)'),
('cTXvZ82is1Q3KJrEgQLZ8g', 1, 'Accepted'),
('cTXvZ82is1Q3KJrEgQLZ8g', 2, 'Not Accepted'),
('cTXvZ82is1Q3KJrEgQLZ8g', 3, 'Wait list'),
('kN5/C+bWX4OKBFbQg76/sg', 1, 'Barangay Chairman'),
('kN5/C+bWX4OKBFbQg76/sg', 2, 'Barangay Secretary'),
('kN5/C+bWX4OKBFbQg76/sg', 3, 'Barangay Treasurer'),
('kN5/C+bWX4OKBFbQg76/sg', 4, 'SK Chairman'),
('kN5/C+bWX4OKBFbQg76/sg', 5, 'SK Scretary'),
('kN5/C+bWX4OKBFbQg76/sg', 6, 'SK Treasurer'),
('OXApXCXrQ0o29Tim2Ab/AA', 1, 'Single'),
('OXApXCXrQ0o29Tim2Ab/AA', 2, 'Married'),
('OXApXCXrQ0o29Tim2Ab/AA', 3, 'Widowed'),
('OXApXCXrQ0o29Tim2Ab/AA', 4, 'Divorced'),
('OXApXCXrQ0o29Tim2Ab/AA', 5, 'Living common law'),
('OXApXCXrQ0o29Tim2Ab/AA', 6, 'Separated'),
('XC1i0GotE5lwgiQJB/gGuQ', 1, 'Education'),
('XC1i0GotE5lwgiQJB/gGuQ', 2, 'Health'),
('XC1i0GotE5lwgiQJB/gGuQ', 3, 'Information'),
('XC1i0GotE5lwgiQJB/gGuQ', 4, 'Main Event'),
('WHKmomL2dhn4+2ZSSIVvSg', 1, 'Male'),
('WHKmomL2dhn4+2ZSSIVvSg', 2, 'Female'),
('gVp3LAOBEKtWsA5/lM+/sQ', 1, 'On'),
('gVp3LAOBEKtWsA5/lM+/sQ', 2, 'Off'),
('fCC4KDpGxOuzOauSw/y1+w', 1, 'TRUE'),
('fCC4KDpGxOuzOauSw/y1+w', 2, 'FALSE'),
('pd+uZbZNwFpHuwXHdhOMaQ', 1, 'M'),
('pd+uZbZNwFpHuwXHdhOMaQ', 2, 'F'),
('NfuQbopIV6dRJVas1OBuSA', 1, 'Yes'),
('NfuQbopIV6dRJVas1OBuSA', 2, 'No'),
('SbdOd+q7QW7sIMuTIHXfOw', 1, 'Y'),
('SbdOd+q7QW7sIMuTIHXfOw', 2, 'N'),
('mBLNFUS7V2AaS6Vb+3s0uA', 1, 'Male'),
('mBLNFUS7V2AaS6Vb+3s0uA', 2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_secondary_validation`
--

CREATE TABLE IF NOT EXISTS `table_fields_secondary_validation` (
  `Field_ID` char(44) NOT NULL,
  `Validation_Routine` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_pages`
--

CREATE TABLE IF NOT EXISTS `table_pages` (
  `Table_ID` char(44) NOT NULL,
  `Page_ID` char(44) NOT NULL,
  `Path_Filename` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_pages`
--

INSERT INTO `table_pages` (`Table_ID`, `Page_ID`, `Path_Filename`) VALUES
('h/3uII4EiMg1P0KY6Wgd6Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_department.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_department.php'),
('G3MVI200wv/CzEwgyQNCCg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee.php'),
('G3MVI200wv/CzEwgyQNCCg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee.php'),
('gElvU6hWE0jypHA1z/F+XA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee_certifications.php'),
('gElvU6hWE0jypHA1z/F+XA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee_certifications.php'),
('SGTpjNa1U0+pEkZ5UKK81A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item.php'),
('aDaRx2ctonKdTCS6LV4Z6g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item_type.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item_type.php'),
('Z07dDK1JPgrzGx+4NFbz7A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending.php'),
('BQRN52d9aoT8q+8z0o4LlQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending_items.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending_items.php'),
('D9bgTjAuuUKd48TXB2y2xA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_position.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_position.php'),
('h/3uII4EiMg1P0KY6Wgd6Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_department.php'),
('G3MVI200wv/CzEwgyQNCCg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee.php'),
('gElvU6hWE0jypHA1z/F+XA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee_certifications.php'),
('SGTpjNa1U0+pEkZ5UKK81A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item.php'),
('aDaRx2ctonKdTCS6LV4Z6g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item_type.php'),
('Z07dDK1JPgrzGx+4NFbz7A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending.php'),
('BQRN52d9aoT8q+8z0o4LlQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending_items.php'),
('D9bgTjAuuUKd48TXB2y2xA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_position.php'),
('PJLuqV2HSUWR+ikNdUXPGg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_department.php'),
('PJLuqV2HSUWR+ikNdUXPGg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_department.php'),
('H73ud0QWLx2Se7p9eUkasg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee.php'),
('H73ud0QWLx2Se7p9eUkasg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee.php'),
('Doe+KB5zM7tWgsZhpqAp5w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_employee_certifications.php'),
('Doe+KB5zM7tWgsZhpqAp5w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_employee_certifications.php'),
('vv1exa8MbX4K7IXMl/FEJQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item.php'),
('vv1exa8MbX4K7IXMl/FEJQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item.php'),
('T2hM+p3raP+HFxiFlxDlKg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'item/add_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'item/edit_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'item/detailview_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'item/listview_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'item/delete_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'item/csv_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'item/reporter_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'item/reporter_result_item_type.php'),
('T2hM+p3raP+HFxiFlxDlKg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'item/reporter_pdfresult_item_type.php'),
('Cy2c9Vee7ISma5phtovGKA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending.php'),
('Cy2c9Vee7ISma5phtovGKA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending.php'),
('ghh9dSVsnOf4D68tIWSMWA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'lending/add_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'lending/edit_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'lending/detailview_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'lending/listview_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'lending/delete_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'lending/csv_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'lending/reporter_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'lending/reporter_result_lending_items.php'),
('ghh9dSVsnOf4D68tIWSMWA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'lending/reporter_pdfresult_lending_items.php'),
('HO34F+jhddQkxXVUtHcm5Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employee/add_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employee/edit_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employee/detailview_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employee/listview_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employee/delete_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employee/csv_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employee/reporter_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employee/reporter_result_position.php'),
('HO34F+jhddQkxXVUtHcm5Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employee/reporter_pdfresult_position.php'),
('kch1paJBspKqHl6fM21LIA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'barangay/reporter_pdfresult_barangay.php'),
('kch1paJBspKqHl6fM21LIA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'barangay/reporter_result_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'barangay/reporter_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'barangay/csv_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'barangay/listview_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'barangay/delete_barangay.php'),
('kch1paJBspKqHl6fM21LIA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'barangay/add_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'barangay/edit_barangay.php'),
('kch1paJBspKqHl6fM21LIA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'barangay/detailview_barangay.php'),
('M7NKzXX4dDhEoTBVWxfT1w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'bulletin/add_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'bulletin/edit_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'bulletin/detailview_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'bulletin/listview_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'bulletin/delete_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'bulletin/csv_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'bulletin/reporter_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'bulletin/reporter_result_bulletin.php'),
('M7NKzXX4dDhEoTBVWxfT1w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'bulletin/reporter_pdfresult_bulletin.php'),
('BYf9jiy4n/VsHSmtJap8gQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'citizen/add_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'citizen/edit_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'citizen/detailview_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'citizen/listview_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'citizen/delete_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'citizen/csv_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'citizen/reporter_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'citizen/reporter_result_citizen.php'),
('BYf9jiy4n/VsHSmtJap8gQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'citizen/reporter_pdfresult_citizen.php'),
('pcl44WGaRerapbAbZaPRDw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'city/add_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'city/edit_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'city/detailview_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'city/listview_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'city/delete_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'city/csv_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'city/reporter_city.php'),
('pcl44WGaRerapbAbZaPRDw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'city/reporter_result_city.php'),
('pcl44WGaRerapbAbZaPRDw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'city/reporter_pdfresult_city.php'),
('UGoYijf1uPZygkK4aKL3BA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'notification/add_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'notification/edit_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'notification/detailview_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'notification/listview_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'notification/delete_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'notification/csv_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'notification/reporter_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'notification/reporter_result_notification.php'),
('UGoYijf1uPZygkK4aKL3BA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'notification/reporter_pdfresult_notification.php'),
('xkysH6HvJxGLLSd2T3REVA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'official/add_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'official/edit_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'official/detailview_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'official/listview_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'official/delete_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'official/csv_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'official/reporter_official.php'),
('xkysH6HvJxGLLSd2T3REVA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'official/reporter_result_official.php'),
('xkysH6HvJxGLLSd2T3REVA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'official/reporter_pdfresult_official.php'),
('x3AlSCd+MSQBJWgb+ieaEA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'province/add_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'province/edit_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'province/detailview_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'province/listview_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'province/delete_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'province/csv_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'province/reporter_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'province/reporter_result_province.php'),
('x3AlSCd+MSQBJWgb+ieaEA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'province/reporter_pdfresult_province.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'region/add_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'region/edit_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'region/detailview_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'region/listview_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'region/delete_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'region/csv_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'region/reporter_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'region/reporter_result_region.php'),
('GB0Q7RZu5fE49cK0i9Q+7Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'region/reporter_pdfresult_region.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'request/reporter_pdfresult_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'request/reporter_result_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'request/reporter_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'request/csv_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'request/listview_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'request/delete_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'request/add_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'request/edit_request.php'),
('8vOhn2ORuhNxJpFj7a8QwQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'request/detailview_request.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'citizen/reporter_result_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'citizen/reporter_pdfresult_validate.php'),
('nmbVh8cTNAERRSM0wIEn9Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'request/reporter_pdfresult_request_has_requirement.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'citizen/add_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'citizen/edit_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'citizen/detailview_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'citizen/csv_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'citizen/reporter_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'citizen/listview_validate.php'),
('fWWWOpaZCVXE+q5P4kM0Hg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'citizen/delete_validate.php'),
('nmtwEtRPmkvjrEu8/qsjaw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'requirement/add_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'requirement/edit_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'requirement/detailview_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'requirement/listview_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'requirement/delete_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'requirement/csv_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'requirement/reporter_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'requirement/reporter_result_requirement.php'),
('nmtwEtRPmkvjrEu8/qsjaw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'requirement/reporter_pdfresult_requirement.php'),
('RetMn8vVODRi4ThYc8FCVA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'service/add_service.php'),
('RetMn8vVODRi4ThYc8FCVA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'service/edit_service.php'),
('RetMn8vVODRi4ThYc8FCVA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'service/detailview_service.php'),
('RetMn8vVODRi4ThYc8FCVA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'service/listview_service.php'),
('RetMn8vVODRi4ThYc8FCVA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'service/delete_service.php'),
('RetMn8vVODRi4ThYc8FCVA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'service/csv_service.php'),
('RetMn8vVODRi4ThYc8FCVA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'service/reporter_service.php'),
('RetMn8vVODRi4ThYc8FCVA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'service/reporter_result_service.php'),
('RetMn8vVODRi4ThYc8FCVA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'service/reporter_pdfresult_service.php'),
('nmbVh8cTNAERRSM0wIEn9Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'request/add_request_has_requirement.php'),
('nmbVh8cTNAERRSM0wIEn9Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'request/edit_request_has_requirement.php'),
('nmbVh8cTNAERRSM0wIEn9Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'request/detailview_request_has_requirement.php'),
('nmbVh8cTNAERRSM0wIEn9Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'request/listview_request_has_requirement.php'),
('nmbVh8cTNAERRSM0wIEn9Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'request/delete_request_has_requirement.php'),
('nmbVh8cTNAERRSM0wIEn9Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'request/csv_request_has_requirement.php'),
('nmbVh8cTNAERRSM0wIEn9Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'request/reporter_request_has_requirement.php'),
('nmbVh8cTNAERRSM0wIEn9Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'request/reporter_result_request_has_requirement.php'),
('khEvtdbGWIXDHrCuWITY5Q', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'student/add_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'student/edit_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'student/detailview_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'student/listview_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'student/delete_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'student/csv_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'student/reporter_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'student/reporter_result_refstudent.php'),
('khEvtdbGWIXDHrCuWITY5Q', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'student/reporter_pdfresult_refstudent.php');

-- --------------------------------------------------------

--
-- Table structure for table `table_relations`
--

CREATE TABLE IF NOT EXISTS `table_relations` (
  `Relation_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `Relation` varchar(255) NOT NULL,
  `Parent_Field_ID` char(44) NOT NULL,
  `Child_Field_ID` char(44) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `Child_Field_Subtext` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_relations`
--

INSERT INTO `table_relations` (`Relation_ID`, `Project_ID`, `Relation`, `Parent_Field_ID`, `Child_Field_ID`, `Label`, `Child_Field_Subtext`) VALUES
('fGgFMLGcradrUhVEg6+CnA', 'GgSaxyl0ukMDguHArJAwRg', 'ONE-to-ONE', 'u9wkogwQglAzp6gfbrBMsA', 'kgzD552p7CbDhL1w4aC/bw', 'position=>employee', 'position_name'),
('nN4du7KzpuudZlC30s/9hg', 'GgSaxyl0ukMDguHArJAwRg', 'ONE-to-ONE', '7nMzknfNaqrQ7RQI4Edk7A', 'lDM4gDuXQFrwVf0y3Zr2oQ', 'department=>employee', 'department_name'),
('klHrEnx+VPYhwxK7DhQq5A', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'Q9+HlJold/JFXijpZa01KQ', 'citizen=>official', 'first_name,middle_name,last_name'),
('zO6Ep7qnNkJ+WrIYQTpFNA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'zUI65Og69DOpMZt4h7iQzg', 'city=>barangay', 'city_name'),
('X34GejHts5n3RGPZeGUA1g', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'G0Z0U3WeQKPRU8e8wdOzWQ', 'citizen=>notification', 'first_name,middle_name,last_name'),
('nKsBOlTqxT0+loqsuVzmSA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'Jlqi6NVsrCe5h9Yld/xz8w', 'H84dM/cy+Ep+Z6COB5Mw9w', 'barangay=>citizen', 'barangay_name'),
('D+8blWQyUEemzutIKum4qg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'kksp9jS2h5jmYH1pKg8BYQ', 'V/Ci7v2oPGROR0+GJjv2bQ', 'city=>citizen', 'city_name'),
('zERZyCg0tAU37JLchOqawA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'DaCaF/LNAD+NrntWVERRAA', '5//5txbJyXTTfLfirfpaHg', 'province=>city', 'province_name'),
('ZX8Rf42Lh3cY/X4YV9VfTg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'DaCaF/LNAD+NrntWVERRAA', 'Ip2EeaXbcIbQuzsZ8BAXcQ', 'province=>citizen', 'province_name'),
('Ts03wnSkBkJH2Scq/FGTig', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'TgmwlovJin+MKDkuHeY75w', 'UK6aBxDF1ZUCunHHWF8Ypw', 'region=>citizen', 'region_name'),
('oV9LqODGwyL9cowjDFnmkg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'TgmwlovJin+MKDkuHeY75w', 'iAKNZw1+MJiWreQbewFQkw', 'region=>province', 'region_name'),
('X9N9cC+wTvT8btiWWucq/Q', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-MANY', 'lHtPbk/+hibdx5bKdqffvQ', '/uqCG7F+eXHD039Y2V7DgQ', 'request=>request_has_requirement', ''),
('myDlNO0OZfJ7GzlL19zaig', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'RdeA40JoKmPRVvS/jw7hkg', 'm/IsstLbGToF3K2RtXtxMQ', 'service=>requirement', 'service_name'),
('OJkZkxxBKz501yvg3XiWiA', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', 'uG2OgNC0dTQelamNTpyjoQ', 'citizen=>validate', 'first_name,middle_name,last_name'),
('DfUL/GOBFNbTWaqG9Dntdg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'lHtPbk/+hibdx5bKdqffvQ', '/uqCG7F+eXHD039Y2V7DgQ', 'request=>request_has_requirement', 'request_id'),
('F2D7FU6fn3YUr3utqsq1Ww', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'RdeA40JoKmPRVvS/jw7hkg', 'CuHbgKcUmiLtu4hZ1zyOKg', 'service=>request', 'service_name'),
('+l7GnKIG9W6hq95Q5TJIRg', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-ONE', 'cHo/nvf3Q/khtTuE9ZTcmw', '7230OIL1TXCgaX1dKca3kg', 'citizen=>request', 'first_name,middle_name,last_name'),
('ASBhPFnmaMJM2jQFq2UPWw', 'tl05Ti9Zu+yEKfnKwsEg6g', 'ONE-to-MANY', 'cHo/nvf3Q/khtTuE9ZTcmw', 'uG2OgNC0dTQelamNTpyjoQ', 'citizen=>validate', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `database_connection`
--
ALTER TABLE `database_connection`
  ADD PRIMARY KEY (`DB_Connection_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee_awards`
--
ALTER TABLE `employee_awards`
  ADD PRIMARY KEY (`emp_id`,`auto_id`),
  ADD KEY `auto_id` (`auto_id`);

--
-- Indexes for table `employee_hobbies`
--
ALTER TABLE `employee_hobbies`
  ADD PRIMARY KEY (`emp_id`,`auto_id`),
  ADD KEY `auto_id` (`auto_id`);

--
-- Indexes for table `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`experiment_id`);

--
-- Indexes for table `office_docs`
--
ALTER TABLE `office_docs`
  ADD PRIMARY KEY (`code_1`,`code_2`,`code_3`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`Page_ID`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_ID`);

--
-- Indexes for table `salary_grade`
--
ALTER TABLE `salary_grade`
  ADD PRIMARY KEY (`salary_grade_id`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`Table_ID`),
  ADD KEY `DB_Connection_ID` (`DB_Connection_ID`),
  ADD KEY `Project_ID` (`Project_ID`);

--
-- Indexes for table `table_fields`
--
ALTER TABLE `table_fields`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_book_list`
--
ALTER TABLE `table_fields_book_list`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_list`
--
ALTER TABLE `table_fields_list`
  ADD PRIMARY KEY (`Field_ID`,`List_ID`);

--
-- Indexes for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  ADD PRIMARY KEY (`Field_ID`,`Auto_ID`);

--
-- Indexes for table `table_fields_list_source_where`
--
ALTER TABLE `table_fields_list_source_where`
  ADD PRIMARY KEY (`Field_ID`,`Where_Field_ID`,`Where_Field_Operand`,`Where_Field_Value`);

--
-- Indexes for table `table_fields_predefined_list`
--
ALTER TABLE `table_fields_predefined_list`
  ADD PRIMARY KEY (`List_ID`);

--
-- Indexes for table `table_fields_predefined_list_items`
--
ALTER TABLE `table_fields_predefined_list_items`
  ADD PRIMARY KEY (`List_ID`,`Number`);

--
-- Indexes for table `table_fields_secondary_validation`
--
ALTER TABLE `table_fields_secondary_validation`
  ADD PRIMARY KEY (`Field_ID`,`Validation_Routine`);

--
-- Indexes for table `table_pages`
--
ALTER TABLE `table_pages`
  ADD PRIMARY KEY (`Table_ID`,`Page_ID`);

--
-- Indexes for table `table_relations`
--
ALTER TABLE `table_relations`
  ADD PRIMARY KEY (`Relation_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `award`
--
ALTER TABLE `award`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_awards`
--
ALTER TABLE `employee_awards`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee_hobbies`
--
ALTER TABLE `employee_hobbies`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `experiments`
--
ALTER TABLE `experiments`
  MODIFY `experiment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary_grade`
--
ALTER TABLE `salary_grade`
  MODIFY `salary_grade_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  MODIFY `Auto_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
