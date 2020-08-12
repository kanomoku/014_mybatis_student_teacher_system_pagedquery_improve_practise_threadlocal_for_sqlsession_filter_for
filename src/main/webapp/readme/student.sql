/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2020-08-12 14:02:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `tid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_teacher` (`tid`),
  CONSTRAINT `fk_teacher` FOREIGN KEY (`tid`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '学生1', '1', '1');
INSERT INTO `student` VALUES ('2', '学生2', '2', '1');
INSERT INTO `student` VALUES ('3', '学生3', '3', '1');
INSERT INTO `student` VALUES ('4', '学生4', '4', '1');
INSERT INTO `student` VALUES ('5', '学生5', '5', '1');
INSERT INTO `student` VALUES ('6', '学生6', '6', '1');
INSERT INTO `student` VALUES ('7', '学生7', '7', '2');
INSERT INTO `student` VALUES ('8', '学生8', '8', '2');
INSERT INTO `student` VALUES ('9', '学生9', '9', '2');
INSERT INTO `student` VALUES ('10', '学生10', '10', '2');
INSERT INTO `student` VALUES ('11', '学生11', '11', '2');
