/*
Navicat MySQL Data Transfer

Source Server         : PROD SERVER FLAVIO DB
Source Server Version : 50541
Source Host           : 10.106.1.10:3306
Source Database       : AMKTG

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2016-07-15 15:19:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Scholarship
-- ----------------------------
DROP TABLE IF EXISTS `Scholarship`;
CREATE TABLE `Scholarship` (
  `scholarship_id` int(5) NOT NULL AUTO_INCREMENT,
  `scholarship_code` varchar(25) NOT NULL,
  `scholarship_description` varchar(250) NOT NULL,
  `scholarship_group` enum('ACADEMIC','FINANCIAL','PUBLIC','PAROCHIAL','SPECIAL') NOT NULL DEFAULT 'ACADEMIC',
  `discount` decimal(3,2) NOT NULL,
  `waive_fee` text,
  `scholarship_apply` enum('TUITION','ALL','DETAILED','EXCEPTION') DEFAULT 'TUITION',
  `required_CGPA` decimal(3,2) NOT NULL,
  `SA_hour` decimal(5,2) NOT NULL DEFAULT '0.00',
  `is_offered` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `program_apply` enum('UNDERGRAD','GRAD','BOTH') NOT NULL DEFAULT 'UNDERGRAD',
  PRIMARY KEY (`scholarship_id`)
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=latin1 COMMENT='Scholarship Profile';
