DROP TABLE IF EXISTS `t_no_goods`;
CREATE TABLE `t_no_goods` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `maxNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
