DROP TABLE IF EXISTS `t_cons_cart`;
CREATE TABLE `t_cons_cart` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `goodsId` varchar(16) NOT NULL,
  `customerNo` varchar(16) NOT NULL,
  `groupMaxQuantity` varchar(1000) DEFAULT NULL,
  `groupCurrentQuantity` decimal(12, 0),
  `groupComments` varchar(500) DEFAULT NULL,
  `groupDesc` varchar(255) DEFAULT NULL,
  `priceNo` varchar(16) DEFAULT NULL,
  `comsumerReminder` varchar(255) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
