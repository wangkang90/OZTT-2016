DROP TABLE IF EXISTS `t_cons_invoice`;
CREATE TABLE `t_cons_invoice` (
  `no` bigint(12) NOT NULL AUTO_INCREMENT,
  `invoiceNo` varchar(16) NOT NULL,
  `customerNo` varchar(16) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
