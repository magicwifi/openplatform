-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: routerapp_development
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

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
-- Table structure for table `plugin_details`
--

DROP TABLE IF EXISTS `plugin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `publish_time` datetime DEFAULT NULL,
  `developer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `desc1` text COLLATE utf8_unicode_ci,
  `desc2` text COLLATE utf8_unicode_ci,
  `desc3` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_details`
--

LOCK TABLES `plugin_details` WRITE;
/*!40000 ALTER TABLE `plugin_details` DISABLE KEYS */;
INSERT INTO `plugin_details` VALUES (1,4,'支持远程关闭接入设备','2014-07-01 09:18:52','huangzhe','0.0.1','云Wifi','2014-07-01 09:18:52','2014-07-18 10:12:38',NULL,NULL,NULL),(2,8,'为企业打造定制化Portal广告服务','2014-07-18 10:15:49','huangzhe','0.0.1','云Wifi','2014-07-18 10:15:49','2014-07-18 10:15:49',NULL,NULL,NULL),(3,9,'限制P2P，BT等各类下载软件','2014-07-18 10:16:52','huangzhe','0.0.1','云Wifi','2014-07-18 10:16:52','2014-07-18 10:16:52',NULL,NULL,NULL),(4,10,'远程下载视频与内容','2014-07-18 10:18:25','huangzhe','0.0.1','云Wifi','2014-07-18 10:18:25','2014-07-18 10:18:25',NULL,NULL,NULL),(5,15,'支持接入设备的远程重启','2014-07-18 10:19:28','huangzhe','0.0.1','云Wifi','2014-07-18 10:19:28','2014-07-18 10:19:28',NULL,NULL,NULL),(6,16,'为设备开通开发者账户，开发自己的应用','2014-07-18 10:20:04','huangzhe','0.0.1','云Wifi','2014-07-18 10:20:04','2014-07-18 10:20:04',NULL,NULL,NULL);
/*!40000 ALTER TABLE `plugin_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ishot` tinyint(1) DEFAULT '0',
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'cloudwifi',
  `installcmd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `removecmd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opkg` tinyint(1) DEFAULT '0',
  `renewcmd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` VALUES (4,'远程关机','2014-07-01 07:47:09','2014-07-02 09:30:00','shutdown',0,'cloudwifi',NULL,NULL,0,NULL),(8,'广告推送','2014-07-01 07:47:21','2014-07-30 08:53:19','wifidog',1,'cloudwifi','opkg update;opkg install wifidog;/usr/datas/opkg/usr/bin/wifidog &','wdctl stop;opkg remove wifidog;',1,'wdctl stop;opkg remove wifidog'),(9,'智能QoS','2014-07-18 01:21:34','2014-07-23 12:44:21','plus_smartqos',0,'cloudwifi','/etc/init.d/smartqos start;/etc/init.d/smartqos enable','/etc/init.d/smartqos stop;/etc/init.d/smartqos disable',0,'/etc/init.d/smartqos disable;'),(10,'离线下载','2014-07-18 01:24:38','2014-07-23 12:45:00','xdown',0,'cloudwifi','opkg update;opkg install xdown','opkg remove xdown',1,'opkg remove xdown;'),(11,'豌豆荚加速','2014-07-18 05:31:29','2014-07-18 05:37:01','plus_wandoujia',0,'accelerate',NULL,NULL,0,NULL),(12,'AppStore加速','2014-07-18 05:33:27','2014-07-18 05:33:27','plus_appstore',0,'accelerate',NULL,NULL,0,NULL),(13,'91加速','2014-07-18 05:40:31','2014-07-18 05:40:31','plus_91',0,'accelerate',NULL,NULL,0,NULL),(14,'CF加速','2014-07-18 05:42:57','2014-07-18 05:42:57','plus_cf',0,'accelerate',NULL,NULL,0,NULL),(15,'远程重启','2014-07-18 06:24:25','2014-07-18 06:30:03','plus_reboot',0,'cloudwifi',NULL,NULL,0,NULL),(16,'开发者模式','2014-07-18 06:25:12','2014-07-18 06:29:57','plus_develop',0,'cloudwifi',NULL,NULL,0,NULL),(17,'淘宝DPI','2014-07-18 06:44:38','2014-07-18 06:44:38','dpi_taobao',0,'smartdpi',NULL,NULL,0,NULL),(18,'视频DPI','2014-07-18 06:45:00','2014-07-18 06:45:00','dpi_youku',0,'smartdpi',NULL,NULL,0,NULL),(19,'腾讯DPI','2014-07-18 06:45:27','2014-07-18 06:45:27','dpi_tencent',0,'smartdpi',NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins_routers`
--

DROP TABLE IF EXISTS `plugins_routers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins_routers` (
  `plugin_id` int(11) DEFAULT NULL,
  `router_id` int(11) DEFAULT NULL,
  KEY `index_plugins_routers_on_router_id_and_plugin_id` (`router_id`,`plugin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins_routers`
--

LOCK TABLES `plugins_routers` WRITE;
/*!40000 ALTER TABLE `plugins_routers` DISABLE KEYS */;
INSERT INTO `plugins_routers` VALUES (1,1),(2,1),(4,1),(8,1);
/*!40000 ALTER TABLE `plugins_routers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routers`
--

DROP TABLE IF EXISTS `routers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `software` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `factory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_seen` datetime DEFAULT NULL,
  `renew` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routers`
--

LOCK TABLES `routers` WRITE;
/*!40000 ALTER TABLE `routers` DISABLE KEYS */;
INSERT INTO `routers` VALUES (1,'11:22:33:44:55:66','2014-07-01 06:52:26','2014-07-24 03:53:34','1.1','linux','2014-07-24 03:02:39',1),(2,'0C8268DEC1C6','2014-07-20 06:32:18','2014-07-24 05:33:56','1.1','tl-wr703n','2014-07-24 05:33:56',0),(3,'002293AABB24','2014-07-25 13:24:14','2014-07-25 13:24:14','1.1','智慧网关',NULL,NULL);
/*!40000 ALTER TABLE `routers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140701063929'),('20140701064035'),('20140701064747'),('20140701090641'),('20140701100208'),('20140702083307'),('20140718013635'),('20140718025057'),('20140718030117'),('20140721093819'),('20140721093855'),('20140721105507'),('20140722023426'),('20140723115702'),('20140723120221');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-31 14:40:30
