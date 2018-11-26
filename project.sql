/*
Navicat MySQL Data Transfer

Source Server         : localmysql
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2018-11-26 16:17:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `AnswerID` int(11) NOT NULL AUTO_INCREMENT,
  `QuesionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `UserAnswerID` int(11) NOT NULL,
  `UserAnswer` varchar(255) DEFAULT NULL,
  `DATE` date DEFAULT NULL COMMENT 'select getdate()',
  PRIMARY KEY (`AnswerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------

-- ----------------------------
-- Table structure for questionoptions
-- ----------------------------
DROP TABLE IF EXISTS `questionoptions`;
CREATE TABLE `questionoptions` (
  `OptionID` int(11) NOT NULL AUTO_INCREMENT,
  `QID` int(11) NOT NULL,
  `AnswerOption` int(11) NOT NULL,
  `Answers` varchar(255) DEFAULT NULL,
  `IsTrue` bit(1) DEFAULT NULL,
  PRIMARY KEY (`OptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionoptions
-- ----------------------------
INSERT INTO `questionoptions` VALUES ('1', '1', '1', 'yes', '');
INSERT INTO `questionoptions` VALUES ('2', '1', '2', 'no', '\0');
INSERT INTO `questionoptions` VALUES ('3', '4', '1', 'yes', '');
INSERT INTO `questionoptions` VALUES ('4', '4', '2', 'no', '\0');
INSERT INTO `questionoptions` VALUES ('5', '5', '1', 'no', '\0');
INSERT INTO `questionoptions` VALUES ('6', '5', '2', 'yes', '');
INSERT INTO `questionoptions` VALUES ('7', '9', '1', 'no', '\0');
INSERT INTO `questionoptions` VALUES ('8', '9', '2', 'Not Compelet', '\0');
INSERT INTO `questionoptions` VALUES ('9', '9', '3', 'yes', '');

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `QuesionID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(250) DEFAULT NULL,
  `Type` bit(1) DEFAULT NULL,
  `Correct` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`QuesionID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', ' is JavaScript  the programming language of HTML and the Web?', '', null);
INSERT INTO `questions` VALUES ('3', 'What is Sql?', '\0', null);
INSERT INTO `questions` VALUES ('4', 'is CSS  a language that describes the style of an HTML document?', '', null);
INSERT INTO `questions` VALUES ('5', 'What is Html?', '\0', null);
INSERT INTO `questions` VALUES ('6', 'is Node.js  an open source server environment.?', '', null);
INSERT INTO `questions` VALUES ('7', 'What is Languege  than allows you to run JavaScript on the server.?', '', null);
INSERT INTO `questions` VALUES ('8', 'What is Jquery?', '\0', null);
INSERT INTO `questions` VALUES ('9', 'is Bootstrap  completely free to download and use?', '', null);
INSERT INTO `questions` VALUES ('10', 'What is Xml?', '\0', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `username` varchar(100) NOT NULL,
  `LastLogin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1234', 'homa', '');
