# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.20)
# Datenbank: flingflang_db
# Erstellungsdauer: 2014-11-13 11:39:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle Benutzer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Benutzer`;

CREATE TABLE `Benutzer` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Benutzername` varchar(30) DEFAULT NULL,
  `Passwort` varchar(30) DEFAULT NULL,
  `EMail` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Benutzer` WRITE;
/*!40000 ALTER TABLE `Benutzer` DISABLE KEYS */;

INSERT INTO `Benutzer` (`ID`, `Benutzername`, `Passwort`, `EMail`)
VALUES
	(1,'Till','1234','till@test.com'),
	(2,'Pascal','abcd','pascal@test.com'),
	(3,'Lennard','xxxx','lennard@test.com'),
	(4,'Sebastian','0000','sebastian@test.com'),
	(5,'Kerber','kerber','kerber@kerber.com');

/*!40000 ALTER TABLE `Benutzer` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
