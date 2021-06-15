CREATE DATABASE  IF NOT EXISTS `remi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `remi`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: remi
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `isMarked` tinyint DEFAULT '0',
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_date` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'Sebastian','Java Dev.',NULL,NULL,'Gepard',0,'2021-06-13 18:04:36','2021-06-13 18:04:36','0000-00-00 00:00:00'),(13,'Alin','Java Dev.',NULL,NULL,'Tiger',0,'2021-06-13 18:05:01','2021-06-13 18:05:01','0000-00-00 00:00:00'),(19,'Max','Java Senior dev. and Defect manager',NULL,NULL,'Tiger',0,'2021-06-13 18:20:55','2021-06-13 18:20:55','0000-00-00 00:00:00'),(18,'Tao','Java Dev. and Team Lead',NULL,NULL,'Tiger',0,'2021-06-13 18:20:07','2021-06-13 18:20:07','0000-00-00 00:00:00'),(17,'Andi','Java Dev. and Team Lead',NULL,NULL,'Gepard',0,'2021-06-13 18:19:21','2021-06-13 18:19:21','0000-00-00 00:00:00'),(20,'Dezső','Java Dev.',NULL,NULL,'Tiger',0,'2021-06-13 18:21:35','2021-06-13 18:21:35','0000-00-00 00:00:00'),(21,'Wilhelm','Java Dev.',NULL,NULL,'Gepard',0,'2021-06-13 18:22:01','2021-06-13 18:22:01','0000-00-00 00:00:00'),(22,'Mariana','Java Dev.',NULL,NULL,'Gepard',0,'2021-06-13 18:22:30','2021-06-13 18:22:30','0000-00-00 00:00:00'),(23,'Stefan','ExtJS Dev',NULL,NULL,'NA',0,'2021-06-13 18:23:02','2021-06-13 18:23:02','0000-00-00 00:00:00'),(24,'Sumalatha','Java Dev.',NULL,NULL,'Gepard',0,'2021-06-13 18:23:19','2021-06-13 18:23:19','0000-00-00 00:00:00'),(25,'Cristina','Java Dev.',NULL,NULL,'Gepard',0,'2021-06-13 18:23:33','2021-06-13 18:23:33','0000-00-00 00:00:00'),(26,'Inna','Technical writer',NULL,NULL,'Gepard',0,'2021-06-13 18:23:58','2021-06-13 18:23:58','0000-00-00 00:00:00'),(27,'Sonia','Java Dev., part-time',NULL,NULL,'Gepard',0,'2021-06-13 18:24:18','2021-06-13 18:24:18','0000-00-00 00:00:00'),(28,'Mesbah','Team lead',NULL,NULL,'Gepard',0,'2021-06-13 18:24:37','2021-06-13 18:24:37','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-15 18:09:34
