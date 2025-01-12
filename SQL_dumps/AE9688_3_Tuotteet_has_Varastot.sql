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
-- Table structure for table `Tuotteet_has_Varastot`
--

DROP TABLE IF EXISTS `Tuotteet_has_Varastot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tuotteet_has_Varastot` (
  `TuotteetID` int(11) NOT NULL,
  `VarastotID` int(11) NOT NULL,
  `Saldo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT 'Tuotetta ei varastossa',
  PRIMARY KEY (`TuotteetID`,`VarastotID`),
  KEY `fk_Tuotteet_has_Varastot_Varastot1_idx` (`VarastotID`),
  KEY `fk_Tuotteet_has_Varastot_Tuotteet1_idx` (`TuotteetID`),
  CONSTRAINT `fk_Tuotteet_has_Varastot_Tuotteet1` FOREIGN KEY (`TuotteetID`) REFERENCES `Tuotteet` (`TuotteetID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tuotteet_has_Varastot_Varastot1` FOREIGN KEY (`VarastotID`) REFERENCES `Varastot` (`VarastotID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tuotteet_has_Varastot`
--

LOCK TABLES `Tuotteet_has_Varastot` WRITE;
/*!40000 ALTER TABLE `Tuotteet_has_Varastot` DISABLE KEYS */;
INSERT INTO `Tuotteet_has_Varastot` VALUES (1,1,'100'),(2,1,'75'),(3,1,'50'),(4,2,'60'),(5,2,'120'),(6,3,'50'),(7,3,'30'),(8,3,'80'),(9,4,'40'),(10,4,'100'),(11,5,'150'),(12,5,'200'),(13,6,'100'),(14,6,'80'),(15,7,'120'),(16,7,'120'),(17,8,'80'),(18,8,'100'),(19,9,'150'),(20,9,'200'),(21,9,'30'),(22,10,'50'),(23,10,'100'),(24,11,'80'),(25,11,'120'),(26,11,'80'),(27,12,'100'),(28,12,'60'),(29,13,'70'),(30,13,'50'),(31,13,'200'),(32,14,'150'),(33,14,'180'),(34,15,'250'),(35,15,'300'),(36,15,'200'),(37,16,'150'),(38,16,'100'),(39,17,'120'),(40,17,'80'),(41,17,'50'),(42,18,'30'),(43,18,'80'),(44,18,'40'),(45,18,'100');
/*!40000 ALTER TABLE `Tuotteet_has_Varastot` ENABLE KEYS */;
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
