DROP TABLE IF EXISTS `t_suburb_deliver_fee`;
CREATE TABLE `t_suburb_deliver_fee` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `suburb` varchar(100) NOT NULL,
  `deliverFee` decimal(12, 2) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
