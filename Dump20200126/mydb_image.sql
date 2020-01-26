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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `idImage` int NOT NULL AUTO_INCREMENT,
  `imageLink` varchar(250) NOT NULL,
  `Item_idItem` int NOT NULL,
  PRIMARY KEY (`idImage`),
  UNIQUE KEY `idImage_UNIQUE` (`idImage`),
  KEY `fk_Image_Item1_idx` (`Item_idItem`),
  CONSTRAINT `fk_Image_Item1` FOREIGN KEY (`Item_idItem`) REFERENCES `item` (`idItem`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'https://img.halooglasi.com/slike/oglasi/Thumbs/191226/m/ugradni-sporet-sa-ravnom-plocom-12meseci-gara-5425635345702-71790264000.jpg',1),(2,'https://img.halooglasi.com/slike/oglasi/Thumbs/191226/m/ugradni-sporet-sa-ravnom-plocom-12meseci-gara-5425635345702-71790264001.jpg',1),(3,'https://img.halooglasi.com/slike/oglasi/Thumbs/200125/m/prodajem-remontovane-ta-peci-5425635396108-71790487107.jpg',2),(4,'https://img.halooglasi.com/slike/oglasi/Thumbs/191126/m/quadral-mx20-sonologue-40kg-par-120200w-5425635283757-71789992088.jpg',3),(5,'https://img.halooglasi.com/slike/oglasi/Thumbs/191126/m/quadral-mx20-sonologue-40kg-par-120200w-5425635283757-71789992087.jpg',3),(6,'https://img.halooglasi.com/slike/oglasi/Thumbs/150401/m/schecter-omen-6-extreme-tsb-gitara-novo-3751440-5844554.jpg',4),(7,'https://img.halooglasi.com/slike/oglasi/Thumbs/120806/m/soundcraft-epm12-1780394-1526073.jpg',5),(8,'https://img.halooglasi.com/slike/oglasi/Thumbs/181231/m/trpezarijske-stolice-akcija-5425626808065-71787253376.jpg',6),(9,'https://img.halooglasi.com/slike/oglasi/Thumbs/190331/m/vakumski-nosaci-drzaci-tereta-hit-5425634588286-71787957236.jpg',8),(10,'https://img.halooglasi.com/slike/oglasi/Thumbs/190331/m/ormani-5425634588558-71787958373.jpg',7);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-26 19:28:27
