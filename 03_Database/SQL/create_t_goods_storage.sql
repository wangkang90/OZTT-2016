DROP TABLE IF EXISTS `t_goods_storage`;
CREATE TABLE `t_goods_storage` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `groupPrice` varchar(20) NOT NULL,
  `groupMaxQuantity` decimal(12, 0),
  `groupCurrentQuantity` decimal(12, 0),
  `checkinPrice` decimal(12, 2),
  `checkinTimestamp` timestamp NULL DEFAULT NULL,
  `checkinPerson` varchar(10) DEFAULT NULL,
  `checkinFlg` char(1),
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
