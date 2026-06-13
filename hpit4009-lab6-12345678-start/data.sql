-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 192.168.1.160    Database: hpit4009
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `url` varchar(50) NOT NULL,
  `thumbnailUrl` varchar(50) NOT NULL,
  `albumId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (3,'officia porro iure quia iusto qui ipsa ut modi','https://via.placeholder.com/600/24f355','https://via.placeholder.com/150/24f355',1),(7,'officia delectus consequatur vero aut veniam explicabo molestias','https://via.placeholder.com/600/b0f7cc','https://via.placeholder.com/150/b0f7cc',1),(8,'aut porro officiis laborum odit ea laudantium corporis','https://via.placeholder.com/600/54176f','https://via.placeholder.com/150/54176f',1),(9,'qui eius qui autem sed','https://via.placeholder.com/600/51aa97','https://via.placeholder.com/150/51aa97',1),(10,'beatae et provident et ut vel','https://via.placeholder.com/600/810b14','https://via.placeholder.com/150/810b14',1),(11,'nihil at amet non hic quia qui','https://via.placeholder.com/600/1ee8a4','https://via.placeholder.com/150/1ee8a4',1),(12,'mollitia soluta ut rerum eos aliquam consequatur perspiciatis maiores','https://via.placeholder.com/600/66b7d2','https://via.placeholder.com/150/66b7d2',1),(13,'repudiandae iusto deleniti rerum','https://via.placeholder.com/600/197d29','https://via.placeholder.com/150/197d29',1),(14,'est necessitatibus architecto ut laborum','https://via.placeholder.com/600/61a65','https://via.placeholder.com/150/61a65',1),(15,'harum dicta similique quis dolore earum ex qui','https://via.placeholder.com/600/f9cee5','https://via.placeholder.com/150/f9cee5',1),(16,'iusto sunt nobis quasi veritatis quas expedita voluptatum deserunt','https://via.placeholder.com/600/fdf73e','https://via.placeholder.com/150/fdf73e',1),(17,'natus doloribus necessitatibus ipsa','https://via.placeholder.com/600/9c184f','https://via.placeholder.com/150/9c184f',1),(18,'laboriosam odit nam necessitatibus et illum dolores reiciendis','https://via.placeholder.com/600/1fe46f','https://via.placeholder.com/150/1fe46f',1),(19,'perferendis nesciunt eveniet et optio a','https://via.placeholder.com/600/56acb2','https://via.placeholder.com/150/56acb2',1),(20,'assumenda voluptatem laboriosam enim consequatur veniam placeat reiciendis error','https://via.placeholder.com/600/8985dc','https://via.placeholder.com/150/8985dc',1);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todos`
--

DROP TABLE IF EXISTS `todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `todo` varchar(50) NOT NULL,
  `completed` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todos`
--

LOCK TABLES `todos` WRITE;
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` VALUES (1,'Task 1 ...',0),(2,'Task 2 ...',0),(3,'Task 3 ...',0),(4,'Task 4 ...',0),(5,'Task 5 ...',0),(6,'Task 6 ...',0),(7,'Task 7 ...',0),(8,'Task 8 ...',0),(9,'Task 9 ...',0),(10,'Task 10 ...',0);
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20  0:36:21
