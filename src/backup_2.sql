-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: urna-api
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deputado estadual`
--

DROP TABLE IF EXISTS `deputado estadual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deputado estadual` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partido` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgCandidato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qtdVotos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deputado estadual`
--

LOCK TABLES `deputado estadual` WRITE;
/*!40000 ALTER TABLE `deputado estadual` DISABLE KEYS */;
INSERT INTO `deputado estadual` VALUES (9,'Mudinho','1111','Palestrantes','132445.jpg','4','2022-04-06 16:24:45','2022-04-08 19:44:07'),(10,'carapazinha','7878','molieres','132515.jpg',NULL,'2022-04-06 16:25:15','2022-04-06 16:25:15'),(11,'VOTO NULO','','NULO',NULL,NULL,'2022-04-08 16:54:02','2022-04-08 16:54:02'),(12,'VOTO BRANCO','','BRANCO',NULL,'10','2022-04-08 17:50:10','2022-04-11 13:30:15');
/*!40000 ALTER TABLE `deputado estadual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deputado federal`
--

DROP TABLE IF EXISTS `deputado federal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deputado federal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partido` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgCandidato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qtdVotos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deputado federal`
--

LOCK TABLES `deputado federal` WRITE;
/*!40000 ALTER TABLE `deputado federal` DISABLE KEYS */;
INSERT INTO `deputado federal` VALUES (26,'Zepequeno','31444','Sem limites','132309.jpg','2','2022-04-06 16:23:09','2022-04-08 19:38:54'),(27,'Nicolas Cagezinho','11111','Jujubas com anomalia','132356.jpg','7','2022-04-06 16:23:56','2022-04-11 13:28:14'),(28,'VOTO NULO','','NULO',NULL,'3','2022-04-08 16:29:16','2022-04-11 12:34:34'),(29,'VOTO BRANCO','','BRANCO',NULL,'13','2022-04-08 17:25:31','2022-04-11 13:30:14');
/*!40000 ALTER TABLE `deputado federal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `governador`
--

DROP TABLE IF EXISTS `governador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `governador` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partido` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgCandidato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qtdVotos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `governador`
--

LOCK TABLES `governador` WRITE;
/*!40000 ALTER TABLE `governador` DISABLE KEYS */;
INSERT INTO `governador` VALUES (8,'Tutu','20','mandrake','132540.jpg','2','2022-04-06 16:25:40','2022-04-08 17:56:10'),(9,'Martinho','30','Da vila','132617.jpg','1','2022-04-06 16:26:17','2022-04-08 19:44:47'),(10,'VOTO NULO','','NULO',NULL,'1','2022-04-08 16:54:20','2022-04-11 13:28:40'),(11,'VOTO BRANCO','','BRANCO',NULL,'4','2022-04-08 17:53:47','2022-04-11 13:30:17');
/*!40000 ALTER TABLE `governador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presidente`
--

DROP TABLE IF EXISTS `presidente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presidente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partido` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgCandidato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qtdVotos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidente`
--

LOCK TABLES `presidente` WRITE;
/*!40000 ALTER TABLE `presidente` DISABLE KEYS */;
INSERT INTO `presidente` VALUES (29,'Chefe Mafioso','10','Chefes carinhosos','131754.jpg','1','2022-04-06 16:17:54','2022-04-06 16:29:03'),(30,'Junior the Teacher','11','Programadores Junior','131832.jpg','2','2022-04-06 16:18:32','2022-04-11 13:28:43'),(31,'VOTO NULO','','NULO',NULL,'1','2022-04-08 16:54:36','2022-04-08 19:32:45'),(32,'VOTO BRANCO','','BRANCO',NULL,'2','2022-04-08 17:25:05','2022-04-11 13:30:19');
/*!40000 ALTER TABLE `presidente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senador`
--

DROP TABLE IF EXISTS `senador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `senador` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partido` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgCandidato` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qtdVotos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senador`
--

LOCK TABLES `senador` WRITE;
/*!40000 ALTER TABLE `senador` DISABLE KEYS */;
INSERT INTO `senador` VALUES (9,'Chico Balanceado','333','Pontuais Brasil','132229.jpg',NULL,'2022-04-06 16:22:30','2022-04-06 16:22:30'),(10,'Bruno Wayne','666','Bat Pronto','132313.jpg','1','2022-04-08 16:23:13','2022-04-08 18:20:14'),(11,'VOTO NULO','','NULO',NULL,NULL,'2022-04-08 16:28:34','2022-04-08 16:28:34'),(12,'VOTO BRANCO','','BRANCO',NULL,'5','2022-04-08 17:51:57','2022-04-08 19:04:53');
/*!40000 ALTER TABLE `senador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'luis','luis@teste.com',NULL,'$2y$10$0CB4eMGaFc06e0LfzK84/.1VhodB5tW1bDKahMzAm/qgh6WevOpBm',NULL,NULL,NULL),(7,'Jonas','jonas@teste.com',NULL,'$2y$10$aJFxQfck3LFZgKd67.NqP.Q7iRbpLY94uOv74tKtfvrfZwAS4g5uK',NULL,NULL,NULL),(8,'fred','fred@teste.com',NULL,'$2y$10$Du6Feq4rWeN0mfnPx7rhfuNip.K4ALvb1BMa96ONcu53TbXefHD/S',NULL,NULL,NULL),(9,'bruno','bruno@teste.com',NULL,'$2y$10$wg8.Ponc5XLeJtDBCmWn2uaR1geE4P.nb/4SR8Dd7aNKm0aiIrWL6',NULL,NULL,NULL),(25,'nicolas','nicolas@teste.com',NULL,'$2y$10$3PjaDW5ZNIc9yINNxSGkSOljM6UQNU2/DsJ9CkjfnzWydJoR.7Kru',NULL,'2022-03-24 14:57:55','2022-03-24 14:57:55'),(29,'chefe','chefe@teste.com',NULL,'$2y$10$ZeXlT3D7sgRjlaGcDgjWou9qcPZQ1ol24fq1CDLqRST3VWebeYb4O',NULL,'2022-04-11 12:35:22','2022-04-11 12:35:22');
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

-- Dump completed on 2022-04-11 11:58:13
