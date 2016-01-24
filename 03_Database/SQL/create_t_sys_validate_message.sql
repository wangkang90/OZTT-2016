DROP TABLE IF EXISTS `t_sys_validate_message`;
CREATE TABLE `t_sys_validate_message` (
  `id` bigint(18) NOT NULL AUTO_INCREMENT,
  `telNumber` varchar(20) DEFAULT NULL,
  `validateCode` varchar(10) DEFAULT NULL,
  `createTimestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
