-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: mariadb.labranet.jamk.fi    Database: AE9688_3
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.12-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Toimitukset_has_Kuljettajat`
--

DROP TABLE IF EXISTS `Toimitukset_has_Kuljettajat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Toimitukset_has_Kuljettajat` (
  `ToimituksetID` int(11) NOT NULL,
  `KuljettajatID` int(11) NOT NULL,
  PRIMARY KEY (`ToimituksetID`,`KuljettajatID`),
  KEY `fk_Toimitukset_has_Kuljettajat_Kuljettajat1_idx` (`KuljettajatID`),
  KEY `fk_Toimitukset_has_Kuljettajat_Toimitukset1_idx` (`ToimituksetID`),
  CONSTRAINT `fk_Toimitukset_has_Kuljettajat_Kuljettajat1` FOREIGN KEY (`KuljettajatID`) REFERENCES `Kuljettajat` (`KuljettajatID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Toimitukset_has_Kuljettajat_Toimitukset1` FOREIGN KEY (`ToimituksetID`) REFERENCES `Toimitukset` (`ToimituksetID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Toimitukset_has_Kuljettajat`
--

LOCK TABLES `Toimitukset_has_Kuljettajat` WRITE;
/*!40000 ALTER TABLE `Toimitukset_has_Kuljettajat` DISABLE KEYS */;
/*!40000 ALTER TABLE `Toimitukset_has_Kuljettajat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 18:02:39
