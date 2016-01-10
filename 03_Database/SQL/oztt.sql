/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50618
Source Host           : localhost:3306
Source Database       : oztt

Target Server Type    : MYSQL
Target Server Version : 50618
File Encoding         : 65001

Date: 2016-01-07 16:55:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_admin_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_basic_info`;
CREATE TABLE `t_admin_basic_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `roleId` varchar(100) NOT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `headPic` varchar(200) DEFAULT NULL,
  `telNo` varchar(20) NOT NULL,
  `emailAddr` varchar(255) DEFAULT NULL,
  `wechatNo` varchar(50) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_basic_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_admin_login_his`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_login_his`;
CREATE TABLE `t_admin_login_his` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `loginTimestamp` timestamp NULL DEFAULT NULL,
  `logoutTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_login_his
-- ----------------------------

-- ----------------------------
-- Table structure for `t_admin_login_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin_login_info`;
CREATE TABLE `t_admin_login_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `adminNo` varchar(10) NOT NULL,
  `loginPass` varchar(255) NOT NULL,
  `salt` varchar(100) DEFAULT NULL,
  `loginStatus` char(1) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin_login_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_cons_cart`
-- ----------------------------
DROP TABLE IF EXISTS `t_cons_cart`;
CREATE TABLE `t_cons_cart` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `customerNo` varchar(16) NOT NULL,
  `groupSpecifications` varchar(1000) DEFAULT NULL,
  `quantity` decimal(12,0) DEFAULT NULL,
  `ifGroup` char(1) DEFAULT NULL,
  `groupNo` varchar(16) DEFAULT NULL,
  `priceNo` varchar(16) DEFAULT NULL,
  `addCartTimestamp` timestamp NULL DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cons_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `t_cons_order_details`
-- ----------------------------
DROP TABLE IF EXISTS `t_cons_order_details`;
CREATE TABLE `t_cons_order_details` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `orderNo` varchar(16) NOT NULL,
  `customerNo` varchar(16) NOT NULL,
  `goodsId` varchar(16) NOT NULL,
  `groupMaxQuantity` varchar(1000) DEFAULT NULL,
  `groupCurrentQuantity` decimal(12,0) DEFAULT NULL,
  `groupComments` varchar(500) DEFAULT NULL,
  `groupDesc` varchar(255) DEFAULT NULL,
  `priceNo` varchar(16) DEFAULT NULL,
  `unitPrice` decimal(12,2) DEFAULT NULL,
  `sumAmount` decimal(12,2) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cons_order_details
-- ----------------------------

-- ----------------------------
-- Table structure for `t_cons_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `t_cons_transaction`;
CREATE TABLE `t_cons_transaction` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `transactionNo` varchar(16) NOT NULL,
  `customerNo` varchar(16) NOT NULL,
  `inOutFlg` char(1) NOT NULL,
  `accountNo` varchar(8) NOT NULL,
  `transactionMethod` varchar(6) DEFAULT NULL,
  `transactionType` varchar(6) DEFAULT NULL,
  `transactionObject` varchar(255) DEFAULT NULL,
  `transactionSerialNo` varchar(255) DEFAULT NULL,
  `transactionAmount` decimal(12,2) DEFAULT NULL,
  `transactionStatus` varchar(6) NOT NULL,
  `transactionTimestamp` timestamp NULL DEFAULT NULL,
  `transactionComments` varchar(500) DEFAULT NULL,
  `transactionBeforeAmount` decimal(12,2) DEFAULT NULL,
  `transactionAfterAmount` decimal(12,2) DEFAULT NULL,
  `transactionOperator` varchar(16) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cons_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `t_customer_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_basic_info`;
CREATE TABLE `t_customer_basic_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `cnSurname` varchar(20) DEFAULT NULL,
  `cnGivenname` varchar(20) DEFAULT NULL,
  `enFirstName` varchar(50) DEFAULT NULL,
  `enMiddleName` varchar(50) DEFAULT NULL,
  `enLastName` varchar(50) DEFAULT NULL,
  `idCardNo` varchar(50) DEFAULT NULL,
  `passportNo` varchar(50) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `birthday` varchar(8) DEFAULT NULL,
  `headPic` varchar(200) DEFAULT NULL,
  `marriage` varchar(6) DEFAULT NULL,
  `education` varchar(6) DEFAULT NULL,
  `occupation` varchar(6) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_basic_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_customer_login_his`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_login_his`;
CREATE TABLE `t_customer_login_his` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `loginTimestamp` timestamp NULL DEFAULT NULL,
  `logoutTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_login_his
-- ----------------------------

