/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_car

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-11-10 09:23:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mini_car`
-- ----------------------------
DROP TABLE IF EXISTS `mini_car`;
CREATE TABLE `mini_car` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Desc` text,
  `ImageUrl` varchar(100) DEFAULT NULL,
  `outputrpm` varchar(50) DEFAULT NULL,
  `Displacement` varchar(50) DEFAULT NULL,
  `Maxtorque` varchar(50) DEFAULT NULL,
  `kmh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mini_car
-- ----------------------------
INSERT INTO `mini_car` VALUES ('1', 'MINI 5', '1', 'images/MINI_3.png', '134 hp', '1499', '162ft/lb', '8.3');
INSERT INTO `mini_car` VALUES ('2', 'MINI 3', '2', 'images/MINI_5.png', '189hp', '1998', '207ft/lb', '6.7');
INSERT INTO `mini_car` VALUES ('3', 'CLUBMAN', '3', 'images/MINI_clubman.png', '189hp', '1998', '207ft/lb', '6.9');
