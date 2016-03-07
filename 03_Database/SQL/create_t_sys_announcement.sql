DROP TABLE IF EXISTS `t_sys_announcement`;
CREATE TABLE `t_sys_announcement` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `announceNo` varchar(16) NOT NULL,
  `announceTitle` varchar(255) NOT NULL,
  `announceContent` varchar(1000) NOT NULL,
  `releaseTime` timestamp NULL DEFAULT NULL,
  `ifRevoke` char(1),
  `revokeTime` timestamp NULL DEFAULT NULL,
  `ifDelete` char(1),
  `deleteTime` timestamp NULL DEFAULT NULL,
  `priority` char(1),
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
