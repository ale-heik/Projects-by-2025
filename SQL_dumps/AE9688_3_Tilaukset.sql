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
-- Table structure for table `Tilaukset`
--

DROP TABLE IF EXISTS `Tilaukset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tilaukset` (
  `TilauksetID` int(11) NOT NULL AUTO_INCREMENT,
  `AsiakasID` int(11) NOT NULL,
  `Address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Orderprice` decimal(8,0) NOT NULL,
  `Orderdate` datetime NOT NULL,
  `Orderstate` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`TilauksetID`),
  KEY `fk_Tilaukset_Asiakkaat1_idx` (`AsiakasID`),
  CONSTRAINT `fk_Tilaukset_Asiakkaat1` FOREIGN KEY (`AsiakasID`) REFERENCES `Asiakkaat` (`AsiakasID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tilaukset`
--

LOCK TABLES `Tilaukset` WRITE;
/*!40000 ALTER TABLE `Tilaukset` DISABLE KEYS */;
INSERT INTO `Tilaukset` VALUES (31,30,'Esimerkkikatu 123',6380,'2024-03-18 10:23:54','Tilattu'),(32,29,'Mallitie 456',5861,'2024-03-02 10:23:54','Odottaa toimitusta'),(33,28,'Testitie 789',3532,'2024-02-23 10:23:54','Lähetetty'),(34,27,'Tavallisuudentie 1011',3558,'2024-03-17 10:23:54','Tilattu'),(35,26,'Järventie 1213',5218,'2024-03-13 10:23:54','Odottaa toimitusta'),(36,25,'Salmentie 1415',6818,'2024-03-01 10:23:54','Lähetetty'),(37,24,'Peltolantie 1617',2478,'2024-03-13 10:23:54','Tilattu'),(38,23,'Hakalantie 1819',4623,'2024-03-03 10:23:54','Odottaa toimitusta'),(39,22,'Jokisalmentie 2021',5232,'2024-02-24 10:23:54','Lähetetty'),(40,21,'Aaltotie 2223',7402,'2024-03-17 10:23:54','Tilattu'),(41,20,'Mäkikuja 2425',3548,'2024-03-08 10:23:54','Odottaa toimitusta'),(42,19,'Mikkotie 2627',9786,'2024-02-29 10:23:54','Lähetetty'),(43,18,'Korhontie 2829',4607,'2024-03-13 10:23:54','Tilattu'),(44,17,'Talotie 3031',8464,'2024-03-06 10:23:54','Odottaa toimitusta'),(45,16,'Salontie 3233',9544,'2024-03-12 10:23:54','Lähetetty'),(46,15,'Mäntätie 3435',5268,'2024-02-26 10:23:54','Tilattu'),(47,14,'Järventie 3637',3402,'2024-03-11 10:23:54','Odottaa toimitusta'),(48,13,'Rannantie 3839',6416,'2024-03-14 10:23:54','Lähetetty'),(49,12,'Ojalantie 4041',1297,'2024-02-20 10:23:54','Tilattu'),(50,11,'Erkkiläntie 4243',5599,'2024-02-25 10:23:54','Tilattu'),(51,10,'Kuljetustie 4445',4699,'2024-02-24 10:23:54','Tilattu'),(52,9,'Toimitustie 4647',8285,'2024-03-02 10:23:54','Odottaa toimitusta'),(53,8,'Logistiikkatie 4849',5336,'2024-02-24 10:23:54','Lähetetty'),(54,7,'Jakelutie 5051',6112,'2024-03-05 10:23:54','Tilattu'),(55,6,'Paketointitie 5253',7806,'2024-03-11 10:23:54','Odottaa toimitusta'),(56,5,'Kuljetuskujatie 5455',3302,'2024-03-02 10:23:54','Lähetetty'),(57,4,'Pakkaustie 5657',1479,'2024-02-25 10:23:54','Tilattu'),(58,3,'Lähettitie 5859',7392,'2024-03-15 10:23:54','Odottaa toimitusta'),(59,2,'Toimituskatu 6061',7437,'2024-03-16 10:23:54','Lähetetty'),(60,1,'Kuljetuskuja 6263',4571,'2024-02-24 10:23:54','Tilattu');
/*!40000 ALTER TABLE `Tilaukset` ENABLE KEYS */;
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
