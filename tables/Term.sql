/*
Navicat MySQL Data Transfer

Source Server         : PROD SERVER FLAVIO DB
Source Server Version : 50541
Source Host           : 10.106.1.10:3306
Source Database       : AREG

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2016-07-15 15:18:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Term
-- ----------------------------
DROP TABLE IF EXISTS `Term`;
CREATE TABLE `Term` (
  `term_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `school_year` year(4) NOT NULL,
  `term` enum('1','2','3','S') NOT NULL DEFAULT '1',
  `term_start` date DEFAULT NULL,
  `term_end` date DEFAULT NULL,
  `reg_start` date DEFAULT NULL,
  `reg_end` date DEFAULT NULL,
  `install1` date NOT NULL,
  `install2` date NOT NULL,
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `school_year` (`school_year`,`term`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=latin1 COMMENT='Masterlist of Term Schedule';

-- ----------------------------
-- Records of Term
-- ----------------------------
INSERT INTO `Term` VALUES ('1', '1993', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('2', '1993', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('3', '1993', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('4', '1994', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('5', '1994', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('6', '1994', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('7', '1995', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('8', '1995', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('9', '1995', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('10', '1996', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('11', '1996', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('12', '1996', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('13', '1997', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('14', '1997', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('15', '1997', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('16', '1998', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('17', '1998', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('18', '1998', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('19', '1999', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('20', '1999', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('21', '1999', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('22', '2000', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('23', '2000', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('24', '2000', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('25', '2001', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('26', '2001', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('27', '2001', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('28', '2002', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('29', '2002', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('30', '2002', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('31', '2003', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('32', '2003', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('33', '2003', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('34', '1998', 'S', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('35', '2004', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('36', '2004', '2', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('37', '2004', '3', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('38', '2005', '1', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('39', '2005', '2', '2005-09-14', '2005-12-22', '2005-11-15', '2005-12-01', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('40', '2005', '3', '2006-01-09', '2006-04-19', '2006-03-13', '2006-03-31', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('41', '1999', 'S', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('42', '2000', 'S', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('43', '2006', 'S', '2007-04-23', '2007-05-17', null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('44', '2006', '1', '2006-06-05', '2006-09-08', '2006-08-08', '2006-08-24', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('45', '2006', '2', '2006-09-16', '2006-12-22', '2006-11-21', '2006-12-08', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('46', '2006', '3', '2007-01-10', '2007-04-19', '2007-03-14', '2007-03-28', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('47', '2003', 'S', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('48', '2005', 'S', null, null, null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('49', '2007', '1', '2007-06-06', '2007-09-10', '2007-08-07', '2007-08-22', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('50', '2007', '2', '2007-09-17', '2007-12-19', null, null, '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('51', '2007', '3', '2008-01-09', '2008-04-17', '2007-11-20', '2007-12-07', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('53', '2008', '1', '2008-06-02', '2008-09-16', '2008-08-05', '2008-08-19', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('52', '2007', 'S', '2008-04-23', '2008-05-16', '2008-04-19', '2008-04-19', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('54', '2008', '2', '2008-09-17', '2008-12-19', '2008-08-05', '2008-08-22', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('55', '2008', '3', '2009-01-06', '2009-04-12', '2008-01-01', '2008-01-06', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('56', '2008', 'S', '2009-04-27', '2009-05-23', '2009-05-18', '2009-05-23', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('57', '2009', '1', '2009-06-04', '2009-09-14', '2009-08-04', '2009-08-19', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('58', '2009', '2', '2009-09-22', '2010-01-23', '2009-09-01', '2009-09-14', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('59', '2009', '3', '2010-01-25', '2010-05-03', '2009-12-01', '2009-12-16', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('61', '2010', '1', '2010-05-31', '2010-09-08', '2010-03-30', '2010-04-17', '2010-07-10', '2010-08-31');
INSERT INTO `Term` VALUES ('60', '2009', 'S', '2010-05-12', '2010-05-29', '2010-05-11', '2010-05-15', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('62', '2010', '2', '2010-09-15', '2010-12-22', '2010-08-10', '2010-08-25', '2010-10-25', '2010-12-15');
INSERT INTO `Term` VALUES ('63', '2010', '3', '2011-01-10', '2011-04-16', '2011-03-15', '2011-03-31', '2011-02-16', '2011-04-01');
INSERT INTO `Term` VALUES ('65', '2011', '1', '2011-05-27', '2011-09-13', '2011-03-17', '2011-03-26', '2011-07-16', '2011-09-03');
INSERT INTO `Term` VALUES ('64', '2010', 'S', '2011-04-15', '2011-05-20', '2011-04-30', '2011-05-15', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('75', '2013', '2', '2013-09-14', '2013-12-21', '2013-08-05', '2013-08-17', '2013-10-26', '2013-12-17');
INSERT INTO `Term` VALUES ('66', '2011', '2', '2011-09-13', '2011-12-23', '2011-08-16', '2011-08-31', '2011-10-29', '2011-12-16');
INSERT INTO `Term` VALUES ('67', '2011', '3', '2012-01-05', '2012-04-19', '2011-11-22', '2011-12-06', '2012-02-17', '2012-04-12');
INSERT INTO `Term` VALUES ('68', '2011', 'S', '2011-04-23', '2011-05-21', '1999-11-30', '1999-11-30', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('69', '2012', '1', '2012-05-29', '2012-09-10', '1999-11-30', '1999-11-30', '2012-07-14', '2012-09-03');
INSERT INTO `Term` VALUES ('70', '2012', '2', '2012-09-11', '2012-12-22', '2012-08-06', '2012-08-18', '2012-10-25', '2012-12-14');
INSERT INTO `Term` VALUES ('73', '2012', '3', '2013-01-07', '2013-05-15', '2012-11-19', '2012-11-29', '2013-02-16', '2013-04-13');
INSERT INTO `Term` VALUES ('74', '2013', '1', '2013-06-05', '2013-09-20', '2013-03-18', '2013-03-27', '2013-07-16', '2013-09-03');
INSERT INTO `Term` VALUES ('76', '2013', '3', '2014-01-03', '2014-04-28', '2013-11-23', '2013-12-04', '2014-02-22', '2014-04-11');
INSERT INTO `Term` VALUES ('77', '2014', '1', '2014-05-09', '2014-09-08', '2014-03-17', '2014-03-29', '2014-07-12', '2014-08-30');
INSERT INTO `Term` VALUES ('78', '2013', 'S', '2014-04-28', '2014-05-21', '2014-04-23', '2014-04-27', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('79', '2014', '2', '2014-09-11', '2015-01-04', '2014-11-22', '2014-12-05', '2014-10-28', '2014-12-13');
INSERT INTO `Term` VALUES ('80', '2014', '3', '2015-01-05', '2015-04-22', '2015-03-16', '2015-03-28', '2015-02-20', '2015-04-13');
INSERT INTO `Term` VALUES ('81', '2014', 'S', '2015-04-24', '2015-06-02', '2015-01-15', '2015-01-30', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('82', '2015', '1', '2015-06-03', '2015-09-12', '2015-03-16', '2015-03-28', '2015-07-10', '2015-08-28');
INSERT INTO `Term` VALUES ('83', '2015', '2', '2015-09-16', '2016-01-06', '2015-08-03', '2015-08-15', '2015-10-31', '2015-12-16');
INSERT INTO `Term` VALUES ('84', '2015', '3', '2016-01-18', '2016-04-22', '2015-11-23', '2015-12-07', '2016-02-29', '2016-04-19');
INSERT INTO `Term` VALUES ('85', '2015', 'S', '2016-04-27', '2016-05-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00');
INSERT INTO `Term` VALUES ('86', '2016', '1', '2016-06-06', '2016-09-09', '2016-03-21', '2016-04-02', '2016-07-16', '2016-09-03');
INSERT INTO `Term` VALUES ('87', '2016', '2', '2016-09-19', '2017-01-03', '2016-08-08', '2016-08-20', '0000-00-00', '0000-00-00');
