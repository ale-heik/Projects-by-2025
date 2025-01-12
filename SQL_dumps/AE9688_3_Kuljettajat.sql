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
-- Table structure for table `Kuljettajat`
--

DROP TABLE IF EXISTS `Kuljettajat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Kuljettajat` (
  `KuljettajatID` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lastname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phonenumber` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Vehicle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`KuljettajatID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kuljettajat`
--

LOCK TABLES `Kuljettajat` WRITE;
/*!40000 ALTER TABLE `Kuljettajat` DISABLE KEYS */;
INSERT INTO `Kuljettajat` VALUES (13,'Matti','Meikäläinen','Kuljetus Oy','040 123 4567','Ford Transit'),(14,'Maija','Mallikas','Kuljetus Oy','040 987 6543','Mercedes Sprinter'),(15,'Antti','Aho','Kuljetus Oy','040 234 5678','Volkswagen Crafter'),(16,'Tiina','Tavio','Kuljetus Oy','040 876 5432','Renault Master'),(17,'Juho','Järvenpää','Logistiikka Ab','040 111 2222','Iveco Daily'),(18,'Johanna','Järvinen','Logistiikka Ab','040 333 4444','Peugeot Boxer'),(19,'Jussi','Järvi','Logistiikka Ab','040 555 6666','Toyota Proace'),(20,'Jenni','Järvisalo','Logistiikka Ab','040 777 8888','Opel Movano'),(21,'Sakari','Salmi','Jakelufirma Oy','040 112 2211','Ford Transit'),(22,'Satu','Salonen','Jakelufirma Oy','040 334 4433','Fiat Ducato'),(23,'Seppo','Savolainen','Jakelufirma Oy','040 556 6655','Citroen Jumper'),(24,'Sanni','Sipilä','Jakelufirma Oy','040 778 8877','Hyundai H350');
/*!40000 ALTER TABLE `Kuljettajat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 18:02:40
