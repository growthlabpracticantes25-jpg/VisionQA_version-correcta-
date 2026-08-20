CREATE DATABASE  IF NOT EXISTS `visionqa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `visionqa`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: visionqa
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add inspeccion',7,'add_inspeccion'),(26,'Can change inspeccion',7,'change_inspeccion'),(27,'Can delete inspeccion',7,'delete_inspeccion'),(28,'Can view inspeccion',7,'view_inspeccion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$025QYmyKlmb6fIVwZgrWkD$RHzxMPT/Wf8mPC11RRiwi36CFKZuv8g385ytHwEbZe0=','2026-08-16 20:29:51.390390',1,'admin','','','growthlab.practicantes25@gmail.com',1,1,'2026-07-27 15:13:39.397477'),(2,'pbkdf2_sha256$1000000$VkQFkhDt4NGwWcl9D5CQve$ZToOmrAxS2k4dHSnVtdRpIhJOlgekvodjI8+3D17H1s=','2026-07-31 18:28:55.743226',0,'dorcasperez','Dorcas Tabita Perez Martinez','','dorcasperez293@gmail.com',0,1,'2026-07-31 18:21:27.218114'),(3,'pbkdf2_sha256$1000000$6f48ZU9gd1AfNBdEmiENs5$iW3F4Z8g0ueeLYC3R6GXeRg+OxLTtyGtIT57g/+mBpE=','2026-07-31 19:39:45.420131',0,'luceroperez','Lucero Perez Noriega','','luceropere278@gmail.com',0,1,'2026-07-31 19:39:19.792674'),(4,'pbkdf2_sha256$1000000$lzOuLisNEn0dHJHpB23bEB$l97ICsXd9aaUE+cLlCtVxw2gf2F6hMx5wtxWq0R6H3Y=',NULL,0,'karlitacruz','Karla Cruz Cuellar','','karlacruz@123gmail.com',0,1,'2026-08-04 13:49:33.056910');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'inspecciones','inspeccion'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-07-22 17:48:38.295349'),(2,'auth','0001_initial','2026-07-22 17:48:39.513860'),(3,'admin','0001_initial','2026-07-22 17:48:39.631351'),(4,'admin','0002_logentry_remove_auto_add','2026-07-22 17:48:39.636350'),(5,'admin','0003_logentry_add_action_flag_choices','2026-07-22 17:48:39.641350'),(6,'contenttypes','0002_remove_content_type_name','2026-07-22 17:48:39.730054'),(7,'auth','0002_alter_permission_name_max_length','2026-07-22 17:48:39.784569'),(8,'auth','0003_alter_user_email_max_length','2026-07-22 17:48:39.798573'),(9,'auth','0004_alter_user_username_opts','2026-07-22 17:48:39.804570'),(10,'auth','0005_alter_user_last_login_null','2026-07-22 17:48:39.850569'),(11,'auth','0006_require_contenttypes_0002','2026-07-22 17:48:39.853569'),(12,'auth','0007_alter_validators_add_error_messages','2026-07-22 17:48:39.857569'),(13,'auth','0008_alter_user_username_max_length','2026-07-22 17:48:39.911644'),(14,'auth','0009_alter_user_last_name_max_length','2026-07-22 17:48:39.964647'),(15,'auth','0010_alter_group_name_max_length','2026-07-22 17:48:39.977215'),(16,'auth','0011_update_proxy_permissions','2026-07-22 17:48:39.982216'),(17,'auth','0012_alter_user_first_name_max_length','2026-07-22 17:48:40.037403'),(18,'inspecciones','0001_initial','2026-07-22 17:48:40.053432'),(19,'sessions','0001_initial','2026-07-22 17:48:40.082529');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('4li3i1o0znghmmizwn7ifum3blhklk9m','.eJxVjcsOwiAURP-FtSFAEW67dO83EB4Xi9ZioE00xn-XJl3ods6ZmTcxdl1Gs1YsJgUyEE4Ov5mz_obzBsLVzpdMfZ6XkhzdFLrTSs854HTa3b-B0daxtRUI3QXFmONRoUPNtARQkcdeIALHzkmh8QjKAUjBmwVeBOSs51Y630YL-lyCLXckQ7RTxfZTsdaUZ4PPRyovMrDPF0eGRWU:1wuB6b:jVNV_kbSurqyXCFOJwLFqngIhbEEI0fwBsEvwrZSRQ4','2026-08-26 15:43:01.021535'),('jfgc2palpvo0wgte5dmilfiyju0462z6','.eJxVjcsOwiAURP-FtSFAodAu3fsNhHIvFh9goE00xn-XJl3ods6ZmTexbl1mu1YsNgIZCSeH32xy_oppA3Bx6Zypz2kpcaKbQnda6SkD3o67-zcwuzq39qAlasa8BDMANyA7UDyYoRdadD50LDjdgwYtggDgUgmlTG9Ck6XkTrTRgj4XcOWOZAzuVrH9VKw15mTx-YjlRUb2-QI53EUQ:1wvhUN:tUui0HjGroRR-h3Z-MHKyIatoyJ_KhmvYOxfBd-q5EI','2026-08-30 20:29:51.399176');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspecciones_inspeccion`
--

