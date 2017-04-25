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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `ID_ENDERECO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PESSOA` int(11) NOT NULL,
  `CEP` varchar(8) NOT NULL,
  `ENDERECO` varchar(40) NOT NULL,
  `COMPLEMENTO` varchar(30) DEFAULT NULL,
  `NUMERO` int(10) NOT NULL,
  `CIDADE` varchar(40) NOT NULL,
  `BAIRRO` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_ENDERECO`),
  KEY `FK_ID_PESSSOA_ENDERECO` (`ID_PESSOA`),
  CONSTRAINT `FK_ID_PESSSOA_ENDERECO` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`ID_PESSOA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,1,'20511000','Avenida Maracanã',NULL,987,'Rio de Janeiro','Tijuca'),(2,2,'21210623','Avenida Vicente Carvalho',NULL,909,'Rio de Janeiro','Vila da Penha'),(3,3,'22041012','Praça Granito',NULL,26,'Rio de Janeiro','Anchieta'),(4,4,'21350901','Avenida Ministro Edgard Romero','Loja 81',81,'Rio de Janeiro','Madureira'),(5,5,'21331720','Estrada Intendente Magalhães','Loja 1214',1212,'Rio de Janeiro','Vila Valqueire');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-14 20:50:23
