-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: atendimento
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

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
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expediente` int DEFAULT '0',
  `entrada` timestamp NOT NULL,
  `saida` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (5,'yKz6IwkLV0UrXspqBGoBsyvaThJsPX7dLpOyncnw',0,'2020-10-14 20:21:04','2020-10-14 20:21:23'),(6,'ffFLYxoFHa85uBJf71qIcQpR2usCVI6IlfT15ohs',0,'2020-10-14 20:22:17','2020-10-14 20:30:32'),(7,'ox4vW8RPzCOaz9clozAvK72CHRUDWS1q3aQ5k5Te',0,'2020-10-14 21:48:11','2020-10-14 22:01:10'),(8,'v1gwhgn7LSFTk8Ro1yvE2tkIPwkCfIVH0gWu8SH0',0,'2020-10-14 18:52:56','2020-10-14 18:57:43'),(9,'hJufKLvTr2qL9Mv0DsSPQh0xZqEEAeNIPGy2741t',1,'2020-10-14 18:57:53','2020-10-14 18:59:17'),(10,'7GgFQywyWcml6fl4tJmczEZznc9hftch4mn6ow1A',1,'2020-10-14 19:00:02','2020-10-14 19:01:01'),(11,'Z7dcEipcOpWpmksGyW7DrUQKY0DYaZn86uT4y1Lj',1,'2020-10-14 19:01:07','2020-10-14 19:01:40'),(12,'DqEr69A5uzjqgKQppKL3sT9Sdi8IpvJpTXRUEUje',0,'2020-10-14 19:01:47','2020-10-14 19:02:30'),(13,'WEpRg1PjvBcDPIsRp0klqI55dgvFsbOHwYWETtsO',0,'2020-10-14 19:02:34','2020-10-14 19:02:47'),(14,'lraBepF0iFwfkdhrrb3AQXoU0jKq2NSDaZv5Nw9h',0,'2020-10-14 19:20:53','2020-10-14 19:22:33'),(15,'qpKIto1wO9oJ1MVEDYmtWNxRRMjB8cSl6W63ft1V',0,'2020-10-14 19:22:34','2020-10-14 19:22:38'),(16,'70HVWgrWaKN5FkxxgF1mmakJiMHbWGqCCFzIp4Zu',0,'2020-10-14 19:22:46','2020-10-14 19:23:25'),(17,'eGatO31jmp4zdLOUx8gN8GulNMLgUKGamRpw0EKo',0,'2020-10-14 19:25:13','2020-10-14 19:25:21'),(18,'IaT1RJiPxEDTm24gKgS0cPwbeMXCQmC07L7y12qC',0,'2020-10-14 19:25:54','2020-10-14 19:25:56'),(19,'DidO8MzPVCKzam0iKuZEleiigDpUF0ZXBeBmNdYA',0,'2020-10-14 19:26:35','2020-10-14 19:26:39'),(20,'KSpHQCp0muf2Ls4sgQc9GhVe9dFMP1CeuiSYwhPe',0,'2020-10-14 19:28:05','2020-10-14 19:28:08'),(21,'DkyrqlMJhaG62TyCiZDCdt1mdVymHKqxqt9Uimyk',0,'2020-10-14 19:29:02','2020-10-14 19:41:35'),(22,'2ax7FKH3VHSdm8w9KKxaMbFWtAh89iHmQCaIzaQI',0,'2020-10-14 19:41:38','2020-10-14 19:42:48'),(23,'6GqlupGg1FXB6XedMcbSqUpFdPtr4D1oIObnBJC2',0,'2020-10-14 19:52:28','2020-10-14 19:55:23'),(24,'OWdAp0NdQXHoMt3i9mSUgCViyyScet8lKhsfEwo4',0,'2020-10-14 19:55:24','2020-10-14 19:56:01'),(25,'0JvNq57YwhqPrRE2e8LNSryNu1WzDpDrQjqW8hA2',1,'2020-10-14 19:56:02','2020-10-14 19:58:49'),(26,'RdGlzwjUBe5WZcsVLei3WQrqdmbINWSkEcuU3Aqa',1,'2020-10-14 20:00:01','2020-10-14 20:10:29'),(27,'SS6xjAQl4UwQsVjxz7HPxbBqIGyvInHv7FBPB3Na',1,'2020-10-14 20:10:39','2020-10-14 20:13:48'),(28,'PSvj9OJBRfqE2mAxQnxpxt4jTSIpHdU1MOQyoqci',0,'2020-10-14 20:15:27',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_semana`
--

DROP TABLE IF EXISTS `dia_semana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia_semana` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `dia_semana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_semana`
--

LOCK TABLES `dia_semana` WRITE;
/*!40000 ALTER TABLE `dia_semana` DISABLE KEYS */;
INSERT INTO `dia_semana` VALUES (1,'Segunda-Feira','segunda-feira','2020-10-14 02:20:59','2020-10-14 02:20:59'),(2,'Terça-Feira','terca-feira','2020-10-14 02:21:03','2020-10-14 02:21:03'),(3,'Quarta-Feira','quarta-feira','2020-10-14 02:21:04','2020-10-14 02:21:04'),(4,'Quinta-Feira','quinta-feira','2020-10-14 02:21:04','2020-10-14 02:21:04'),(5,'Sexta-Feira','sexta-feira','2020-10-14 02:21:04','2020-10-14 02:21:04'),(6,'Sábado','sabado','2020-10-14 02:21:04','2020-10-14 02:21:04'),(7,'Domingo','domingo','2020-10-14 02:21:04','2020-10-14 02:21:04');
/*!40000 ALTER TABLE `dia_semana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expediente`
--

DROP TABLE IF EXISTS `expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expediente` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `funcionario_id` bigint unsigned NOT NULL,
  `dia_semana_id` bigint unsigned NOT NULL,
  `sem_expediente` int NOT NULL DEFAULT '0',
  `horario_entrada` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horario_saida` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expediente_funcionario_id_foreign` (`funcionario_id`),
  KEY `expediente_dia_semana_id_foreign` (`dia_semana_id`),
  CONSTRAINT `expediente_dia_semana_id_foreign` FOREIGN KEY (`dia_semana_id`) REFERENCES `dia_semana` (`id`),
  CONSTRAINT `expediente_funcionario_id_foreign` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expediente`
--

LOCK TABLES `expediente` WRITE;
/*!40000 ALTER TABLE `expediente` DISABLE KEYS */;
INSERT INTO `expediente` VALUES (1,7,1,0,'08:00','12:00','2020-10-14 08:35:52','2020-10-14 08:35:52'),(2,7,2,0,'12:00','18:00','2020-10-14 08:35:53','2020-10-14 08:35:53'),(6,12,2,0,'2020-10-14 12:00:00','2020-10-14 23:00:00','2020-10-14 20:08:55','2020-10-14 20:08:55');
/*!40000 ALTER TABLE `expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (7,'Rafael','rafael-1','2020-10-14 08:35:52','2020-10-14 08:35:52'),(10,'teste','teste','2020-10-14 20:07:26','2020-10-14 20:07:26'),(11,'teste','teste-1','2020-10-14 20:08:02','2020-10-14 20:08:02'),(12,'teste','teste-2','2020-10-14 20:08:55','2020-10-14 20:08:55');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2020_10_09_215550_create_table_funcionario',1),(2,'2020_10_09_215901_create_dia_semana_table',1),(3,'2020_10_09_215955_create_expediente_table',1),(4,'2020_10_13_151910_create_cliente_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-14 18:30:32
