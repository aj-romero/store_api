-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: security_test
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB-0ubuntu0.18.04.1

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
-- Table structure for table `log_products`
--

DROP TABLE IF EXISTS `log_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `old_price` double(8,2) NOT NULL,
  `new_price` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `log_products_product_id_foreign` (`product_id`),
  CONSTRAINT `log_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_products`
--

LOCK TABLES `log_products` WRITE;
/*!40000 ALTER TABLE `log_products` DISABLE KEYS */;
INSERT INTO `log_products` (`id`, `created_at`, `updated_at`, `product_id`, `old_price`, `new_price`) VALUES (1,'2019-02-02 11:23:47','2019-02-02 11:23:47',3,4.93,14.93),(2,'2019-02-02 11:32:56','2019-02-02 11:32:56',4,0.27,10.27),(3,'2019-02-03 10:50:00','2019-02-03 10:50:00',32,12.11,33.33);
/*!40000 ALTER TABLE `log_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10,'2014_10_12_000000_create_users_table',1),(11,'2014_10_12_100000_create_password_resets_table',1),(12,'2016_06_01_000001_create_oauth_auth_codes_table',1),(13,'2016_06_01_000002_create_oauth_access_tokens_table',1),(14,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(15,'2016_06_01_000004_create_oauth_clients_table',1),(16,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(17,'2019_01_31_210046_create_roles_table',1),(18,'2019_01_31_210426_create_role_user_table',1),(19,'2019_02_01_033439_create_products_table',2),(20,'2019_02_02_044710_create_log_products_table',3),(21,'2019_02_02_160603_create_purchase_orders_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES ('020d9d2f271699f24d42b363fd75cc8815a9f349b48e264cb084708bd2f4294b207e6818a96b11c2',2,5,'Personal Access Token','[]',1,'2019-02-03 10:39:18','2019-02-03 10:39:18','2019-02-10 04:39:18'),('04b443762f3018cda2790adc9fcdbf6438049d4f743333fb13d9a7ec83f4d9d1381eadfa66342762',1,3,'Personal Access Token','[]',0,'2019-02-03 01:41:29','2019-02-03 01:41:29','2019-02-09 19:41:29'),('1e9d7ac08111e49de4f11cc2016a93d20cc34204245866d6de8ea0e029646a368188e30b9de77695',2,3,'Personal Access Token','[]',0,'2019-02-01 10:24:00','2019-02-01 10:24:00','2019-02-08 04:24:00'),('3148f302432139e972ccdebe301b3a308be79f63debe427cfc3f21d70a19fa7b58e1f3e7eef10692',2,3,'Personal Access Token','[]',1,'2019-02-01 10:37:08','2019-02-01 10:37:08','2019-02-08 04:37:08'),('5b2a8915f2a7dc9c002d2c9971217798b110a8531d8a2ce48678bf0644add4d5b6a5f801b2ead42c',1,3,'Personal Access Token','[]',1,'2019-02-01 05:50:18','2019-02-01 05:50:18','2019-02-07 23:50:18'),('8bb05ea2af614368660c3b8c356233c8b7c97171ac86f738c151473de57b4b6d4fc3e73fe1e00431',2,3,'Personal Access Token','[]',0,'2019-02-01 06:03:49','2019-02-01 06:03:49','2019-02-08 00:03:49'),('9275006239c96250e72b5fe3007ca70841b5e10e3b84809f3734b8c5951785e337a3bb979c1d342e',2,5,'Personal Access Token','[]',1,'2019-02-03 10:33:59','2019-02-03 10:33:59','2019-02-10 04:33:59'),('9517175b89f1e4c9597764aaf1856ed32fae7edd39083a41404c84e6c638f895da5655cb4672a1fb',2,3,'Personal Access Token','[]',1,'2019-02-01 10:31:22','2019-02-01 10:31:22','2019-02-08 04:31:22'),('b43432354a43b1511db442c7a74a0712fce7566ab07a375b1ff48e8b1610735bd3186a583d62b8c6',1,5,'Personal Access Token','[]',1,'2019-02-03 10:29:20','2019-02-03 10:29:20','2019-02-10 04:29:20'),('bc0b8ee7c5833350ee8296a9e775e730d22531e8f828bfa9ce47011dcf68d54094e80258e1561b30',1,3,'Personal Access Token','[]',1,'2019-02-01 04:55:10','2019-02-01 04:55:10','2019-02-07 22:55:10'),('c24395ac2a323798867587015f52b66872874bff2c353c00f86582051e3dee9a4657a5a324c4a19c',1,5,'Personal Access Token','[]',1,'2019-02-03 04:52:35','2019-02-03 04:52:35','2019-02-09 22:52:35');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES (1,NULL,'Laravel Personal Access Client','gQVqa97MArpHM03LuF1hS4TrLFOXe5Oh7Wmz1Xhj','http://localhost',1,0,0,'2019-02-01 04:53:38','2019-02-01 04:53:38'),(2,NULL,'Laravel Password Grant Client','oiegSTMuFjnGq93AIF16FYvlhmvndgOKx2WLA0bv','http://localhost',0,1,0,'2019-02-01 04:53:38','2019-02-01 04:53:38'),(3,NULL,'Laravel Personal Access Client','SqSXrZIHlB30PaVHMQrSH4cMcG4cMEtyjyQiT4Pz','http://localhost',1,0,0,'2019-02-01 04:53:59','2019-02-01 04:53:59'),(4,NULL,'Laravel Password Grant Client','0wlGut70VcQPGgwKGlR7DVwDfIECBc06ex1MXY0o','http://localhost',0,1,0,'2019-02-01 04:53:59','2019-02-01 04:53:59'),(5,NULL,'Store_API Personal Access Client','suGuFef7CZ5y4TgZ2wivRKN8yFBQ6WHMsaS8X7h5','http://localhost',1,0,0,'2019-02-03 04:30:09','2019-02-03 04:30:09'),(6,NULL,'Store_API Password Grant Client','N0Lsw6zZ63DrPDKFcgl2Jspl6b2Es5VMGRiRjis5','http://localhost',0,1,0,'2019-02-03 04:30:09','2019-02-03 04:30:09'),(7,NULL,'Laravel Personal Access Client','zaziHQbs8z6HjMrKK9OWzMmDZauFa0KibECY45wd','http://localhost',1,0,0,'2019-02-03 11:09:41','2019-02-03 11:09:41'),(8,NULL,'Laravel Password Grant Client','PeYIyPa7qC6fD3HrUshc4vNUo8DGMhsgDuVbQzXo','http://localhost',0,1,0,'2019-02-03 11:09:41','2019-02-03 11:09:41'),(9,NULL,'Laravel Personal Access Client','INseifeYJgpiUcsnrfvvAD9hwhfzBLc01cLFc4gn','http://localhost',1,0,0,'2019-02-03 11:09:58','2019-02-03 11:09:58'),(10,NULL,'Laravel Password Grant Client','fWSMgNmMd144xgNigfhqAnZnlWRH3uyGgGlB63Rs','http://localhost',0,1,0,'2019-02-03 11:09:58','2019-02-03 11:09:58'),(11,NULL,'Laravel Personal Access Client','GhuuqKbMlHqusL0hD7f99OeMXs6SS3rMThoF3J0p','http://localhost',1,0,0,'2019-02-03 11:12:31','2019-02-03 11:12:31'),(12,NULL,'Laravel Password Grant Client','lwBhZ4Zo9vgZLfWIQTi6BgMnmnWHRuaTudqDIw1F','http://localhost',0,1,0,'2019-02-03 11:12:31','2019-02-03 11:12:31');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES (1,11,'2019-02-03 11:12:31','2019-02-03 11:12:31');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `description`, `price`, `quantity`, `likes`, `availability`) VALUES (1,'2019-02-01 10:14:20','2019-02-03 10:47:20','Nia Smitham','Id impedit eligendi sint rerum ipsum rem alias. Vitae rerum fugit velit voluptas pariatur qui iure. Id est sit qui iure animi nobis nemo. Hic nisi ea odit.',12.11,9,33,0),(2,'2019-02-01 10:14:20','2019-02-01 10:14:20','Kayli Prohaska','Nihil fugiat iste dolor voluptatibus natus ad. Qui ea officia corporis qui enim.',3.88,27,37,0),(3,'2019-02-01 10:14:20','2019-02-02 11:25:34','Coca cola 12oz','this is an update of product Nihil totam voluptate aliquid quidem. Laborum velit voluptatem quod nulla sunt. Facere beatae enim nam non laborum voluptas fuga.',14.93,4,72,1),(4,'2019-02-01 10:14:20','2019-02-02 23:46:27','Coca cola 1lt','this is coca cola product for all american nation, super duper sugar!!!',10.27,68,53,1),(5,'2019-02-01 10:14:20','2019-02-01 10:14:20','Nella Farrell','Libero praesentium delectus vel. Iste ut reiciendis dolorum ducimus saepe ut esse perspiciatis. Rerum magnam totam cumque ipsum ullam est odit.',3.70,40,50,0),(6,'2019-02-01 10:14:20','2019-02-03 02:20:21','Clarabelle Brakus','Quam cupiditate nam est reiciendis sapiente qui. Autem delectus et veritatis eligendi molestias eum. Qui est id eius consequatur. Sunt aperiam suscipit excepturi nulla.',0.24,90,13,0),(7,'2019-02-01 10:14:20','2019-02-01 10:14:20','Jannie Kirlin','Et veritatis est inventore. Non eaque porro quia. Est cumque sequi sint voluptatem est dolores. Enim et unde in dignissimos eos consequuntur et.',1.71,42,83,0),(8,'2019-02-01 10:14:20','2019-02-01 10:14:20','Mrs. Paige Botsford Jr.','Dolorem libero dolor molestiae exercitationem quaerat. Et quae adipisci odit sint sint. Reiciendis velit ea error excepturi dolor deleniti vitae. Ipsum id possimus voluptatem a dolorem.',1.60,49,37,1),(9,'2019-02-01 10:14:20','2019-02-01 10:14:20','Prof. Stacey Stamm','Sit aut nostrum earum mollitia cumque fuga laboriosam maxime. Quae pariatur nisi et deserunt expedita iusto. Commodi officiis et dolorem ut minima iusto et.',3.39,51,18,1),(10,'2019-02-01 10:14:20','2019-02-01 10:14:20','Cleora Wilkinson','Pariatur fuga doloremque assumenda quos hic. Consequatur nisi aperiam totam libero id perferendis. Adipisci dolorem consequatur iusto doloremque sed qui vel.',3.06,48,93,1),(11,'2019-02-01 10:14:20','2019-02-01 10:14:20','Clarabelle Labadie','Quae doloremque sint sed occaecati recusandae deleniti id. Rerum dolor nihil dolorem nisi. Sed quia voluptas autem ea aut vero. Mollitia quaerat et eum dolorem.',3.30,97,55,1),(12,'2019-02-01 10:14:20','2019-02-02 23:47:36','Dr. Marie Mertz','Eos cumque qui recusandae optio quae neque. Est fugiat ea cum autem qui dolorum. Nulla asperiores eum sint culpa dolor voluptas.',1.19,12,35,0),(13,'2019-02-01 10:14:20','2019-02-01 10:14:20','Rashawn White','Voluptas sequi eveniet enim laborum eius magni consectetur. Velit est qui amet. Et corporis sed dolor quae dolore. Qui tempora quo possimus ipsum sed expedita.',1.79,44,65,1),(14,'2019-02-01 10:14:20','2019-02-01 10:14:20','Dr. Aubrey Crist II','Facilis doloribus pariatur dolore et. Deserunt modi facere fugit id molestiae et. Sit impedit quam id distinctio labore ut accusantium. Aspernatur incidunt enim debitis nam adipisci.',2.03,11,72,0),(15,'2019-02-01 10:14:20','2019-02-01 10:14:20','Kira VonRueden','Et molestiae rerum nam et. Blanditiis voluptatum ex omnis porro velit esse facere. Quam provident facilis quis aut. Iure laudantium voluptas nam ut delectus et voluptatibus.',2.22,27,71,1),(16,'2019-02-01 10:14:20','2019-02-01 10:14:20','Rosa Turcotte','Reiciendis tempore soluta dolores totam quam aspernatur placeat. Autem ratione in nobis perspiciatis non nisi. Nam voluptates nihil est quis placeat et.',2.64,99,41,1),(17,'2019-02-01 10:14:20','2019-02-01 10:14:20','Heaven Stiedemann','Corrupti nemo laudantium laudantium. Magni excepturi et enim est nobis.',2.60,75,49,0),(18,'2019-02-01 10:14:20','2019-02-01 10:14:20','Michelle Donnelly','Laudantium qui eligendi illum provident. Accusamus inventore a exercitationem dicta. Aperiam repudiandae facere error animi eum. Fugit sit quod maiores veritatis quas nisi.',2.36,21,41,0),(19,'2019-02-01 10:14:20','2019-02-01 10:14:20','Amiya Kozey','Officia eum ut quo nisi libero minus aut. Similique dicta ea enim impedit ratione perferendis illo.',1.01,78,26,1),(20,'2019-02-01 10:14:20','2019-02-01 10:14:20','Dwight Moen','Porro provident voluptatem provident minima facere vero. Ut rerum occaecati veritatis. Esse ea ut nam eaque neque similique. Deserunt natus excepturi in eos velit ex reiciendis.',3.36,51,67,0),(21,'2019-02-01 10:14:20','2019-02-01 10:14:20','Viola Gutmann','Voluptas laborum qui quam recusandae et voluptatem est. Odio et qui assumenda eos consequatur non et. Tempore porro non accusamus libero. Saepe animi et veniam vitae quisquam blanditiis occaecati incidunt.',4.45,91,23,1),(22,'2019-02-01 10:14:20','2019-02-01 10:14:20','Nelle Jacobi','Est non aut eveniet tenetur ut numquam. Eos est dignissimos eveniet explicabo officia. Odit voluptatem consectetur sapiente quos molestias quis alias. Quibusdam placeat assumenda perferendis sit eius. Maxime sint voluptatem omnis omnis.',3.06,72,53,1),(23,'2019-02-01 10:14:20','2019-02-01 10:14:20','Royal Berge','Sint beatae voluptas ea explicabo consequatur commodi. Blanditiis temporibus reprehenderit distinctio sint. Corporis ducimus velit debitis harum deserunt.',0.42,6,89,1),(24,'2019-02-01 10:14:20','2019-02-01 10:14:20','Conner Cartwright','Et illo rerum harum voluptatem nemo ex. Error hic qui pariatur. Consequatur et voluptates atque praesentium. Non neque est cupiditate ipsum.',4.20,87,12,1),(25,'2019-02-01 10:14:20','2019-02-01 10:14:20','Linda Barton IV','Ut nisi est rerum aliquid. Sunt odit dolore saepe earum qui illum tenetur. Quos autem et dignissimos aliquid.',4.46,30,93,1),(26,'2019-02-01 10:14:20','2019-02-01 10:14:20','Roger Terry','Modi et tempore eveniet qui voluptates. Nobis dolorem est sit a sit at beatae. Sunt dolor ipsa officiis quia rerum tempora in.',4.42,13,28,0),(27,'2019-02-01 10:14:20','2019-02-01 10:14:20','Tyrell McGlynn','Labore sit sit magni quis quia. Enim et ea cum molestiae est voluptas dolores maiores.',3.23,65,46,0),(28,'2019-02-01 10:14:20','2019-02-01 10:14:20','Pat Conroy','Voluptates magni veritatis aut quae labore doloribus aliquam. Similique sint beatae distinctio id. Exercitationem officiis qui vitae non explicabo quam.',0.66,49,55,0),(29,'2019-02-01 10:14:20','2019-02-01 10:14:20','Maria Abernathy','Commodi qui nesciunt delectus deserunt nobis qui sunt. Cumque explicabo iste earum assumenda. Sapiente perspiciatis deserunt praesentium.',4.15,0,38,1),(30,'2019-02-01 10:14:20','2019-02-01 10:14:20','Dr. Kennith Borer','Vitae id ex et nostrum. Nulla omnis cupiditate soluta cupiditate. Repellat dignissimos exercitationem omnis rerum dolores.',2.45,24,43,1),(32,'2019-02-03 10:37:11','2019-02-03 10:52:50','New Product for store','This is a little description for a new product',33.33,0,2,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_orders_product_id_foreign` (`product_id`),
  KEY `purchase_orders_user_id_foreign` (`user_id`),
  CONSTRAINT `purchase_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `purchase_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_orders`
--

LOCK TABLES `purchase_orders` WRITE;
/*!40000 ALTER TABLE `purchase_orders` DISABLE KEYS */;
INSERT INTO `purchase_orders` (`id`, `created_at`, `updated_at`, `product_id`, `user_id`, `quantity`, `price`) VALUES (1,'2019-02-03 01:45:59','2019-02-03 01:45:59',3,3,1,14.93),(2,'2019-02-03 01:50:42','2019-02-03 01:50:42',1,1,1,1.15),(3,'2019-02-03 01:58:29','2019-02-03 01:58:29',6,1,1,0.24),(4,'2019-02-03 02:20:21','2019-02-03 02:20:21',6,1,8,0.24);
/*!40000 ALTER TABLE `purchase_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES (1,2,1,'2019-02-01 03:24:07','2019-02-01 03:24:07'),(2,1,2,'2019-02-01 03:24:07','2019-02-01 03:24:07'),(3,2,3,'2019-02-01 04:34:11','2019-02-01 04:34:11');
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES (1,'admin','Administrator','2019-02-01 03:20:09','2019-02-01 03:20:09'),(2,'user','User','2019-02-01 03:20:09','2019-02-01 03:20:09');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1,'User','user@example.com',NULL,'$2y$10$plzCcy3TVY3ux78tEibHx.Wl4dfDvWRxLMyy7NRCyDw4BHPlV/ppy',NULL,'2019-02-01 03:24:07','2019-02-01 03:24:07'),(2,'Admin','admin@example.com',NULL,'$2y$10$E2i56eiSy4Tl07NcfOsoLeFw/DXlOA5HUf.ONgT7n9wSb4fgkWQbO',NULL,'2019-02-01 03:24:07','2019-02-01 03:24:07'),(3,'alber','alberjose.romero@gmail.com',NULL,'$2y$10$h3d6ZNNmABKyKXPaeFSypeFW7maTP6erEGZSDnbeo9Jk6CJwdkZte',NULL,'2019-02-01 04:34:11','2019-02-01 04:34:11');
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

-- Dump completed on 2019-02-02 23:19:24
