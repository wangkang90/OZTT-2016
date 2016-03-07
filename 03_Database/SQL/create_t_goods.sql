﻿DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `goodsBrand` varchar(50) NOT NULL,
  `goodsBrandEn` varchar(100) NOT NULL,
  `goodsName` varchar(100) NOT NULL,
  `goodsNameEn` varchar(200) NOT NULL,
  `goodsDesc` varchar(200) DEFAULT NULL,
  `goodsDescEn` varchar(400) DEFAULT NULL,
  `goodsComments` varchar(500) DEFAULT NULL,
  `ifTax` char(1),
  `goodsThumbnail` varchar(255) DEFAULT NULL,
  `goodsSmallPic` varchar(255) DEFAULT NULL,
  `goodsNormalPic` varchar(255) DEFAULT NULL,
  `onSaleFlg` char(1),
  `hotSaleFlg` char(1),
  `newSaleFlg` char(1),
  `costPrice` decimal(12, 2),
  `sortOrder` int(8),
  `deleteFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
