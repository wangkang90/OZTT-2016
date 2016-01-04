DROP TABLE IF EXISTS `t_no_order`;
CREATE TABLE `t_no_order` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
