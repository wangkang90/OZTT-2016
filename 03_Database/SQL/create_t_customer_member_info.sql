DROP TABLE IF EXISTS `t_customer_member_info`;
CREATE TABLE `t_customer_member_info` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `customerNo` varchar(16) NOT NULL,
  `memberCardNo` varchar(16) DEFAULT NULL,
  `points` int(8),
  `level` varchar(6) DEFAULT NULL,
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
