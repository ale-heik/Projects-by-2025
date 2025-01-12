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
-- Table structure for table `Tuotteet`
--

DROP TABLE IF EXISTS `Tuotteet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tuotteet` (
  `TuotteetID` int(11) NOT NULL AUTO_INCREMENT,
  `Productname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci DEFAULT 'Ei kuvausta toistaiseksi',
  `Productdate` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '2024',
  `Productprice` decimal(8,2) NOT NULL,
  `Productcategory` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Productamount` decimal(8,0) NOT NULL,
  PRIMARY KEY (`TuotteetID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tuotteet`
--

LOCK TABLES `Tuotteet` WRITE;
/*!40000 ALTER TABLE `Tuotteet` DISABLE KEYS */;
INSERT INTO `Tuotteet` VALUES (1,'Älypuhelin A1','Streamaa, pelaa ja pidä yhteyttä tällä tehokkaalla älypuhelimella.','2024',600.00,'1',100),(2,'Tabletti T2','Kevyt ja kätevä tabletti, joka sopii työhön ja viihteeseen.','2024',350.00,'1',75),(3,'Langaton kuulokepari L3','Täysin langattomat kuulokkeet erinomaisella äänenlaadulla.','2024',130.00,'1',50),(4,'Älykello K4','Tyylikäs älykello, joka seuraa aktiivisuutta ja antaa ilmoituksia.','2024',200.00,'1',60),(5,'Langaton hiiri H5','Ergonominen ja tarkka langaton hiiri pitkäaikaiseen käyttöön.','2024',50.00,'1',120),(6,'Astianpesukone K6','Tehokas astianpesukone, joka tekee tiskien pesusta vaivatonta.','2024',799.99,'2',50),(7,'Jääkaappi J7','Tilava jääkaappi, joka pitää ruoat tuoreina pitkään.','2024',1499.99,'2',30),(8,'Mikroaaltouuni M8','Kompakti mikroaaltouuni, jossa on monipuoliset toiminnot.','2024',129.99,'2',80),(9,'Pesukone P9','Laadukas pesukone, joka pesee vaatteet hellävaraisesti ja tehokkaasti.','2024',899.99,'2',40),(10,'Kahvinkeitin K10','Helppokäyttöinen kahvinkeitin, joka valmistaa herkullista kahvia nopeasti.','2024',59.99,'2',100),(11,'Farkut F12','Laadukkaat farkut, jotka istuvat mukavasti ja ovat tyylikkäät.','2024',59.99,'3',150),(12,'T-paita T13','Perus t-paita, joka sopii jokapäiväiseen käyttöön.','2024',19.99,'3',200),(13,'Huppari H14','Mukava huppari, jossa on käytännöllinen vetoketju edessä.','2024',39.99,'3',100),(14,'Takki T15','Kevyt ja lämmin takki, joka sopii kaikkiin sääolosuhteisiin.','2024',79.99,'3',80),(15,'Kauluspaita K16','Tyylikäs kauluspaita, joka sopii niin arkeen kuin juhlaankin.','2024',49.99,'3',120),(16,'Lenkkarit L20','Kevyet lenkkarit, jotka tarjoavat mukavan ja joustavan istuvuuden.','2024',79.99,'4',120),(17,'Saappaat S21','Kestävät saappaat, jotka pitävät jalat kuivina sateisella säällä.','2024',99.99,'4',80),(18,'Korkokengät K22','Tyylikkäät korkokengät, jotka sopivat niin arkeen kuin juhlaan.','2024',69.99,'4',100),(19,'Sandaalit S23','Viihtyisät sandaalit, jotka ovat täydelliset kesäpäivään.','2024',39.99,'4',150),(20,'Tennarit T24','Klassiset tennarit, jotka ovat mukavat ja monikäyttöiset.','2024',49.99,'4',200),(21,'Juoksumatto J20','Laadukas juoksumatto, joka sopii kotikäyttöön.','2024',499.99,'5',30),(22,'Kuntopyörä K21','Kuntopyörä, joka tarjoaa tehokkaan ja mukavan harjoitusmahdollisuuden.','2024',299.99,'5',50),(23,'Jumppapallo J22','Jumppapallo monipuoliseen harjoitteluun ja liikkuvuuden parantamiseen.','2024',24.99,'5',100),(24,'Käsipainot K23','Käsipainot, jotka sopivat monipuoliseen voimaharjoitteluun.','2024',39.99,'5',80),(25,'Joogamatto J24','Pehmeä ja mukava joogamatto, joka tarjoaa hyvän alustan harjoittelulle.','2024',29.99,'5',120),(26,'Seikkailujen saari','Jännittävä seikkailukirja, joka vie lukijan eksoottisille maille.','2024',24.99,'6',80),(27,'Kadonnut aarre','Klassinen seikkailukertomus, jossa on jännitystä ja seikkailua.','2024',19.99,'6',100),(28,'Rakkauden voima','Koskettava romaani rakkaudesta ja sen voimasta.','2024',29.99,'6',60),(29,'Tiedon valtatie','Tietokirja, joka tarjoaa mielenkiintoista tietoa eri aiheista.','2024',39.99,'6',70),(30,'Kotimme historia','Kattava tietokirja suomen historiasta aina muinaisajoista nykypäivään.','2024',49.99,'6',50),(31,'Ripsiväri R22','Pidentävä ja tuuheuttava ripsiväri, joka antaa intensiivisen katseen.','2024',12.99,'7',200),(32,'Huulipuna H23','Pitkäkestoinen huulipuna, joka antaa upean värin huulillesi.','2024',9.99,'7',150),(33,'Meikkivoide M24','Kevyt ja peittävä meikkivoide, joka tasoittaa ihon sävyn täydellisesti.','2024',14.99,'7',180),(34,'Poskipuna P25','Luonnollinen poskipuna, joka antaa kasvoillesi heleän sävyn.','2024',8.99,'7',250),(35,'Kynsilakka K26','Pitkäkestoinen kynsilakka, joka antaa kiiltävän ja tasaisen lopputuloksen.','2024',6.99,'7',300),(36,'Maidoton maito MaitoMestari','Vegaaninen vaihtoehto tavalliselle maidolle.','2024',2.99,'8',200),(37,'Kotimainen ruisleipä RuisRiemu','Perinteinen suomalainen ruisleipä, joka maistuu hyvältä kaiken kanssa.','2024',3.49,'8',150),(38,'Luomumansikat MansikkaMania','Luomulaatuiset kotimaiset mansikat, jotka ovat täynnä makua ja vitamiineja.','2024',4.99,'8',100),(39,'Karjalanpiirakat PiirakkaPirtti','Aitoja ja perinteisiä karjalanpiirakoita suoraan paikalliselta leipomolta.','2024',6.99,'8',120),(40,'Kotimainen lohi LohiLaine','Tuoretta ja laadukasta kotimaista lohta suoraan kalastajilta.','2024',12.99,'8',80),(41,'Ruokapöytä R20','Massiivipuinen ruokapöytä, joka tarjoaa tilaa koko perheelle.','2024',499.99,'9',50),(42,'Sohva S21','Mukava ja tyylikäs sohva, jossa on pehmeät istuintyynyt.','2024',899.99,'9',30),(43,'Kirjahylly K22','Tilava kirjahylly, jossa on runsaasti säilytystilaa kirjoille ja koristeille.','2024',129.99,'9',80),(44,'Sängynrunko S23','Laadukas sängynrunko, joka sopii eri kokoisiin patjoihin.','2024',349.99,'9',40),(45,'Työpöytä T24','Käytännöllinen työpöytä, jossa on tilaa tietokoneelle ja tarvikkeille.','2024',199.99,'9',100);
/*!40000 ALTER TABLE `Tuotteet` ENABLE KEYS */;
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
