-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.1.154    Database: Guerras
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Bando`
--

DROP TABLE IF EXISTS `Bando`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bando` (
  `Id_Bando` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Ganador` tinyint(1) DEFAULT NULL,
  `Id_Guerra` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Id_Bando`),
  KEY `Id_Guerra` (`Id_Guerra`),
  CONSTRAINT `Bando_ibfk_1` FOREIGN KEY (`Id_Guerra`) REFERENCES `Guerra` (`Id_Guerra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bando`
--

LOCK TABLES `Bando` WRITE;
/*!40000 ALTER TABLE `Bando` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bando` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Guerra`
--

DROP TABLE IF EXISTS `Guerra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Guerra` (
  `Id_Guerra` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL,
  PRIMARY KEY (`Id_Guerra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Guerra`
--

LOCK TABLES `Guerra` WRITE;
/*!40000 ALTER TABLE `Guerra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Guerra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historico`
--

DROP TABLE IF EXISTS `Historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historico` (
  `Id_Historico` int unsigned NOT NULL AUTO_INCREMENT,
  `Inicio_Independencia` date DEFAULT NULL,
  `Fin_Independencia` date DEFAULT NULL,
  `Nombre_Pais` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_Historico`),
  KEY `Nombre_Pais` (`Nombre_Pais`),
  CONSTRAINT `Historico_ibfk_1` FOREIGN KEY (`Nombre_Pais`) REFERENCES `Pais` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historico`
--

LOCK TABLES `Historico` WRITE;
/*!40000 ALTER TABLE `Historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pais` (
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pais`
--

LOCK TABLES `Pais` WRITE;
/*!40000 ALTER TABLE `Pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Se_Une`
--

DROP TABLE IF EXISTS `Se_Une`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Se_Une` (
  `Id_Bando` int unsigned NOT NULL,
  `Nombre_Pais` varchar(100) NOT NULL,
  `Fecha_Union` date DEFAULT NULL,
  `Fecha_Abandono` date DEFAULT NULL,
  PRIMARY KEY (`Id_Bando`,`Nombre_Pais`),
  KEY `Nombre_Pais` (`Nombre_Pais`),
  CONSTRAINT `Se_Une_ibfk_1` FOREIGN KEY (`Id_Bando`) REFERENCES `Bando` (`Id_Bando`),
  CONSTRAINT `Se_Une_ibfk_2` FOREIGN KEY (`Nombre_Pais`) REFERENCES `Pais` (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Se_Une`
--

LOCK TABLES `Se_Une` WRITE;
/*!40000 ALTER TABLE `Se_Une` DISABLE KEYS */;
/*!40000 ALTER TABLE `Se_Une` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-30 20:35:51
