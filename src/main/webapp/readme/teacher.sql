/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2020-08-12 14:02:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '老师1');
INSERT INTO `teacher` VALUES ('2', '老师2');
INSERT INTO `teacher` VALUES ('4', '老师4');
INSERT INTO `teacher` VALUES ('5', '老师4');
INSERT INTO `teacher` VALUES ('6', '老师4');
INSERT INTO `teacher` VALUES ('7', '老师4');
INSERT INTO `teacher` VALUES ('8', '老师4');
