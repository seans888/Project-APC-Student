/*
Navicat MySQL Data Transfer

Source Server         : PROD SERVER FLAVIO DB
Source Server Version : 50541
Source Host           : 10.106.1.10:3306
Source Database       : AREG

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2016-07-15 15:17:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for refStudent
-- ----------------------------
DROP TABLE IF EXISTS `refStudent`;
CREATE TABLE `refStudent` (
  `student_id` char(11) NOT NULL,
  `student_last_name` varchar(25) NOT NULL,
  `student_first_name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `student_middle_name` varchar(25) CHARACTER SET latin1 NOT NULL,
  `birth_date` date NOT NULL DEFAULT '0000-00-00',
  `birth_place` varchar(35) NOT NULL,
  `admission_date` date NOT NULL DEFAULT '0000-00-00',
  `entry_level` enum('Freshman','Transferee','Cross Enrollee','2nd Degree','Graduate School') CHARACTER SET latin1 DEFAULT 'Freshman',
  `admission_credential` varchar(2500) CHARACTER SET latin1 DEFAULT NULL,
  `mail_grades_to` enum('Father','Mother','Guardian','Student') CHARACTER SET latin1 NOT NULL DEFAULT 'Father',
  `exit_level` enum('NA','Graduate','Transferred') CHARACTER SET latin1 DEFAULT 'NA',
  `nationality` enum('Filipino','Others') CHARACTER SET latin1 NOT NULL DEFAULT 'Filipino',
  `gender` enum('Male','Female') CHARACTER SET latin1 NOT NULL DEFAULT 'Male',
  `address` varchar(250) CHARACTER SET latin1 NOT NULL,
  `postal_code` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `tel_num` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `mobile_num` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `email` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `religion` varchar(25) CHARACTER SET latin1 DEFAULT NULL,
  `civil_status` enum('Single','Married','Separated','Widowed') CHARACTER SET latin1 NOT NULL DEFAULT 'Single',
  `box_num` varchar(250) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Masterlist of Student Main Profile';
