-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2016 at 06:15 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_reporter`
--

CREATE TABLE `cobalt_reporter` (
  `module_name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `show_field` blob NOT NULL,
  `operator` blob NOT NULL,
  `text_field` blob NOT NULL,
  `sum_field` blob NOT NULL,
  `count_field` blob NOT NULL,
  `group_field1` blob NOT NULL,
  `group_field2` blob NOT NULL,
  `group_field3` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_sst`
--

CREATE TABLE `cobalt_sst` (
  `auto_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `config_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_id` int(11) NOT NULL,
  `Emp_last_name` varchar(45) NOT NULL,
  `Emp_first_name` varchar(45) NOT NULL,
  `Emp_middle_name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Postal_code` varchar(45) DEFAULT NULL,
  `Tel_num` varchar(45) NOT NULL,
  `Mobile_num` varchar(45) NOT NULL,
  `Department_name` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Civil_status` varchar(45) NOT NULL,
  `Birth_date` date NOT NULL,
  `Birth_place` varchar(45) NOT NULL,
  `Religion` varchar(45) NOT NULL,
  `TIN_num` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_id`, `Emp_last_name`, `Emp_first_name`, `Emp_middle_name`, `Email`, `Address`, `Postal_code`, `Tel_num`, `Mobile_num`, `Department_name`, `Gender`, `Civil_status`, `Birth_date`, `Birth_place`, `Religion`, `TIN_num`) VALUES
(2009100200, 'Dela Cruz', 'Juan Miguel', 'L', 'juandelacruz@jdc.com', '123 Test St., Debug, Baguio City', '5555', '6544565', '09271234501', 'Guidance Office', 'Male', 'Married', '1956-01-07', 'Mandaluyong', 'Roman Catholic', '66666666666'),
(2010100001, 'Una', 'Juan', 'L', 'jluna@jlu.com', '99 B Street, Ceedee Drive, Makati City', '1234', '1232424', '09272223304', 'Internship', 'Male', 'Married', '2000-09-01', 'Makati', 'Roman Catholic', '53535354545');

-- --------------------------------------------------------

--
-- Table structure for table `employeebridgerecord`
--

CREATE TABLE `employeebridgerecord` (
  `Employee_Emp_id` int(11) NOT NULL,
  `Record_Record_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male'),
(2, 'Lorenz Matthew', 'M', 'Cruz', 'Male'),
(3, 'Juan', 'L', 'Una', 'Male'),
(4, 'Juan Miguel', 'L', 'Dela Cruz', 'Male'),
(5, 'Jun Kimuel', 'C', 'Romero', 'Male'),
(6, 'Mark Ernest', 'F', 'Dizon', 'Male'),
(7, 'Gener Joseph', 'G', 'Tomas', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `Record_id` int(11) NOT NULL,
  `Record_date` datetime DEFAULT NULL,
  `Record_time_in` datetime NOT NULL,
  `Record_time_out` datetime NOT NULL,
  `Department_name` varchar(45) NOT NULL,
  `Scope_of_work` varchar(255) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Term_hour` datetime NOT NULL,
  `Reserve_Reserve_id` int(11) NOT NULL,
  `Term_Term_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `Reserve_id` int(11) NOT NULL,
  `Reserve_date` date DEFAULT NULL,
  `Reserve_text` varchar(255) NOT NULL,
  `Reserve_qty` int(11) NOT NULL,
  `Department_name` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Employee_Employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`Reserve_id`, `Reserve_date`, `Reserve_text`, `Reserve_qty`, `Department_name`, `Status`, `Employee_Employee_id`) VALUES
(1, '2016-12-10', 'need 5', 5, 'OSA', 'Pending', 2010100001),
(2, '2044-09-03', 'asd', 7, 'Student Affairs Office', 'Pending', 2010100001),
(3, '2016-12-15', 'need 10 SAs for enrolment proceedings', 10, 'Office Registrar', 'Pending', 2009100200);

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `Scholarship_id` int(11) NOT NULL,
  `Scholarship_code` varchar(45) NOT NULL,
  `Scholarship_description` varchar(45) NOT NULL,
  `Scholarship_group` varchar(45) NOT NULL,
  `Discount` decimal(10,0) NOT NULL,
  `Waive_fee` tinytext,
  `Scholarship_apply` varchar(45) NOT NULL,
  `Required_GPA` decimal(10,0) NOT NULL,
  `SA_hours` decimal(10,0) NOT NULL,
  `Program_apply` varchar(45) NOT NULL,
  `Student_Student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`Scholarship_id`, `Scholarship_code`, `Scholarship_description`, `Scholarship_group`, `Discount`, `Waive_fee`, `Scholarship_apply`, `Required_GPA`, `SA_hours`, `Program_apply`, `Student_Student_id`) VALUES
