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
-- Table structure for table `Asiakkaat`
--

DROP TABLE IF EXISTS `Asiakkaat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Asiakkaat` (
  `AsiakasID` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lastname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phonenumber` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AsiakasID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Asiakkaat`
--

LOCK TABLES `Asiakkaat` WRITE;
/*!40000 ALTER TABLE `Asiakkaat` DISABLE KEYS */;
INSERT INTO `Asiakkaat` VALUES (1,'Matti','Meikäläinen','Esimerkkifirma Oy','Esimerkkikatu 123','010 123 4567','matti.meikalainen@esimerkki.com'),(2,'Maija','Mallikas','Toinen Firma Oy','Mallitie 456','010 987 6543','maija.mallikas@toinenfirma.com'),(3,'Antti','Ahonen','Testiyritys Ab','Testitie 789','010 234 5678','antti.ahonen@testiyritys.fi'),(4,'Tiina','Tavallinen','Kolmas Oy','Tavallisuudentie 1011','010 876 5432','tiina.tavallinen@kolmasoy.fi'),(5,'Juha','Järvinen','Esimerkkiliike Oy','Järventie 1213','010 345 6789','juha.jarvinen@esimerkkiliike.com'),(6,'Sari','Salmi','FirmaX Oy','Salmentie 1415','010 654 3210','sari.salmi@firmax.fi'),(7,'Pekka','Peltola','Yritys ABC','Peltolantie 1617','010 234 5678','pekka.peltola@yritysabc.com'),(8,'Hanna','Hakala','Hakufirma Oy','Hakalantie 1819','010 543 2109','hanna.hakala@hakufirma.fi'),(9,'Jari','Jokinen','Järkevä Oy','Jokisalmentie 2021','010 876 5432','jari.jokinen@jarkevaoy.fi'),(10,'Anne','Aalto','Aaltoyritys Ab','Aaltotie 2223','010 345 6789','anne.aalto@aaltoyritys.com'),(11,'Markku','Mäkelä','Mäkifirma Oy','Mäkikuja 2425','010 654 3210','markku.makela@makifirma.fi'),(12,'Minna','Mikkonen','Mikko & Co Oy','Mikkotie 2627','010 234 5678','minna.mikkonen@mikkoco.com'),(13,'Kari','Korhonen','Korhonen Solutions Oy','Korhontie 2829','010 543 2109','kari.korhonen@korhonensolutions.fi'),(14,'Tuula','Talonen','Taloyhtiö X Oy','Talotie 3031','010 876 5432','tuula.talonen@taloyhtio.com'),(15,'Seppo','Salonen','Salofirma Oy','Salontie 3233','010 345 6789','seppo.salonen@salofirma.fi'),(16,'Marja','Mäntylä','Mäntäfirma Ab','Mäntätie 3435','010 654 3210','marja.mantyla@mantafirma.com'),(17,'Jussi','Järvelä','Järvisolutions Oy','Järventie 3637','010 234 5678','jussi.jarvela@jarvisolutions.fi'),(18,'Riikka','Rantanen','Rantafirma Oy','Rannantie 3839','010 543 2109','riikka.rantanen@rantafirma.fi'),(19,'Olli','Ojala','Ojalan Yhtiöt Oy','Ojalantie 4041','010 876 5432','olli.ojala@ojalanyhtiot.com'),(20,'Eeva','Erkkilä','Erkkifirma Oy','Erkkiläntie 4243','010 345 6789','eeva.erkkila@erkkifirma.fi'),(21,'Mikko','Mikkola','Mikko Group Oy','Mikkolantie 4445','010 654 3210','mikko.mikkola@mikkogroup.com'),(22,'Leena','Laitinen','Laitos Oy','Laitostie 4647','010 234 5678','leena.laitinen@laitosoy.fi'),(23,'Timo','Tolonen','Toloyritys Ab','Tolotie 4849','010 543 2109','timo.tolonen@toloyritys.fi'),(24,'Sirpa','Saarinen','Saarifirma Oy','Saaristentie 5051','010 876 5432','sirpa.saarinen@saarifirma.fi'),(25,'Mika','Mäki','Mäkiyhtiö Oy','Mäkikuja 5253','010 345 6789','mika.maki@makiyhtio.com'),(26,'Anna','Aaltonen','Aaltosolutions Oy','Aaltotie 5455','010 654 3210','anna.aaltonen@aaltosolutions.fi'),(27,'Ville','Virtanen','Virtafirma Oy','Virtatie 5657','010 234 5678','ville.virtanen@virtafirma.fi'),(28,'Heli','Heikkinen','Heikkinen Group Oy','Heikkitie 5859','010 543 2109','heli.heikkinen@heikkinengroup.com'),(29,'Joonas','Jokela','Jokelafirma Ab','Jokelantie 6061','010 876 5432','joonas.jokela@jokelafirma.fi'),(30,'Satu','Savolainen','Savofirma Oy','Savotie 6263','010 345 6789','satu.savolainen@savofirma.fi');
/*!40000 ALTER TABLE `Asiakkaat` ENABLE KEYS */;
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
