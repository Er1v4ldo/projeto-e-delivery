CREATE DATABASE  IF NOT EXISTS `db_edelivery` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_edelivery`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_edelivery
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `loja`
--

DROP TABLE IF EXISTS `loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loja` (
  `ID_LOJA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PESSOA` int(11) NOT NULL,
  `NOME_EC` varchar(30) DEFAULT NULL,
  `NOME_FANTASIA` varchar(30) DEFAULT NULL,
  `CNPJ` varchar(15) DEFAULT NULL,
  `DATA_CADASTRO` datetime DEFAULT CURRENT_TIMESTAMP,
  `EMAIL_EC` varchar(100) NOT NULL,
  `TELEFONE_EC` varchar(12) DEFAULT NULL,
  `CELULAR_EC` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID_LOJA`),
  UNIQUE KEY `EMAIL_EC` (`EMAIL_EC`),
  KEY `FK_ID_PESSSOA` (`ID_PESSOA`),
  CONSTRAINT `FK_ID_PESSSOA` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`ID_PESSOA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja`
--

LOCK TABLES `loja` WRITE;
/*!40000 ALTER TABLE `loja` DISABLE KEYS */;
INSERT INTO `loja` VALUES (1,5,'Quentinha Mix','Quentinha Mix',NULL,'2016-10-30 00:00:00','quentinhamix@email.com','2130191410',NULL),(2,3,'Rainha das Quentinhas',NULL,NULL,'2017-02-21 00:00:00','rainha_quentinhas@email.com','2136882175',NULL),(3,4,'Pantriota',NULL,NULL,'2017-01-15 00:00:00','pantriota_delicia@email.com','2128452239',NULL);
/*!40000 ALTER TABLE `loja` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-14 20:50:21