(1, 'A', 'SA', 'SA', '50', '0', 'yes', '2', '10', 'SA', 2011100560),
(2, 'A', 'SA', 'SA', '50', '0', 'yes', '2', '10', 'SA', 2013100100);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` int(11) NOT NULL,
  `Student_last_name` varchar(45) NOT NULL,
  `Student_first_name` varchar(45) NOT NULL,
  `Student_middle_name` varchar(45) NOT NULL,
  `Birth_date` date NOT NULL,
  `Birth_place` varchar(45) NOT NULL,
  `Entry_level` varchar(45) NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Postal_code` varchar(45) DEFAULT NULL,
  `Tel_num` varchar(11) NOT NULL,
  `Mobile_num` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Religion` varchar(45) NOT NULL,
  `Civil_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Student_last_name`, `Student_first_name`, `Student_middle_name`, `Birth_date`, `Birth_place`, `Entry_level`, `Nationality`, `Gender`, `Address`, `Postal_code`, `Tel_num`, `Mobile_num`, `Email`, `Religion`, `Civil_status`) VALUES
(2011100560, 'Cruz', 'Lorenz Matthew', 'M', '1999-03-05', 'Mandaluyong', 'Transferee', 'Filipino', 'Male', '28 ML Quezon St., Bambang, Taguig City', '1637', '4235059', '09167924892', 'lmcruz@student.apc.edu.ph', 'Roman Catholic', 'Single'),
(2013100100, 'Romero', 'Jun Kimuel', 'C', '1982-06-13', 'Taguig City', 'Continuing', 'Filipino', 'Male', '56 Mockingbird Lane, Bluejay, Taguig City', '5524', '1234567', '09123456789', 'ucromero@student.apc.edu.ph', 'Roman Catholic', 'Single'),
(2014100500, 'Tomas', 'Gener Joseph', 'G', '1978-03-08', 'Mandaluyong', 'Freshmen', 'Filipino', 'Male', '6 5th and 7th, Villamor, Pasay City', '1234', '7774444', '09250123457', 'ngtomas@student.apc.edu,ph', 'Roman Catholic', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `studentbridgereserve`
--

CREATE TABLE `studentbridgereserve` (
  `Reserve_Reserve_id` int(11) NOT NULL,
  `Student_Student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentbridgereserve`
--

INSERT INTO `studentbridgereserve` (`Reserve_Reserve_id`, `Student_Student_id`) VALUES
(1, 2013100100);

-- --------------------------------------------------------

--
-- Table structure for table `studentbridgeterm`
--

CREATE TABLE `studentbridgeterm` (
  `Term_Term_id` int(11) NOT NULL,
  `Student_Student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentbridgeterm`
--

INSERT INTO `studentbridgeterm` (`Term_Term_id`, `Student_Student_id`) VALUES
(1, 2011100560),
(1, 2013100100),
(2, 2011100560),
(2, 2013100100),
(1, 2014100500),
(2, 2014100500);

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `entry_id` bigint(20) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `action` mediumtext NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1, '::1', 'root', '2016-12-04 03:08:31', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(2, '::1', 'root', '2016-12-04 03:08:33', 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$PCidaylyReHJIN.tOKXI8OacRpmE.ksz2ZDvvNTk8sOPQrfFykwJS\n    [2] => PCidaylyReHJIN+tOKXI8Q\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/APC_Student_Assistant_System/login.php'),
(3, '::1', 'root', '2016-12-04 03:13:12', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_employee.php'),
(4, '::1', 'root', '2016-12-04 03:13:12', 'Query Executed: INSERT INTO employee(Emp_id, Emp_last_name, Emp_first_name, Emp_middle_name, Email, Address, Postal_code, Tel_num, Mobile_num, Department_name, Gender, Civil_status, Birth_date, Birth_place, Religion, TIN_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssiissssssss\n    [1] => 1\n    [2] => Una\n    [3] => Juan\n    [4] => L\n    [5] => jluna@jlu.com\n    [6] => 99 B Street, Ceedee Drive, Makati City\n    [7] => 1234\n    [8] => 1232424\n    [9] => 09272223304\n    [10] => Internship\n    [11] => Male\n    [12] => Married\n    [13] => 2000-09-04\n    [14] => Makati\n    [15] => Roman Catholic\n    [16] => 53535354545\n)\n', '/APC_Student_Assistant_System/modules/add_employee.php'),
(5, '::1', 'root', '2016-12-04 03:14:24', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_employee.php'),
(6, '::1', 'root', '2016-12-04 03:16:25', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_employeebridgerecord.php'),
(7, '::1', 'root', '2016-12-04 03:17:00', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_record.php'),
(8, '::1', 'root', '2016-12-04 03:18:20', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_term.php'),
(9, '::1', 'root', '2016-12-04 03:18:21', 'Query Executed: INSERT INTO term(Term_id, school_year, Term_num, Term_start, Term_end, Term_hour) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2016\n    [3] => 2\n    [4] => 2016-09-04\n    [5] => 2016-12-16\n    [6] => 10\n)\n', '/APC_Student_Assistant_System/modules/add_term.php'),
(10, '::1', 'root', '2016-12-04 03:22:51', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_term.php'),
(11, '::1', 'root', '2016-12-04 03:23:04', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_term.php'),
(12, '::1', 'root', '2016-12-04 03:23:05', 'Query Executed: UPDATE term SET school_year = ?, Term_num = ?, Term_start = ?, Term_end = ?, Term_hour = ? WHERE Term_id = ?\r\nArray\n(\n    [0] => sssssi\n    [1] => 2016\n    [2] => 2\n    [3] => 2016-09-04\n    [4] => 2016-12-16\n    [5] => 10:00:00\n    [6] => 1\n)\n', '/APC_Student_Assistant_System/modules/edit_term.php'),
(13, '::1', 'root', '2016-12-04 03:26:22', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_term.php'),
(14, '::1', 'root', '2016-12-04 03:26:39', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_term.php'),
(15, '::1', 'root', '2016-12-04 03:26:39', 'Query Executed: UPDATE term SET school_year = ?, Term_num = ?, Term_start = ?, Term_end = ?, Term_hour = ? WHERE Term_id = ?\r\nArray\n(\n    [0] => sssssi\n    [1] => 2016\n    [2] => 2\n    [3] => 2016-09-04\n    [4] => 2016-12-16\n    [5] => 10:00:00\n    [6] => 1\n)\n', '/APC_Student_Assistant_System/modules/edit_term.php'),
(16, '::1', 'root', '2016-12-05 04:50:21', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(17, '::1', 'root', '2016-12-05 04:52:41', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_student.php'),
(18, '::1', 'root', '2016-12-05 04:52:41', 'Query Executed: INSERT INTO student(Student_id, Student_last_name, Student_first_name, Student_middle_name, Birth_date, Birth_place, Entry_level, Nationality, Gender, Address, Postal_code, Tel_num, Mobile_num, Email, Religion, Civil_status) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssiissss\n    [1] => 2011100560\n    [2] => Cruz\n    [3] => Lorenz Matthew\n    [4] => M\n    [5] => 1999-03-06\n    [6] => Mandaluyong\n    [7] => Transferee\n    [8] => Filipino\n    [9] => Male\n    [10] => 28 ML Quezon St., Bambang, Taguig City\n    [11] => 1637\n    [12] => 4235059\n    [13] => 09167924892\n    [14] => lmcruz@student.apc.edu.ph\n    [15] => Roman Catholic\n    [16] => Single\n)\n', '/APC_Student_Assistant_System/modules/add_student.php'),
(19, '::1', 'root', '2016-12-05 04:55:02', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_student.php'),
(20, '::1', 'root', '2016-12-05 04:55:02', 'Query Executed: UPDATE student SET Student_id = ?, Student_last_name = ?, Student_first_name = ?, Student_middle_name = ?, Birth_date = ?, Birth_place = ?, Entry_level = ?, Nationality = ?, Gender = ?, Address = ?, Postal_code = ?, Tel_num = ?, Mobile_num = ?, Email = ?, Religion = ?, Civil_status = ? WHERE Student_id = ?\r\nArray\n(\n    [0] => isssssssssiissssi\n    [1] => 2011100560\n    [2] => Cruz\n    [3] => Lorenz Matthew\n    [4] => M\n    [5] => 1999-03-05\n    [6] => Mandaluyong\n    [7] => Transferee\n    [8] => Filipino\n    [9] => Male\n    [10] => 28 ML Quezon St., Bambang, Taguig City\n    [11] => 1637\n    [12] => 4235059\n    [13] => 09167924892\n    [14] => lmcruz@student.apc.edu.ph\n    [15] => Roman Catholic\n    [16] => Single\n    [17] => 2011100560\n)\n', '/APC_Student_Assistant_System/modules/edit_student.php'),
(21, '::1', 'root', '2016-12-05 04:55:53', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(22, '::1', 'root', '2016-12-05 04:55:53', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Lorenz Matthew\n    [3] => M\n    [4] => Cruz\n    [5] => Male\n)\n', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(23, '::1', 'root', '2016-12-05 04:56:02', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(24, '::1', 'root', '2016-12-05 04:56:02', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Juan\n    [3] => L\n    [4] => Una\n    [5] => Male\n)\n', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(25, '::1', 'root', '2016-12-05 04:56:14', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(26, '::1', 'root', '2016-12-05 04:56:16', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(27, '::1', 'root', '2016-12-05 04:56:16', 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Student Assistant\n    [3] => a\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(28, '::1', 'root', '2016-12-05 04:56:24', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(29, '::1', 'root', '2016-12-05 04:56:24', 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Departmental Coordinator\n    [3] => a\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(30, '::1', 'root', '2016-12-05 04:56:45', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(31, '::1', 'root', '2016-12-05 04:56:45', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => lmcruz\n    [2] => $2y$12$WAlHuEu55ibDHbuyQ9XQZOHuYvENZmf58PG8McQetL3PERo1CHCK.\n    [3] => WAlHuEu55ibDHbuyQ9XQZQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 2\n    [7] => 3\n    [8] => 1\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(32, '::1', 'root', '2016-12-05 04:56:45', 'Query executed: INSERT `user_passport` SELECT ''lmcruz'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(33, '::1', 'root', '2016-12-05 04:57:01', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(34, '::1', 'root', '2016-12-05 04:57:02', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => juanluna\n    [2] => $2y$12$pWP79FOZRy/e4qNhcytxd.fYaIg9xKsE0GcHYZO67.mfjbq4T.AjG\n    [3] => pWP79FOZRy/e4qNhcytxdA\n    [4] => 12\n    [5] => blowfish\n    [6] => 3\n    [7] => 4\n    [8] => 1\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(35, '::1', 'root', '2016-12-05 04:57:02', 'Query executed: INSERT `user_passport` SELECT ''juanluna'', `link_id` FROM user_role_links WHERE role_id=''4''', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(36, '::1', 'root', '2016-12-05 04:57:05', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(37, '::1', 'lmcruz', '2016-12-05 04:57:11', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(38, '::1', 'lmcruz', '2016-12-05 04:57:26', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(39, '::1', 'juanluna', '2016-12-05 04:57:30', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(40, '::1', 'juanluna', '2016-12-05 04:57:35', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(41, '::1', 'root', '2016-12-05 04:57:41', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(42, '::1', 'root', '2016-12-05 04:58:16', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_employee.php'),
(43, '::1', 'root', '2016-12-05 04:58:16', 'Query Executed: UPDATE employee SET Emp_id = ?, Emp_last_name = ?, Emp_first_name = ?, Emp_middle_name = ?, Email = ?, Address = ?, Postal_code = ?, Tel_num = ?, Mobile_num = ?, Department_name = ?, Gender = ?, Civil_status = ?, Birth_date = ?, Birth_place = ?, Religion = ?, TIN_num = ? WHERE Emp_id = ?\r\nArray\n(\n    [0] => isssssiissssssssi\n    [1] => 2010100001\n    [2] => Una\n    [3] => Juan\n    [4] => L\n    [5] => jluna@jlu.com\n    [6] => 99 B Street, Ceedee Drive, Makati City\n    [7] => 1234\n    [8] => 1232424\n    [9] => 09272223304\n    [10] => Internship\n    [11] => Male\n    [12] => Married\n    [13] => 2000-09-01\n    [14] => Makati\n    [15] => Roman Catholic\n    [16] => 53535354545\n    [17] => 1\n)\n', '/APC_Student_Assistant_System/modules/edit_employee.php'),
(44, '::1', 'root', '2016-12-05 04:58:19', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(45, '::1', 'juanluna', '2016-12-05 04:58:24', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(46, '::1', 'juanluna', '2016-12-05 04:58:45', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(47, '::1', 'root', '2016-12-05 04:59:18', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(48, '::1', 'root', '2016-12-05 04:59:32', 'Pressed submit button', '/APC_Student_Assistant_System/modules/reporter_student.php'),
(49, '::1', 'root', '2016-12-05 05:02:05', 'Pressed submit button', '/APC_Student_Assistant_System/modules/reporter_employeebridgerecord.php'),
(50, '::1', 'root', '2016-12-05 05:02:44', 'Query Executed: DELETE FROM cobalt_reporter WHERE module_name = ? AND report_name = ?\r\nArray\n(\n    [0] => ss\n    [1] => EMPLOYEEBRIDGERECORD_REPORT_CUSTOM\n    [2] => q\n)\n', '/APC_Student_Assistant_System/modules/reporter_employeebridgerecord.php'),
(51, '::1', 'root', '2016-12-05 05:02:44', 'Query Executed: INSERT INTO cobalt_reporter(`module_name`,\n                            `report_name`,\n                            `username`,\n                            `show_field`,\n                            `operator`,\n                            `text_field`,\n                            `sum_field`,\n                            `count_field`,\n                            `group_field1`,\n                            `group_field2`,\n                            `group_field3`) VALUES(?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssss\n    [1] => EMPLOYEEBRIDGERECORD_REPORT_CUSTOM\n    [2] => q\n    [3] => root\n    [4] => a:2:{i:0;s:15:"Employee Emp ID";i:1;s:16:"Record Record ID";}\n    [5] => a:2:{i:0;s:0:"";i:1;s:0:"";}\n    [6] => a:2:{i:0;s:0:"";i:1;s:0:"";}\n    [7] => \n    [8] => \n    [9] => \n    [10] => \n    [11] => \n)\n', '/APC_Student_Assistant_System/modules/reporter_employeebridgerecord.php'),
(52, '::1', 'root', '2016-12-05 05:02:49', 'Pressed delete button', '/APC_Student_Assistant_System/modules/reporter_employeebridgerecord.php'),
(53, '::1', 'root', '2016-12-05 05:02:49', 'Query Executed: DELETE FROM cobalt_reporter WHERE module_name = ? AND report_name = ?\r\nArray\n(\n    [0] => ss\n    [1] => EMPLOYEEBRIDGERECORD_REPORT_CUSTOM\n    [2] => q\n)\n', '/APC_Student_Assistant_System/modules/reporter_employeebridgerecord.php'),
(54, '::1', 'root', '2016-12-05 05:08:39', 'Pressed submit button', '/APC_Student_Assistant_System/modules/reporter_student.php'),
(55, '::1', 'root', '2016-12-05 05:08:47', 'Failed file download:  (C:\\xampp\\htdocs/APC_Student_Assistant_System/tmp/rpt_csv_tmp/)', '/APC_Student_Assistant_System/download_csv_tmp_store.php'),
(56, '::1', 'root', '2016-12-05 05:10:18', 'Failed file download:  (C:\\xampp\\htdocs/APC_Student_Assistant_System/tmp/rpt_csv_tmp/)', '/APC_Student_Assistant_System/download_csv_tmp_store.php'),
(57, '::1', 'root', '2016-12-05 05:13:04', 'Pressed submit button', '/APC_Student_Assistant_System/modules/reporter_employee.php'),
(58, '::1', 'root', '2016-12-05 05:13:07', 'Failed file download:  (C:\\xampp\\htdocs/APC_Student_Assistant_System/tmp/rpt_csv_tmp/)', '/APC_Student_Assistant_System/download_csv_tmp_store.php'),
(59, '::1', 'root', '2016-12-05 13:15:28', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_employee.php'),
(60, '::1', 'root', '2016-12-05 13:15:28', 'Query Executed: INSERT INTO employee(Emp_id, Emp_last_name, Emp_first_name, Emp_middle_name, Email, Address, Postal_code, Tel_num, Mobile_num, Department_name, Gender, Civil_status, Birth_date, Birth_place, Religion, TIN_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssiissssssss\n    [1] => 2009100200\n    [2] => Dela Cruz\n    [3] => Juan Miguel\n    [4] => L\n    [5] => juandelacruz@jdc.com\n    [6] => 123 Test St., Debug, Baguio City\n    [7] => 5555\n    [8] => 6544565\n    [9] => 09271234501\n    [10] => Guidance Office\n    [11] => Male\n    [12] => Married\n    [13] => 1956-01-07\n    [14] => Mandaluyong\n    [15] => Roman Catholic\n    [16] => 66666666666\n)\n', '/APC_Student_Assistant_System/modules/add_employee.php'),
(61, '::1', 'root', '2016-12-05 13:16:20', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(62, '::1', 'root', '2016-12-05 13:16:41', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(63, '::1', 'root', '2016-12-05 13:16:41', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Juan Miguel\n    [3] => L\n    [4] => Dela Cruz\n    [5] => Male\n)\n', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(64, '::1', 'root', '2016-12-05 13:17:26', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(65, '::1', 'root', '2016-12-05 13:17:27', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => jmdelacruz\n    [2] => $2y$12$Udky9MiMkTsXHdcJwjSsOuCTHEWnWePzxBTZM5yuEQ2XavavpuGHW\n    [3] => Udky9MiMkTsXHdcJwjSsOw\n    [4] => 12\n    [5] => blowfish\n    [6] => 4\n    [7] => 4\n    [8] => 1\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(66, '::1', 'root', '2016-12-05 13:17:27', 'Query executed: INSERT `user_passport` SELECT ''jmdelacruz'', `link_id` FROM user_role_links WHERE role_id=''4''', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(67, '::1', 'root', '2016-12-05 13:17:29', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(68, '::1', 'jmdelacruz', '2016-12-05 13:17:34', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(69, '::1', 'jmdelacruz', '2016-12-05 13:17:53', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(70, '::1', 'root', '2016-12-05 13:19:57', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(71, '::1', 'root', '2016-12-05 13:20:22', 'Pressed submit button', '/APC_Student_Assistant_System/modules/reporter_employee.php'),
(72, '::1', 'root', '2016-12-05 13:20:35', 'Failed file download:  (C:\\xampp\\htdocs/APC_Student_Assistant_System/tmp/rpt_csv_tmp/)', '/APC_Student_Assistant_System/download_csv_tmp_store.php'),
(73, '::1', 'root', '2016-12-05 13:21:37', 'Pressed submit button', '/APC_Student_Assistant_System/modules/csv_employeebridgerecord.php'),
(74, '::1', 'root', '2016-12-05 13:21:37', 'Exported table data to CSV', '/APC_Student_Assistant_System/modules/csv_employeebridgerecord.php'),
(75, '::1', 'root', '2016-12-05 13:21:39', 'Failed file download:  (C:\\xampp\\htdocs/APC_Student_Assistant_System/tmp/)', '/APC_Student_Assistant_System/download_generic.php'),
(76, '::1', 'root', '2016-12-05 13:32:03', 'Pressed submit button', '/APC_Student_Assistant_System/modules/reporter_employee.php'),
(77, '::1', 'root', '2016-12-05 13:32:04', 'Successful file download: root_EMPLOYEE_REPORT_CUSTOM_2016-12-05_01-32pm.csv (C:\\xampp\\htdocs/APC_Student_Assistant_System/tmp/rpt_csv_tmp/745b75b7697aac063ca5d233ed2cd823c7b2bf1croot_EMPLOYEE_REPORT_CUSTOM_2016-12-05_01-32pm.csv)', '/APC_Student_Assistant_System/download_csv_tmp_store.php'),
(78, '::1', 'root', '2016-12-05 13:34:28', 'Pressed submit button', '/APC_Student_Assistant_System/modules/csv_employee.php'),
(79, '::1', 'root', '2016-12-05 13:34:28', 'Exported table data to CSV', '/APC_Student_Assistant_System/modules/csv_employee.php'),
(80, '::1', 'root', '2016-12-05 13:34:30', 'Successful file download: root_employee_2016-12-05.csv (C:\\xampp\\htdocs/APC_Student_Assistant_System/tmp/abe9afad8ab08c25746c2c02437749ce3c1d2afaroot_employee_2016-12-05.csv)', '/APC_Student_Assistant_System/download_generic.php'),
(81, '::1', 'root', '2016-12-05 13:35:28', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/security_monitor.php'),
(82, '::1', 'root', '2016-12-05 13:35:53', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/security_monitor.php'),
(83, '::1', 'root', '2016-12-05 13:38:24', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(84, '::1', 'root', '2016-12-05 13:38:24', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(85, '::1', 'root', '2016-12-05 13:38:24', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(86, '::1', 'root', '2016-12-05 13:38:24', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(87, '::1', 'root', '2016-12-05 13:38:27', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(88, '::1', 'root', '2016-12-05 13:38:30', 'Query executed: DELETE FROM user_passport WHERE username IN (''lmcruz'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(89, '::1', 'root', '2016-12-05 13:38:30', 'Query executed: INSERT `user_passport` SELECT ''lmcruz'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(90, '::1', 'root', '2016-12-05 13:38:32', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(91, '::1', 'root', '2016-12-05 13:39:07', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(92, '::1', 'root', '2016-12-05 13:39:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(93, '::1', 'root', '2016-12-05 13:39:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(94, '::1', 'root', '2016-12-05 13:39:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(95, '::1', 'root', '2016-12-05 13:39:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(96, '::1', 'root', '2016-12-05 13:39:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(97, '::1', 'root', '2016-12-05 13:39:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(98, '::1', 'root', '2016-12-05 13:39:09', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(99, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: DELETE FROM user_role_links WHERE role_id=''4''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(100, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(101, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(102, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(103, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''39'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(104, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(105, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(106, '::1', 'root', '2016-12-05 13:39:35', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(107, '::1', 'root', '2016-12-05 13:39:37', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(108, '::1', 'root', '2016-12-05 13:39:40', 'Query executed: DELETE FROM user_passport WHERE username IN (''jmdelacruz'',''juanluna'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(109, '::1', 'root', '2016-12-05 13:39:40', 'Query executed: INSERT `user_passport` SELECT ''jmdelacruz'', `link_id` FROM user_role_links WHERE role_id=''4''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(110, '::1', 'root', '2016-12-05 13:39:40', 'Query executed: INSERT `user_passport` SELECT ''juanluna'', `link_id` FROM user_role_links WHERE role_id=''4''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(111, '::1', 'root', '2016-12-05 13:39:43', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(112, '::1', 'juanluna', '2016-12-05 13:39:48', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(113, '::1', 'juanluna', '2016-12-05 13:39:56', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_employee.php'),
(114, '::1', 'juanluna', '2016-12-05 13:40:16', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_employee.php'),
(115, '::1', 'juanluna', '2016-12-05 13:48:20', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(116, '::1', 'juanluna', '2016-12-05 13:53:47', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(117, '::1', 'juanluna', '2016-12-05 13:55:10', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(118, '::1', 'juanluna', '2016-12-05 13:55:21', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(119, '::1', 'root', '2016-12-05 13:55:28', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(120, '::1', 'root', '2016-12-05 13:57:42', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(121, '::1', 'juanluna', '2016-12-05 13:57:48', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(122, '::1', 'juanluna', '2016-12-05 13:58:49', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(123, '::1', 'juanluna', '2016-12-05 13:59:00', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(124, '::1', 'juanluna', '2016-12-05 13:59:06', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(125, '::1', 'juanluna', '2016-12-05 13:59:08', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_reserve.php'),
(126, '::1', 'juanluna', '2016-12-05 13:59:21', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(127, '::1', 'juanluna', '2016-12-05 14:01:33', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(128, '::1', 'juanluna', '2016-12-05 14:01:43', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(129, '::1', 'juanluna', '2016-12-05 14:01:43', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(130, '::1', 'juanluna', '2016-12-05 14:01:47', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(131, '::1', 'juanluna', '2016-12-05 14:02:56', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(132, '::1', 'juanluna', '2016-12-05 14:08:02', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(133, '::1', 'juanluna', '2016-12-05 14:08:04', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_reserve.php'),
(134, '::1', 'juanluna', '2016-12-05 14:09:50', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(135, '::1', 'juanluna', '2016-12-05 14:10:53', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(136, '::1', 'juanluna', '2016-12-05 14:11:35', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(137, '::1', 'juanluna', '2016-12-05 14:12:53', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(138, '::1', 'juanluna', '2016-12-05 14:12:53', 'Query Executed: INSERT INTO reserve(Reserve_id, Reserve_date, Reserve_text, Reserve_qty, Department_name, Status, Employee_Employee_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ississi\n    [1] => \n    [2] => 2016-12-10\n    [3] => need 5\n    [4] => 5\n    [5] => OSA\n    [6] => Pending\n    [7] => 2010100001\n)\n', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(139, '::1', 'juanluna', '2016-12-05 14:13:35', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(140, '::1', 'juanluna', '2016-12-05 14:13:35', 'Query Executed: INSERT INTO reserve(Reserve_id, Reserve_date, Reserve_text, Reserve_qty, Department_name, Status, Employee_Employee_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ississi\n    [1] => \n    [2] => 2044-09-03\n    [3] => asd\n    [4] => 7\n    [5] => Student Affairs Office\n    [6] => Pending\n    [7] => 2010100001\n)\n', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(141, '::1', 'juanluna', '2016-12-05 14:13:46', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(142, '::1', 'jmdelacruz', '2016-12-05 14:13:51', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(143, '::1', 'jmdelacruz', '2016-12-05 14:14:50', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(144, '::1', 'jmdelacruz', '2016-12-05 14:15:03', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(145, '::1', 'jmdelacruz', '2016-12-05 14:15:03', 'Query Executed: INSERT INTO reserve(Reserve_id, Reserve_date, Reserve_text, Reserve_qty, Department_name, Status, Employee_Employee_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => ississi\n    [1] => \n    [2] => 2016-12-15\n    [3] => need 10\n    [4] => 10\n    [5] => Office Registrar\n    [6] => Pending\n    [7] => 2009100200\n)\n', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(146, '::1', 'jmdelacruz', '2016-12-05 14:15:07', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(147, '::1', 'juanluna', '2016-12-05 14:15:12', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(148, '::1', 'juanluna', '2016-12-05 14:15:49', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(149, '::1', 'juanluna', '2016-12-05 14:15:56', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(150, '::1', 'juanluna', '2016-12-05 14:15:59', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(151, '::1', 'juanluna', '2016-12-05 14:17:49', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_reserve.php'),
(152, '::1', 'juanluna', '2016-12-05 14:19:07', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_record.php'),
(153, '::1', 'juanluna', '2016-12-05 14:19:15', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(154, '::1', 'root', '2016-12-05 14:19:20', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(155, '::1', 'root', '2016-12-05 14:19:31', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(156, '::1', 'root', '2016-12-05 14:22:14', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/reporter_employee.php'),
(157, '::1', 'root', '2016-12-05 14:25:28', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(158, '::1', 'root', '2016-12-05 14:25:44', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_record.php'),
(159, '::1', 'root', '2016-12-05 15:36:10', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/listview_user_role.php'),
(160, '::1', 'root', '2016-12-05 15:38:08', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_student.php'),
(161, '::1', 'root', '2016-12-05 15:38:08', 'Query Executed: INSERT INTO student(Student_id, Student_last_name, Student_first_name, Student_middle_name, Birth_date, Birth_place, Entry_level, Nationality, Gender, Address, Postal_code, Tel_num, Mobile_num, Email, Religion, Civil_status) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssiissss\n    [1] => 2013100100\n    [2] => Romero\n    [3] => Jun Kimuel\n    [4] => C\n    [5] => 1982-06-13\n    [6] => Taguig City\n    [7] => Continuing\n    [8] => Filipino\n    [9] => Male\n    [10] => 56 Mockingbird Lane, Bluejay, Taguig City\n    [11] => 5524\n    [12] => 1234567\n    [13] => 09123456789\n    [14] => ucromero@student.apc.edu.ph\n    [15] => Roman Catholic\n    [16] => Single\n)\n', '/APC_Student_Assistant_System/modules/add_student.php'),
(162, '::1', 'root', '2016-12-05 15:40:26', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_scholarship.php'),
(163, '::1', 'root', '2016-12-05 15:40:30', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_scholarship.php'),
(164, '::1', 'root', '2016-12-05 15:40:30', 'Query Executed: INSERT INTO scholarship(Scholarship_id, Scholarship_code, Scholarship_description, Scholarship_group, Discount, Waive_fee, Scholarship_apply, Required_GPA, SA_hours, Program_apply, Student_Student_id) VALUES(?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssi\n    [1] => \n    [2] => A\n    [3] => SA\n    [4] => SA\n    [5] => 50\n    [6] => 0\n    [7] => yes\n    [8] => 2.0\n    [9] => 10\n    [10] => SA\n    [11] => 2011100560\n)\n', '/APC_Student_Assistant_System/modules/add_scholarship.php'),
(165, '::1', 'root', '2016-12-05 15:40:38', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_scholarship.php'),
(166, '::1', 'root', '2016-12-05 15:40:42', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_scholarship.php'),
(167, '::1', 'root', '2016-12-05 15:41:05', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_scholarship.php'),
(168, '::1', 'root', '2016-12-05 15:41:05', 'Query Executed: INSERT INTO scholarship(Scholarship_id, Scholarship_code, Scholarship_description, Scholarship_group, Discount, Waive_fee, Scholarship_apply, Required_GPA, SA_hours, Program_apply, Student_Student_id) VALUES(?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssi\n    [1] => \n    [2] => A\n    [3] => SA\n    [4] => SA\n    [5] => 50\n    [6] => 0\n    [7] => yes\n    [8] => 2.0\n    [9] => 10\n    [10] => SA\n    [11] => 2013100100\n)\n', '/APC_Student_Assistant_System/modules/add_scholarship.php'),
(169, '::1', 'root', '2016-12-05 15:44:07', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_scholarship.php'),
(170, '::1', 'root', '2016-12-05 15:46:22', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_scholarship.php'),
(171, '::1', 'root', '2016-12-05 15:46:46', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_scholarship.php'),
(172, '::1', 'root', '2016-12-05 15:46:52', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_studentbridgeterm.php'),
(173, '::1', 'root', '2016-12-05 15:47:24', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(174, '::1', 'root', '2016-12-05 15:47:26', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(175, '::1', 'root', '2016-12-05 15:47:26', 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Discipline Office\n    [3] => a\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user_role.php'),
(176, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: DELETE FROM user_role_links WHERE role_id=''5''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(177, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''37'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(178, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''41'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(179, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''45'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(180, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(181, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''53'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(182, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''57'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(183, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(184, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''65'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(185, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''16'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(186, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''28'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(187, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''69'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(188, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''40'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(189, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''44'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(190, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''48'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(191, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(192, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''56'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(193, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''60'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(194, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(195, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''68'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(196, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''72'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(197, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''38'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(198, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''42'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(199, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''46'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(200, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(201, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''54'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(202, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''58'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(203, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''62'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(204, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(205, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''70'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(206, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''39'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(207, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''43'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(208, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(209, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(210, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''55'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(211, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(212, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(213, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''67'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(214, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''71'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(215, '::1', 'root', '2016-12-05 15:50:03', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''10'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(216, '::1', 'root', '2016-12-05 15:50:09', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(217, '::1', 'root', '2016-12-05 15:50:22', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/detailview_user_role.php'),
(218, '::1', 'root', '2016-12-05 15:50:42', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/edit_user_role.php'),
(219, '::1', 'root', '2016-12-05 15:50:42', 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Discipline Office\n    [2] => Has full access over SAS System\n    [3] => 5\n)\n', '/APC_Student_Assistant_System/sysadmin/edit_user_role.php'),
(220, '::1', 'root', '2016-12-05 16:11:09', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_student.php'),
(221, '::1', 'root', '2016-12-05 16:11:15', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_employee.php'),
(222, '::1', 'root', '2016-12-05 16:11:19', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_employee.php'),
(223, '::1', 'root', '2016-12-05 16:14:08', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(224, '::1', 'root', '2016-12-05 16:18:03', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_record.php'),
(225, '::1', 'root', '2016-12-05 16:27:06', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(226, '::1', 'root', '2016-12-05 16:27:12', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(227, '::1', 'root', '2016-12-05 16:27:12', 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => SA Timelog\n    [3] => modules/student_timelog.php\n    [4] => Student Timelog\n    [5] => This is where student times in and out of their duties\n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => 0\n    [10] => \n)\n', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(228, '::1', 'root', '2016-12-05 16:27:29', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(229, '::1', 'root', '2016-12-05 16:27:29', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => SA Timelog\n    [2] => modules/student_timelog.php\n    [3] => Student Timelog\n    [4] => This is where student times in and out of their duties\n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.jpg\n    [9] => 0\n    [10] => 73\n)\n', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(230, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(231, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(232, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''37'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(233, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(234, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(235, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''45'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(236, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(237, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''53'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(238, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''57'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(239, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(240, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''65'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(241, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(242, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(243, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''69'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(244, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(245, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(246, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(247, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(248, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(249, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(250, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''40'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(251, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(252, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(253, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''48'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(254, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(255, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''56'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(256, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''60'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(257, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(258, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''68'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(259, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(260, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(261, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''72'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(262, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(263, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(264, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(265, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(266, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(267, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''38'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(268, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(269, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(270, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''46'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(271, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(272, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''54'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(273, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''58'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(274, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''62'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(275, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(276, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(277, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(278, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''70'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(279, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(280, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(281, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(282, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(283, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''39'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(284, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(285, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(286, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(287, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(288, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(289, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(290, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''55'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(291, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(292, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(293, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(294, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(295, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(296, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''67'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(297, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(298, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(299, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''71'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(300, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(301, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(302, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(303, '::1', 'root', '2016-12-05 16:27:54', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(304, '::1', 'root', '2016-12-05 16:27:58', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(305, '::1', 'root', '2016-12-05 16:28:01', 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(306, '::1', 'root', '2016-12-05 16:28:01', 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(307, '::1', 'root', '2016-12-05 16:28:03', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(308, '::1', 'root', '2016-12-05 16:28:31', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(309, '::1', 'root', '2016-12-05 16:28:31', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => SA Timelog\n    [2] => modules/student_timelog.php\n    [3] => Student Timelog\n    [4] => This is where student times in and out of their duties\n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 73\n)\n', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(310, '::1', 'root', '2016-12-05 16:28:46', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(311, '::1', 'root', '2016-12-05 16:28:52', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(312, '::1', 'root', '2016-12-05 16:31:21', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(313, '::1', 'root', '2016-12-05 16:31:26', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(314, '::1', 'root', '2016-12-05 16:31:46', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(315, '::1', 'root', '2016-12-05 16:31:46', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(316, '::1', 'root', '2016-12-05 16:31:46', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(317, '::1', 'root', '2016-12-05 16:31:46', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(318, '::1', 'root', '2016-12-05 16:31:46', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(319, '::1', 'root', '2016-12-05 16:31:52', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(320, '::1', 'root', '2016-12-05 16:31:57', 'Query executed: DELETE FROM user_passport WHERE username IN (''lmcruz'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(321, '::1', 'root', '2016-12-05 16:31:57', 'Query executed: INSERT `user_passport` SELECT ''lmcruz'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(322, '::1', 'root', '2016-12-05 16:31:59', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(323, '::1', 'root', '2016-12-05 16:32:00', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(324, '::1', 'lmcruz', '2016-12-05 16:32:09', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(325, '::1', 'lmcruz', '2016-12-05 16:38:51', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(326, '::1', 'root', '2016-12-05 16:39:24', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(327, '::1', 'root', '2016-12-05 16:40:22', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(328, '::1', 'root', '2016-12-05 16:40:22', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Jun Kimuel\n    [3] => C\n    [4] => Romero\n    [5] => Male\n)\n', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(329, '::1', 'root', '2016-12-05 16:40:48', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(330, '::1', 'root', '2016-12-05 16:40:49', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => ucromero\n    [2] => $2y$12$6NT5eUuBYfBmNHtMSYRIgOAfVKUK9Qr8edPYy8yIdEU.BkPRSRK62\n    [3] => 6NT5eUuBYfBmNHtMSYRIgQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 5\n    [7] => 3\n    [8] => 1\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(331, '::1', 'root', '2016-12-05 16:40:49', 'Query executed: INSERT `user_passport` SELECT ''ucromero'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(332, '::1', 'root', '2016-12-05 16:40:52', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(333, '::1', 'ucromero', '2016-12-05 16:41:01', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(334, '::1', 'ucromero', '2016-12-05 16:42:01', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_student.php'),
(335, '::1', 'ucromero', '2016-12-05 16:52:48', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(336, '::1', 'root', '2016-12-05 16:52:51', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(337, '::1', 'root', '2016-12-05 16:53:07', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(338, '::1', 'root', '2016-12-05 16:53:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(339, '::1', 'root', '2016-12-05 16:53:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(340, '::1', 'root', '2016-12-05 16:53:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(341, '::1', 'root', '2016-12-05 16:53:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(342, '::1', 'root', '2016-12-05 16:53:07', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(343, '::1', 'root', '2016-12-05 16:53:11', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(344, '::1', 'root', '2016-12-05 16:53:15', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(345, '::1', 'root', '2016-12-05 16:53:18', 'Query executed: DELETE FROM user_passport WHERE username IN (''lmcruz'',''ucromero'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(346, '::1', 'root', '2016-12-05 16:53:18', 'Query executed: INSERT `user_passport` SELECT ''lmcruz'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(347, '::1', 'root', '2016-12-05 16:53:18', 'Query executed: INSERT `user_passport` SELECT ''ucromero'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(348, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(349, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(350, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(351, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(352, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(353, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(354, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(355, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(356, '::1', 'root', '2016-12-05 16:54:00', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(357, '::1', 'root', '2016-12-05 16:54:19', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(358, '::1', 'root', '2016-12-05 16:56:02', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(359, '::1', 'lmcruz', '2016-12-05 16:56:07', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(360, '::1', 'lmcruz', '2016-12-05 16:57:00', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(361, '::1', 'root', '2016-12-05 16:57:09', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(362, '::1', 'root', '2016-12-05 16:57:16', 'Query executed: DELETE FROM user_passport WHERE username IN (''lmcruz'',''ucromero'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(363, '::1', 'root', '2016-12-05 16:57:16', 'Query executed: INSERT `user_passport` SELECT ''lmcruz'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(364, '::1', 'root', '2016-12-05 16:57:16', 'Query executed: INSERT `user_passport` SELECT ''ucromero'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(365, '::1', 'root', '2016-12-05 16:57:19', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(366, '::1', 'lmcruz', '2016-12-05 16:57:24', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(367, '::1', 'lmcruz', '2016-12-05 16:57:55', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(368, '::1', 'lmcruz', '2016-12-05 16:58:15', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_reserve.php'),
(369, '::1', 'lmcruz', '2016-12-05 16:58:38', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_reserve.php'),
(370, '::1', 'lmcruz', '2016-12-05 16:59:33', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(371, '::1', 'lmcruz', '2016-12-05 17:00:02', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(372, '::1', 'lmcruz', '2016-12-05 17:00:04', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_studentbridgereserve.php'),
(373, '::1', 'lmcruz', '2016-12-05 17:02:27', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_reserve.php'),
(374, '::1', 'lmcruz', '2016-12-05 17:02:46', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(375, '::1', 'lmcruz', '2016-12-05 17:05:20', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(376, '::1', 'lmcruz', '2016-12-05 17:06:56', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(377, '::1', 'root', '2016-12-05 17:07:01', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(378, '::1', 'root', '2016-12-05 17:07:18', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(379, '::1', 'root', '2016-12-05 17:09:12', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(380, '::1', 'root', '2016-12-05 17:09:12', 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Announcement\n    [3] => modules/announcement.php\n    [4] => Announcement Page\n    [5] => This is where students may find announcements and reserve their SA duties\n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(381, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(382, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(383, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''37'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(384, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(385, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(386, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''45'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(387, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(388, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''53'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(389, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''57'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(390, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(391, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''65'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(392, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(393, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(394, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''69'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(395, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(396, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(397, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(398, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(399, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''74'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(400, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(401, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(402, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''40'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(403, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(404, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(405, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''48'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(406, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(407, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''56'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(408, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''60'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(409, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(410, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''68'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(411, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(412, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(413, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''72'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(414, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(415, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(416, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(417, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(418, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(419, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''38'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(420, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(421, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(422, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''46'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(423, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(424, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''54'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(425, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''58'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(426, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''62'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(427, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(428, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(429, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(430, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''70'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(431, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(432, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(433, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(434, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(435, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''39'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(436, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(437, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(438, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(439, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(440, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(441, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(442, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''55'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(443, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(444, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(445, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(446, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(447, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(448, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''67'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(449, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(450, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(451, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''71'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(452, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(453, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(454, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(455, '::1', 'root', '2016-12-05 17:09:27', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(456, '::1', 'root', '2016-12-05 17:09:44', 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(457, '::1', 'root', '2016-12-05 17:09:44', 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(458, '::1', 'root', '2016-12-05 17:09:45', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(459, '::1', 'root', '2016-12-05 17:09:48', 'Query executed: SELECT * from reserve', '/APC_Student_Assistant_System/modules/announcement.php'),
(460, '::1', 'root', '2016-12-05 17:10:22', 'Query executed: SELECT * from reserve', '/APC_Student_Assistant_System/modules/announcement.php'),
(461, '::1', 'root', '2016-12-05 18:20:18', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_reserve.php'),
(462, '::1', 'root', '2016-12-05 18:20:42', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(463, '::1', 'root', '2016-12-05 18:26:27', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_reserve.php'),
(464, '::1', 'root', '2016-12-05 19:09:49', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(465, '::1', 'ucromero', '2016-12-05 19:10:01', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(466, '::1', 'ucromero', '2016-12-05 19:11:32', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(467, '::1', 'root', '2016-12-05 19:11:40', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(468, '::1', 'root', '2016-12-05 20:00:22', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(469, '::1', 'root', '2016-12-05 20:00:22', 'Query Executed: UPDATE reserve SET Reserve_date = ?, Reserve_text = ?, Reserve_qty = ?, Department_name = ?, Status = ?, Employee_Employee_id = ? WHERE Reserve_id = ?\r\nArray\n(\n    [0] => ssissii\n    [1] => 2016-12-15\n    [2] => need 10 SAs for enrolment proceedings\n    [3] => 10\n    [4] => Office Registrar\n    [5] => Pending\n    [6] => 2009100200\n    [7] => 3\n)\n', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(470, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(471, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(472, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''74'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(473, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(474, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(475, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(476, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(477, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(478, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(479, '::1', 'root', '2016-12-05 21:03:49', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(480, '::1', 'root', '2016-12-05 21:03:52', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(481, '::1', 'root', '2016-12-05 21:04:29', 'Query executed: DELETE FROM user_passport WHERE username IN (''lmcruz'',''ucromero'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(482, '::1', 'root', '2016-12-05 21:04:29', 'Query executed: INSERT `user_passport` SELECT ''lmcruz'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(483, '::1', 'root', '2016-12-05 21:04:29', 'Query executed: INSERT `user_passport` SELECT ''ucromero'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(484, '::1', 'root', '2016-12-05 21:04:30', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(485, '::1', 'root', '2016-12-05 21:04:32', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(486, '::1', 'ucromero', '2016-12-05 21:04:38', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(487, '::1', 'ucromero', '2016-12-05 21:05:14', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_studentbridgereserve.php'),
(488, '::1', 'ucromero', '2016-12-05 21:05:20', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(489, '::1', 'root', '2016-12-05 21:05:25', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(490, '::1', 'root', '2016-12-05 21:29:23', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(491, '::1', 'root', '2016-12-05 21:29:34', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(492, '::1', 'juanluna', '2016-12-05 21:29:38', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(493, '::1', 'juanluna', '2016-12-05 21:30:05', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(494, '::1', 'jmdelacruz', '2016-12-05 21:30:17', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(495, '::1', 'jmdelacruz', '2016-12-05 21:31:10', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(496, '::1', 'jmdelacruz', '2016-12-05 21:31:13', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(497, '::1', 'root', '2016-12-05 21:31:18', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(498, '::1', 'root', '2016-12-05 21:32:06', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_reserve.php'),
(499, '::1', 'root', '2016-12-05 21:32:41', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_reserve.php'),
(500, '::1', 'root', '2016-12-05 21:32:52', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/security_monitor.php'),
(501, '::1', 'root', '2016-12-05 21:34:35', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(502, '::1', 'juanluna', '2016-12-05 21:34:59', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(503, '::1', 'juanluna', '2016-12-05 21:35:53', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(504, '::1', 'root', '2016-12-05 21:36:13', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(505, '::1', 'root', '2016-12-05 22:57:22', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_employeebridgerecord.php'),
(506, '::1', 'root', '2016-12-05 22:57:49', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_employeebridgerecord.php'),
(507, '::1', 'root', '2016-12-05 23:01:16', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(508, '::1', 'root', '2016-12-05 23:01:23', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(509, '::1', 'root', '2016-12-05 23:24:56', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(510, '::1', 'juanluna', '2016-12-05 23:25:00', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(511, '::1', 'juanluna', '2016-12-05 23:25:22', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(512, '::1', 'root', '2016-12-05 23:25:28', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(513, '::1', 'root', '2016-12-06 00:10:09', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(514, '::1', 'root', '2016-12-06 00:10:09', 'Query Executed: UPDATE reserve SET Reserve_date = ?, Reserve_text = ?, Reserve_qty = ?, Department_name = ?, Status = ?, Employee_Employee_id = ? WHERE Reserve_id = ?\r\nArray\n(\n    [0] => ssissii\n    [1] => 2044-09-03\n    [2] => asd\n    [3] => 7\n    [4] => Student Affairs Office\n    [5] => Verified\n    [6] => 2010100001\n    [7] => 2\n)\n', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(515, '::1', 'root', '2016-12-06 00:10:55', 'Pressed submit button', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(516, '::1', 'root', '2016-12-06 00:10:55', 'Query Executed: UPDATE reserve SET Reserve_date = ?, Reserve_text = ?, Reserve_qty = ?, Department_name = ?, Status = ?, Employee_Employee_id = ? WHERE Reserve_id = ?\r\nArray\n(\n    [0] => ssissii\n    [1] => 2044-09-03\n    [2] => asd\n    [3] => 7\n    [4] => Student Affairs Office\n    [5] => Pending\n    [6] => 2010100001\n    [7] => 2\n)\n', '/APC_Student_Assistant_System/modules/edit_reserve.php'),
(517, '::1', 'root', '2016-12-06 06:32:16', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(518, '::1', 'root', '2016-12-06 06:33:19', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(519, '::1', 'root', '2016-12-06 06:43:20', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(520, '::1', 'root', '2016-12-06 06:43:33', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(521, '::1', 'root', '2016-12-06 06:47:02', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(522, '::1', 'root', '2016-12-06 06:50:43', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(523, '::1', 'root', '2016-12-06 06:53:06', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(524, '::1', 'root', '2016-12-06 06:59:39', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(525, '::1', 'juanluna', '2016-12-06 06:59:47', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(526, '::1', 'juanluna', '2016-12-06 06:59:54', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(527, '::1', 'ucromero', '2016-12-06 06:59:57', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(528, '::1', 'ucromero', '2016-12-06 07:11:50', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(529, '::1', 'ucromero', '2016-12-06 07:12:45', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_studentbridgereserve.php'),
(530, '::1', 'ucromero', '2016-12-06 07:26:18', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(531, '::1', 'ucromero', '2016-12-06 07:26:18', 'Query Executed: INSERT INTO studentbridgereserve(Reserve_Reserve_id, Student_Student_id) VALUES(?,?)\r\nArray\n(\n    [0] => ii\n    [1] => 1\n    [2] => 2013100100\n)\n', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(532, '::1', 'ucromero', '2016-12-06 16:08:57', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(533, '::1', 'root', '2016-12-06 16:09:01', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(534, '::1', 'root', '2016-12-06 16:11:16', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(535, '::1', 'root', '2016-12-06 18:22:58', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(536, '::1', 'root', '2016-12-06 18:23:07', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_studentbridgereserve.php'),
(537, '::1', 'root', '2016-12-06 18:24:08', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(538, '::1', 'lmcruz', '2016-12-06 18:24:14', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(539, '::1', 'lmcruz', '2016-12-06 18:24:39', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(540, '::1', 'lmcruz', '2016-12-06 19:20:14', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(541, '::1', 'root', '2016-12-06 19:20:22', 'Logged in', '/APC_Student_Assistant_System/login.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(542, '::1', 'root', '2016-12-06 19:21:11', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_record.php'),
(543, '::1', 'root', '2016-12-06 19:37:04', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(544, '::1', 'root', '2016-12-06 19:37:04', 'Query Executed: INSERT INTO user_links(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, status, icon, priority) VALUES(?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => issssisssi\n    [1] => \n    [2] => Assign Term\n    [3] => assign_term.php\n    [4] => Assign Term\n    [5] => This page would help the DO auto assign a term to all students\n    [6] => 1\n    [7] => Yes\n    [8] => On\n    [9] => form3.png\n    [10] => 0\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user_links.php'),
(545, '::1', 'root', '2016-12-06 19:39:56', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(546, '::1', 'root', '2016-12-06 19:39:56', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Mackie\n    [3] => G\n    [4] => Dizon\n    [5] => Male\n)\n', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(547, '::1', 'root', '2016-12-06 19:40:14', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(548, '::1', 'root', '2016-12-06 19:40:14', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => admin\n    [2] => $2y$12$h.MX4iItzc0FfENSU0Il0.NEYr/MOzC5RycFjm6VGrSKM/aatF7I.\n    [3] => h+MX4iItzc0FfENSU0Il0A\n    [4] => 12\n    [5] => blowfish\n    [6] => 6\n    [7] => 5\n    [8] => 1\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(549, '::1', 'root', '2016-12-06 19:40:14', 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''5''', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(550, '::1', 'root', '2016-12-06 19:40:38', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/edit_person.php'),
(551, '::1', 'root', '2016-12-06 19:40:38', 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Mark Ernest\n    [2] => F\n    [3] => Dizon\n    [4] => Male\n    [5] => 6\n)\n', '/APC_Student_Assistant_System/sysadmin/edit_person.php'),
(552, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: DELETE FROM user_role_links WHERE role_id=''5''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(553, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''37'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(554, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''41'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(555, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''45'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(556, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(557, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''53'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(558, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''57'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(559, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(560, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''65'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(561, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''16'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(562, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''28'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(563, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''69'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(564, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''74'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(565, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''75'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(566, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''40'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(567, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''44'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(568, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''48'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(569, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(570, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''56'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(571, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''60'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(572, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(573, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''68'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(574, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''72'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(575, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''38'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(576, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''42'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(577, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''46'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(578, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(579, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''54'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(580, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''58'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(581, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''62'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(582, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(583, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''70'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(584, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''39'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(585, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''43'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(586, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(587, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(588, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''55'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(589, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(590, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(591, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(592, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''67'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(593, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''71'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(594, '::1', 'root', '2016-12-06 19:41:37', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''10'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(595, '::1', 'root', '2016-12-06 19:41:41', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(596, '::1', 'admin', '2016-12-06 19:41:43', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(597, '::1', 'admin', '2016-12-06 19:41:56', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(598, '::1', 'root', '2016-12-06 19:41:59', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(599, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: DELETE FROM user_role_links WHERE role_id=''5''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(600, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''37'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(601, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''41'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(602, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''45'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(603, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(604, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''53'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(605, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''57'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(606, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(607, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''65'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(608, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''16'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(609, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''28'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(610, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''69'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(611, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''74'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(612, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''75'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(613, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''40'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(614, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''44'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(615, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''48'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(616, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(617, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''56'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(618, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''60'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(619, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(620, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''68'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(621, '::1', 'root', '2016-12-06 19:42:13', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''72'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(622, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''38'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(623, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''42'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(624, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''46'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(625, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(626, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''54'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(627, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''58'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(628, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''62'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(629, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(630, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''70'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(631, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''39'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(632, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''43'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(633, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(634, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(635, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''55'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(636, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(637, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(638, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(639, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''67'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(640, '::1', 'root', '2016-12-06 19:42:14', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''5'', ''71'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(641, '::1', 'root', '2016-12-06 19:42:17', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(642, '::1', 'root', '2016-12-06 19:42:20', 'Query executed: DELETE FROM user_passport WHERE username IN (''admin'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(643, '::1', 'root', '2016-12-06 19:42:20', 'Query executed: INSERT `user_passport` SELECT ''admin'', `link_id` FROM user_role_links WHERE role_id=''5''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(644, '::1', 'root', '2016-12-06 19:42:23', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(645, '::1', 'admin', '2016-12-06 19:42:24', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(646, '::1', 'admin', '2016-12-06 19:43:49', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(647, '::1', 'root', '2016-12-06 19:43:52', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(648, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: DELETE FROM user_role_links WHERE role_id=''1''', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(649, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''33'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(650, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''37'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(651, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''41'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(652, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''4'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(653, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''45'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(654, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''49'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(655, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''53'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(656, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''57'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(657, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''61'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(658, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''65'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(659, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''16'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(660, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''28'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(661, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''69'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(662, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''8'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(663, '::1', 'root', '2016-12-06 19:44:09', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''20'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(664, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''24'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(665, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''12'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(666, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''74'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(667, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''75'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(668, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''35'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(669, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''36'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(670, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''40'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(671, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''44'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(672, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''7'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(673, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''48'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(674, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''52'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(675, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''56'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(676, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''60'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(677, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''64'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(678, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''68'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(679, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''19'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(680, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''31'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(681, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''72'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(682, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''11'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(683, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''23'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(684, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''27'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(685, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''15'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(686, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''34'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(687, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''38'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(688, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''42'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(689, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''5'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(690, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''46'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(691, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''50'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(692, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''54'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(693, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''58'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(694, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''62'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(695, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''66'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(696, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''17'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(697, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''29'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(698, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''70'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(699, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''9'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(700, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''21'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(701, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''25'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(702, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''13'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(703, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''39'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(704, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''43'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(705, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''1'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(706, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''6'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(707, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''47'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(708, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''51'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(709, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''32'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(710, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''55'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(711, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''3'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(712, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''2'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(713, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''59'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(714, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''73'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(715, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''63'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(716, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''67'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(717, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''18'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(718, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''30'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(719, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''71'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(720, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''10'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(721, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''22'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(722, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''26'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(723, '::1', 'root', '2016-12-06 19:44:10', 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''1'', ''14'')', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(724, '::1', 'root', '2016-12-06 19:44:13', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions.php'),
(725, '::1', 'root', '2016-12-06 19:44:16', 'Query executed: DELETE FROM user_passport WHERE username IN (''root'')', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(726, '::1', 'root', '2016-12-06 19:44:16', 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(727, '::1', 'root', '2016-12-06 19:44:17', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/role_permissions_cascade.php'),
(728, '::1', 'root', '2016-12-06 19:44:43', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(729, '::1', 'root', '2016-12-06 19:44:43', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Assign Term\n    [2] => modules/assign_term.php\n    [3] => Assign Term\n    [4] => This page would help the DO auto assign a term to all students\n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(730, '::1', 'root', '2016-12-06 19:44:46', 'Pressed cancel button', '/APC_Student_Assistant_System/sysadmin/listview_user_links.php'),
(731, '::1', 'root', '2016-12-06 19:57:44', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_term.php'),
(732, '::1', 'root', '2016-12-06 21:03:06', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(733, '::1', 'root', '2016-12-06 21:51:08', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(734, '::1', 'root', '2016-12-06 21:51:11', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(735, '::1', 'lmcruz', '2016-12-06 21:51:16', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(736, '::1', 'lmcruz', '2016-12-06 21:51:27', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(737, '::1', 'lmcruz', '2016-12-06 21:59:24', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(738, '::1', 'root', '2016-12-06 21:59:34', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(739, '::1', 'root', '2016-12-06 23:39:23', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(740, '::1', 'root', '2016-12-06 23:39:23', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Assign Term\n    [2] => modules/assign_term.php\n    [3] => Assign Term\n    [4] => This page would help the DO auto assign a term to all students\n    [5] => 1\n    [6] => Yes\n    [7] => Off\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(741, '::1', 'root', '2016-12-07 00:35:00', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_term.php'),
(742, '::1', 'root', '2016-12-07 00:35:00', 'Query Executed: INSERT INTO term(Term_id, school_year, Term_num, Term_start, Term_end, Term_hour) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2017\n    [3] => 3\n    [4] => 2017-01-07\n    [5] => 2017-04-12\n    [6] => 10\n)\n', '/APC_Student_Assistant_System/modules/add_term.php'),
(743, '::1', 'root', '2016-12-07 00:45:58', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(744, '::1', 'root', '2016-12-07 00:45:58', 'Query Executed: UPDATE user_links SET name = ?, target = ?, descriptive_title = ?, description = ?, passport_group_id = ?, show_in_tasklist = ?, status = ?, icon = ?, priority = ? WHERE link_id = ?\r\nArray\n(\n    [0] => ssssisssii\n    [1] => Assign Term\n    [2] => modules/assign_term.php\n    [3] => Assign Term\n    [4] => This page would help the DO auto assign a term to all students\n    [5] => 1\n    [6] => Yes\n    [7] => On\n    [8] => form3.png\n    [9] => 0\n    [10] => 75\n)\n', '/APC_Student_Assistant_System/sysadmin/edit_user_links.php'),
(745, '::1', 'root', '2016-12-07 00:53:28', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(746, '::1', 'root', '2016-12-07 00:53:32', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(747, '::1', 'root', '2016-12-07 01:00:53', 'Pressed submit button', '/APC_Student_Assistant_System/modules/add_student.php'),
(748, '::1', 'root', '2016-12-07 01:00:53', 'Query Executed: INSERT INTO student(Student_id, Student_last_name, Student_first_name, Student_middle_name, Birth_date, Birth_place, Entry_level, Nationality, Gender, Address, Postal_code, Tel_num, Mobile_num, Email, Religion, Civil_status) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssssssiissss\n    [1] => 2014100500\n    [2] => Tomas\n    [3] => Gener Joseph\n    [4] => G\n    [5] => 1978-03-08\n    [6] => Mandaluyong\n    [7] => Freshmen\n    [8] => Filipino\n    [9] => Male\n    [10] => 6 5th and 7th, Villamor, Pasay City\n    [11] => 1234\n    [12] => 7774444\n    [13] => 09250123457\n    [14] => ngtomas@student.apc.edu,ph\n    [15] => Roman Catholic\n    [16] => Single\n)\n', '/APC_Student_Assistant_System/modules/add_student.php'),
(749, '::1', 'root', '2016-12-07 01:10:45', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(750, '::1', 'root', '2016-12-07 01:10:45', 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Gener Joseph\n    [3] => G\n    [4] => Tomas\n    [5] => Male\n)\n', '/APC_Student_Assistant_System/sysadmin/add_person.php'),
(751, '::1', 'root', '2016-12-07 01:11:05', 'Pressed submit button', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(752, '::1', 'root', '2016-12-07 01:11:05', 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => ngtomas\n    [2] => $2y$12$UvE5gFErEsBBbzbuUZ8v8OSPHJJyYz2tvtQmFwS9I7fNwSkz3ItVm\n    [3] => UvE5gFErEsBBbzbuUZ8v8Q\n    [4] => 12\n    [5] => blowfish\n    [6] => 7\n    [7] => 3\n    [8] => 1\n)\n', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(753, '::1', 'root', '2016-12-07 01:11:05', 'Query executed: INSERT `user_passport` SELECT ''ngtomas'', `link_id` FROM user_role_links WHERE role_id=''3''', '/APC_Student_Assistant_System/sysadmin/add_user.php'),
(754, '::1', 'root', '2016-12-07 01:11:08', 'Logged out', '/APC_Student_Assistant_System/end.php'),
(755, '::1', 'ngtomas', '2016-12-07 01:11:14', 'Logged in', '/APC_Student_Assistant_System/login.php'),
(756, '::1', 'ngtomas', '2016-12-07 01:11:26', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/add_studentbridgereserve.php'),
(757, '::1', 'ngtomas', '2016-12-07 01:11:33', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_record.php'),
(758, '::1', 'ngtomas', '2016-12-07 01:11:43', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_reserve.php'),
(759, '::1', 'ngtomas', '2016-12-07 01:11:49', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/detailview_reserve.php'),
(760, '::1', 'ngtomas', '2016-12-07 01:11:53', 'Pressed cancel button', '/APC_Student_Assistant_System/modules/listview_reserve.php');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Max Attachment Height', '0'),
('Max Attachment Size (MB)', '0'),
('Max Attachment Width', '0'),
('Security Level', 'HIGH');

-- --------------------------------------------------------

--
-- Table structure for table `system_skins`
--

CREATE TABLE `system_skins` (
  `skin_id` int(11) NOT NULL,
  `skin_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `master_css` varchar(255) NOT NULL,
  `colors_css` varchar(255) NOT NULL,
  `fonts_css` varchar(255) NOT NULL,
  `override_css` varchar(255) NOT NULL,
  `icon_set` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css', 'cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css', 'cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css', 'cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css', 'cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css', 'cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css', 'cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css', 'cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css', 'cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css', 'cobalt'),