DROP TABLE IF EXISTS `inspecciones_inspeccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspecciones_inspeccion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `resultado` varchar(20) NOT NULL,
  `defecto` varchar(100) NOT NULL,
  `confianza` double NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `origen` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspecciones_inspeccion`
--

LOCK TABLES `inspecciones_inspeccion` WRITE;
/*!40000 ALTER TABLE `inspecciones_inspeccion` DISABLE KEYS */;
INSERT INTO `inspecciones_inspeccion` VALUES (58,'2026-08-16 20:33:43.230329','APTO','',100,'inspecciones\\archivo_20260816_143341.jpg','Archivo local'),(59,'2026-08-16 20:35:43.720585','NO APTO','Rota',47.79106080532074,'inspecciones\\archivo_20260816_143543.jpg','Archivo local'),(60,'2026-08-16 20:36:12.199738','APTO','',100,'inspecciones\\archivo_20260816_143612.jpg','Archivo local'),(61,'2026-08-16 20:36:33.014828','NO APTO','Sin_backplate',80.79368472099304,'inspecciones\\archivo_20260816_143632.jpg','Archivo local'),(62,'2026-08-16 20:47:02.661878','APTO','',100,'inspecciones\\archivo_20260816_144702.jpg','Archivo local'),(63,'2026-08-16 20:47:34.307347','APTO','',100,'inspecciones\\archivo_20260816_144734.jpg','Archivo local'),(64,'2026-08-16 20:48:58.119467','APTO','',100,'inspecciones\\archivo_20260816_144857.jpg','Archivo local'),(65,'2026-08-16 20:49:19.426480','NO APTO','Sin_backplate',67.40244626998901,'inspecciones\\archivo_20260816_144919.jpg','Archivo local'),(66,'2026-08-16 20:51:10.978866','APTO','',100,'inspecciones\\archivo_20260816_145110.jpg','Archivo local'),(67,'2026-08-16 20:51:34.934641','NO APTO','Manchada',61.129963397979736,'inspecciones\\archivo_20260816_145134.jpg','Archivo local'),(68,'2026-08-16 20:52:00.084038','APTO','',100,'inspecciones\\archivo_20260816_145159.jpg','Archivo local'),(69,'2026-08-16 20:52:19.434803','NO APTO','Sin_backplate',64.64434266090393,'inspecciones\\archivo_20260816_145219.jpg','Archivo local'),(70,'2026-08-16 20:52:51.482211','APTO','',100,'inspecciones\\archivo_20260816_145251.jpg','Archivo local'),(71,'2026-08-16 20:53:17.721667','APTO','',100,'inspecciones\\archivo_20260816_145317.jpg','Archivo local'),(72,'2026-08-16 20:53:41.087695','NO APTO','Manchada',49.00662004947662,'inspecciones\\archivo_20260816_145340.jpg','Archivo local'),(73,'2026-08-16 20:54:00.876615','APTO','',100,'inspecciones\\archivo_20260816_145400.jpg','Archivo local'),(74,'2026-08-16 20:54:22.466070','NO APTO','Sin_backplate',50.18110275268555,'inspecciones\\archivo_20260816_145422.jpg','Archivo local'),(75,'2026-08-16 20:54:44.106708','APTO','',100,'inspecciones\\archivo_20260816_145443.jpg','Archivo local'),(76,'2026-08-16 20:55:04.872613','APTO','',100,'inspecciones\\archivo_20260816_145504.jpg','Archivo local'),(77,'2026-08-16 20:56:44.564191','NO APTO','Manchada',61.00038290023804,'inspecciones\\archivo_20260816_145644.jpg','Archivo local'),(78,'2026-08-16 20:57:18.428016','APTO','',100,'inspecciones\\archivo_20260816_145718.jpg','Archivo local'),(79,'2026-08-16 20:57:43.063345','APTO','',100,'inspecciones\\archivo_20260816_145742.jpg','Archivo local'),(80,'2026-08-16 20:58:08.522200','APTO','',100,'inspecciones\\archivo_20260816_145808.jpg','Archivo local'),(81,'2026-08-16 20:58:31.099823','NO APTO','Sin_backplate',80.91002106666565,'inspecciones\\archivo_20260816_145830.jpg','Archivo local'),(82,'2026-08-16 20:58:53.935280','APTO','',100,'inspecciones\\archivo_20260816_145853.jpg','Archivo local'),(83,'2026-08-16 20:59:15.495535','APTO','',100,'inspecciones\\archivo_20260816_145915.jpg','Archivo local'),(84,'2026-08-16 20:59:39.349697','NO APTO','Manchada',50.884974002838135,'inspecciones\\archivo_20260816_145939.jpg','Archivo local'),(85,'2026-08-16 21:00:01.011414','NO APTO','Rota',48.87676537036896,'inspecciones\\archivo_20260816_150000.jpg','Archivo local'),(86,'2026-08-16 21:01:22.913120','APTO','',100,'inspecciones\\archivo_20260816_150122.jpg','Archivo local'),(87,'2026-08-16 21:01:55.658552','NO APTO','Sin_backplate',58.64596962928772,'inspecciones\\archivo_20260816_150155.jpg','Archivo local'),(88,'2026-08-16 21:02:21.089216','APTO','',100,'inspecciones\\archivo_20260816_150220.jpg','Archivo local'),(89,'2026-08-16 21:02:39.012002','APTO','',100,'inspecciones\\archivo_20260816_150238.jpg','Archivo local'),(90,'2026-08-16 21:03:01.083308','NO APTO','Manchada',70.56069374084473,'inspecciones\\archivo_20260816_150300.jpg','Archivo local'),(91,'2026-08-16 21:03:30.128837','APTO','',100,'inspecciones\\archivo_20260816_150329.jpg','Archivo local'),(92,'2026-08-16 21:04:16.862437','NO APTO','Rota',35.998350381851196,'inspecciones\\archivo_20260816_150416.jpg','Archivo local'),(93,'2026-08-16 21:04:39.582435','APTO','',100,'inspecciones\\archivo_20260816_150439.jpg','Archivo local'),(94,'2026-08-16 21:05:05.803352','NO APTO','Sin_backplate',63.02217245101929,'inspecciones\\archivo_20260816_150505.jpg','Archivo local'),(95,'2026-08-16 21:05:39.389893','APTO','',100,'inspecciones\\archivo_20260816_150539.jpg','Archivo local'),(96,'2026-08-16 21:06:36.599333','NO APTO','Manchada',77.87193655967712,'inspecciones\\archivo_20260816_150636.jpg','Archivo local'),(97,'2026-08-16 21:07:06.941065','NO APTO','Rota',28.713160753250122,'inspecciones\\archivo_20260816_150706.jpg','Archivo local'),(98,'2026-08-16 21:07:29.067803','NO APTO','Sin_backplate',69.42653059959412,'inspecciones\\archivo_20260816_150728.jpg','Archivo local'),(99,'2026-08-16 21:07:54.067489','APTO','',100,'inspecciones\\archivo_20260816_150753.jpg','Archivo local'),(100,'2026-08-16 21:08:17.607088','NO APTO','Manchada',73.39640259742737,'inspecciones\\archivo_20260816_150817.jpg','Archivo local'),(101,'2026-08-16 21:08:40.096336','NO APTO','Rota',52.940648794174194,'inspecciones\\archivo_20260816_150839.jpg','Archivo local'),(102,'2026-08-16 21:09:08.696329','APTO','',100,'inspecciones\\archivo_20260816_150908.jpg','Archivo local'),(103,'2026-08-16 21:09:32.308204','NO APTO','Sin_backplate',56.13824129104614,'inspecciones\\archivo_20260816_150932.jpg','Archivo local'),(104,'2026-08-16 21:09:51.987431','APTO','',100,'inspecciones\\archivo_20260816_150951.jpg','Archivo local'),(105,'2026-08-16 21:10:14.205846','NO APTO','Rota',52.57633328437805,'inspecciones\\archivo_20260816_151014.jpg','Archivo local'),(106,'2026-08-16 21:10:34.827338','NO APTO','Sin_backplate',38.35119009017944,'inspecciones\\archivo_20260816_151034.jpg','Archivo local'),(107,'2026-08-16 21:10:54.525974','APTO','',100,'inspecciones\\archivo_20260816_151054.jpg','Archivo local');
/*!40000 ALTER TABLE `inspecciones_inspeccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-16 17:08:44