-- ----------------------------
-- Table structure for `t_customer_login_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_login_info`;
CREATE TABLE `t_customer_login_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `loginId` varchar(50) NOT NULL,
  `loginPass` varchar(255) NOT NULL,
  `loginStatus` char(1) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_login_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_customer_member_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_member_info`;
CREATE TABLE `t_customer_member_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `memberCardNo` varchar(16) DEFAULT NULL,
  `points` int(8) DEFAULT NULL,
  `level` varchar(6) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_member_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_customer_security_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer_security_info`;
CREATE TABLE `t_customer_security_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `telNo` varchar(20) NOT NULL,
  `emailAddr` varchar(255) DEFAULT NULL,
  `wechatNo` varchar(50) DEFAULT NULL,
  `wechatOpenId` varchar(100) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer_security_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `goodsBrand` varchar(50) NOT NULL,
  `goodsName` varchar(100) NOT NULL,
  `goodsDesc` varchar(200) DEFAULT NULL,
  `goodsComments` varchar(500) DEFAULT NULL,
  `goodsThumbnail` varchar(255) DEFAULT NULL,
  `goodsSmallPic` varchar(255) DEFAULT NULL,
  `goodsNormalPic` varchar(255) DEFAULT NULL,
  `onSaleFlg` char(1) DEFAULT NULL,
  `hotSaleFlg` char(1) DEFAULT NULL,
  `newSaleFlg` char(1) DEFAULT NULL,
  `costPrice` decimal(12,2) DEFAULT NULL,
  `sortOrder` int(8) DEFAULT NULL,
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('1', 'GD20160201000001', '2C0010', 'Bellamy ', '婴儿米糊', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('2', 'GD20160201000002', '2C0010', 'Bellamy ', '婴儿麦片', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('3', 'GD20160201000003', '2C0010', 'Bellamy ', '婴儿米粉', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('4', 'GD20160201000004', '2C0005', 'Blackmores', '维骨力', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('5', 'GD20160201000005', '2C0007', 'Blackmores', 'Omega三倍浓缩鱼油  150粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('6', 'GD20160201000006', '2C0001', 'Blackmores', 'Q10辅酶150mg 30粒 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('7', 'GD20160201000007', '2C0001', 'Blackmores', '叶黄素护眼片加强版 60粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('8', 'GD20160201000008', '2C0001', 'Blackmores', '护眼蓝霉素 30粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('9', 'GD20160201000009', '2C0001', 'Blackmores', '更年期日夜舒缓片 60粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('10', 'GD20160201000010', '2C0006', 'Blackmores', '月见草 190粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('11', 'GD20160201000011', '2C0012', 'Blackmores', '孕妇黄金素 180粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('12', 'GD20160201000012', '2C0014', 'Blackmores', 'VE面霜 50g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('13', 'GD20160201000013', '2C0012', 'Blackmores', '女士备孕营养素', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('14', 'GD20160201000014', '2C0001', 'Blackmores', '西芹籽 50', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('15', 'GD20160201000015', '2C0001', 'Blackmores', '除腥鱼油 400粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('16', 'GD20160201000016', '2C0001', 'Blackmores', '血糖平衡片', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('17', 'GD20160201000017', '2C0009', 'Combantrin', '驱虫巧克力', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('18', 'GD20160201000018', '2C0010', 'Comvita', 'Comvita 儿童柠檬蜂蜜棒棒糖 10粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('19', 'GD20160201000019', '2C0010', 'Comvita', 'Comvita 蜂胶柠檬蜂蜜润喉糖 40粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('20', 'GD20160201000020', '2C0014', 'Coremetrics', '羊奶皂 燕麦', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('21', 'GD20160201000021', '2C0014', 'Coremetrics', '羊奶皂 原味', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('22', 'GD20160201000022', '2C0014', 'Coremetrics', '羊奶皂 美卢卡蜂蜜', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('23', 'GD20160201000023', '2C0016', 'Discreet', '黑发还原乳', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('24', 'GD20160201000024', '2C0006', 'Femfresh', '女性私处护理洗液 250ml', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('25', 'GD20160201000025', '2C0001', 'Floradix', '德国铁元营养液 250ml', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('26', 'GD20160201000026', '2C0001', 'Floradix', '德国铁元营养液 500ml', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('27', 'GD20160201000027', '2C0014', 'Freezeframe', 'BB霜', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('28', 'GD20160201000028', '2C0016', 'Freezeframe', '睫毛膏', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('29', 'GD20160201000029', '2C0016', 'Freezeframe', '丰胸膏', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('30', 'GD20160201000030', '2C0016', 'Freezeframe', '眼霜', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('31', 'GD20160201000031', '2C0014', 'Freezeframe', '美白霜', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('32', 'GD20160201000032', '2C0001', 'Healthycare', '葡萄籽 12000mg 180粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('33', 'GD20160201000033', '2C0009', 'Life Space', '婴儿益生菌粉 60g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('34', 'GD20160201000034', '2C0001', 'Lucas', '木瓜膏25克', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('35', 'GD20160201000035', '2C0002', 'Mediherb', 'Horse chestnut Complex 60s 改善缓解静脉曲张', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('36', 'GD20160201000036', '2C0009', 'Nature\'s way', '儿童复合维生素防挑食软糖 60 粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('37', 'GD20160201000037', '2C0009', 'Nature\'s way', '儿童维生素免疫提升咀嚼软糖 60 粒 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('38', 'GD20160201000038', '2C0009', 'Nature\'s way', '儿童复合维生素+Omega 咀嚼软糖 60 粒 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('39', 'GD20160201000039', '2C0009', 'Nature\'s way', '儿童维生素 Omega3+鱼油咀嚼软糖 60 粒 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('40', 'GD20160201000040', '2C0001', 'NU-LAX', '乐康膏250g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('41', 'GD20160201000041', '2C0001', 'NU-LAX', '乐康膏500g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('42', 'GD20160201000042', '2C0001', 'Pharmacy Medicine', 'lamisil脚气膏', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('43', 'GD20160201000043', '2C0001', 'Pharmacy Medicine', '口腔溃疡舒缓凝胶', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('44', 'GD20160201000044', '2C0001', 'Pharmacy Medicine', '痔疮膏', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('45', 'GD20160201000045', '2C0006', 'Red Seal', '黑糖 500g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('46', 'GD20160201000046', '2C0007', 'Red Seal', '去烟渍牙膏 100g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('47', 'GD20160201000047', '2C0016', 'Royal Nectar', '蜂毒面膜', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('48', 'GD20160201000048', '2C0001', 'Swisse', '蜂胶 2000mg 210粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('49', 'GD20160201000049', '2C0001', 'Swisse', 'CoQ10辅酶护心宝 150mg 50粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('50', 'GD20160201000050', '2C0001', 'Swisse', '更年期平衡片 60粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('51', 'GD20160201000051', '2C0006', 'Swisse', '50岁以上女性营养片 60粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('52', 'GD20160201000052', '2C0007', 'Swisse', '50岁以上男性营养片 60粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('53', 'GD20160201000053', '2C0007', 'Swisse', '50岁以上男性营养片 90粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('54', 'GD20160201000054', '2C0006', 'Swisse', '50岁以上女性营养片 90粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('55', 'GD20160201000055', '2C0002', 'Swisse', '护肝片 120粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('56', 'GD20160201000056', '2C0007', 'Swisse', '男士复合营养片 120粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('57', 'GD20160201000057', '2C0001', 'Swisse', '葡萄籽 12000mg 180粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('58', 'GD20160201000058', '2C0001', 'Swisse', '蔓越莓 30粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('59', 'GD20160201000059', '2C0001', 'Swisse', '胶原蛋白液 500ml', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('60', 'GD20160201000060', '2C0001', 'Swisse', '钙片+维D', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('61', 'GD20160201000061', '2C0001', 'Swisse', '叶绿素液莓子味', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('62', 'GD20160201000062', '2C0001', 'Swisse', '睡眠片100粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('63', 'GD20160201000063', '2C0007', 'Swisse', '前列康50', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('64', 'GD20160201000064', '2C0005', 'Thompson\'s', '壮骨片 60粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('65', 'GD20160201000065', '2C0001', 'Thompson\'s', '深海鱼油 200粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('66', 'GD20160201000066', '2C0001', 'Thompson\'s', 'CoQ10辅酶护心宝  150mg 30s  ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('67', 'GD20160201000067', '2C0001', 'Thompson\'s', '三文鱼油加强版 1000mg 300 粒 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('68', 'GD20160201000068', '2C0001', 'Thompson\'s', '胆固醇调控 120 粒 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('69', 'GD20160201000069', '2C0001', 'Thompson\'s', '记忆管理片 60片', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('70', 'GD20160201000070', '2C0001', 'Thompson\'s', '深海鳕鱼肝油 100 粒 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('71', 'GD20160201000071', '2C0001', 'Thopmson\'s', '超级卵磷脂胶囊 120粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('72', 'GD20160201000072', '2C0001', 'Thopmson\'s', '超级卵磷脂胶囊 200粒', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('73', 'GD20160201000073', '2C0001', 'Trilogy', '玫瑰果油45ml', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('74', 'GD20160201000074', '2C0009', 'VICKS', '宝宝止咳通鼻膏', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('75', 'GD20160201000075', '2C0009', 'Mercer+Reid', '除螨喷雾', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('76', 'GD20160201000076', '2C0016', 'Redwin', '洗发香波', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('77', 'GD20160201000077', '2C0025', 'Cussons', '浓缩洗洁精 400ml', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('78', 'GD20160201000078', '2C0025', 'Cussons', '浓缩洗洁精 900ml', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('79', 'GD20160201000079', '2C0009', 'Pharmacy Medicine', '爱乐维 100片', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('80', 'GD20160201000080', '2C0009', 'Bioland', '乳钙', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('81', 'GD20160201000081', '2C0009', 'Bioland', '鳕鱼油', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('82', 'GD20160201000082', '2C0009', 'Bioland', 'DHA', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('83', 'GD20160201000083', '2C0009', 'Life Space ', '婴儿益生菌粉 60g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('84', 'GD20160201000084', '2C0001', 'Devondale', '德运 全脂/脱脂成人奶粉6袋装', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('85', 'GD20160201000085', '2C0001', 'Devondale', '德运全脂/脱脂成人奶粉8袋装 ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('86', 'GD20160201000086', '2C0008', 'A2', 'A2婴儿配方奶粉 1 段 900g ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('87', 'GD20160201000087', '2C0008', 'A2', 'A2婴儿配方奶粉 2 段 900g ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('88', 'GD20160201000088', '2C0008', 'A2', 'A2婴儿配方奶粉 3 段 900g ', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('89', 'GD20160201000089', '2C0008', 'Aptamil', 'Aptamil 爱他美金装1段 900g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('90', 'GD20160201000090', '2C0008', 'Aptamil', 'Aptamil 爱他美金装2段 900g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('91', 'GD20160201000091', '2C0008', 'Aptamil', 'Aptamil  爱他美金装3段 900g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('92', 'GD20160201000092', '2C0008', 'Aptamil', 'Aptamil  爱他美金装4段 900g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('93', 'GD20160201000093', '2C0008', 'Bellamy ', '贝拉米1段 900g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('94', 'GD20160201000094', '2C0008', 'Bellamy ', '贝拉米2段 900g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods` VALUES ('95', 'GD20160201000095', '2C0008', 'Bellamy ', '贝拉米3段 900g', '', '', '', '', '', '1', '0', '0', '60.00', '10', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');

-- ----------------------------
-- Table structure for `t_goods_append_items`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_append_items`;
CREATE TABLE `t_goods_append_items` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `itemId` varchar(10) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `displayName` varchar(50) DEFAULT NULL,
  `fieldName` varchar(50) DEFAULT NULL,
  `fieldType` varchar(6) DEFAULT NULL,
  `fieldLength` int(8) DEFAULT NULL,
  `inputType` varchar(6) DEFAULT NULL,
  `defaultValue` varchar(500) DEFAULT NULL,
  `isRequired` char(1) DEFAULT NULL,
  `sortOrder` int(8) DEFAULT NULL,
  `openFlg` char(1) NOT NULL,
  `buyUseFlg` char(1) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_append_items
-- ----------------------------

-- ----------------------------
-- Table structure for `t_goods_classification`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_classification`;
CREATE TABLE `t_goods_classification` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `classId` varchar(10) NOT NULL,
  `className` varchar(50) DEFAULT NULL,
  `sortOrder` int(8) DEFAULT NULL,
  `fatherClassId` varchar(10) NOT NULL,
  `openFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_classification
-- ----------------------------
INSERT INTO `t_goods_classification` VALUES ('1', '1C0001', '营养保健', '10', '0C0000', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('2', '1C0002', '母婴用品', '15', '0C0000', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('3', '1C0003', '美容护肤', '20', '0C0000', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('4', '1C0004', '进口食品', '25', '0C0000', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('5', '1C0005', '酒水茶饮', '30', '0C0000', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('6', '1C0006', '居家日用', '35', '0C0000', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('7', '2C0001', '调节免疫', '10', '1C0001', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('8', '2C0002', '调节三高', '15', '1C0001', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('9', '2C0003', '维生素钙', '20', '1C0001', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('10', '2C0004', '肝肾养护', '25', '1C0001', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('11', '2C0005', '骨骼健康', '30', '1C0001', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('12', '2C0006', '呵护女性', '35', '1C0001', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('13', '2C0007', '男性健康', '40', '1C0001', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('14', '2C0008', '宝宝奶粉', '10', '1C0002', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('15', '2C0009', '宝宝健康', '15', '1C0002', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('16', '2C0010', '宝宝辅食', '20', '1C0002', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('17', '2C0011', '宝宝护理', '25', '1C0002', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('18', '2C0012', '妈妈备孕', '30', '1C0002', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('19', '2C0013', '绵羊油', '10', '1C0003', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('20', '2C0014', '护肤', '15', '1C0003', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('21', '2C0015', '精油', '20', '1C0003', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('22', '2C0016', '化妆品', '25', '1C0003', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('23', '2C0017', '饼干糕点', '10', '1C0004', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('24', '2C0018', '乳制品', '15', '1C0004', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('25', '2C0019', '糖果/巧克力', '20', '1C0004', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('26', '2C0020', '休闲食品', '25', '1C0004', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('27', '2C0021', '红酒', '10', '1C0005', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('28', '2C0022', '咖啡', '15', '1C0005', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('29', '2C0023', 'UGG', '10', '1C0006', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('30', '2C0024', '羊毛制品', '15', '1C0006', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_classification` VALUES ('31', '2C0025', '日常用品', '20', '1C0006', '0', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');

-- ----------------------------
-- Table structure for `t_goods_group`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_group`;
CREATE TABLE `t_goods_group` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `groupNo` varchar(16) NOT NULL,
  `goodsId` varchar(16) NOT NULL,
  `groupPrice` decimal(12,2) NOT NULL,
  `groupMaxQuantity` decimal(12,0) DEFAULT NULL,
  `groupCurrentQuantity` decimal(12,0) DEFAULT NULL,
  `groupComments` varchar(500) DEFAULT NULL,
  `groupDesc` varchar(255) DEFAULT NULL,
  `comsumerReminder` varchar(255) DEFAULT NULL,
  `shopperRules` varchar(255) DEFAULT NULL,
  `openFlg` char(1) NOT NULL,
  `validPeriodStart` timestamp NULL DEFAULT NULL,
  `validPeriodEnd` timestamp NULL DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_group
-- ----------------------------
INSERT INTO `t_goods_group` VALUES ('1', 'GP20160201000001', 'GD20160201000001', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('2', 'GP20160201000002', 'GD20160201000002', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('3', 'GP20160201000003', 'GD20160201000003', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('4', 'GP20160201000004', 'GD20160201000004', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('5', 'GP20160201000005', 'GD20160201000005', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('6', 'GP20160201000006', 'GD20160201000006', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('7', 'GP20160201000007', 'GD20160201000007', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('8', 'GP20160201000008', 'GD20160201000008', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('9', 'GP20160201000009', 'GD20160201000009', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('10', 'GP20160201000010', 'GD20160201000010', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('11', 'GP20160201000011', 'GD20160201000011', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('12', 'GP20160201000012', 'GD20160201000012', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('13', 'GP20160201000013', 'GD20160201000013', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('14', 'GP20160201000014', 'GD20160201000014', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('15', 'GP20160201000015', 'GD20160201000015', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('16', 'GP20160201000016', 'GD20160201000016', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('17', 'GP20160201000017', 'GD20160201000017', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('18', 'GP20160201000018', 'GD20160201000018', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('19', 'GP20160201000019', 'GD20160201000019', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('20', 'GP20160201000020', 'GD20160201000020', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('21', 'GP20160201000021', 'GD20160201000021', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('22', 'GP20160201000022', 'GD20160201000022', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('23', 'GP20160201000023', 'GD20160201000023', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('24', 'GP20160201000024', 'GD20160201000024', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('25', 'GP20160201000025', 'GD20160201000025', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('26', 'GP20160201000026', 'GD20160201000026', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('27', 'GP20160201000027', 'GD20160201000027', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('28', 'GP20160201000028', 'GD20160201000028', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('29', 'GP20160201000029', 'GD20160201000029', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('30', 'GP20160201000030', 'GD20160201000030', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('31', 'GP20160201000031', 'GD20160201000031', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('32', 'GP20160201000032', 'GD20160201000032', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('33', 'GP20160201000033', 'GD20160201000033', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('34', 'GP20160201000034', 'GD20160201000034', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('35', 'GP20160201000035', 'GD20160201000035', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('36', 'GP20160201000036', 'GD20160201000036', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('37', 'GP20160201000037', 'GD20160201000037', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('38', 'GP20160201000038', 'GD20160201000038', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('39', 'GP20160201000039', 'GD20160201000039', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('40', 'GP20160201000040', 'GD20160201000040', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('41', 'GP20160201000041', 'GD20160201000041', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('42', 'GP20160201000042', 'GD20160201000042', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('43', 'GP20160201000043', 'GD20160201000043', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('44', 'GP20160201000044', 'GD20160201000044', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('45', 'GP20160201000045', 'GD20160201000045', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('46', 'GP20160201000046', 'GD20160201000046', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('47', 'GP20160201000047', 'GD20160201000047', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('48', 'GP20160201000048', 'GD20160201000048', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('49', 'GP20160201000049', 'GD20160201000049', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('50', 'GP20160201000050', 'GD20160201000050', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('51', 'GP20160201000051', 'GD20160201000051', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('52', 'GP20160201000052', 'GD20160201000052', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('53', 'GP20160201000053', 'GD20160201000053', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('54', 'GP20160201000054', 'GD20160201000054', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('55', 'GP20160201000055', 'GD20160201000055', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('56', 'GP20160201000056', 'GD20160201000056', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('57', 'GP20160201000057', 'GD20160201000057', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('58', 'GP20160201000058', 'GD20160201000058', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('59', 'GP20160201000059', 'GD20160201000059', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('60', 'GP20160201000060', 'GD20160201000060', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('61', 'GP20160201000061', 'GD20160201000061', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('62', 'GP20160201000062', 'GD20160201000062', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('63', 'GP20160201000063', 'GD20160201000063', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('64', 'GP20160201000064', 'GD20160201000064', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('65', 'GP20160201000065', 'GD20160201000065', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('66', 'GP20160201000066', 'GD20160201000066', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('67', 'GP20160201000067', 'GD20160201000067', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('68', 'GP20160201000068', 'GD20160201000068', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('69', 'GP20160201000069', 'GD20160201000069', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('70', 'GP20160201000070', 'GD20160201000070', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('71', 'GP20160201000071', 'GD20160201000071', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('72', 'GP20160201000072', 'GD20160201000072', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('73', 'GP20160201000073', 'GD20160201000073', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('74', 'GP20160201000074', 'GD20160201000074', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('75', 'GP20160201000075', 'GD20160201000075', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('76', 'GP20160201000076', 'GD20160201000076', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('77', 'GP20160201000077', 'GD20160201000077', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('78', 'GP20160201000078', 'GD20160201000078', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('79', 'GP20160201000079', 'GD20160201000079', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('80', 'GP20160201000080', 'GD20160201000080', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('81', 'GP20160201000081', 'GD20160201000081', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('82', 'GP20160201000082', 'GD20160201000082', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('83', 'GP20160201000083', 'GD20160201000083', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('84', 'GP20160201000084', 'GD20160201000084', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('85', 'GP20160201000085', 'GD20160201000085', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('86', 'GP20160201000086', 'GD20160201000086', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('87', 'GP20160201000087', 'GD20160201000087', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('88', 'GP20160201000088', 'GD20160201000088', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('89', 'GP20160201000089', 'GD20160201000089', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('90', 'GP20160201000090', 'GD20160201000090', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('91', 'GP20160201000091', 'GD20160201000091', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('92', 'GP20160201000092', 'GD20160201000092', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('93', 'GP20160201000093', 'GD20160201000093', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('94', 'GP20160201000094', 'GD20160201000094', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');
INSERT INTO `t_goods_group` VALUES ('95', 'GP20160201000095', 'GD20160201000095', '80.00', '100', '20', '欢迎来到OZTuanTuan！', 'desc.html', 'reminder.html', 'rules.html', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '2016-02-01 00:00:00', 'oztt', '2016-02-01 00:00:00', 'oztt', 'manual');

-- ----------------------------
-- Table structure for `t_goods_price`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_price`;
CREATE TABLE `t_goods_price` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `priceNo` varchar(16) NOT NULL,
  `goodsId` varchar(16) NOT NULL,
  `goodsClassId` varchar(255) NOT NULL,
  `goodsClassValue` decimal(12,2) DEFAULT NULL,
  `openFlg` char(1) NOT NULL,
  `validPeriodStart` timestamp NULL DEFAULT NULL,
  `validPeriodEnd` timestamp NULL DEFAULT NULL,
  `defaultFlg` char(1) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_price
-- ----------------------------
INSERT INTO `t_goods_price` VALUES ('1', 'PR20160201000001', 'GD20160201000001', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('2', 'PR20160201000002', 'GD20160201000002', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('3', 'PR20160201000003', 'GD20160201000003', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('4', 'PR20160201000004', 'GD20160201000004', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('5', 'PR20160201000005', 'GD20160201000005', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('6', 'PR20160201000006', 'GD20160201000006', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('7', 'PR20160201000007', 'GD20160201000007', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('8', 'PR20160201000008', 'GD20160201000008', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('9', 'PR20160201000009', 'GD20160201000009', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('10', 'PR20160201000010', 'GD20160201000010', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('11', 'PR20160201000011', 'GD20160201000011', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('12', 'PR20160201000012', 'GD20160201000012', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('13', 'PR20160201000013', 'GD20160201000013', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('14', 'PR20160201000014', 'GD20160201000014', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('15', 'PR20160201000015', 'GD20160201000015', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('16', 'PR20160201000016', 'GD20160201000016', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('17', 'PR20160201000017', 'GD20160201000017', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('18', 'PR20160201000018', 'GD20160201000018', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('19', 'PR20160201000019', 'GD20160201000019', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('20', 'PR20160201000020', 'GD20160201000020', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('21', 'PR20160201000021', 'GD20160201000021', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('22', 'PR20160201000022', 'GD20160201000022', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('23', 'PR20160201000023', 'GD20160201000023', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('24', 'PR20160201000024', 'GD20160201000024', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('25', 'PR20160201000025', 'GD20160201000025', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('26', 'PR20160201000026', 'GD20160201000026', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('27', 'PR20160201000027', 'GD20160201000027', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('28', 'PR20160201000028', 'GD20160201000028', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('29', 'PR20160201000029', 'GD20160201000029', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('30', 'PR20160201000030', 'GD20160201000030', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('31', 'PR20160201000031', 'GD20160201000031', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('32', 'PR20160201000032', 'GD20160201000032', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('33', 'PR20160201000033', 'GD20160201000033', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('34', 'PR20160201000034', 'GD20160201000034', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('35', 'PR20160201000035', 'GD20160201000035', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('36', 'PR20160201000036', 'GD20160201000036', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('37', 'PR20160201000037', 'GD20160201000037', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('38', 'PR20160201000038', 'GD20160201000038', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('39', 'PR20160201000039', 'GD20160201000039', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('40', 'PR20160201000040', 'GD20160201000040', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('41', 'PR20160201000041', 'GD20160201000041', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('42', 'PR20160201000042', 'GD20160201000042', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('43', 'PR20160201000043', 'GD20160201000043', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('44', 'PR20160201000044', 'GD20160201000044', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('45', 'PR20160201000045', 'GD20160201000045', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('46', 'PR20160201000046', 'GD20160201000046', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('47', 'PR20160201000047', 'GD20160201000047', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('48', 'PR20160201000048', 'GD20160201000048', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('49', 'PR20160201000049', 'GD20160201000049', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('50', 'PR20160201000050', 'GD20160201000050', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('51', 'PR20160201000051', 'GD20160201000051', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('52', 'PR20160201000052', 'GD20160201000052', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('53', 'PR20160201000053', 'GD20160201000053', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('54', 'PR20160201000054', 'GD20160201000054', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('55', 'PR20160201000055', 'GD20160201000055', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('56', 'PR20160201000056', 'GD20160201000056', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('57', 'PR20160201000057', 'GD20160201000057', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('58', 'PR20160201000058', 'GD20160201000058', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('59', 'PR20160201000059', 'GD20160201000059', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('60', 'PR20160201000060', 'GD20160201000060', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('61', 'PR20160201000061', 'GD20160201000061', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('62', 'PR20160201000062', 'GD20160201000062', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('63', 'PR20160201000063', 'GD20160201000063', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('64', 'PR20160201000064', 'GD20160201000064', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('65', 'PR20160201000065', 'GD20160201000065', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('66', 'PR20160201000066', 'GD20160201000066', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('67', 'PR20160201000067', 'GD20160201000067', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('68', 'PR20160201000068', 'GD20160201000068', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('69', 'PR20160201000069', 'GD20160201000069', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('70', 'PR20160201000070', 'GD20160201000070', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('71', 'PR20160201000071', 'GD20160201000071', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('72', 'PR20160201000072', 'GD20160201000072', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('73', 'PR20160201000073', 'GD20160201000073', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('74', 'PR20160201000074', 'GD20160201000074', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('75', 'PR20160201000075', 'GD20160201000075', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('76', 'PR20160201000076', 'GD20160201000076', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('77', 'PR20160201000077', 'GD20160201000077', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('78', 'PR20160201000078', 'GD20160201000078', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('79', 'PR20160201000079', 'GD20160201000079', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('80', 'PR20160201000080', 'GD20160201000080', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('81', 'PR20160201000081', 'GD20160201000081', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('82', 'PR20160201000082', 'GD20160201000082', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('83', 'PR20160201000083', 'GD20160201000083', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('84', 'PR20160201000084', 'GD20160201000084', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('85', 'PR20160201000085', 'GD20160201000085', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('86', 'PR20160201000086', 'GD20160201000086', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('87', 'PR20160201000087', 'GD20160201000087', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('88', 'PR20160201000088', 'GD20160201000088', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('89', 'PR20160201000089', 'GD20160201000089', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('90', 'PR20160201000090', 'GD20160201000090', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('91', 'PR20160201000091', 'GD20160201000091', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('92', 'PR20160201000092', 'GD20160201000092', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('93', 'PR20160201000093', 'GD20160201000093', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('94', 'PR20160201000094', 'GD20160201000094', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');
INSERT INTO `t_goods_price` VALUES ('95', 'PR20160201000095', 'GD20160201000095', '0', '100.00', '0', '2016-01-01 00:00:00', '2020-01-01 00:00:00', '1');

-- ----------------------------
-- Table structure for `t_goods_property`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_property`;
CREATE TABLE `t_goods_property` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `goodsClassId` varchar(10) NOT NULL,
  `goodsClassValue` varchar(255) DEFAULT NULL,
  `openFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_property
-- ----------------------------

-- ----------------------------
-- Table structure for `t_goods_storage`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_storage`;
CREATE TABLE `t_goods_storage` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `checkinBatch` varchar(20) NOT NULL,
  `checkinQuantity` decimal(12,0) DEFAULT NULL,
  `currentQuantity` decimal(12,0) DEFAULT NULL,
  `checkinPrice` decimal(12,2) DEFAULT NULL,
  `checkinTimestamp` timestamp NULL DEFAULT NULL,
  `checkinPerson` varchar(10) DEFAULT NULL,
  `checkinFlg` char(1) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_storage
-- ----------------------------

-- ----------------------------
-- Table structure for `t_no_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_no_customer`;
CREATE TABLE `t_no_customer` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_no_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `t_no_goods`
-- ----------------------------
DROP TABLE IF EXISTS `t_no_goods`;
CREATE TABLE `t_no_goods` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_no_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `t_no_group`
-- ----------------------------
DROP TABLE IF EXISTS `t_no_group`;
CREATE TABLE `t_no_group` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_no_group
-- ----------------------------

-- ----------------------------
-- Table structure for `t_no_invoice`
-- ----------------------------
DROP TABLE IF EXISTS `t_no_invoice`;
CREATE TABLE `t_no_invoice` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_no_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for `t_no_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_no_order`;
CREATE TABLE `t_no_order` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_no_order
-- ----------------------------

-- ----------------------------
-- Table structure for `t_no_price`
-- ----------------------------
DROP TABLE IF EXISTS `t_no_price`;
CREATE TABLE `t_no_price` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_no_price
-- ----------------------------

-- ----------------------------
-- Table structure for `t_no_transaction`
-- ----------------------------
DROP TABLE IF EXISTS `t_no_transaction`;
CREATE TABLE `t_no_transaction` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_no_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_account`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_account`;
CREATE TABLE `t_sys_account` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `accountNo` varchar(8) NOT NULL,
  `accountType` varchar(6) DEFAULT NULL,
  `accountBalance` decimal(12,2) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_account
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_code`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_code`;
CREATE TABLE `t_sys_code` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `codeId` varchar(6) NOT NULL,
  `codeDetailId` varchar(6) NOT NULL,
  `codeName` varchar(100) NOT NULL,
  `codeDetailName` varchar(100) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_code
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_module`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_module`;
CREATE TABLE `t_sys_module` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `moduleNo` varchar(8) NOT NULL,
  `fatherModuleNo` varchar(8) DEFAULT NULL,
  `moduleName` varchar(50) NOT NULL,
  `moduleDesc` varchar(100) DEFAULT NULL,
  `openFlg` char(1) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_module
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_resource`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_resource`;
CREATE TABLE `t_sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(100) NOT NULL,
  `resourceType` varchar(50) DEFAULT NULL,
  `resourceUrl` varchar(500) DEFAULT NULL,
  `parentResourceId` bigint(20) DEFAULT NULL,
  `parentResourceIds` varchar(200) DEFAULT NULL,
  `resourcePermission` varchar(100) DEFAULT NULL,
  `resourceAvailable` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_resource
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `roleDesc` varchar(100) DEFAULT NULL,
  `resourceIds` varchar(1000) DEFAULT NULL,
  `openFlg` char(1) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
