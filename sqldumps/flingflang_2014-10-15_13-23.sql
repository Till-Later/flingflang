# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.16)
# Datenbank: flingflang
# Erstellungsdauer: 2014-10-15 11:23:21 +0000
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
	(4,'Sebastian','0000','sebastian@test.com');

/*!40000 ALTER TABLE `Benutzer` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle Chat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Chat`;

CREATE TABLE `Chat` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_gesendetVon` int(11) unsigned NOT NULL,
  `ID_gesendetAn` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Chat` WRITE;
/*!40000 ALTER TABLE `Chat` DISABLE KEYS */;

INSERT INTO `Chat` (`ID`, `ID_gesendetVon`, `ID_gesendetAn`)
VALUES
	(1,1,2),
	(2,2,1),
	(3,1,3);

/*!40000 ALTER TABLE `Chat` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle Nachricht
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Nachricht`;

CREATE TABLE `Nachricht` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Chat` int(11) DEFAULT NULL,
  `Zeit` timestamp NULL DEFAULT NULL,
  `Nachrichtentext` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Nachricht` WRITE;
/*!40000 ALTER TABLE `Nachricht` DISABLE KEYS */;

INSERT INTO `Nachricht` (`ID`, `ID_Chat`, `Zeit`, `Nachrichtentext`)
VALUES
	(6,1,'2014-10-10 11:22:51','Hallo Pascal wie geht\'s?'),
	(7,2,'2014-10-10 11:03:17','Na Till, was los bei dir?'),
	(8,3,'2014-10-10 11:14:25','Tach, Lennard (:');

/*!40000 ALTER TABLE `Nachricht` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
