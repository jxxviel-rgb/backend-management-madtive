-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: management
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Natus qui omnis eos','Atque facilis quas p','fikri@f.com','Excepturi minim dolo','2021-09-07 23:14:06','2021-09-05 18:00:27','2021-09-07 23:14:06'),(2,'Esse ad elit dolor','Fuga Maiores quia v','ilhams@gmail.com','Voluptate error repu','2021-09-07 23:14:47','2021-09-05 23:00:02','2021-09-07 23:14:47'),(3,'Id eu animi adipisc','Minima lorem sed des','iqbal@gmail.com','Dolores voluptatibus','2021-09-07 23:34:28','2021-09-07 23:19:32','2021-09-07 23:34:28'),(4,'Non iure voluptas no','Cupidatat cillum rep','faris@gmail.com','Ut est hic voluptat','2021-09-08 00:15:09','2021-09-07 23:46:08','2021-09-08 00:15:09'),(5,'Et cupiditate volupt','In duis minim sit ex','fikri@gmail.com','Elit quasi atque la','2021-09-08 21:18:04','2021-09-07 23:48:10','2021-09-08 21:18:04'),(6,'In qui iure id aspe','Ut voluptatum illo r','asd@gmail.com','Nostrum do beatae al','2021-09-08 18:38:48','2021-09-08 00:01:55','2021-09-08 18:38:48'),(7,'Officia totam repreh','Sint cum ea quia qu','asdsad@gmail.com','Eius et consequuntur','2021-09-08 09:23:26','2021-09-08 00:13:24','2021-09-08 09:23:26'),(8,'Quo at vero aut face','Laboriosam itaque i','asd@asdasd.asd','Atque enim qui corpo','2021-09-08 09:23:12','2021-09-08 00:23:22','2021-09-08 09:23:12'),(9,'Ducimus qui ex dolo','Laborum Quisquam do','dasdas@asdasd.asdas','Et asperiores non ex','2021-09-08 06:43:03','2021-09-08 00:40:21','2021-09-08 06:43:03'),(10,'Similique cupidatat','Id pariatur Odio q','asdasd@asdad.asdasd','Autem quia commodi n','2021-09-08 06:42:36','2021-09-08 00:58:46','2021-09-08 06:42:36'),(11,'Ut nobis et eos doldasdas','Dolor atque quis nos','asdasdas@asdasd','Esse error ipsum cu','2021-09-08 06:42:23','2021-09-08 01:00:08','2021-09-08 06:42:23'),(12,'Dolor aut dolor erro','Labore fugit Nam of','dasdas@asdasda','Deleniti do dolor qu','2021-09-08 06:23:18','2021-09-08 01:02:41','2021-09-08 06:23:18'),(13,'Assumenda voluptatem','Voluptatem et maxim','adasd@asdasd.sadasd','Omnis quisquam offic','2021-09-08 06:23:06','2021-09-08 01:05:39','2021-09-08 06:23:06'),(14,'Assumenda voluptatem','Voluptatem et maxim','adasd@asdasd','Omnis quisquam officasdas','2021-09-08 06:15:00','2021-09-08 01:06:26','2021-09-08 06:15:00'),(15,'Assumenda voluptatem','Voluptatem et maxim','adasd@asdasdasdasdasd','Omnis quisquam officasdasasdasd','2021-09-08 02:54:33','2021-09-08 01:06:32','2021-09-08 02:54:33'),(16,'Assumenda voluptatem','Voluptatem et maxim','adasd@asdasdasdasdasdasdasd','Omnis quisquam officasdasasdasdasdasdasd','2021-09-08 02:51:42','2021-09-08 01:06:38','2021-09-08 02:51:42'),(17,'Voluptatum voluptate','Iste quis ratione al','alam@gmail.com','Placeat veritatis q','2021-09-08 06:13:50','2021-09-08 01:07:16','2021-09-08 06:13:50'),(18,'Voluptate enim qui v','Velit dolor consequu','asdas@asdasdasda','Exercitation dolor n','2021-09-08 06:13:39','2021-09-08 01:08:58','2021-09-08 06:13:39'),(19,'Deleniti porro praesas','Iure ut a expedita i','madtive@madasmd.asd','Aspernatur error nec','2021-09-08 06:11:57','2021-09-08 01:09:44','2021-09-08 06:11:57'),(20,'Consequatur iste du','Et maxime eu quam la','sadas@asdasd.asdas','Ea cillum iure quo e','2021-09-08 05:19:40','2021-09-08 01:11:12','2021-09-08 05:19:40'),(21,'In id soluta anim l','Recusandae Quod qui','acac@asca','Odit alias omnis et','2021-09-08 05:18:31','2021-09-08 01:12:43','2021-09-08 05:18:31'),(22,'Quae ipsa minus off','Error veniam ea in','dasdas@asdsadsadasssssss','Ut incidunt odio qu','2021-09-08 05:08:03','2021-09-08 01:13:47','2021-09-08 05:08:03'),(23,'Magna voluptates cum','Voluptatem dolore op','dasdsa@asdasdasdasdasd','Laborum in eiusmod d','2021-09-08 05:06:46','2021-09-08 01:16:06','2021-09-08 05:06:46'),(24,'Aut delectus doloru','Do do dolor in deser','Asdasd@asdasd','Reprehenderit do bl','2021-09-08 05:05:54','2021-09-08 01:19:02','2021-09-08 05:05:54'),(25,'Nam voluptatum paria','Vel illo autem quibu','asdas@asdasd','Eiusmod enim quod il','2021-09-08 04:57:55','2021-09-08 02:01:54','2021-09-08 04:57:55'),(26,'Hic culpa excepturi','Ipsum laborum Porro','asdasd@asdasdasdasdasdasd','Recusandae Qui ad m','2021-09-08 04:57:20','2021-09-08 02:04:41','2021-09-08 04:57:20'),(27,'Hic culpa excepturi','Ipsum laborum Porro','asdasdsad@fffffff','Recuaaaaaaaaaaaaaaaaaaaaaaaaaa','2021-09-08 02:56:21','2021-09-08 02:06:22','2021-09-08 02:56:21'),(28,'Hic culpa excepturi','Ipsum laborum Porro','aaaaaaaaaa12@aaaaaaa','RecuaaaaaaaaaaaaaaaaaaaaaaaaaaAAAAA','2021-09-08 02:55:19','2021-09-08 02:06:43','2021-09-08 02:55:19'),(29,'Sed esse quis iste e','Assumenda enim ea su','Deleniti@gmail.com','Magni aperiam eaque','2021-09-08 02:56:47','2021-09-08 02:46:01','2021-09-08 02:56:47'),(30,'Est commodi aut ex a','Sit pariatur Qui s','halo@gmail.com','Impedit inventore n','2021-09-08 18:51:18','2021-09-08 18:51:02','2021-09-08 18:51:18'),(31,'Laboriosam aliquid','Voluptatem consequa','fikrif@gmail.com','Est sapiente blandi','2021-09-08 21:17:53','2021-09-08 18:55:44','2021-09-08 21:17:53'),(32,'Omnis est facilis d','Laboris quidem nulla','ffff@fffads.asd','Dicta facere libero','2021-09-08 21:17:24','2021-09-08 18:59:33','2021-09-08 21:17:24'),(33,'Magni laboris dolor','Est eum ullam eiusm','Delectus@asdasdas.sad','Id accusantium sit e','2021-09-08 21:16:09','2021-09-08 19:00:17','2021-09-08 21:16:09'),(34,'Commodi ut illum es','Libero cupidatat id','Hic@asdasd','Dolor ipsam veniam','2021-09-08 21:18:33','2021-09-08 21:18:27','2021-09-08 21:18:33'),(35,'Consequatur Ad moll','Sed velit dolores pa','Est@gmg','Recusandae Error qu','2021-09-08 21:19:11','2021-09-08 21:19:06','2021-09-08 21:19:11'),(36,'Eum temporibus paria','In architecto offici','Debitis@adasd','Blanditiis rem aliqu','2021-09-08 21:19:27','2021-09-08 21:19:22','2021-09-08 21:19:27'),(37,'Qui nostrum incidunt','Incidunt repellendu','lexijuj@mailinator.com','Porro culpa dolor la','2021-09-08 21:20:26','2021-09-08 21:20:16','2021-09-08 21:20:26'),(38,'Soluta ratione et te','Dolorem adipisicing','jyxenakev@mailinator.com','Illum et nulla modi','2021-09-08 21:21:15','2021-09-08 21:21:10','2021-09-08 21:21:15'),(39,'Itaque voluptatem te','Corporis dignissimos','lokejel@mailinator.com','Dolores consectetur','2021-09-08 21:21:33','2021-09-08 21:21:27','2021-09-08 21:21:33'),(40,'A in ratione qui ut','Eius pariatur Enim','juqyhi@mailinator.com','Obcaecati ab volupta','2021-09-08 21:22:09','2021-09-08 21:22:03','2021-09-08 21:22:09'),(41,'Ab eligendi inventor','Perspiciatis volupt','bepule@mailinator.com','Delectus in volupta','2021-09-08 21:22:37','2021-09-08 21:22:29','2021-09-08 21:22:37'),(42,'Dolore ut sit iusto','Est occaecat delenit','zuqy@mailinator.com','In neque ea elit ex','2021-09-08 21:23:00','2021-09-08 21:22:53','2021-09-08 21:23:00'),(43,'Voluptatem non ratio','Quaerat do minima ar','zolakicado@mailinator.com','Explicabo Et volupt','2021-09-08 21:23:22','2021-09-08 21:23:17','2021-09-08 21:23:22'),(44,'Labore autem consequ','Nihil eaque sed ea f','kibev@mailinator.com','Molestias quasi assu','2021-09-08 21:23:50','2021-09-08 21:23:44','2021-09-08 21:23:50'),(45,'Ut illum aliquam pr','Et ratione facere do','hynymuni@mailinator.com','Aut non voluptate do','2021-09-08 21:53:00','2021-09-08 21:33:48','2021-09-08 21:53:00'),(46,'Nam excepteur ex sae','Dicta sit omnis mag','halo@mailinator.com','Eos dolore deleniti','2021-09-09 06:48:54','2021-09-08 21:54:08','2021-09-09 06:48:54'),(47,'Perspiciatis repreh','Eum aut omnis iste r','keralec@mailinator.com','Maiores qui ipsum r','2021-09-09 03:40:09','2021-09-08 23:06:49','2021-09-09 03:40:09'),(48,'Nisi saepe enim dolo','Excepturi corporis s','lodylezox@mailinator.com','Officiis error cupid',NULL,'2021-09-09 06:49:03','2021-09-09 06:49:03'),(49,'Fugiat accusamus vol','Dolore quae delectus','wuhod@mailinator.com','Explicabo Elit a m','2021-09-16 07:42:56','2021-09-09 19:14:58','2021-09-16 07:42:56'),(50,'Tempora culpa velit','asdasd','misocolono@mailinator.com','Aut pariatur Nostru','2021-09-16 07:42:49','2021-09-09 19:15:39','2021-09-16 07:42:49'),(51,'Ad in eius dolor par','','veretaliji@mailinator.com','Et est omnis fugiat','2021-09-12 04:58:20','2021-09-09 19:15:47','2021-09-12 04:58:20'),(52,'Dolor non laborum re','Ipsam doloribus dolo','cyqa@mailinator.com','Debitis placeat ius','2021-09-11 02:21:34','2021-09-11 02:21:01','2021-09-11 02:21:34'),(53,'Eum neque voluptatem','Dolore dolorem illum','veretaliji@mailinator.com','Numquam vel commodi','2021-09-12 03:21:21','2021-09-12 02:26:41','2021-09-12 03:21:21'),(54,'Ut nulla rerum vitae','asdasdsad','veretaliji@mailinator.com','Velit omnis tempora','2021-09-12 03:28:09','2021-09-12 02:50:37','2021-09-12 03:28:09'),(55,'Ipsa culpa omnis et','Sit aut non aperiam','zyrahyjyx@mailinator.com','Obcaecati dolor quis','2021-09-12 03:21:54','2021-09-12 02:50:50','2021-09-12 03:21:54'),(56,'Soluta consequat Ex','Proident dolor veli','zezim@mailinator.com','Ad reprehenderit et',NULL,'2021-09-18 04:47:22','2021-09-18 04:47:22'),(57,'PT. Madtive Studio','Jl. Jend Sudirman','madtive@studio.com','+6280102808','2021-09-19 09:57:33','2021-09-18 06:59:14','2021-09-19 09:57:33');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (3,'0','Fikri Ilhamsyah','+6281280285459','',0,'2021-09-15 08:25:00','2021-09-04 12:34:06','2021-09-15 08:25:00'),(5,'0','Velit reprehenderit','Dolor tempora animi','',0,'2021-09-14 01:56:29','2021-09-04 12:44:49','2021-09-14 01:56:29'),(8,'0','Ullamco dolore qui o','Tempore debitis vol','',0,'2021-09-14 01:08:09','2021-09-04 12:48:03','2021-09-14 01:08:09'),(9,'0','Excepturi in in anim','Est velit eius cupi','',0,'2021-09-14 01:07:05','2021-09-04 12:48:57','2021-09-14 01:07:05'),(10,'0','Nisi ratione molesti','Fuga Sit sint ea iu','',0,'2021-09-14 01:03:17','2021-09-04 12:50:54','2021-09-14 01:03:17'),(13,'0','Dolore odio ea quia','Neque et veritatis m','',0,'2021-09-13 23:40:51','2021-09-04 12:56:16','2021-09-13 23:40:51'),(14,'0','Quibusdam ut consect','Odit quae recusandae','',0,'2021-09-13 23:29:46','2021-09-04 12:56:30','2021-09-13 23:29:46'),(15,'0','Quasi quia sed facil','Natus excepteur duis','',0,'2021-09-13 23:29:09','2021-09-04 12:59:32','2021-09-13 23:29:09'),(16,'0','Corporis iste commod','Ratione pariatur Ve','',0,'2021-09-13 23:28:08','2021-09-04 13:02:10','2021-09-13 23:28:08'),(18,'0','Sequi natus iusto ra','Et error quo dolorem','',0,'2021-09-13 23:27:57','2021-09-04 13:04:52','2021-09-13 23:27:57'),(19,'1','Iqbal','081028018','akksajdkja',1000000,'2021-09-13 23:11:04','2021-09-13 03:42:24','2021-09-13 23:11:04'),(20,'1','asdasdadasdas','081028018900','akksajdkja',1000000,'2021-09-13 23:07:41','2021-09-13 03:42:38','2021-09-13 23:07:41'),(21,'0','Sequi exercitationem','Iure ex et consequat','',0,'2021-09-14 01:02:32','2021-09-14 00:21:59','2021-09-14 01:02:32'),(22,'1','Vero in similique do','Aut in molestiae in','Et alias excepturi a',100000,'2021-09-15 08:25:06','2021-09-14 01:53:55','2021-09-15 08:25:06'),(23,'2','Blanditiis in molest','Enim ad eum voluptat','Magni ipsa mollitia',200000,'2021-09-14 01:54:36','2021-09-14 01:54:27','2021-09-14 01:54:36'),(24,'1','Alias sint recusanda','Cum laboriosam ex q','Laudantium qui est',1000000,'2021-09-14 01:57:58','2021-09-14 01:56:55','2021-09-14 01:57:58'),(25,'1','Enim aut id quia pra','Consequatur Sapient','Fuga Consequuntur p',1000000,'2021-09-14 18:44:14','2021-09-14 01:58:51','2021-09-14 18:44:14'),(26,'0','Sit ut qui voluptat','Eveniet aut quia ma','',0,'2021-09-14 02:37:37','2021-09-14 02:35:10','2021-09-14 02:37:37'),(27,'0','Nemo pariatur Quis','Est voluptatem irure','',0,'2021-09-15 08:25:09','2021-09-14 05:15:15','2021-09-15 08:25:09'),(28,'3','Repellendus Distinc','Officiis amet elit','Voluptate in beatae',10000,'2021-09-15 08:25:13','2021-09-15 08:09:10','2021-09-15 08:25:13'),(29,'3','Tenetur architecto e','Porro culpa eligendi','Odit consequuntur ea',100000000,'2021-09-16 20:05:36','2021-09-15 08:25:32','2021-09-16 20:05:36'),(30,'1','Iure et vel cupidita','Expedita nobis et ad','Dolorem sed esse atq',1000000,'2021-09-16 20:05:40','2021-09-15 08:35:05','2021-09-16 20:05:40'),(31,'3','Eu voluptatem qui qu','Voluptas minus elit','Amet est aut eos om',1000000,'2021-09-16 20:05:43','2021-09-15 09:00:17','2021-09-16 20:05:43'),(32,'3','Exercitation quae ar','Tempor quo vitae tem','Qui vitae consequat',10000000,'2021-09-16 20:05:47','2021-09-16 00:38:13','2021-09-16 20:05:47'),(33,'3','Vero eveniet id sed','Velit eveniet conse','Sed velit qui labor',10000,'2021-09-16 20:05:50','2021-09-16 00:44:16','2021-09-16 20:05:50'),(34,'0','Quaerat dolor dolor','Non recusandae Dolo','',0,'2021-09-16 02:57:05','2021-09-16 02:48:43','2021-09-16 02:57:05'),(35,'0','Et quo blanditiis vo','Molestiae velit reru','',0,'2021-09-16 02:56:58','2021-09-16 02:49:03','2021-09-16 02:56:58'),(36,'5','At aut dolor eius si','Sunt corporis exerci','Assumenda enim beata',100000000,'2021-09-16 20:05:53','2021-09-16 02:55:56','2021-09-16 20:05:53'),(37,'3','Qui sit aut adipisc','Minima molestias nos','Esse possimus quos',20000000,'2021-09-16 20:05:56','2021-09-16 02:56:33','2021-09-16 20:05:56'),(38,'3','Molestiae dolor cons','Sequi qui rem quidem','Placeat distinctio',100000,'2021-09-16 20:05:59','2021-09-16 02:57:48','2021-09-16 20:05:59'),(39,'3','Id ipsum id et odi','Explicabo Sint est','Ut nobis qui et quis',2000000,'2021-09-16 20:06:03','2021-09-16 02:59:05','2021-09-16 20:06:03'),(40,'5','Ut id consequatur','Explicabo Itaque cu','Deleniti cumque beat',2000000,'2021-09-16 20:19:58','2021-09-16 02:59:49','2021-09-16 20:19:58'),(41,'5','Non qui reprehenderi','Praesentium hic atqu','Nostrud quam ut duis',100000000,'2021-09-16 20:20:09','2021-09-16 03:00:21','2021-09-16 20:20:09'),(42,'2','Quis quaerat cillum','Officia proident oc','Quaerat magni blandi',10000000,'2021-09-16 20:20:13','2021-09-16 03:00:39','2021-09-16 20:20:13'),(43,'7','Sed aut magni rerum','Corrupti velit qua','asdasdas',0,NULL,'2021-09-16 03:02:20','2021-09-17 19:23:48'),(44,'7','Laboris excepturi ex','Necessitatibus ad pr','Quas et est et molli',1000000,NULL,'2021-09-16 07:41:06','2021-09-18 04:40:06'),(45,'6','coba','coba','asdasdasd',100000,NULL,'2021-09-16 20:22:42','2021-09-16 23:33:57'),(46,'7','Exercitation magna s','Aliquid ipsam delect','Fugiat in voluptate',10000000,NULL,'2021-09-16 20:28:43','2021-09-17 11:08:13'),(47,'7','Qui obcaecati irure','Eiusmod accusamus au','Deserunt adipisicing',213,NULL,'2021-09-18 06:53:37','2021-09-19 07:58:45'),(48,NULL,'Culpa adipisicing o','Unde tenetur consequ','',0,NULL,'2021-10-03 19:57:31','2021-10-03 19:57:31');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2019_08_19_000000_create_failed_jobs_table',1),(9,'2021_08_03_013547_create_clients_table',1),(10,'2021_08_03_033017_create_projects_table',1),(11,'2021_08_03_033708_create_project_teams_table',1),(12,'2021_08_03_034024_create_pics_table',1),(13,'2021_08_03_071102_create_employees_table',1),(14,'2021_08_03_154928_create_positions_table',1),(15,'2021_08_03_160106_change_some_field_on_project_teams_table',1),(16,'2021_08_03_160541_change_some_field_on_pics_table',1),(17,'2021_08_03_163115_drop_pics_table',1),(18,'2021_08_03_163328_recreate_pics_table',1),(19,'2021_08_04_013017_adding_softdeletes_to_position',1),(20,'2021_08_04_014528_add_softdeletes_to_user',1),(21,'2021_08_09_013156_change_datatype_position_name_on_position_table',1),(22,'2021_08_19_034301_change_tax_datatype_on_project_table',1),(23,'2021_08_20_073355_drop_name_field_on_users_table',1),(24,'2021_08_27_015021_remove_field_employee_id_on_employee_table',1),(25,'2021_08_27_015538_add_column_employee_id_on_users_table',1),(26,'2021_09_13_064413_remove_field_role_on_employees_table',2),(27,'2021_09_13_064507_add_field_role_on_users_table',3),(28,'2021_09_17_032531_set_position_id_to_nullable',4),(29,'2021_09_20_113500_change_tax_from_varchar_to_integer',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('022b02eaaa39d38d1efa6c74561597bd15970e8132f733b334ab724e90d6c819185d2dbabddb785f',53,1,'authToken','[]',0,'2021-09-16 03:02:35','2021-09-16 03:02:35','2022-09-16 10:02:35'),('0da54e0c72a598d00deafc5a840735c5c4b29bdbad6d4f8d90a5627210a73c907d8dc3a611da6df4',53,1,'authToken','[]',0,'2021-09-16 19:02:22','2021-09-16 19:02:22','2022-09-17 02:02:22'),('0f94efa8f7319a5e9bea5638892b01bdfc81036095beb2ab869a07b8982954bb8e2bf1ad76265781',18,1,'authToken','[]',0,'2021-09-06 08:34:53','2021-09-06 08:34:53','2022-09-06 15:34:53'),('1495ff75e2c016f9f615e42b06fcd5882b778700a7c24daeaa3266ea0d6844278616263de03c32c8',18,1,'authToken','[]',0,'2021-09-09 19:45:48','2021-09-09 19:45:48','2022-09-10 02:45:48'),('169319d2b69a48e207024c93501dd3ce7bd295a2b89009d8d3787d57fa0b593a2939bafd258e14c7',18,1,'authToken','[]',0,'2021-09-06 23:04:28','2021-09-06 23:04:28','2022-09-07 06:04:28'),('1a80829dff2083aa409be0371c3a9f66f39bca3958db5f001287647cb69f4dbc969829db7d52711e',53,1,'authToken','[]',0,'2021-10-03 19:16:30','2021-10-03 19:16:30','2022-10-04 02:16:30'),('1ba13384ddd2894d095ac21c516208b36f1956df652b792339ad3a7479aa908849f747603fccb661',18,1,'authToken','[]',0,'2021-09-13 17:39:46','2021-09-13 17:39:46','2022-09-14 00:39:46'),('1c5a505bb83e9e788867b196f9867674ca83029c6e88159b8fc496db2259facb012887138cbce468',18,1,'authToken','[]',0,'2021-09-13 07:06:51','2021-09-13 07:06:51','2022-09-13 14:06:51'),('2356a1c5df16b00f6bab4e2f24517f964b35df96c9715036f5588f74c73e1acdea34fa83db780a7d',40,1,'authToken','[]',0,'2021-09-15 08:36:04','2021-09-15 08:36:04','2022-09-15 15:36:04'),('2591e5203f34193ecac8c504fac4956773b018cc2d0721117adb8fa3c4e05725b54cb855b9ec7d7b',56,1,'authToken','[]',0,'2021-09-16 23:13:10','2021-09-16 23:13:10','2022-09-17 06:13:10'),('28c3f54eb975f65a17123646506e73b32a68ebb6c4bb79e45490e7c0188ac1e901a4a55f1d149287',18,1,'authToken','[]',0,'2021-09-07 23:13:57','2021-09-07 23:13:57','2022-09-08 06:13:57'),('291cc0959807eb9d122bf4bb702a353404bf0b887ef331a545ac58fd02ec55c8d1768a24781c8f42',53,1,'authToken','[]',0,'2021-10-03 19:00:26','2021-10-03 19:00:26','2022-10-04 02:00:26'),('3aa95e341834f37bfed9205133c1d760fed37f176679d75f8cb9f11d9a8c91f001d9ac4d53c39e3b',53,1,'authToken','[]',0,'2021-09-22 01:18:26','2021-09-22 01:18:26','2022-09-22 08:18:26'),('3c0dbda35171c838517fb9dac9b699c354c64a17bcff12e412136a205fca8c952b6e555ce31e48a4',18,1,'authToken','[]',0,'2021-09-06 23:04:28','2021-09-06 23:04:28','2022-09-07 06:04:28'),('4838ef2c04fa665dbc2edfcc533936da0f6a12998d4198b8265a33c44d0fb52a92440a52e25d3bdf',18,1,'authToken','[]',0,'2021-09-05 06:39:51','2021-09-05 06:39:51','2022-09-05 13:39:51'),('4af60ecd5c812ffc1cc0e72d629096d98c4a4f174847d7e151ac7013e86b8d0f9c061523f875206a',18,1,'authToken','[]',0,'2021-09-05 09:31:29','2021-09-05 09:31:29','2022-09-05 16:31:29'),('4be7d374d4a68ba8f00d722d0b230a6d8546808470bf676e282867f8d3553c6fd640ee03d31e84da',53,1,'authToken','[]',0,'2021-09-23 02:56:23','2021-09-23 02:56:23','2022-09-23 09:56:23'),('4c2975d68c785f875bbd9c41988fee75d801099840e54150453d288b958d4ea65f2c8a7b39735967',18,1,'authToken','[]',0,'2021-09-05 03:58:27','2021-09-05 03:58:27','2022-09-05 10:58:27'),('4c3e0a5aa2a245c70b8a529d98b0df9531953c6457529bc66e49c6cea0fd7f3ae18e02d56e7c0d78',18,1,'authToken','[]',0,'2021-09-06 23:42:43','2021-09-06 23:42:43','2022-09-07 06:42:43'),('4c43ba49f288a2bf06e8cfba802857fcbc5b200a7b0b184e5cc426a1e94167ea11a91807a1909e55',18,1,'authToken','[]',0,'2021-09-07 23:13:58','2021-09-07 23:13:58','2022-09-08 06:13:58'),('4d8494f826902927f26622c5e900d1fe93b18bef9985685aa8a10462a915f66897e979b7673a071b',18,1,'authToken','[]',0,'2021-09-09 19:45:48','2021-09-09 19:45:48','2022-09-10 02:45:48'),('4e18a3457c0df0db21d2cb2fd48fbb3d8b60288131e4cbb7202a6731a39d80c3dcc067321917758d',37,1,'authToken','[]',0,'2021-09-14 05:15:35','2021-09-14 05:15:35','2022-09-14 12:15:35'),('4f15e62a51dc7d269b5166513eba6f4ce83d1f7aa56b35d6b514c0743cf2fafef1b557d6e4016891',53,1,'authToken','[]',0,'2021-09-23 03:11:49','2021-09-23 03:11:49','2022-09-23 10:11:49'),('512f77e76198c87e98e8abec739a92abaa0a757532dda5b8c16347d69147b7a249264202c68cc18a',40,1,'authToken','[]',0,'2021-09-15 08:36:04','2021-09-15 08:36:04','2022-09-15 15:36:04'),('56f0a1e2c0bc1ef10bc4b8c6e64ce3af58b4b1efed444071d9e207c4a876f7469d071bf1aa38d7fe',18,1,'authToken','[]',0,'2021-09-13 17:39:47','2021-09-13 17:39:47','2022-09-14 00:39:47'),('5ac811c1e56fa4426fa16b1645a53980a3416a64a2576ef81bbce1c37c15b56f62948f7dd3491d01',53,1,'authToken','[]',0,'2021-09-16 03:14:12','2021-09-16 03:14:12','2022-09-16 10:14:12'),('620003ff1645f9be90b3d1d0e7f390a5592f50dc408717c9850ce9866ef672703cf2661aa1f91c91',53,1,'authToken','[]',0,'2021-10-03 19:00:25','2021-10-03 19:00:25','2022-10-04 02:00:25'),('663ec9267236443be25b067d0c4a82df5f6f9b901fc5375ccb4030363152c061fc9b971cace7c1e2',18,1,'authToken','[]',0,'2021-09-06 08:34:53','2021-09-06 08:34:53','2022-09-06 15:34:53'),('68cbfc209e854346f7b366a67e12b578fe3a30550d9652affadbf68d4eb712af4baffbff176e029b',58,1,'authToken','[]',0,'2021-10-03 19:58:07','2021-10-03 19:58:07','2022-10-04 02:58:07'),('6a7b144857777ba8f1a485c452b2d3c65a88a54c68b40d291fa54cc76472cf2c13325c2b9274d820',53,1,'authToken','[]',0,'2021-09-16 18:48:45','2021-09-16 18:48:45','2022-09-17 01:48:45'),('6b3366115d2ceb3efd6448a79ce0c871b31087c4ccfd982ff80ec34e849b32497f2b01f1a4a1a531',18,1,'authToken','[]',0,'2021-09-05 03:58:27','2021-09-05 03:58:27','2022-09-05 10:58:27'),('6d94f283180a8a3b7a65f0616a61112951c915d039648042052964959ae6d45666376cb14f39a526',56,1,'authToken','[]',0,'2021-09-16 20:37:40','2021-09-16 20:37:40','2022-09-17 03:37:40'),('6de91e22f5fe6dc0a6da35a512eb8f4caa13c300a329b6872906d79ec4165835c036a8ff5da4e787',37,1,'authToken','[]',0,'2021-09-15 08:14:57','2021-09-15 08:14:57','2022-09-15 15:14:57'),('6e70f90b5015fdaca24812adf73cd8ce89906f4d6d2c838521286b5e348e0d92a8c2932d79e8fd6b',53,1,'authToken','[]',0,'2021-09-22 01:18:26','2021-09-22 01:18:26','2022-09-22 08:18:26'),('6ebef420d583bce7bfe1cc89809247ea6e19fdae996a6da78e2b2117ea4c9d3f8a2b21c14687effd',18,1,'authToken','[]',0,'2021-09-06 23:56:43','2021-09-06 23:56:43','2022-09-07 06:56:43'),('731a5f4de435cf424f09f1d72d35974d24ed5e158adc10d281021fcf08048f71b999852a762bdffa',36,1,'authToken','[]',0,'2021-09-14 02:35:29','2021-09-14 02:35:29','2022-09-14 09:35:29'),('73b4dd94708a623bd7dd72e11943eee2e0ae5871ae92e44ec88505709694fdab8a55a75226dfd30f',53,1,'authToken','[]',0,'2021-09-16 19:02:22','2021-09-16 19:02:22','2022-09-17 02:02:22'),('73c48e40bfdf05e11ffd95efd97c8b4829fa35ba52bf5a0247d2351dd5e3dcd3c7873f6bc077300d',18,1,'authToken','[]',0,'2021-09-06 23:42:44','2021-09-06 23:42:44','2022-09-07 06:42:44'),('7554a2c6fa9cce93f4560f1736dc597d8ee1a03e7585e155d87cf0345257590ad9df6d0d515359f6',53,1,'authToken','[]',0,'2021-09-24 01:05:07','2021-09-24 01:05:07','2022-09-24 08:05:07'),('75fd80a02b9b3a3298742c73a9ca08118923e238735b861b44beedebefb137ea31c9a3b652b2e91b',53,1,'authToken','[]',0,'2021-09-29 03:42:33','2021-09-29 03:42:33','2022-09-29 10:42:33'),('78b477a05b6f76234daaf275a5bddef26f66d1887fcad462f2264786d5d6de5cda8631ac5c23dbe0',45,1,'authToken','[]',0,'2021-09-16 02:50:30','2021-09-16 02:50:30','2022-09-16 09:50:30'),('7b3c9ad296e4041ce63ba62c04ea3fbcd2e402372c8cd9255ff6288225c8818a0e4777170da595cc',31,1,'authToken','[]',0,'2021-09-14 00:22:24','2021-09-14 00:22:24','2022-09-14 07:22:24'),('7c823f2b36b9b54ffac1a503572304253fb8a831f4a13e69351537c4eae930446012b0523bb069ca',37,1,'authToken','[]',0,'2021-09-14 05:15:35','2021-09-14 05:15:35','2022-09-14 12:15:35'),('7cfbfb0e9231614d72cf066d01a6cc43106fe8410d3a834f954cb2758d5724ac71a509d5cc60bca5',18,1,'authToken','[]',0,'2021-09-06 22:52:46','2021-09-06 22:52:46','2022-09-07 05:52:46'),('7f5e68205bbf823d7f8dcda5ceb6b3c9be4cfbce4165bed4fea40980eccb3a3dfa5287b7747438b5',53,1,'authToken','[]',0,'2021-09-29 03:14:43','2021-09-29 03:14:43','2022-09-29 10:14:43'),('815156582118f48ae13b82b8a582eb0857e4a52aca19db1821af493c132c4882d00cda31cace5d59',53,1,'authToken','[]',0,'2021-09-20 01:13:46','2021-09-20 01:13:46','2022-09-20 08:13:46'),('8bcfceb0563ed0d6826923c7fd96d6cc09eea4ad4714a26990d6edaea729fbbca3ca3ad5eba394c5',18,1,'authToken','[]',0,'2021-09-07 03:23:39','2021-09-07 03:23:39','2022-09-07 10:23:39'),('8c28465dfd14353923437b39984e27e540b2b4985dd7c57d2b7025da86d808396d4e67678be364c2',53,1,'authToken','[]',0,'2021-09-16 03:14:13','2021-09-16 03:14:13','2022-09-16 10:14:13'),('9087c40509dbf8525c1191d951d8c75d34dfd5de7913453251295252387174534b764aadfe9d4904',53,1,'authToken','[]',0,'2021-10-03 19:00:28','2021-10-03 19:00:28','2022-10-04 02:00:28'),('9358f4b94e9357448c4ab447681bb5664eda3eb7846d978452b52558cbfaa4fd43189729bc0da06c',18,1,'authToken','[]',0,'2021-09-05 06:48:34','2021-09-05 06:48:34','2022-09-05 13:48:34'),('93fae2403252410118f976b5a58687ebc2aebb9195eadea7918ee8b308c7f7433485ff0ca23b1b18',18,1,'authToken','[]',0,'2021-09-05 06:48:30','2021-09-05 06:48:30','2022-09-05 13:48:30'),('95691bd42b9c843bcb5ffd1030715d04b62b5e98271ca2549f50d6205f40ed277c72f77e7ca3dad5',18,1,'authToken','[]',0,'2021-09-05 12:07:06','2021-09-05 12:07:06','2022-09-05 19:07:06'),('95d88c27373a7b8373b06eb60f319f98db6478600ca06922264d5b9c95bb33dc096a81d7110d4a6c',53,1,'authToken','[]',0,'2021-09-20 01:13:46','2021-09-20 01:13:46','2022-09-20 08:13:46'),('96dc423231e1b9d4d320501fc09b042722711286e858f541262175e14168a08c41b3ea9cd717bee4',36,1,'authToken','[]',0,'2021-09-14 02:35:28','2021-09-14 02:35:28','2022-09-14 09:35:28'),('9a1523657bf55f2f121240271531f7c19ae84f3830e9510287afd90134a2fc736d432886d1380fbf',37,1,'authToken','[]',0,'2021-09-15 08:14:56','2021-09-15 08:14:56','2022-09-15 15:14:56'),('a0f26154933438cce6b1915dad2592b03ac509278e0a37526c2ed31549a9b6a18b1d2174d1961f6b',18,1,'authToken','[]',0,'2021-09-06 22:52:46','2021-09-06 22:52:46','2022-09-07 05:52:46'),('a62bbb0401ff303d54dd4aa79c2a9cfbf43eae0a0e8646db72f3c21e2edc334d00bd93e794cebd0e',53,1,'authToken','[]',0,'2021-09-23 02:56:24','2021-09-23 02:56:24','2022-09-23 09:56:24'),('a726fa4abc0945a7f803f2d51d0938b3431a1814f4541a854f2d18f2350f11bcd7aaafb841bd76d4',18,1,'authToken','[]',0,'2021-09-13 07:06:51','2021-09-13 07:06:51','2022-09-13 14:06:51'),('aa0c84fa3c502310ef627c43947658ac06ced6eafdefafd7c824f8bc209f1f99c5d26b1df02eacea',56,1,'authToken','[]',0,'2021-09-16 20:37:40','2021-09-16 20:37:40','2022-09-17 03:37:40'),('b1ea363e6f96d2f16b62f2570bef6a91c2f6eff13f9dea26c84b2f0cdc8a102bb2cab16ae2170352',18,1,'authToken','[]',0,'2021-09-05 06:48:31','2021-09-05 06:48:31','2022-09-05 13:48:31'),('bd62f9f7b14a2a53a71d7c5fe4b75c216ebf115e67dd3e2746b6e6a18518d33781984c292e5dcb2b',18,1,'authToken','[]',0,'2021-09-06 23:56:43','2021-09-06 23:56:43','2022-09-07 06:56:43'),('bea4dac79c48ebeb26c470dde6aee6c48e1eb3806f3a357c0d81721f08494823fd2571650da239fb',53,1,'authToken','[]',0,'2021-09-29 03:14:43','2021-09-29 03:14:43','2022-09-29 10:14:43'),('bfbef0dde89192f0650a6edfa540cf388c6c0808a54feaa4ddc0dd34500dc2157b50cd3a234a3ed1',18,1,'authToken','[]',0,'2021-09-04 13:07:58','2021-09-04 13:07:58','2022-09-04 20:07:58'),('c54a70de230f461a7cebe6a7c6269cd5749fed31a4db048247d9d20428bd53dc6704bf970f9967b5',58,1,'authToken','[]',0,'2021-10-03 19:58:07','2021-10-03 19:58:07','2022-10-04 02:58:07'),('cc6f5055d9fed779c650d7b4061557d1979967d189e1c6f85352294dfedbc9c0b518ddebd1528624',53,1,'authToken','[]',0,'2021-09-23 03:11:50','2021-09-23 03:11:50','2022-09-23 10:11:50'),('cd75f2ea3e22b89f45f788b52ab8698c5e6b3125db16f45805ca92812f5185bc88fdf104df721b87',18,1,'authToken','[]',0,'2021-09-05 09:31:29','2021-09-05 09:31:29','2022-09-05 16:31:29'),('d249c83dee0e8c775efc49186a4883a91bda1320892b31003a2418e59545724c51a549da758aaa3f',18,1,'authToken','[]',0,'2021-09-05 06:39:51','2021-09-05 06:39:51','2022-09-05 13:39:51'),('d56ec25a2f56f04f261ab227b095706c5a813a743acbf6d2d9e06b95ada07e4b22fddb96dc427690',53,1,'authToken','[]',0,'2021-09-29 03:42:33','2021-09-29 03:42:33','2022-09-29 10:42:33'),('d6661e809350fddefd63dee8765912aa31bf35af773bd759d88ec3cf615cf5049e289b963d8325ce',56,1,'authToken','[]',0,'2021-09-16 23:13:10','2021-09-16 23:13:10','2022-09-17 06:13:10'),('d90632f01960710c419263455ae0761b77acdc03f0bbafea1f0e9db9ac1d6a9af224069ad53d5bcf',18,1,'authToken','[]',0,'2021-09-07 03:23:39','2021-09-07 03:23:39','2022-09-07 10:23:39'),('dc72b95abb47be15a06f8ce7901ea13564c4845339574788f8bdef1fc0c30e843f902c73cd8996ac',45,1,'authToken','[]',0,'2021-09-16 02:50:31','2021-09-16 02:50:31','2022-09-16 09:50:31'),('dcdca4fd46a5e18bd0951bc27102a4e2813295925bca73cccea4c5d8c9e5bfc91a94435e8ba033f9',18,1,'authToken','[]',0,'2021-09-05 12:07:06','2021-09-05 12:07:06','2022-09-05 19:07:06'),('deaec881668d635318f28c83e4e532c6dcab24106742b31bd3b7ce34fb8599ed0f77cfb9bfe03d3f',18,1,'authToken','[]',0,'2021-09-06 07:01:34','2021-09-06 07:01:34','2022-09-06 14:01:34'),('dff32c4e721cd5ad28f7d1fca2db04fab165e3ac770a3ab320b05babdc20c472a114beb23356c7dc',53,1,'authToken','[]',0,'2021-09-16 03:02:35','2021-09-16 03:02:35','2022-09-16 10:02:35'),('e48dd20d5cf6132bd60c0c2abc792507462f16e48dc281a9d6327ac3cfda932d7369b651af078b70',53,1,'authToken','[]',0,'2021-09-24 01:05:07','2021-09-24 01:05:07','2022-09-24 08:05:07'),('e6569a0a26b18074cb9187833418cfd55e9d85e6e2bbd2ed54cf47399f8a99a8842806890228c9fa',53,1,'authToken','[]',0,'2021-10-03 19:16:28','2021-10-03 19:16:28','2022-10-04 02:16:28'),('e71ce5555ca1b66f6af74a03bcccbd1912f6e37a10cfddc93da11d6fa571d79cc9b4934026130080',53,1,'authToken','[]',0,'2021-10-03 19:16:27','2021-10-03 19:16:27','2022-10-04 02:16:27'),('ec4ed569233b7bbf8f239af14f9a94bce4e8bae79b9391e5d66b7e91d2b63d1e23594e50617f52a6',53,1,'authToken','[]',0,'2021-09-16 18:48:45','2021-09-16 18:48:45','2022-09-17 01:48:45'),('f4da8fed58daa60c86f5f5adc71396b8c69528775d0bbe8eb0bc0658da56787b9b548eaec20961fa',31,1,'authToken','[]',0,'2021-09-14 00:22:23','2021-09-14 00:22:23','2022-09-14 07:22:23'),('f9c0190a2ea6a7eabdc403e1f14255d4b0180d3ab7e4c71f04e25ee3b3f3b69f6bb98a852969b4aa',18,1,'authToken','[]',0,'2021-09-06 07:01:34','2021-09-06 07:01:34','2022-09-06 14:01:34');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','rkSPk8cXA4E1ynpT9eDlMxOfTZIhE47ThS0hLKqQ',NULL,'http://localhost',1,0,0,'2021-09-04 13:07:49','2021-09-04 13:07:49'),(2,NULL,'Laravel Password Grant Client','6l56gIfEHzmTVhrL1Tov1ImluUb3DAL7yIqbDKzn','users','http://localhost',0,1,0,'2021-09-04 13:07:49','2021-09-04 13:07:49');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2021-09-04 13:07:49','2021-09-04 13:07:49');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
-- Table structure for table `pics`
--

DROP TABLE IF EXISTS `pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pics`
--

LOCK TABLES `pics` WRITE;
/*!40000 ALTER TABLE `pics` DISABLE KEYS */;
INSERT INTO `pics` VALUES (1,1,'Fikri','081028018208','fikri@gmail.com','2021-10-01 06:38:32','2021-09-30 03:29:48','2021-10-01 06:38:32'),(2,48,'Fikri','0810280182089','fikri1@gmail.com','2021-10-01 04:03:41','2021-09-30 03:31:22','2021-10-01 04:03:41'),(3,48,'Molestiae odit et pl','Quidem labore dolori','fikriii@gmail.com','2021-10-01 04:00:25','2021-10-01 02:37:41','2021-10-01 04:00:25'),(4,48,'Labore consequuntur','Lorem et reiciendis','labore@gmail.com','2021-10-01 06:34:29','2021-10-01 06:34:02','2021-10-01 06:34:29'),(5,48,'In aut consequatur','In facere voluptas v','fiqriii@gmAIJAISKDJ.VOJ','2021-10-02 13:20:56','2021-10-02 13:14:13','2021-10-02 13:20:56'),(6,48,'Nisi vitae et id cup','Velit dolor beatae','fikri@gmalsm.asdas','2021-10-02 13:29:11','2021-10-02 13:28:45','2021-10-02 13:29:11'),(7,48,'Cupidatat eaque dolo','Accusamus suscipit f','fiasjdfkasjd@aszdasd.asdas','2021-10-02 13:32:16','2021-10-02 13:30:36','2021-10-02 13:32:16'),(8,48,'Iusto praesentium es','Alias est labore nu','asdasdasd@adasdasd.asdasd','2021-10-02 13:34:44','2021-10-02 13:32:36','2021-10-02 13:34:44'),(9,56,'Ex velit laudantium','Nostrum in obcaecati','asdasd@asdasd.asdas','2021-10-02 13:39:31','2021-10-02 13:37:18','2021-10-02 13:39:31'),(10,48,'Voluptatum reiciendi','Error est dolor maio','fikrii@askdnka.asdas',NULL,'2021-10-02 13:41:44','2021-10-02 13:41:44');
/*!40000 ALTER TABLE `pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Backend Developer','2021-09-15 06:13:27','2021-09-14 23:33:49','2021-09-15 06:13:27'),(2,'Eum exercitation eli','2021-09-15 06:19:31','2021-09-15 06:15:34','2021-09-15 06:19:31'),(3,'Animi quia officiis','2021-09-16 03:16:12','2021-09-15 06:19:41','2021-09-16 03:16:12'),(4,'Esse cupiditate qui','2021-09-15 06:21:53','2021-09-15 06:19:45','2021-09-15 06:21:53'),(5,'Mollitia nulla minus','2021-09-16 03:16:22','2021-09-15 07:13:49','2021-09-16 03:16:22'),(6,'Fullstack Developer',NULL,'2021-09-16 03:31:36','2021-09-17 08:06:16'),(7,'Frontend Developer',NULL,'2021-09-16 03:31:47','2021-09-16 03:31:47');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_teams`
--

DROP TABLE IF EXISTS `project_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` int(11) NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_teams`
--

LOCK TABLES `project_teams` WRITE;
/*!40000 ALTER TABLE `project_teams` DISABLE KEYS */;
INSERT INTO `project_teams` VALUES (1,1,1,'Backend',10000,'Pending','2021-09-23 09:07:12','2021-09-21 02:32:38','2021-09-23 09:07:12'),(2,9,53,'Backend',10000,'Pending','2021-09-23 09:11:22','2021-09-21 02:35:17','2021-09-23 09:11:22'),(3,9,43,'Backend',10000,'Pending','2021-09-27 03:06:13','2021-09-21 02:36:25','2021-09-27 03:06:13'),(4,34,2,'Frontend',100,'Pending','2021-09-24 03:04:13','2021-09-21 02:40:53','2021-09-24 03:04:13'),(5,9,44,'Frontend Developer',10000,'PENDING','2021-09-27 03:06:13','2021-09-23 01:52:33','2021-09-27 03:06:13'),(6,9,45,'Fullstack Developer',10000000,'PENDING','2021-09-27 03:06:13','2021-09-23 09:14:58','2021-09-27 03:06:13'),(7,9,44,'Fullstack Developer',17,'PENDING','2021-09-27 03:06:13','2021-09-23 16:10:04','2021-09-27 03:06:13'),(8,13,45,'Frontend Developer',100000,'PENDING','2021-09-27 06:20:12','2021-09-27 03:07:16','2021-09-27 06:20:12'),(9,10,44,'Frontend Developer',100000,'PENDING','2021-09-27 06:23:53','2021-09-27 06:22:03','2021-09-27 06:23:53'),(10,13,45,'Frontend Developer',1000000,'PENDING','2021-09-27 06:24:53','2021-09-27 06:24:44','2021-09-27 06:24:53'),(11,12,46,'Frontend Developer',10000,'PENDING','2021-09-27 06:28:39','2021-09-27 06:25:30','2021-09-27 06:28:39'),(12,11,45,'Frontend Developer',55,'PENDING','2021-09-27 07:30:29','2021-09-27 07:30:16','2021-09-27 07:30:29'),(13,10,43,'Frontend Developer',61,'PENDING','2021-09-27 07:39:54','2021-09-27 07:37:19','2021-09-27 07:39:54'),(14,11,45,'Frontend Developer',100000,'PENDING','2021-09-27 07:42:02','2021-09-27 07:41:45','2021-09-27 07:42:02'),(15,10,47,'Frontend Developer',200000,'ON PROCESS',NULL,'2021-09-27 07:53:09','2021-09-28 07:17:29'),(16,10,44,'Fullstack Developer',10000000,'PENDING',NULL,'2021-09-28 07:22:32','2021-10-03 19:58:32'),(17,10,44,'Fullstack Developer',10000000,'PENDING','2021-10-03 19:02:01','2021-09-29 07:09:48','2021-10-03 19:02:01');
/*!40000 ALTER TABLE `project_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `project_value` int(11) NOT NULL,
  `estimation` date NOT NULL,
  `accomodation` int(11) NOT NULL,
  `profit_team` int(11) NOT NULL,
  `profit_company` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `progres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,57,'Membuat Web Ecommerce','2021-09-22',1000000,'2021-09-20',3000000,2000000,4000000,10,'On Progres','Penawaran','2021-09-19 09:57:33','2021-09-04 12:33:40','2021-09-19 09:57:33'),(2,0,'Sunt enim rerum aut','2008-05-12',100000,'1994-02-11',1000000,1000000,230123,0,'20','Sint lorem id qui bl','2021-09-18 17:28:55','2021-09-17 10:05:22','2021-09-18 17:28:55'),(3,0,'Doloribus qui ipsum','2010-09-27',200000,'1989-04-09',200000,20000,200000,0,'Asperiores Nam eos','Qui anim consequat','2021-09-19 16:36:44','2021-09-17 18:51:28','2021-09-19 16:36:44'),(4,48,'Laborum Accusantium','0000-00-00',7,'0000-00-00',94,31,5,0,'Esse pariatur Plac','Necessitatibus incid','2021-09-20 06:55:34','2021-09-18 05:09:06','2021-09-20 06:55:34'),(5,48,'Et non magna aut adi','0000-00-00',6,'0000-00-00',45,97,2,0,'Quo dolor totam inci','Quo ex a asperiores','2021-09-20 06:55:39','2021-09-18 06:57:09','2021-09-20 06:55:39'),(6,57,'Sunt enim rerum aut','2008-05-12',100000,'1994-02-11',1000000,1000000,230123,0,'20','Sint lorem id qui bl','2021-09-19 09:57:33','2021-09-18 13:42:39','2021-09-19 09:57:33'),(7,48,'Quia itaque alias vo','0000-00-00',1000000,'0000-00-00',37,50000,300000,0,'Consequuntur adipisi','Fugiat vitae offici','2021-09-20 06:55:12','2021-09-19 11:48:15','2021-09-20 06:55:12'),(8,56,'Reprehenderit debit','0000-00-00',1000000,'0000-00-00',21,50000,300000,0,'Saepe in et modi vel','Incididunt accusanti','2021-09-20 06:55:07','2021-09-19 13:14:13','2021-09-20 06:55:07'),(9,48,'Nulla sint anim even','1971-11-04',100000,'1996-03-06',3,5000,30000,0,'Corporis atque unde','Est accusantium ali','2021-09-27 03:06:13','2021-09-20 06:52:37','2021-09-27 03:06:13'),(10,48,'Alias non laboris es','1978-07-19',100000,'1977-03-03',65,5000,30000,0,'Debitis temporibus c','Laudantium architec',NULL,'2021-09-24 02:15:55','2021-09-24 02:15:55'),(11,48,'Unde vel corrupti c','1976-06-28',1000000,'1990-12-02',70,50000,300000,0,'Sunt cupidatat eu es','Voluptates id commo','2021-10-03 19:02:47','2021-09-26 12:59:31','2021-10-03 19:02:47'),(12,56,'Vitae at beatae even','1980-11-02',10000000,'2012-02-10',94,500000,3000000,0,'Fugiat dolor laborum','Molestias saepe eius','2021-10-03 19:02:42','2021-09-27 01:45:50','2021-10-03 19:02:42'),(13,48,'Ipsum esse accusamus','2003-07-04',15005555,'2013-08-20',48,750278,4501667,0,'Dolore necessitatibu','Officiis et quis dol','2021-09-29 17:24:26','2021-09-27 01:47:30','2021-09-29 17:24:26');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` bigint(20) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,3,'fikriilhamsyah7@gmail.com',NULL,'$2y$10$RhSCiWFkhl8qn2vNwUK01eCWXxcOEl2BZrMUwudZ8PDwpKWftE3Ja','',NULL,'2021-09-15 08:25:00','2021-09-04 12:34:06','2021-09-15 08:25:00'),(5,5,'lugyk@mailinator.com',NULL,'$2y$10$2..nOQHpUxKChpBa/ORQoepIna3uaZ3LEYzHvurOy6nQCwnwBpDAO','',NULL,'2021-09-14 01:56:29','2021-09-04 12:44:49','2021-09-14 01:56:29'),(8,8,'komaniv@mailinator.com',NULL,'$2y$10$iTLuHUrX3xGeHDvaQ3tXquQFHToCpASWNJ9arXHYT8sVTZyIz01a6','',NULL,'2021-09-14 01:08:09','2021-09-04 12:48:03','2021-09-14 01:08:09'),(9,9,'jyte@mailinator.com',NULL,'$2y$10$SDY8tewzDZEztZr1Zrx2/.8KmvlgmyYU6bzXPVCGdNBlAWS8sD9hm','',NULL,'2021-09-14 01:07:05','2021-09-04 12:48:57','2021-09-14 01:07:05'),(10,10,'rilokyl@mailinator.com',NULL,'$2y$10$W2k8gLJinQ05FFR1aL3GH./v6mU9AoF3TBao7G6K/V8LFq6dzzwAm','',NULL,'2021-09-14 01:03:17','2021-09-04 12:50:54','2021-09-14 01:03:17'),(13,13,'ligeh@mailinator.com',NULL,'$2y$10$mBS1inPuNrOrnsAfw4JLKOQ7z36np00y3vZ9vV3U9.49CfEO9dmwO','',NULL,'2021-09-13 23:40:51','2021-09-04 12:56:16','2021-09-13 23:40:51'),(14,14,'byzyfoda@mailinator.com',NULL,'$2y$10$W.j8BN1bFv9tnZnUvGRSoO5u3G0SlyzT4aGymjLkwhIdoXGspJOF2','',NULL,'2021-09-13 23:29:46','2021-09-04 12:56:30','2021-09-13 23:29:46'),(15,15,'wuwu@mailinator.com',NULL,'$2y$10$IR2EedMXEyA174Sy/0iBq.x.ZhxXSh1LGmshMjP35.qqCY5Ysn5g2','',NULL,'2021-09-13 23:29:09','2021-09-04 12:59:32','2021-09-13 23:29:09'),(16,16,'fikri@mailinator.com',NULL,'$2y$10$UDyt1Rp2cpaNho/7.SFBuOFo34FeKPilxvc6DNJN7DjhouSrf5VfK','',NULL,'2021-09-13 23:28:08','2021-09-04 13:02:11','2021-09-13 23:28:08'),(18,18,'ilhams@gmail.com',NULL,'$2y$10$ax6DTLEi/Be0arHWoSuNh.Hfme2a1OShlmt4ZHxSplgKQJF5ck2uq','',NULL,'2021-09-13 23:27:57','2021-09-04 13:04:53','2021-09-13 23:27:57'),(29,19,'iqballl@gmail.com',NULL,'$2y$10$GXx0zbv253WrbF1yHE.GAuMO79nlJ2hjM76NRON.rgGw0v0gG6ZUG','',NULL,'2021-09-13 23:11:04','2021-09-13 03:42:24','2021-09-13 23:11:04'),(30,20,'ano@gmail.com',NULL,'$2y$10$GuLfLcMOOxbjwvK9wxIzZOf5aSX3HmnwO2H5L7wXZtIuiE/0rOgIe','Karyawan',NULL,'2021-09-13 23:07:41','2021-09-13 03:42:38','2021-09-13 23:07:41'),(31,21,'ilham@mailinator.com',NULL,'$2y$10$52T.e92fvRf.M5GMQyfyfetZnbwmSoV6t7WLNuj4/RBY1g/il2zum','',NULL,'2021-09-14 01:02:32','2021-09-14 00:22:00','2021-09-14 01:02:32'),(32,22,'tyzuzyp@mailinator.com',NULL,'$2y$10$GDh8CVfAlXaMIkdxcZ1K.eyqdZZy1gakSmURDroDnKE7YrlfesZH.','Sequi ea distinctio',NULL,'2021-09-15 08:25:06','2021-09-14 01:53:55','2021-09-15 08:25:06'),(33,23,'jivyqa@mailinator.com',NULL,'$2y$10$u/odLdo2dbBW6QXFsH/L3OL2msspoIBnjQMPlf70hdhz6ZGMsLOOO','Quis iusto qui culpa',NULL,'2021-09-14 01:54:36','2021-09-14 01:54:27','2021-09-14 01:54:36'),(34,24,'dutecuz@mailinator.com',NULL,'$2y$10$1vYgMcXnoFTSqPArXS0hi.FwU5KSIB7R.f2qMnk/BCeoW19edkWbm','Ea fuga Magna asper',NULL,'2021-09-14 01:57:58','2021-09-14 01:56:55','2021-09-14 01:57:58'),(35,25,'qatimixyxa@mailinator.com',NULL,'$2y$10$KiqQLi1JNX9942lgDTxuVuAvh2J3SZgSY2FfK8/kWaZGCqPu2Fz4O','Architecto aperiam o',NULL,'2021-09-14 18:44:14','2021-09-14 01:58:51','2021-09-14 18:44:14'),(36,26,'ilhams@mailinator.com',NULL,'$2y$10$NINJ/CnpG1qy9Qcaut6tB.Pjkfo6QMELlH0HVZ87/o3mccYeo5XWW','',NULL,'2021-09-14 02:37:37','2021-09-14 02:35:10','2021-09-14 02:37:37'),(37,27,'hams@mailinator.com',NULL,'$2y$10$vU/UpQpbc5RXiaJ8fH3qp../lAoNp3MQkQyqCvT5jcgZx99oqXlqy','',NULL,'2021-09-15 08:25:09','2021-09-14 05:15:15','2021-09-15 08:25:09'),(38,28,'gihudazid@mailinator.com',NULL,'$2y$10$mY22U7kPvuzIEGBW2Li3l.Pv7PuTbzJ31vaE9gvev5K1gSrhXGZ1q','Totam placeat odit',NULL,'2021-09-15 08:25:13','2021-09-15 08:09:10','2021-09-15 08:25:13'),(39,29,'jugu@mailinator.com',NULL,'$2y$10$Uyjsvh541iIrmtwdyZ3aPeEdXqZ3SPmtzhFYt/vwsHHZZNcS5z0UW','Ullam tempora conseq',NULL,'2021-09-16 20:05:36','2021-09-15 08:25:32','2021-09-16 20:05:36'),(40,30,'lisumyfom@mailinator.com',NULL,'$2y$10$3dAsLdYxk8SGEQSvHDsN8eQESHevNHDFDl/TfL5W2lHKHPRys9lTC','Molestias inventore',NULL,'2021-09-16 20:05:40','2021-09-15 08:35:05','2021-09-16 20:05:40'),(41,31,'fatev@mailinator.com',NULL,'$2y$10$zaQAtLXlOjZDR9cH0JRSt.rjobrp8RwZrqPxyWbIwQYsWONf71LgG','Hic fugit ut neque',NULL,'2021-09-16 20:05:43','2021-09-15 09:00:17','2021-09-16 20:05:43'),(42,32,'kakebeto@mailinator.com',NULL,'$2y$10$FFfCm23UPe9b9EvfhuMdfe8IV7rg/mKQpd9vxO3nvm7R5eR8N/1NS','Officiis est duis a',NULL,'2021-09-16 20:05:47','2021-09-16 00:38:13','2021-09-16 20:05:47'),(43,33,'qybo@mailinator.com',NULL,'$2y$10$yYiiPK7vHkFIvie1QQJhc.RLKhYFY0gwmSWKSgDr5s/Y5zBsgp9Am','Voluptatem illo arch',NULL,'2021-09-16 20:05:50','2021-09-16 00:44:17','2021-09-16 20:05:50'),(44,34,'pohezacok@mailinator.com',NULL,'$2y$10$mYZnXJoZDnV5tUd4rtA7h.CCxlgRHFc6IxwOlAIv3iTXIGGTd365q','',NULL,'2021-09-16 02:57:05','2021-09-16 02:48:43','2021-09-16 02:57:05'),(45,35,'fiqri@mailinator.com',NULL,'$2y$10$WbUS7.Q.8J/9/9J.Ggufi.Q0R7xHBbR/MCE7vgn6frGBn1wc9q5My','',NULL,'2021-09-16 02:56:58','2021-09-16 02:49:03','2021-09-16 02:56:58'),(46,36,'daluvyh@mailinator.com',NULL,'$2y$10$DOkfBG5AOE7SIgFb0/wFtef8P.lZUnKitDhPyGibj9W5hS7wE2D.C','Nisi voluptatem Nec',NULL,'2021-09-16 20:05:53','2021-09-16 02:55:56','2021-09-16 20:05:53'),(47,37,'kaqyfytasa@mailinator.com',NULL,'$2y$10$2dWf5fyqJAaJJShF5C5QeusIyiBmGivl0zTM4kSobGZ5saK0xWNYC','Dicta rem voluptatib',NULL,'2021-09-16 20:05:56','2021-09-16 02:56:33','2021-09-16 20:05:56'),(48,38,'fagelyxa@mailinator.com',NULL,'$2y$10$pTePHfTqSQuONMqlxjr0XebLPYcNwVK3LxlOv1im89TTtPY8tIFoW','Harum assumenda sint',NULL,'2021-09-16 20:05:59','2021-09-16 02:57:48','2021-09-16 20:05:59'),(49,39,'tuxymyq@mailinator.com',NULL,'$2y$10$AQ6Sn4.VJNHRlrAEQMyypOhTvB4sz78p2QuuTTyotAgr0NmrZhZLu','Laborum Nisi cum se',NULL,'2021-09-16 20:06:03','2021-09-16 02:59:05','2021-09-16 20:06:03'),(50,40,'sydyviwy@mailinator.com',NULL,'$2y$10$Zo/rvglhQI7CFcnvOsjLTO2gSS5It/dlMcnR8H9MJcmTuTNpZIcii','Non optio ut labori',NULL,'2021-09-16 20:19:58','2021-09-16 02:59:49','2021-09-16 20:19:58'),(51,41,'pynena@mailinator.com',NULL,'$2y$10$Qqy1GIYlBVT5WxIBXhSRh.yEf5haGcJQ6IqaKAWPDbwtkd7EijjLW','Ut numquam non ullam',NULL,'2021-09-16 20:20:09','2021-09-16 03:00:21','2021-09-16 20:20:09'),(52,42,'julatu@mailinator.com',NULL,'$2y$10$/ffaWZrLKkwWW9qH/ete4OcM3MaBt4B35iFCXP92fpe0KiwNBCSIq','Adipisicing veniam',NULL,'2021-09-16 20:20:13','2021-09-16 03:00:39','2021-09-16 20:20:13'),(53,43,'faris@mailinator.com',NULL,'$2y$10$M8a5o2XdC5QFatdvNmup8eUlfSNAh1kELPA7H57CSKq.QG2Pmdc5O','dsadsad',NULL,NULL,'2021-09-16 03:02:20','2021-09-16 08:48:07'),(54,44,'lomenuv@mailinator.com',NULL,'$2y$10$obQkbd2NrmFdnJW8m2t.6ORXnSeFrcUPIyejc/GXzANk9pP7.EVWe','Cillum est perspici',NULL,NULL,'2021-09-16 07:41:06','2021-09-16 07:41:06'),(55,45,'coba@mail.com',NULL,'$2y$10$8best.B0tLV7G5MsJAXa0eQ9moMS2j7h6BNCAuDbmNk1RplJGYDAW','asdasdasd',NULL,NULL,'2021-09-16 20:22:42','2021-09-16 23:33:57'),(56,46,'bocasa@mailinator.com',NULL,'$2y$10$SpkWvXZe.2Z0sKoY8ajqhuKdprCJ2p1cfzCykNIl.oMwQUhGB9dGK','Voluptatem corporis',NULL,NULL,'2021-09-16 20:28:43','2021-09-16 23:30:59'),(57,47,'jonud@mailinator.com',NULL,'$2y$10$AxbtqXneQbNXVpvcF58h8O4uxZ4q32M3b.4Fp6Btv1YnEvGj3zv2i','Aspernatur autem duc',NULL,NULL,'2021-09-18 06:53:37','2021-09-19 07:58:31'),(58,48,'iqbal@mailinator.com',NULL,'$2y$10$Av.ogXbgx8uZ1rpo7gd9U.czydzro397mJ2GvmHiR.V6h/oHbfnAG','',NULL,NULL,'2021-10-03 19:57:31','2021-10-03 19:57:31');
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

-- Dump completed on 2021-10-04 13:00:11