(11, 'Warm Teal', 'skins/default_header.php', 'skins/default_footer.php', 'warm_teal_master.css', 'warm_teal_colors.css', 'warm_teal_fonts.css', 'warm_teal_override.css', 'cobalt'),
(12, 'Purple Rain', 'skins/default_header.php', 'skins/default_footer.php', 'purple_rain_master.css', 'purple_rain_colors.css', 'purple_rain_fonts.css', 'purple_rain_override.css', 'cobalt');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `Term_id` int(11) NOT NULL,
  `school_year` year(4) NOT NULL,
  `Term_num` varchar(45) NOT NULL,
  `Term_start` datetime DEFAULT NULL,
  `Term_end` datetime DEFAULT NULL,
  `Term_hour` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`Term_id`, `school_year`, `Term_num`, `Term_start`, `Term_end`, `Term_hour`) VALUES
(1, 2016, '2', '2016-09-04 00:00:00', '2016-12-16 00:00:00', '10:00:00'),
(2, 2017, '3', '2017-01-07 00:00:00', '2017-04-12 00:00:00', '00:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES
('admin', '$2y$12$h.MX4iItzc0FfENSU0Il0.NEYr/MOzC5RycFjm6VGrSKM/aatF7I.', 'h+MX4iItzc0FfENSU0Il0A', 12, 'blowfish', 6, 5, 1),
('jmdelacruz', '$2y$12$Udky9MiMkTsXHdcJwjSsOuCTHEWnWePzxBTZM5yuEQ2XavavpuGHW', 'Udky9MiMkTsXHdcJwjSsOw', 12, 'blowfish', 4, 4, 1),
('juanluna', '$2y$12$pWP79FOZRy/e4qNhcytxd.fYaIg9xKsE0GcHYZO67.mfjbq4T.AjG', 'pWP79FOZRy/e4qNhcytxdA', 12, 'blowfish', 3, 4, 1),
('lmcruz', '$2y$12$WAlHuEu55ibDHbuyQ9XQZOHuYvENZmf58PG8McQetL3PERo1CHCK.', 'WAlHuEu55ibDHbuyQ9XQZQ', 12, 'blowfish', 2, 3, 1),
('ngtomas', '$2y$12$UvE5gFErEsBBbzbuUZ8v8OSPHJJyYz2tvtQmFwS9I7fNwSkz3ItVm', 'UvE5gFErEsBBbzbuUZ8v8Q', 12, 'blowfish', 7, 3, 1),
('root', '$2y$12$PCidaylyReHJIN.tOKXI8OacRpmE.ksz2ZDvvNTk8sOPQrfFykwJS', 'PCidaylyReHJIN+tOKXI8Q', 12, 'blowfish', 1, 1, 1),
('ucromero', '$2y$12$6NT5eUuBYfBmNHtMSYRIgOAfVKUK9Qr8edPYy8yIdEU.BkPRSRK62', '6NT5eUuBYfBmNHtMSYRIgQ', 12, 'blowfish', 5, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE `user_links` (
  `link_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `descriptive_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passport_group_id` int(11) NOT NULL,
  `show_in_tasklist` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`, `priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', 0),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', 0),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', 0),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', 0),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', 0),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', 0),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', 0),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', 0),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', 0),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', 0),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', 0),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', 0),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', 0),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', 0),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', 0),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', 0),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', 0),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', 0),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', 0),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', 0),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', 0),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', 0),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', 0),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', 0),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', 0),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', 0),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', 0),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', 0),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', 0),
(33, 'Add cobalt sst', 'sst/add_cobalt_sst.php', 'Add Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(34, 'Edit cobalt sst', 'sst/edit_cobalt_sst.php', 'Edit Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(35, 'View cobalt sst', 'sst/listview_cobalt_sst.php', 'Cobalt SST', '', 2, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete cobalt sst', 'sst/delete_cobalt_sst.php', 'Delete Cobalt SST', '', 2, 'No', 'On', 'form3.png', 0),
(37, 'Add employee', 'modules/add_employee.php', 'Add Employee', '', 1, 'No', 'On', 'form3.png', 0),
(38, 'Edit employee', 'modules/edit_employee.php', 'Edit Employee', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View employee', 'modules/listview_employee.php', 'Employee', '', 1, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete employee', 'modules/delete_employee.php', 'Delete Employee', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add employeebridgerecord', 'modules/add_employeebridgerecord.php', 'Add Employeebridgerecord', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit employeebridgerecord', 'modules/edit_employeebridgerecord.php', 'Edit Employeebridgerecord', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View employeebridgerecord', 'modules/listview_employeebridgerecord.php', 'Employeebridgerecord', '', 1, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete employeebridgerecord', 'modules/delete_employeebridgerecord.php', 'Delete Employeebridgerecord', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add record', 'modules/add_record.php', 'Add Record', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit record', 'modules/edit_record.php', 'Edit Record', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View record', 'modules/listview_record.php', 'Record', '', 1, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete record', 'modules/delete_record.php', 'Delete Record', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add reserve', 'modules/add_reserve.php', 'Add Reserve', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit reserve', 'modules/edit_reserve.php', 'Edit Reserve', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View reserve', 'modules/listview_reserve.php', 'Reserve', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete reserve', 'modules/delete_reserve.php', 'Delete Reserve', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add scholarship', 'modules/add_scholarship.php', 'Add Scholarship', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit scholarship', 'modules/edit_scholarship.php', 'Edit Scholarship', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View scholarship', 'modules/listview_scholarship.php', 'Scholarship', '', 1, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete scholarship', 'modules/delete_scholarship.php', 'Delete Scholarship', '', 1, 'No', 'On', 'form3.png', 0),
(57, 'Add student', 'modules/add_student.php', 'Add Student', '', 1, 'No', 'On', 'form3.png', 0),
(58, 'Edit student', 'modules/edit_student.php', 'Edit Student', '', 1, 'No', 'On', 'form3.png', 0),
(59, 'View student', 'modules/listview_student.php', 'Student', '', 1, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete student', 'modules/delete_student.php', 'Delete Student', '', 1, 'No', 'On', 'form3.png', 0),
(61, 'Add studentbridgereserve', 'modules/add_studentbridgereserve.php', 'Add Studentbridgereserve', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit studentbridgereserve', 'modules/edit_studentbridgereserve.php', 'Edit Studentbridgereserve', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View studentbridgereserve', 'modules/listview_studentbridgereserve.php', 'Studentbridgereserve', '', 1, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete studentbridgereserve', 'modules/delete_studentbridgereserve.php', 'Delete Studentbridgereserve', '', 1, 'No', 'On', 'form3.png', 0),
(65, 'Add studentbridgeterm', 'modules/add_studentbridgeterm.php', 'Add Studentbridgeterm', '', 1, 'No', 'On', 'form3.png', 0),
(66, 'Edit studentbridgeterm', 'modules/edit_studentbridgeterm.php', 'Edit Studentbridgeterm', '', 1, 'No', 'On', 'form3.png', 0),
(67, 'View studentbridgeterm', 'modules/listview_studentbridgeterm.php', 'Studentbridgeterm', '', 1, 'Yes', 'On', 'form3.png', 0),
(68, 'Delete studentbridgeterm', 'modules/delete_studentbridgeterm.php', 'Delete Studentbridgeterm', '', 1, 'No', 'On', 'form3.png', 0),
(69, 'Add term', 'modules/add_term.php', 'Add Term', '', 1, 'No', 'On', 'form3.png', 0),
(70, 'Edit term', 'modules/edit_term.php', 'Edit Term', '', 1, 'No', 'On', 'form3.png', 0),
(71, 'View term', 'modules/listview_term.php', 'Term', '', 1, 'Yes', 'On', 'form3.png', 0),
(72, 'Delete term', 'modules/delete_term.php', 'Delete Term', '', 1, 'No', 'On', 'form3.png', 0),
(73, 'SA Timelog', 'modules/student_timelog.php', 'Student Timelog', 'This is where student times in and out of their duties', 1, 'Yes', 'On', 'form3.png', 0),
(74, 'Announcement', 'modules/announcement.php', 'Announcement Page', 'This is where students may find announcements and reserve their SA duties', 1, 'Yes', 'On', 'form3.png', 0),
(75, 'Assign Term', 'modules/assign_term.php', 'Assign Term', 'This page would help the DO auto assign a term to all students', 1, 'Yes', 'On', 'form3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE `user_passport` (
  `username` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport`
--

INSERT INTO `user_passport` (`username`, `link_id`) VALUES
('admin', 16),
('admin', 28),
('admin', 37),
('admin', 38),
('admin', 39),
('admin', 40),
('admin', 41),
('admin', 42),
('admin', 43),
('admin', 44),
('admin', 45),
('admin', 46),
('admin', 47),
('admin', 48),
('admin', 49),
('admin', 50),
('admin', 51),
('admin', 52),
('admin', 53),
('admin', 54),
('admin', 55),
('admin', 56),
('admin', 57),
('admin', 58),
('admin', 59),
('admin', 60),
('admin', 61),
('admin', 62),
('admin', 63),
('admin', 64),
('admin', 65),
('admin', 66),
('admin', 67),
('admin', 68),
('admin', 69),
('admin', 70),
('admin', 71),
('admin', 72),
('admin', 73),
('admin', 74),
('admin', 75),
('jmdelacruz', 39),
('jmdelacruz', 47),
('jmdelacruz', 49),
('jmdelacruz', 50),
('jmdelacruz', 51),
('jmdelacruz', 52),
('jmdelacruz', 59),
('juanluna', 39),
('juanluna', 47),
('juanluna', 49),
('juanluna', 50),
('juanluna', 51),
('juanluna', 52),
('juanluna', 59),
('lmcruz', 47),
('lmcruz', 51),
('lmcruz', 59),
('lmcruz', 61),
('lmcruz', 63),
('lmcruz', 64),
('lmcruz', 66),
('lmcruz', 73),
('lmcruz', 74),
('ngtomas', 47),
('ngtomas', 51),
('ngtomas', 59),
('ngtomas', 61),
('ngtomas', 63),
('ngtomas', 64),
('ngtomas', 66),
('ngtomas', 73),
('ngtomas', 74),
('root', 1),
('root', 2),
('root', 3),
('root', 4),
('root', 5),
('root', 6),
('root', 7),
('root', 8),
('root', 9),
('root', 10),
('root', 11),
('root', 12),
('root', 13),
('root', 14),
('root', 15),
('root', 16),
('root', 17),
('root', 18),
('root', 19),
('root', 20),
('root', 21),
('root', 22),
('root', 23),
('root', 24),
('root', 25),
('root', 26),
('root', 27),
('root', 28),
('root', 29),
('root', 30),
('root', 31),
('root', 32),
('root', 33),
('root', 34),
('root', 35),
('root', 36),
('root', 37),
('root', 38),
('root', 39),
('root', 40),
('root', 41),
('root', 42),
('root', 43),
('root', 44),
('root', 45),
('root', 46),
('root', 47),
('root', 48),
('root', 49),
('root', 50),
('root', 51),
('root', 52),
('root', 53),
('root', 54),
('root', 55),
('root', 56),
('root', 57),
('root', 58),
('root', 59),
('root', 60),
('root', 61),
('root', 62),
('root', 63),
('root', 64),
('root', 65),
('root', 66),
('root', 67),
('root', 68),
('root', 69),
('root', 70),
('root', 71),
('root', 72),
('root', 73),
('root', 74),
('root', 75),
('ucromero', 47),
('ucromero', 51),
('ucromero', 59),
('ucromero', 61),
('ucromero', 63),
('ucromero', 64),
('ucromero', 66),
('ucromero', 73),
('ucromero', 74);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport_groups`
--

CREATE TABLE `user_passport_groups` (
  `passport_group_id` int(11) NOT NULL,
  `passport_group` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport_groups`
--

INSERT INTO `user_passport_groups` (`passport_group_id`, `passport_group`, `priority`, `icon`) VALUES
(1, 'Default', 0, 'blue_folder3.png'),
(2, 'Admin', 0, 'preferences-system.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`, `description`) VALUES
(1, 'Super Admin', 'Super admin role with 100% system privileges'),
(2, 'System Admin', 'System admin role with all sysadmin permissions'),
(3, 'Student Assistant', 'a'),
(4, 'Departmental Coordinator', 'a'),
(5, 'Discipline Office', 'Has full access over SAS System');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_links`
--

CREATE TABLE `user_role_links` (
  `role_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_links`
--

INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(3, 47),
(3, 51),
(3, 59),
(3, 61),
(3, 63),
(3, 64),
(3, 66),
(3, 73),
(3, 74),
(4, 39),
(4, 47),
(4, 49),
(4, 50),
(4, 51),
(4, 52),
(4, 59),
(5, 16),
(5, 28),
(5, 37),
(5, 38),
(5, 39),
(5, 40),
(5, 41),
(5, 42),
(5, 43),
(5, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(5, 49),
(5, 50),
(5, 51),
(5, 52),
(5, 53),
(5, 54),
(5, 55),
(5, 56),
(5, 57),
(5, 58),
(5, 59),
(5, 60),
(5, 61),
(5, 62),
(5, 63),
(5, 64),
(5, 65),
(5, 66),
(5, 67),
(5, 68),
(5, 69),
(5, 70),
(5, 71),
(5, 72),
(5, 73),
(5, 74),
(5, 75);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cobalt_reporter`
--
ALTER TABLE `cobalt_reporter`
  ADD PRIMARY KEY (`module_name`,`report_name`);

--
-- Indexes for table `cobalt_sst`
--
ALTER TABLE `cobalt_sst`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_id`);

--
-- Indexes for table `employeebridgerecord`
--
ALTER TABLE `employeebridgerecord`
  ADD KEY `fk_Employee_has_Record_Record1_idx` (`Record_Record_id`),
  ADD KEY `fk_Employee_has_Record_Employee1_idx` (`Employee_Emp_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`Record_id`),
  ADD KEY `fk_Record_Reserve1_idx` (`Reserve_Reserve_id`),
  ADD KEY `fk_Record_Term1_idx` (`Term_Term_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`Reserve_id`),
  ADD KEY `fk_Reserve_Employee1_idx` (`Employee_Employee_id`);

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`Scholarship_id`),
  ADD KEY `fk_Scholarship_Student1_idx` (`Student_Student_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`);

--
-- Indexes for table `studentbridgereserve`
--
ALTER TABLE `studentbridgereserve`
  ADD KEY `fk_Reserve_has_Student_Student1_idx` (`Student_Student_id`),
  ADD KEY `fk_Reserve_has_Student_Reserve1_idx` (`Reserve_Reserve_id`);

--
-- Indexes for table `studentbridgeterm`
--
ALTER TABLE `studentbridgeterm`
  ADD KEY `fk_Term_has_Student_Student1_idx` (`Student_Student_id`),
  ADD KEY `fk_Term_has_Student_Term1_idx` (`Term_Term_id`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting`);

--
-- Indexes for table `system_skins`
--
ALTER TABLE `system_skins`
  ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`Term_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `user_passport`
--
ALTER TABLE `user_passport`
  ADD PRIMARY KEY (`username`,`link_id`);

--
-- Indexes for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  ADD PRIMARY KEY (`passport_group_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user_role_links`
--
ALTER TABLE `user_role_links`
  ADD PRIMARY KEY (`role_id`,`link_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cobalt_sst`
--
ALTER TABLE `cobalt_sst`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `Record_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `Reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `Scholarship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `Term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  MODIFY `passport_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employeebridgerecord`
--
ALTER TABLE `employeebridgerecord`
  ADD CONSTRAINT `fk_Employee_has_Record_Employee1` FOREIGN KEY (`Employee_Emp_id`) REFERENCES `employee` (`Emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Employee_has_Record_Record1` FOREIGN KEY (`Record_Record_id`) REFERENCES `record` (`Record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `fk_Record_Reserve1` FOREIGN KEY (`Reserve_Reserve_id`) REFERENCES `reserve` (`Reserve_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Record_Term1` FOREIGN KEY (`Term_Term_id`) REFERENCES `term` (`Term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `reserve`
--
ALTER TABLE `reserve`
  ADD CONSTRAINT `fk_Reserve_Employee1` FOREIGN KEY (`Employee_Employee_id`) REFERENCES `employee` (`Emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `fk_Scholarship_Student1` FOREIGN KEY (`Student_Student_id`) REFERENCES `student` (`Student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `studentbridgereserve`
--
ALTER TABLE `studentbridgereserve`
  ADD CONSTRAINT `fk_Reserve_has_Student_Reserve1` FOREIGN KEY (`Reserve_Reserve_id`) REFERENCES `reserve` (`Reserve_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserve_has_Student_Student1` FOREIGN KEY (`Student_Student_id`) REFERENCES `student` (`Student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `studentbridgeterm`
--
ALTER TABLE `studentbridgeterm`
  ADD CONSTRAINT `fk_Term_has_Student_Student1` FOREIGN KEY (`Student_Student_id`) REFERENCES `student` (`Student_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Term_has_Student_Term1` FOREIGN KEY (`Term_Term_id`) REFERENCES `term` (`Term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
