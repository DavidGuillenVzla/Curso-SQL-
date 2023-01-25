/*

Backup de las tablas:
	-cliente
	-perros
    -coach
    -paseadores
	-perros_asignados_coach
  */



CREATE DATABASE  IF NOT EXISTS `paseos_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `paseos_app`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: paseos_app
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `ID_CLIENTE` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_CLIENTE` varchar(40) NOT NULL,
  `DNI_CLIENTE` int NOT NULL,
  `DIRECCION_CLIENTE` varchar(50) DEFAULT NULL,
  `HORARIOS_CLIENTE` int DEFAULT NULL,
  `EDAD_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach` (
  `ID_COACH` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_COACH` varchar(50) NOT NULL,
  `DNI_COACH` int NOT NULL,
  `DIRECCION_COACH` varchar(50) DEFAULT NULL,
  `HORARIOS_COACH` int DEFAULT NULL,
  `EDAD_COACH` int DEFAULT NULL,
  PRIMARY KEY (`ID_COACH`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paseador`
--

DROP TABLE IF EXISTS `paseador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paseador` (
  `ID_PASEADOR` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_PASEADOR` varchar(50) DEFAULT NULL,
  `DNI_PASEADOR` int DEFAULT NULL,
  `DIRECCION_PASEADOR` varchar(50) DEFAULT NULL,
  `HORARIOS_PASEADOR` int DEFAULT NULL,
  `EDAD_PASEADOR` int DEFAULT NULL,
  PRIMARY KEY (`ID_PASEADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perros`
--

DROP TABLE IF EXISTS `perros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perros` (
  `ID_PERRO` int NOT NULL AUTO_INCREMENT,
  `NOMBRE_PERRO` varchar(30) NOT NULL,
  `EDAD_PERRO` int NOT NULL,
  `SEXO_PERRO` varchar(2) NOT NULL,
  `CASTRADO` int NOT NULL,
  `RAZA` varchar(30) DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  `ID_COACH` int DEFAULT NULL,
  `ID_PASEADOR` int DEFAULT NULL,
  PRIMARY KEY (`ID_PERRO`),
  KEY `FK1_paseador` (`ID_PASEADOR`),
  KEY `FK1_coach` (`ID_COACH`),
  KEY `FK1_cliente` (`ID_CLIENTE`),
  CONSTRAINT `FK1_cliente` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`ID_CLIENTE`),
  CONSTRAINT `FK1_coach` FOREIGN KEY (`ID_COACH`) REFERENCES `coach` (`ID_COACH`),
  CONSTRAINT `FK1_paseador` FOREIGN KEY (`ID_PASEADOR`) REFERENCES `paseador` (`ID_PASEADOR`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `perros_asignados_coach`
--

DROP TABLE IF EXISTS `perros_asignados_coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perros_asignados_coach` (
  `ID` int DEFAULT '0',
  `NOMBRE` varchar(50),
  `NOMBRE_PERRO` varchar(30) NOT NULL,
  `ID_PERRO` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `vw_cantidad_perro_sexos`
--

DROP TABLE IF EXISTS `vw_cantidad_perro_sexos`;
/*!50001 DROP VIEW IF EXISTS `vw_cantidad_perro_sexos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_cantidad_perro_sexos` AS SELECT 
 1 AS `SEXO_PERRO`,
 1 AS `TOTAL`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_castrados_perros`
--

DROP TABLE IF EXISTS `vw_castrados_perros`;
/*!50001 DROP VIEW IF EXISTS `vw_castrados_perros`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_castrados_perros` AS SELECT 
 1 AS `SEXO`,
 1 AS `Total castrado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_edad_perros_viejos`
--

DROP TABLE IF EXISTS `vw_edad_perros_viejos`;
/*!50001 DROP VIEW IF EXISTS `vw_edad_perros_viejos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_edad_perros_viejos` AS SELECT 
 1 AS `ID`,
 1 AS `NOMBRE`,
 1 AS `Edad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_perros_coach`
--

DROP TABLE IF EXISTS `vw_perros_coach`;
/*!50001 DROP VIEW IF EXISTS `vw_perros_coach`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_perros_coach` AS SELECT 
 1 AS `ID_COACH`,
 1 AS `NOMBRE_COACH`,
 1 AS `PERROS_ASIGNADOS`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_perros_paseador`
--

DROP TABLE IF EXISTS `vw_perros_paseador`;
/*!50001 DROP VIEW IF EXISTS `vw_perros_paseador`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_perros_paseador` AS SELECT 
 1 AS `ID_PASEADOR`,
 1 AS `NOMBRE_PASEADOR`,
 1 AS `PERROS_ASIGNADOS`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_cantidad_perro_sexos`
--

/*!50001 DROP VIEW IF EXISTS `vw_cantidad_perro_sexos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_cantidad_perro_sexos` AS select `perros`.`SEXO_PERRO` AS `SEXO_PERRO`,count(`perros`.`SEXO_PERRO`) AS `TOTAL` from `perros` group by `perros`.`SEXO_PERRO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_castrados_perros`
--

/*!50001 DROP VIEW IF EXISTS `vw_castrados_perros`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_castrados_perros` AS select `perros`.`SEXO_PERRO` AS `SEXO`,count(`perros`.`CASTRADO`) AS `Total castrado` from `perros` group by `perros`.`SEXO_PERRO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_edad_perros_viejos`
--

/*!50001 DROP VIEW IF EXISTS `vw_edad_perros_viejos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_edad_perros_viejos` AS select `perros`.`ID_PERRO` AS `ID`,`perros`.`NOMBRE_PERRO` AS `NOMBRE`,`perros`.`EDAD_PERRO` AS `Edad` from `perros` order by `perros`.`EDAD_PERRO` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_perros_coach`
--

/*!50001 DROP VIEW IF EXISTS `vw_perros_coach`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_perros_coach` AS select `c`.`ID_COACH` AS `ID_COACH`,`c`.`NOMBRE_COACH` AS `NOMBRE_COACH`,count(0) AS `PERROS_ASIGNADOS` from (`perros` `p` left join `coach` `c` on((`c`.`ID_COACH` = `p`.`ID_COACH`))) group by `c`.`ID_COACH` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_perros_paseador`
--

/*!50001 DROP VIEW IF EXISTS `vw_perros_paseador`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_perros_paseador` AS select `c`.`ID_PASEADOR` AS `ID_PASEADOR`,`c`.`NOMBRE_PASEADOR` AS `NOMBRE_PASEADOR`,count(0) AS `PERROS_ASIGNADOS` from (`perros` `p` left join `paseador` `c` on((`c`.`ID_PASEADOR` = `p`.`ID_PASEADOR`))) group by `c`.`ID_PASEADOR` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-25 17:39:05
