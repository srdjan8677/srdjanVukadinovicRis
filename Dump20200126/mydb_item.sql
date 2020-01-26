-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `idItem` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `User_idUser` int NOT NULL,
  `Category_idCategory` int NOT NULL,
  PRIMARY KEY (`idItem`),
  UNIQUE KEY `idItem_UNIQUE` (`idItem`),
  KEY `fk_Item_User_idx` (`User_idUser`),
  KEY `fk_Item_Category1_idx` (`Category_idCategory`),
  CONSTRAINT `fk_Item_Category1` FOREIGN KEY (`Category_idCategory`) REFERENCES `category` (`idCategory`),
  CONSTRAINT `fk_Item_User` FOREIGN KEY (`User_idUser`) REFERENCES `serviceuser` (`idServiceUser`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'sporet','soret sa ravnom plocom',1,4),(2,'Prodajem remontovane TA peći','Prodajem kompletno remontovane TA peći, kao nove. Nova instalacija, grejači, vuna. Kompletno servisirane, ofarbane. Dostava, montaža, garanacija.',1,1),(3,'Quadral MX20 Sonologue 40kg par 120/200w','Vrhunski highend par Quadral zvučnika iz Sonologue serije,sa vrhunskim skretnicama i drajverima,somot napred u boji trešnje.Pravi high end zvuk i audiofilski ugodjaj.',3,1),(4,'Schecter Omen 6 Extreme TSB gitara / novo','Gitara Schecter Omen 6 Extreme. Schecter čivije, tune-o-matic kobilica, i dva Schecter Diamond Plus magneta daju odličan sustain i kvalitet tona i obezbeđuju raspon tonova za svako muzičko raspoloženje.',2,2),(5,'Soundcraft EPM12','Mixer Soundcraft EPM12 (12 mono i 2 stereo ulaza), sa garancijom od 2 godine. 12x2 frame size. 2 Configurable Auxiliary Buses. XLR-type and 1/4, Metal Jack Connector Sockets.',2,2),(6,'Trpezarijske stolice, akcija','Elegantne stolice presvučene luksuznim meblom ili eko-kožom. Urađeno od kuvane bukovine sa specijalnim ojačanjem koje garantuje dugotrajnost.',1,3),(7,'Ormani','Na prodaju dva starinska ormana od punog drveta. Oba ormana su u dobrom stanju. Dimenzije ormana 115x50x190',3,3),(8,'Vakumski nosaci-drzaci tereta','Novo , nekorisceno u originalnoj kutiji',3,4);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-26 19:28:26
