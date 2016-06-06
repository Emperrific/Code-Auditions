-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movingcompany
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `crews`
--

DROP TABLE IF EXISTS `crews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crews` (
  `crewID` int(11) NOT NULL,
  `moverID` int(11) NOT NULL,
  PRIMARY KEY (`crewID`,`moverID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crews`
--

LOCK TABLES `crews` WRITE;
/*!40000 ALTER TABLE `crews` DISABLE KEYS */;
INSERT INTO `crews` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(3,6),(3,7),(3,8);
/*!40000 ALTER TABLE `crews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mover`
--

DROP TABLE IF EXISTS `mover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mover` (
  `moverID` int(11) NOT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`moverID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mover`
--

LOCK TABLES `mover` WRITE;
/*!40000 ALTER TABLE `mover` DISABLE KEYS */;
INSERT INTO `mover` VALUES (1,'Jones','Adam'),(2,'Gilkins','James'),(3,'Bright','Alex'),(4,'Fowler','Jordan'),(5,'Powers','Logan'),(6,'Matthison','Jerry'),(7,'Olson','Larry'),(8,'King','Nathan'),(10,'Pod','Emp');
/*!40000 ALTER TABLE `mover` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moves`
--

DROP TABLE IF EXISTS `moves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moves` (
  `moveID` int(11) NOT NULL,
  `moveDate` date DEFAULT NULL,
  `truckID` int(11) NOT NULL,
  `crewID` int(11) DEFAULT NULL,
  PRIMARY KEY (`moveID`,`truckID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moves`
--

LOCK TABLES `moves` WRITE;
/*!40000 ALTER TABLE `moves` DISABLE KEYS */;
INSERT INTO `moves` VALUES (1,'2016-02-05',1,1),(2,'2016-03-06',1,2),(2,'2016-03-06',2,3);
/*!40000 ALTER TABLE `moves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-06 15:06:38
