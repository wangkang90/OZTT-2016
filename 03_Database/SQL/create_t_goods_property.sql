DROP TABLE IF EXISTS `t_goods_property`;
CREATE TABLE `t_goods_property` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `goodsClassId` varchar(10) NOT NULL,
  `goodsClassValue` varchar(255) DEFAULT NULL,
  `openFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
