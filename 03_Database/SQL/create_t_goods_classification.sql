DROP TABLE IF EXISTS `t_goods_classification`;
CREATE TABLE `t_goods_classification` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `classId` varchar(10) NOT NULL,
  `className` varchar(50) DEFAULT NULL,
  `sortOrder` int(8),
  `fatherClassId` varchar(10) NOT NULL,
  `openFlg` char(1) NOT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
