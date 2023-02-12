use sql7578501;

DROP TABLE IF EXISTS `developmentproject`;

CREATE TABLE `developmentproject` (
  `DName` varchar(30) NOT NULL,
  `Location` varchar(20) NOT NULL,
  PRIMARY KEY (`DName`,`Location`)
) ;

