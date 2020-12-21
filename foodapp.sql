-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: foodapp
-- ------------------------------------------------------
-- Server version	5.7.31-log

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
-- Table structure for table `edamam`
--

DROP TABLE IF EXISTS `edamam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edamam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `uri_receta` varchar(200) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `edamam_fk` (`id_usuario`),
  CONSTRAINT `edamam_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edamam`
--

LOCK TABLES `edamam` WRITE;
/*!40000 ALTER TABLE `edamam` DISABLE KEYS */;
INSERT INTO `edamam` VALUES (4,6,'recipe_00d0e204e81ebedfb3bb299aa7139dea','Scrambled Egg Pasta','Epicurious','https://www.edamam.com/web-img/b57/b57e60ee846607379b5b364eab474cd4.jpg'),(6,6,'recipe_eb72a9606ee0e572df3a37181d08bd79','Pesto Pasta Salad','Simply Recipes','https://www.edamam.com/web-img/dca/dca258ef9232af95eac92ed5d731501a.jpg'),(14,6,'recipe_5f6f917fcc81a9c969ac0cdce1f23542','Chocolate Chocolate cake','Food52','https://www.edamam.com/web-img/50f/50fcc7df3d9615aa8fad84396ae617c2.jpg');
/*!40000 ALTER TABLE `edamam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spoonacular`
--

DROP TABLE IF EXISTS `spoonacular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spoonacular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_receta` varchar(10) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `creditsText` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spoonacular_fk` (`id_usuario`),
  CONSTRAINT `spoonacular_fk` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spoonacular`
--

LOCK TABLES `spoonacular` WRITE;
/*!40000 ALTER TABLE `spoonacular` DISABLE KEYS */;
INSERT INTO `spoonacular` VALUES (5,1,'637624','Cheesecake Ice-Cream With Mango Syrup','Foodista.com – The Cooking Encyclopedia Everyone Can Edit','https://spoonacular.com/recipeImages/637624-556x370.jpg'),(10,6,'648638','Julia Child\'s Coq au Vin','Foodista.com – The Cooking Encyclopedia Everyone Can Edit','https://spoonacular.com/recipeImages/648638-556x370.jpg'),(11,6,'640700','Creamy Shrimp Bisque','Foodista.com – The Cooking Encyclopedia Everyone Can Edit','https://spoonacular.com/recipeImages/640700-556x370.jpg');
/*!40000 ALTER TABLE `spoonacular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apepat` varchar(20) DEFAULT NULL,
  `apemat` varchar(20) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'paola@gmail.com','$2b$10$rU17ZK1zrZAVss.DRcM4c.FjmGUeUlGX2NYax9n1muG4EIhwDSrqC','Paola Concepcion','Miramontes','Ramirez','1999-10-28','https://apod.nasa.gov/apod/image/9910/ngc3603_vlt.jpg'),(2,'cesar@gmail.com','$2b$10$375oyCp8.9vujtMaKJaVyOnkYdrNt4mlxdHPxS0XT1aX2w8GFgYsO','Cesar','Miramontes','Ramírez','1995-12-11','https://apod.nasa.gov/apod/image/ngc5189_aat.gif'),(3,'tania@gmail.com','$2b$10$0rpGl.I1dMmWtkeWOJWEu.qFYfyAaCZ0XgZtbL8JKtbVhV9B4HsZy','Tania','Quiroz','Ramirez','2019-11-06','https://apod.nasa.gov/apod/image/1911/M101_nasaMultiW1024.jpg'),(4,'lupita@gmail.com','$2b$10$VBaz5jZ17ndww5Jut.u6J.c3gr1kAkBdmcD/LKOMNbR8AXMjbEMa2','María Guadalupe','Miramontes','Ramirez','1993-10-23','https://apod.nasa.gov/apod/image/1910/MilkyWaySaltFlat_Huerta_960.jpg'),(5,'marisela@gmail.com','$2b$10$RT9/WLiexZoIk2VCSA5B/uAFv1S3D1O4T/kkWBk4tRFVIgLWV52H.','Marisela','Ramirez','Jimenez','1970-12-31','https://apod.nasa.gov/apod/image/1912/M33-HaLRGB-RayLiao1024.jpg'),(6,'maria@gmail.com','$2b$10$GsNUm1W75StrXoL5pLn43.h4uDtRChMfbwR67yeN4NA2W0WKkAA8y','María de Jesús','Dueñas','Ornelas','1999-02-02','https://apod.nasa.gov/apod/image/9902/orion_subaru.jpg');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-20 19:31:23
