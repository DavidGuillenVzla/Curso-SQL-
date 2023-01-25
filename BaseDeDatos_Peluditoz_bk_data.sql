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
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'David Guillen',95564213,' ',9,28),(2,'Mariana Bonilla',32964933,'Venezuela 7100',9,20),(3,'Daniel Rueda',36944511,' Colombia 2100',9,24),(4,'Pepito Perez',94234913,'Thames 2300',9,35),(5,'Juan  Rodriguez',94224113,'Peru 3300',20,25),(6,'Frank Sinatra',34224923,'Freud 7600',7,45),(7,'Ruben Blades',34234813,'Thames 4300',9,35),(8,'Cristiano Ronaldo ',94334713,'San Martin 8562',9,35),(9,'Mateo Maradona',34434963,'Lionel Messi 8632',9,35),(10,'Hernesto Primero',94564213,'Pamplona 4657',9,35);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Carlos Rodriguez',95564213,'Peru 1657',9,32),(2,'Marcos Alvarez',34664213,'Hawai 8657',9,25),(3,'Patricio Urquiza',34564222,'Paraguay 8645',9,45),(4,'Juan Alvarez',921634212,'Mexico 3856',9,21),(5,'Lucia Castro',98764223,'America 9857',9,27),(6,'Maria Rodriguez',95764275,'India 5757',9,26),(7,'Rosa Castillo',98464216,'Venezuela 4657',9,22),(8,'Marisa Costa',34464297,'Roma 8757',9,25),(9,'Iara  Paiz',34864227,'España 4657',9,30),(10,'Cynthia Garcia',95544212,'Cataluña 4657',9,32);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `paseador`
--

LOCK TABLES `paseador` WRITE;
/*!40000 ALTER TABLE `paseador` DISABLE KEYS */;
INSERT INTO `paseador` VALUES (1,'Marcos Alvarez',34664213,'Hawai 8657',9,25),(2,'Marcos Gutierrez',34664213,'Paris 8657',9,25),(3,'Patricio Brow',34564222,'Venezuela 8645',9,45),(4,'Juan Hamilton',921634212,'Mexico 3856',9,21),(5,'Lucia Perez',98764223,'Messi 9857',9,27),(6,'Carlos Rodriguez',95764275,'Indonesia 5757',9,26),(7,'Manuel Castillo',98464216,'Venezuela 4657',9,22),(8,'Veruska Costa',34464297,'Roma 8757',9,25),(9,'Vanessa  Contrera',34864227,'España 4657',9,30),(10,'Manuel Garcia',95544212,'Cataluña 4657',9,32);
/*!40000 ALTER TABLE `paseador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perros`
--

LOCK TABLES `perros` WRITE;
/*!40000 ALTER TABLE `perros` DISABLE KEYS */;
INSERT INTO `perros` VALUES (1,'Mecha',2,'F',1,'Border Collie',1,6,1),(2,'Lima',1,'F',1,'Mestizo',2,1,1),(3,'Gemma',3,'F',0,'Mestizo',3,2,3),(4,'Jack',4,'M',1,'Chow Chow',4,6,4),(5,'Kurt',1,'M',1,'Boston Terrier',5,3,4),(6,'Choco',1,'M',1,'Boxer',3,4,5),(7,'Aguacate',3,'M',1,'Bull Terrier',6,7,7),(8,'Rita',3,'F',1,'Breton',8,8,8);
/*!40000 ALTER TABLE `perros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `perros_asignados_coach`
--

LOCK TABLES `perros_asignados_coach` WRITE;
/*!40000 ALTER TABLE `perros_asignados_coach` DISABLE KEYS */;
INSERT INTO `perros_asignados_coach` VALUES (1,'Carlos Rodriguez','Lima',2),(2,'Marcos Alvarez','Gemma',3),(3,'Patricio Urquiza','Kurt',5),(4,'Juan Alvarez','Choco',6),(6,'Maria Rodriguez','Mecha',1),(6,'Maria Rodriguez','Jack',4),(7,'Rosa Castillo','Aguacate',7),(8,'Marisa Costa','Rita',8);
/*!40000 ALTER TABLE `perros_asignados_coach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-25 17:40:19
