DROP TABLE IF EXISTS `t_sys_account`;
CREATE TABLE `t_sys_account` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `accountNo` varchar(8) NOT NULL,
  `accountType` varchar(6) DEFAULT NULL,
  `accountBalance` decimal(12, 2),
  `addTimestamp` timestamp NULL DEFAULT NULL,
  `addUserKey` varchar(40) DEFAULT NULL,
  `updTimestamp` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updUserKey` varchar(40) DEFAULT NULL,
  `updPgmId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
