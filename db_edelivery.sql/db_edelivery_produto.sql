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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produto` (
  `ID_PRODUTO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_LOJA` int(11) NOT NULL,
  `TITULO` varchar(40) NOT NULL,
  `DESCRICAO` text NOT NULL,
  `CATEGORIA` varchar(15) DEFAULT NULL,
  `VALOR` double(10,2) NOT NULL,
  `DESCONTO` double(10,2) NOT NULL,
  `STATUS` tinyint(1) DEFAULT '0',
  `DIA_SEMANA` varchar(15) NOT NULL,
  `QUANTIDADE_ESTOQUE` int(3) DEFAULT NULL,
  `FOTO_URL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_PRODUTO`),
  KEY `FK_ID_LOJA_PRODUTO` (`ID_LOJA`),
  CONSTRAINT `FK_ID_LOJA_PRODUTO` FOREIGN KEY (`ID_LOJA`) REFERENCES `loja` (`ID_LOJA`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,1,'Virada à Paulista','Arroz, Feijão (corda ou mulatinho), Bisteca Suina, Couve, Torresmo','REFEICAO',25.00,0.00,1,'1',20,NULL),(2,1,'Carne Cozida com Batatas','Arroz, Feijão (corda ou mulatinho), Farofa, Macarrão, Batata Frita ou Pure','REFEICAO',22.50,0.00,1,'2',20,NULL),(3,1,'Bife Acebolado','Arroz, Feijão (corda ou mulatinho), Macarrão, Maionese, Batata Frita ou Purê','REFEICAO',19.30,0.00,1,'3',20,NULL),(4,1,'Frango à Passarinho','Arroz, Feijão (corda ou mulatinho), Macarrão, Farofa de Cuscuz, Batata Frita ou Purê','REFEICAO',15.80,0.00,1,'4',20,'NULL'),(5,1,'Estrogonofe de Frango','Arroz ou Macarrão, Batata Frita ou Purê','REFEICAO',20.60,0.00,1,'5',20,'NULL'),(6,1,'Parmegiana de Frango','Arroz ou Macarrão, Batata Frita ou Purê','REFEICAO',21.20,0.00,1,'6',20,NULL),(7,1,'Vaca Atolada','Macaxeira, Carne Cozida, Salada','REFEICAO',23.00,0.00,1,'7',20,NULL),(8,2,'Bife à Rolê','Arroz, Feijçao (Corda ou Mulatinho), Macarrão, Maionese','REFEICAO',21.20,0.00,1,'1',20,NULL),(9,2,'Bisteca Suina Acebolada','Arroz, Feijão (Corda ou Mulatinho), Farofa, Batata Frita ou Purê.','REFEICAO',25.00,0.00,1,'2',20,NULL),(10,2,'Lasanha','Arroz, Batata Frita','REFEICAO',20.15,0.00,1,'3',20,NULL),(11,2,'Estrogonofe de Carne','Arroz ou Macarrão, Batata Frita ou Purê','REFEICAO',20.15,0.00,1,'4',20,NULL),(12,2,'Panqueca (Carne ou Frango)','Arroz ou Macarrão, Batata Frita ou Purê\'','REFEICAO',17.00,0.00,1,'5',20,'NULL'),(13,2,'Filé de Peixe ao Molho Branco','Arroz, Marcarrrão (Molho Branco ou Tradicional), Feijão (Corda ou Mulatinho), Farofa de Cuscuz, Batata Frita ou Purê','REFEICAO',24.40,0.00,1,'6',20,NULL),(14,2,'Filé de Peixe à Milanesa','Arroz, Feijão (Corda ou Mulatinho), Macarrão, Maionese, Batata Frita ou Purê','REFEICAO',27.00,0.00,1,'7',20,NULL),(15,3,'Parmegiana de Peixe','Arroz ou Macarrão (Molho Branco ou Tradicional), Batata Frita ou Purê','REFEICAO',27.00,0.00,1,'1',20,NULL),(16,3,'Feijoada','Arroz, Farofa, Couve., Batata Frita ou Purê','REFEICAO',25.00,0.00,1,'2',20,NULL),(17,3,'Mocotó','Arroz, Cuscuz, Feijão.','REFEICAO',23.00,0.00,1,'3',20,NULL),(18,3,'Pernil ao Molho','Arroz, Fafora, Feijão, Macarrão','REFEICAO',28.00,0.00,1,'4',20,NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
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
