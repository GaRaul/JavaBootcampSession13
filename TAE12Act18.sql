-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 192.168.1.154    Database: Inmuebles
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
-- Table structure for table `Alquiler`
--

DROP TABLE IF EXISTS `Alquiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alquiler` (
  `Codigo_Alquiler` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Transaccion` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Codigo_Alquiler`),
  KEY `Id_Transaccion` (`Id_Transaccion`),
  CONSTRAINT `Alquiler_ibfk_1` FOREIGN KEY (`Id_Transaccion`) REFERENCES `Transaccion` (`Id_Transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alquiler`
--

LOCK TABLES `Alquiler` WRITE;
/*!40000 ALTER TABLE `Alquiler` DISABLE KEYS */;
/*!40000 ALTER TABLE `Alquiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `Codigo_Cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `Codigo_Persona` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Codigo_Cliente`),
  KEY `Codigo_Persona` (`Codigo_Persona`),
  CONSTRAINT `Cliente_ibfk_1` FOREIGN KEY (`Codigo_Persona`) REFERENCES `Persona` (`Codigo_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Compra`
--

DROP TABLE IF EXISTS `Compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Compra` (
  `Codigo_Compra` int unsigned NOT NULL AUTO_INCREMENT,
  `Id_Transaccion` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Codigo_Compra`),
  KEY `Id_Transaccion` (`Id_Transaccion`),
  CONSTRAINT `Compra_ibfk_1` FOREIGN KEY (`Id_Transaccion`) REFERENCES `Transaccion` (`Id_Transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Compra`
--

LOCK TABLES `Compra` WRITE;
/*!40000 ALTER TABLE `Compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `Compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Garaje`
--

DROP TABLE IF EXISTS `Garaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Garaje` (
  `Codigo_Garaje` int unsigned NOT NULL AUTO_INCREMENT,
  `Numero` int DEFAULT NULL,
  `Codigo_Inmueble` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Codigo_Garaje`),
  KEY `Codigo_Inmueble` (`Codigo_Inmueble`),
  CONSTRAINT `Garaje_ibfk_1` FOREIGN KEY (`Codigo_Inmueble`) REFERENCES `Inmueble` (`Codigo_Inmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Garaje`
--

LOCK TABLES `Garaje` WRITE;
/*!40000 ALTER TABLE `Garaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `Garaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hace`
--

DROP TABLE IF EXISTS `Hace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hace` (
  `Codigo_Cliente` int unsigned NOT NULL,
  `Id_Transaccion` int unsigned NOT NULL,
  PRIMARY KEY (`Codigo_Cliente`,`Id_Transaccion`),
  KEY `Id_Transaccion` (`Id_Transaccion`),
  CONSTRAINT `Hace_ibfk_1` FOREIGN KEY (`Codigo_Cliente`) REFERENCES `Cliente` (`Codigo_Cliente`),
  CONSTRAINT `Hace_ibfk_2` FOREIGN KEY (`Id_Transaccion`) REFERENCES `Transaccion` (`Id_Transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hace`
--

LOCK TABLES `Hace` WRITE;
/*!40000 ALTER TABLE `Hace` DISABLE KEYS */;
/*!40000 ALTER TABLE `Hace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inmueble`
--

DROP TABLE IF EXISTS `Inmueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inmueble` (
  `Codigo_Inmueble` int unsigned NOT NULL AUTO_INCREMENT,
  `Metros` int DEFAULT NULL,
  `Descripcion` varchar(500) DEFAULT NULL,
  `Direcciones` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Codigo_Inmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inmueble`
--

LOCK TABLES `Inmueble` WRITE;
/*!40000 ALTER TABLE `Inmueble` DISABLE KEYS */;
/*!40000 ALTER TABLE `Inmueble` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Local_Comercial`
--

DROP TABLE IF EXISTS `Local_Comercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Local_Comercial` (
  `Codigo_Local_Comercial` int unsigned NOT NULL AUTO_INCREMENT,
  `Numero` int DEFAULT NULL,
  `Codigo_Inmueble` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Codigo_Local_Comercial`),
  KEY `Codigo_Inmueble` (`Codigo_Inmueble`),
  CONSTRAINT `Local_Comercial_ibfk_1` FOREIGN KEY (`Codigo_Inmueble`) REFERENCES `Inmueble` (`Codigo_Inmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Local_Comercial`
--

LOCK TABLES `Local_Comercial` WRITE;
/*!40000 ALTER TABLE `Local_Comercial` DISABLE KEYS */;
/*!40000 ALTER TABLE `Local_Comercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Persona` (
  `Codigo_Persona` int unsigned NOT NULL AUTO_INCREMENT,
  `DNI` varchar(8) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  `Telf_Fijo` varchar(9) DEFAULT NULL,
  `Telf_Movil` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`Codigo_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Piso`
--

DROP TABLE IF EXISTS `Piso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Piso` (
  `Codigo_Piso` int unsigned NOT NULL AUTO_INCREMENT,
  `Numero` int DEFAULT NULL,
  `Codigo_Inmueble` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Codigo_Piso`),
  KEY `Codigo_Inmueble` (`Codigo_Inmueble`),
  CONSTRAINT `Piso_ibfk_1` FOREIGN KEY (`Codigo_Inmueble`) REFERENCES `Inmueble` (`Codigo_Inmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piso`
--

LOCK TABLES `Piso` WRITE;
/*!40000 ALTER TABLE `Piso` DISABLE KEYS */;
/*!40000 ALTER TABLE `Piso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Realiza`
--

DROP TABLE IF EXISTS `Realiza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Realiza` (
  `Codigo_Compra` int unsigned NOT NULL,
  `Codigo_Alquiler` int unsigned NOT NULL,
  `Codigo_Inmueble` int unsigned NOT NULL,
  `Fecha` datetime DEFAULT NULL,
  `Valor` int unsigned NOT NULL,
  `Nombre_Agente` varchar(100) DEFAULT NULL,
  `Nombre_Arrendatario` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Codigo_Compra`,`Codigo_Alquiler`,`Codigo_Inmueble`),
  KEY `Codigo_Alquiler` (`Codigo_Alquiler`),
  KEY `Codigo_Inmueble` (`Codigo_Inmueble`),
  CONSTRAINT `Realiza_ibfk_1` FOREIGN KEY (`Codigo_Compra`) REFERENCES `Compra` (`Codigo_Compra`),
  CONSTRAINT `Realiza_ibfk_2` FOREIGN KEY (`Codigo_Alquiler`) REFERENCES `Alquiler` (`Codigo_Alquiler`),
  CONSTRAINT `Realiza_ibfk_3` FOREIGN KEY (`Codigo_Inmueble`) REFERENCES `Inmueble` (`Codigo_Inmueble`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Realiza`
--

LOCK TABLES `Realiza` WRITE;
/*!40000 ALTER TABLE `Realiza` DISABLE KEYS */;
/*!40000 ALTER TABLE `Realiza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Trabajador`
--

DROP TABLE IF EXISTS `Trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Trabajador` (
  `Codigo_Trabajador` int unsigned NOT NULL AUTO_INCREMENT,
  `Codigo_Persona` int unsigned DEFAULT NULL,
  PRIMARY KEY (`Codigo_Trabajador`),
  KEY `Codigo_Persona` (`Codigo_Persona`),
  CONSTRAINT `Trabajador_ibfk_1` FOREIGN KEY (`Codigo_Persona`) REFERENCES `Persona` (`Codigo_Persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Trabajador`
--

LOCK TABLES `Trabajador` WRITE;
/*!40000 ALTER TABLE `Trabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `Trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transaccion`
--

DROP TABLE IF EXISTS `Transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Transaccion` (
  `Id_Transaccion` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id_Transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaccion`
--

LOCK TABLES `Transaccion` WRITE;
/*!40000 ALTER TABLE `Transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Transaccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-30 21:14:55
