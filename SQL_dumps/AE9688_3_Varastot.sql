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
-- Table structure for table `Varastot`
--

DROP TABLE IF EXISTS `Varastot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Varastot` (
  `VarastotID` int(11) NOT NULL AUTO_INCREMENT,
  `Warehouseaddress` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Productavailabilty` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Category` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`VarastotID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Varastot`
--

LOCK TABLES `Varastot` WRITE;
/*!40000 ALTER TABLE `Varastot` DISABLE KEYS */;
INSERT INTO `Varastot` VALUES (1,'Pajukuja 5','Available','1'),(2,'Kievarinkatu 1','Unavaliable','1'),(3,'Mäkitie 8','Available','2'),(4,'Lehtikuja 12','Unavaliable','2'),(5,'Koulutie 7','Available','3'),(6,'Rantapolku 3','Unavaliable','3'),(7,'Korventie 14','Available','4'),(8,'Kirkkokatu 9','Unavaliable','4'),(9,'Kuusitie 2','Available','5'),(10,'Pajulahdentie 6','Unavaliable','5'),(11,'Kylätie 11','Available','6'),(12,'Kalliopolku 4','Unavaliable','6'),(13,'Metsäkuja 10','Available','7'),(14,'Puistotie 15','Unavaliable','7'),(15,'Järvikuja 13','Available','8'),(16,'Riippakuja 16','Unavaliable','8'),(17,'Kalliokatu 17','Available','9'),(18,'Jokitie 18','Unavaliable','9');
/*!40000 ALTER TABLE `Varastot` ENABLE KEYS */;
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
