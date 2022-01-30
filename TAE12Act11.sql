-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.1.154    Database: Accidentes
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
-- Table structure for table `Accidente`
--

DROP TABLE IF EXISTS `Accidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accidente` (
  `Id_Accidente` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `Coor_X` int DEFAULT NULL,
  `Coor_Y` int DEFAULT NULL,
  PRIMARY KEY (`Id_Accidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accidente`
--

LOCK TABLES `Accidente` WRITE;
/*!40000 ALTER TABLE `Accidente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Esta_En`
--

DROP TABLE IF EXISTS `Esta_En`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Esta_En` (
  `Nombre` varchar(100) NOT NULL,
  `Id_Accidente` int unsigned NOT NULL,
  PRIMARY KEY (`Nombre`,`Id_Accidente`),
  KEY `Id_Accidente` (`Id_Accidente`),
  CONSTRAINT `Esta_En_ibfk_1` FOREIGN KEY (`Nombre`) REFERENCES `Pais` (`Nombre`),
  CONSTRAINT `Esta_En_ibfk_2` FOREIGN KEY (`Id_Accidente`) REFERENCES `Accidente` (`Id_Accidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Esta_En`
--

LOCK TABLES `Esta_En` WRITE;
/*!40000 ALTER TABLE `Esta_En` DISABLE KEYS */;
/*!40000 ALTER TABLE `Esta_En` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lago`
--

DROP TABLE IF EXISTS `Lago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Lago` (
  `Id_Accidente` int unsigned NOT NULL,
  `Extension` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Id_Accidente`),
  CONSTRAINT `Lago_ibfk_1` FOREIGN KEY (`Id_Accidente`) REFERENCES `Accidente` (`Id_Accidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lago`
--

LOCK TABLES `Lago` WRITE;
/*!40000 ALTER TABLE `Lago` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Localidad`
--

DROP TABLE IF EXISTS `Localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Localidad` (
  `Id_Localidad` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_Localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Localidad`
--

LOCK TABLES `Localidad` WRITE;
/*!40000 ALTER TABLE `Localidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `Localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Montania`
--

DROP TABLE IF EXISTS `Montania`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Montania` (
  `Id_Accidente` int unsigned NOT NULL,
  `Altitud` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Id_Accidente`),
  CONSTRAINT `Montania_ibfk_1` FOREIGN KEY (`Id_Accidente`) REFERENCES `Accidente` (`Id_Accidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Montania`
--

LOCK TABLES `Montania` WRITE;
/*!40000 ALTER TABLE `Montania` DISABLE KEYS */;
/*!40000 ALTER TABLE `Montania` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pais`
--

DROP TABLE IF EXISTS `Pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pais` (
  `Nombre` varchar(100) NOT NULL,
  `Extension` int unsigned DEFAULT NULL,
  `Poblacion` varchar(100) DEFAULT NULL,
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
-- Table structure for table `Pasa_Por`
--

DROP TABLE IF EXISTS `Pasa_Por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pasa_Por` (
  `Id_Accidente` int unsigned NOT NULL,
  `Id_Localidad` int unsigned NOT NULL,
  PRIMARY KEY (`Id_Accidente`,`Id_Localidad`),
  KEY `Id_Localidad` (`Id_Localidad`),
  CONSTRAINT `Pasa_Por_ibfk_1` FOREIGN KEY (`Id_Accidente`) REFERENCES `Accidente` (`Id_Accidente`),
  CONSTRAINT `Pasa_Por_ibfk_2` FOREIGN KEY (`Id_Localidad`) REFERENCES `Localidad` (`Id_Localidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pasa_Por`
--

LOCK TABLES `Pasa_Por` WRITE;
/*!40000 ALTER TABLE `Pasa_Por` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pasa_Por` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rio`
--

DROP TABLE IF EXISTS `Rio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rio` (
  `Id_Accidente` int unsigned NOT NULL,
  `Longitud` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Id_Accidente`),
  CONSTRAINT `Rio_ibfk_1` FOREIGN KEY (`Id_Accidente`) REFERENCES `Accidente` (`Id_Accidente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rio`
--

LOCK TABLES `Rio` WRITE;
/*!40000 ALTER TABLE `Rio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-30 20:51:07
