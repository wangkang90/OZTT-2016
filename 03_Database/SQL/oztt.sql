/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50618
Source Host           : localhost:3306
Source Database       : oztt

Target Server Type    : MYSQL
Target Server Version : 50618
File Encoding         : 65001

Date: 2016-01-05 16:13:06
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
  `groupMaxQuantity` varchar(1000) DEFAULT NULL,
  `groupCurrentQuantity` decimal(12,0) DEFAULT NULL,
  `groupComments` varchar(500) DEFAULT NULL,
  `groupDesc` varchar(255) DEFAULT NULL,
  `priceNo` varchar(16) DEFAULT NULL,
  `comsumerReminder` varchar(255) DEFAULT NULL,
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
  `goodsName` varchar(50) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_classification
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_group
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_price
-- ----------------------------

-- ----------------------------
-- Table structure for `t_goods_property`
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_property`;
CREATE TABLE `t_goods_property` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `goodsClassId` varchar(10) NOT NULL,
  `goodsClassValue` varchar(500) DEFAULT NULL,
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
  `groupPrice` varchar(20) NOT NULL,
  `groupMaxQuantity` decimal(12,0) DEFAULT NULL,
  `groupCurrentQuantity` decimal(12,0) DEFAULT NULL,
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
