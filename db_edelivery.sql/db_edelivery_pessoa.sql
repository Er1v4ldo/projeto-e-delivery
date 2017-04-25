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
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoa` (
  `ID_PESSOA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PERFIL` int(11) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `SENHA` varchar(70) NOT NULL,
  `DATA_CADASTRO` datetime NOT NULL,
  `NOME` varchar(20) NOT NULL,
  `SOBRENOME` varchar(40) NOT NULL,
  `CPF` varchar(12) NOT NULL,
  `SEXO` char(1) DEFAULT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `CELULAR` varchar(12) DEFAULT NULL,
  `TELEFONE` varchar(12) DEFAULT NULL,
  `CONTATO` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`ID_PESSOA`),
  UNIQUE KEY `EMAIL` (`EMAIL`),
  KEY `FK_ID_PERFIL` (`ID_PERFIL`),
  CONSTRAINT `FK_ID_PERFIL` FOREIGN KEY (`ID_PERFIL`) REFERENCES `perfil` (`ID_PERFIL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,2,'joao@email.com','123456','2017-03-01 00:00:00','Joao','P. Silva','12546789215','1','1984-08-21','21987452654',NULL,NULL),(2,2,'henrique@email.com','adcer54','2016-12-10 00:00:00','Henrique','De Paula','78653214895','1','1990-01-13','21985463214','2135984621',NULL),(3,1,'roberta@email.com','956rtc@31','2017-02-21 00:00:00','Roberta','Nunes','12255486379','0','1987-03-03','21988546332','2135652842',NULL),(4,1,'paula@email.com','854621regf','2017-01-15 00:00:00','Paula','Fonseca','78924586325','0','1978-06-10','21975624159','2121225478',NULL),(5,1,'rodrigo@email.com','Wfr45kgb','2016-10-30 00:00:00','Rodrigo','Santos','24954398703','1','1995-06-08','21965744258','2132594120',NULL);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-14 20:50:24
