/*
Navicat MySQL Data Transfer

Source Server         : mysql_mecho
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : stu

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-07-25 09:00:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mail` varchar(40) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'aa', '123', 'aa@qq.com', 'nihao');
INSERT INTO `t_user` VALUES ('2', 'bb', 'asd', 'bb@163.com', 'wohao');
INSERT INTO `t_user` VALUES ('3', 'cc', '990', 'xxxx', 'xxx');
