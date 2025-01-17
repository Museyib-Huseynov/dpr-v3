CREATE DATABASE  IF NOT EXISTS `dpr` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dpr`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: dpr
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Temporary view structure for view `complete_table`
--

DROP TABLE IF EXISTS `complete_table`;
/*!50001 DROP VIEW IF EXISTS `complete_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `complete_table` AS SELECT 
 1 AS `report_date`,
 1 AS `platform`,
 1 AS `well`,
 1 AS `well_stock_category`,
 1 AS `well_stock_sub_category`,
 1 AS `production_well_stock_sub_category`,
 1 AS `production_method`,
 1 AS `horizon`,
 1 AS `flowmeter`,
 1 AS `well_uptime_hours`,
 1 AS `choke`,
 1 AS `Pqa`,
 1 AS `Phf`,
 1 AS `Pba`,
 1 AS `P6x9`,
 1 AS `P9x13`,
 1 AS `P13x20`,
 1 AS `liquid_ton`,
 1 AS `total_gas`,
 1 AS `gaslift_gas`,
 1 AS `reported_water_cut`,
 1 AS `allocated_water_cut`,
 1 AS `mechanical_impurities`,
 1 AS `oil_density`,
 1 AS `oil_loss_ton`,
 1 AS `donwtime_category`,
 1 AS `production_skin`,
 1 AS `comments`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `completions`
--

DROP TABLE IF EXISTS `completions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `completions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `well_id` int NOT NULL,
  `report_date_id` int NOT NULL,
  `horizon_id` int DEFAULT NULL,
  `casing` varchar(255) DEFAULT NULL,
  `completion_interval` varchar(255) DEFAULT NULL,
  `tubing1_depth` varchar(255) DEFAULT NULL,
  `tubing1_length` varchar(255) DEFAULT NULL,
  `tubing2_depth` varchar(255) DEFAULT NULL,
  `tubing2_length` varchar(255) DEFAULT NULL,
  `tubing3_depth` varchar(255) DEFAULT NULL,
  `tubing3_length` varchar(255) DEFAULT NULL,
  `packer_depth` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_completion` (`well_id`,`report_date_id`),
  KEY `report_date_id` (`report_date_id`),
  KEY `horizon_id` (`horizon_id`),
  CONSTRAINT `completions_ibfk_1` FOREIGN KEY (`well_id`) REFERENCES `wells` (`id`),
  CONSTRAINT `completions_ibfk_2` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`),
  CONSTRAINT `completions_ibfk_3` FOREIGN KEY (`horizon_id`) REFERENCES `horizons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completions`
--

LOCK TABLES `completions` WRITE;
/*!40000 ALTER TABLE `completions` DISABLE KEYS */;
INSERT INTO `completions` VALUES (1,49,378,12,'139,7x168,3\n2216x1614','3111-3063','73x114','2,5″(1603m)x\n4″(1436m)xr/s(13m)=3052m','48x73','1,5″(1446m)x\n2,5″(1354m)=2800m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(2,50,378,18,'139,7x168,3\n2166x1341','3146-3084','73x114','73mm-1690+114mm-1265 +13m=2968m','73','73mm-1248m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(3,51,378,12,'139,7x168,3\n2156x1650','3373-3346','73x114','73mm1784+114mm-1540 +13m=3337m','73','73mm-1508m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(4,52,378,11,'139,7x168,3\n1632x1458m','2889-2826','73x114','2,5″(1469m)x\n4″(1338m)xr/s(13m)=2820m','48x73','1,5″(800m)x\n2,5″(1008m)=1808m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(5,53,378,19,'140x146x 168,3\n315x1609x 1746','2968-2956   2930-2883','73x114','2,5″(1265m)x\n4″(1597m)xr/s(13m)=2875m','48x73','1,5″(1098m)x\n2,5″(1304m)=2403m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(6,54,378,11,'139,7x168,3\n2170x1434','3000-2940','73x114','2,5″(1555m)x\n4″(1362m)xr/s(13m)=2930m','48x73','1,5″(1395m)x\n2,5″(1006m)=2401m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(7,55,378,11,'139,7x168,3\n1600x1450','2880-2787','73x114','2,5″(1457m)x\n4″(1311m)xr/s(13m)=2781m','48x73','1,5″(1200m)x\n2,5″(1195m)=2395m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(8,56,378,11,'139,7x168,3\n1610x1600','2960-2835','73x114','2,5″(1265m)x\n4″(1548m)xr/s(13m)=2826m','48x73','1,5″(693m)x\n2,5″(1306m)=1999 m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(9,57,378,11,'139,7x168,3\n1421x1829','2896-2803','73x114','2,5″(1428m)x\n4″(1348m)xr/s(13m)=2789m','48x73','1,5″(1300m)x\n2,5″(1215m)=2515m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(10,58,378,11,'139,7x168,3\n2150x1120','2938-2861','73x114','2,5″(1804m)x\n4″(1000m)xr/s(13m)=2817m','48x73','1,5″(1506m)x\n2,5″(897m)=2403m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(11,59,378,11,'139,7x168,3\n2210x1238','3092-3033','73x114','2,5″(1872m)x\n4″(1138m)xr/s(13m)=3023m','48x73','1,5″(1506m)x\n2,5″(897m)=2403m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(12,60,378,11,'139,7x168,3\n1793x1620','2959-2900','73x114','2,5″(1305m)x\n4″(1572m)xr/s(13m)=2890m','48x73','1,5″(1195m)x\n2,5″(1107m)=2302m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(13,61,378,11,'139,7x146x168,3\n470x1877x 1625','3048,5-2918','73x114','2,5″(1457m)x\n4″(1439m)xr/s(13m)=2909m','48x73','1,5″(1300m)x\n2,5″(1406m)=2706m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(14,62,378,19,'139.7 x 146 x 168,3 \n374 x 1451 x 1505\n(3330)','2995-2920','73x114','2,5″(1453m)x\n4″(1446m)xr/s(13m)=2912m','48x73','1,5″(1109m)x\n2,5″(1294m)=2403m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(15,63,378,18,'177,8 \n3150','2965-2951','73x114','2,5″(797m)x\n4″(2131m)xr/s(14m)=2942m','73','2,5″(1901m)=1901m',NULL,NULL,NULL,'2025-01-17 16:46:46'),(16,64,378,18,'177,8  \n 3150','3024-3004','73x114','2,5″(600m)x\n4″(2380m)xr/s(13m)=2993m','73','2,5″ = 1703m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(17,65,378,18,'177,8 \n3200','3042-3029','73x114','2,5″(816m)x\n4″(2185m)xr/s(14m)=3015m','73','2,5″(1707m)=1707m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(18,66,378,18,'177,8 \n3220','3151-3143','73x114','2,5″(929m)x\n4″(2187m)xr/s(14m)=3130m','73','2,5″(1598m)=1598m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(19,67,378,18,'177,8  \n3155','3065-2998','73x114','2,5″(579m)x\n4″(2388m)xr/s(13m)=2980m','73','2,5″=1808m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(20,68,378,18,'177,8 \n3120','2979-2972','73x114','2,5″(760m)x\n4″(2190m)xr/s(14m)=2964m','73','2,5″=2154m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(21,69,378,18,'177,8x193,2 992x2158','3044-3025','73x114','2,5″(851m)x\n4″(2148m)xr/s(14m)=3013m','73','2,5″=1597m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(22,70,378,18,'177,8x193,2 992x2158','3170-3165','73x114','2,5″(750m)x\n4″(2388m)xr/s(14m)=3152m','73','2,5″=2203m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(23,71,378,12,'177,8-3250','3114-3085','73x114','2,5″(675m)x\n4″(2383m)xr/s(14m)=3072m','48x73','1,5″(655m)x\n2,5″(1689m)=2344m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(24,72,378,12,'6x7\"= 632+2748','3210-3175','73x114','2,5″(750m)x\n4″(2402m)xr/s(13m)=3165m','73','2,5″=2345m',NULL,NULL,NULL,'2025-01-17 16:46:47'),(25,102,378,22,'139,7x168,3\n1338x2500','3095-3070','114','4″(1900m) =1900m',NULL,'11m+16/149m(TMK)+ 2877m+13m=3050m','48','1,5\"=2204m',NULL,'2025-01-17 16:46:48'),(26,103,378,10,'139,7x168,3\n1338x2500m','2441-2408','114','4″(1900m) =1900m',NULL,'11m+16/149m(TMK)+ 2877m+13m=3050m','48','1,5\"=2204m',NULL,'2025-01-17 16:46:48'),(27,104,378,18,'139,7x168,3\n1400x2750','2766-2719','73x114','2,5″(314m)x\n4″(2378m)xr/s (18m)=2710m','73','2,5″=1450m',NULL,NULL,NULL,'2025-01-17 16:46:48'),(28,105,378,18,'168,3\n2811','2666-2658','73x114','2,5″(651m)x\n4″(1980m)xr/s (19m)=2650m','73','2,5″=1498m',NULL,NULL,NULL,'2025-01-17 16:46:48'),(29,106,378,18,'168,3\n2848','2763-2733','73x114','2,5″(610m)x\n4″(2101m)xr/s (18m)=2729m','73','2,5″=1597m',NULL,NULL,NULL,'2025-01-17 16:46:48'),(30,107,378,12,'168,3\n2896','2684-2675','73x114','2,5″(566m)x\n4″(2076m)xr/s (18m)=2660m','73','2,5″=1998m',NULL,NULL,NULL,'2025-01-17 16:46:48'),(31,108,378,18,'168,3\n3069','3027-2984','73x114','2,5″(908m)x\n4″(2048m)xr/s (16m)=2972m','73','2,5″=1506 m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(32,109,378,3,'168,3\n2950','2041-1900','73x114','Paker yığımı-8,18m+ 2,5″(1003,10m)x 4″(853m)x r/s(21m) =1885,28m',NULL,NULL,NULL,NULL,'1873.5','2025-01-17 16:46:49'),(33,110,378,10,'168,3\n2950','2447-2432','73x114','2,5″(424m)x\n4″(1982m)xr/s (15m)=2421m','73','2,5″=1500m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(34,111,378,18,'168,3\n2820,5','2762-2722','73x114','2,5″(696m)x\n4″(1991m)xr/s (18m)=2705m','73','2,5″=1502m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(35,112,378,11,'168,3-2796m','2536-2505',NULL,NULL,NULL,NULL,NULL,NULL,'2485.56','2025-01-17 16:46:49'),(36,113,378,10,'168,3\n2796','2441-2349','114','4\"(2312m)xr/s (18m)=2330m','73','2,5″=1360,5m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(37,114,378,10,'168,3\n2786','2373-2352','73x114','2,5″(336m)x\n4″(1986m)xr/s (16m)=2338m','73','2,5″=1499m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(38,115,378,11,'168,3\n2938','2650-2615','73x114','2,5″(600m)x\n4″(1989m)xr/s (15m)=2604m','73','2,5″=1953m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(39,116,378,12,'168,3\n2752','2680-2658','73x114','2,5″(348m)x\n4″(2275m)xr/s (22m)=2645m','73','2,5″=2004 m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(40,117,378,30,'168,3\n2829','2630-2590\n2415-2325','73x114','2,5″(615m)x\n4″(1684m)xr/s (13m)=2312m','73','2,5″=1504m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(41,118,378,12,'168,3\n2669','2626-2595','73x114','2,5″(550m)x\n4″(2018m)xr/s (18m)=2586m','73','2,5″=1503 m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(42,119,378,12,'168,3\n2739','2692-2653','73x114','2,5″(624m)x\n4″(2003m)xr/s (16m)=2643m','73','2,5″=1502 m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(43,120,378,9,'168,3\n2711','2389-2322','114','4″(2296m)  xr/s(14m) =2310m','73','2,5″=1403m',NULL,NULL,NULL,'2025-01-17 16:46:49'),(44,121,378,12,'168,3\n2659','2579-2549','114','4\"-1900m','73','2,5\"-2352m+2,5″(TMK)-153m=2505m','1\"x48mm','III sıra 1\"(502) +1,5\"(1798)=2300m',NULL,'2025-01-17 16:46:49'),(45,122,378,10,'168,3\n2659','2415-2326','114','4\"-1900m','73','2,5\"-2352m+2,5″(TMK)-153m=2505m','1\"x48mm','III sıra 1\"(502) +1,5\"(1798)=2300m',NULL,'2025-01-17 16:46:49'),(46,123,378,11,'168,3-3008m','2910-2845',NULL,NULL,NULL,NULL,NULL,NULL,'2833.34','2025-01-17 16:46:50'),(47,124,378,11,'168,3-3008m','2815-2737','73x114','2,5″(735m)x\n4″(1975)xr/s (13m)=2723m','48X73','1,5″(554m)x2,5″ (1897m) = 2451m',NULL,NULL,NULL,'2025-01-17 16:46:50'),(48,125,378,12,'168,3-2978m','2944-2928','73x114','2,5″(903m)x\n4″(1997m)xr/s (17m)=2917m','73','2,5″=1947m',NULL,NULL,NULL,'2025-01-17 16:46:50'),(49,126,378,18,'177,8-3057m','2980-2949','114','4″ - 2402m.','73','p/y(6,30m)+2,5\"(2903,95m) x r/s(19,90m) =2930,15m','48','1,5\"=1800m','2918','2025-01-17 16:46:50'),(50,127,378,12,'177,8-3057m','2896-2846','114','4″ - 2402m.','73','p/y(6,30m)+2,5\"(2903,95m) x r/s(19,90m) =2930,15m','48','1,5\"=1800m','2918','2025-01-17 16:46:50'),(51,128,378,10,'168,3\n3420','3334-3281','73x114','2,5″(803m)x\n4″(2070m)xr/s (21m)=2894m','73','2,5″=1600m',NULL,NULL,NULL,'2025-01-17 16:46:50'),(52,129,378,12,'168,3-2786m','2725-2630','73x114','2,5″(612m)x\n4″(1986m)xr/s(21m)=2619m','73','2,5″=1801m',NULL,NULL,NULL,'2025-01-17 16:46:50'),(53,130,378,18,'177,8\n2923,36','2889-2844','73x114','2,5″(798m)x\n4″(2012m)xr/s(21m)=2831m','73','2,5″=1604m',NULL,NULL,NULL,'2025-01-17 16:46:50'),(54,131,378,18,'168,3-2998m','2914-2843','114','4\"-239/2184m+13m(r/s)=2197m','73','P/y-14.57m+2.5”-9/84m(TMK)+ 2.5”-112/1011m(C) +2.5”-177/1704m (P)+12.8m(r/s)=2826,37m','48','1,5\"-1996m','2918.9','2025-01-17 16:46:50'),(55,132,378,10,'168,3-2998m','2493-2473','114','4\"-2197m.','73','P/y-14.57m+2.5”-9/84m(TMK)+ 2.5”-112/1011m(C) +2.5”-177/1704m (P)+12.8m(r/s)=2826,37m','48','1,5\"-1996m','2918.9','2025-01-17 16:46:50');
/*!40000 ALTER TABLE `completions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_operatives`
--

DROP TABLE IF EXISTS `daily_operatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_operatives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `field_id` int NOT NULL,
  `report_date_id` int NOT NULL,
  `oil_ton` int DEFAULT NULL,
  `water_ton` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_daily_operative` (`field_id`,`report_date_id`),
  KEY `report_date_id` (`report_date_id`),
  CONSTRAINT `daily_operatives_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`),
  CONSTRAINT `daily_operatives_ibfk_2` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_operatives`
--

LOCK TABLES `daily_operatives` WRITE;
/*!40000 ALTER TABLE `daily_operatives` DISABLE KEYS */;
/*!40000 ALTER TABLE `daily_operatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_well_parameters`
--

DROP TABLE IF EXISTS `daily_well_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_well_parameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `well_id` int NOT NULL,
  `report_date_id` int NOT NULL,
  `flowmeter` int DEFAULT NULL,
  `well_uptime_hours` int DEFAULT NULL,
  `choke` varchar(255) DEFAULT NULL,
  `pqa` varchar(255) DEFAULT NULL,
  `phf` varchar(255) DEFAULT NULL,
  `pba` varchar(255) DEFAULT NULL,
  `p6x9` varchar(255) DEFAULT NULL,
  `P9x13` varchar(255) DEFAULT NULL,
  `p13x20` varchar(255) DEFAULT NULL,
  `liquid_ton` int DEFAULT NULL,
  `total_gas` int DEFAULT NULL,
  `gaslift_gas` int DEFAULT NULL,
  `reported_water_cut` float DEFAULT NULL,
  `water_cut` float DEFAULT NULL,
  `mechanical_impurities` float DEFAULT NULL,
  `oil_density` float DEFAULT NULL,
  `oil_loss_ton` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_daily_well_parameter` (`well_id`,`report_date_id`),
  KEY `report_date_id` (`report_date_id`),
  CONSTRAINT `daily_well_parameters_ibfk_1` FOREIGN KEY (`well_id`) REFERENCES `wells` (`id`),
  CONSTRAINT `daily_well_parameters_ibfk_2` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_well_parameters`
--

LOCK TABLES `daily_well_parameters` WRITE;
/*!40000 ALTER TABLE `daily_well_parameters` DISABLE KEYS */;
INSERT INTO `daily_well_parameters` VALUES (1,49,378,2,24,'15','14/16','60','68','0','0','0',21,25507,23000,81,81,0.1,0.861,0,'2025-01-17 16:46:46'),(2,50,378,NULL,24,'26','214','181','134','4','0','0',1003,0,0,100,100,0,0.855,0,'2025-01-17 16:46:46'),(3,51,378,NULL,24,'40','214','0','0','0','0','0',54,0,0,100,100,0,0.861,0,'2025-01-17 16:46:46'),(4,52,378,2,24,'10','17/19','30/32','36/38','0','0','0',11,18738,16000,10,10,0,0.873,0,'2025-01-17 16:46:46'),(5,53,378,2,24,'15','20/24','71/72','82','0','0','0',83,29976,26000,84.7,84.7,0.1,0.858,0,'2025-01-17 16:46:46'),(6,54,378,NULL,0,'40','0','0','0','0','0','0',0,0,0,100,100,0,0.873,0,'2025-01-17 16:46:46'),(7,55,378,2,24,'15','16','43','44','0','0','0',23,31659,20000,5,5,0,0.873,0,'2025-01-17 16:46:46'),(8,56,378,2,24,'13','18/19','34/35','39/40','0','0','0',13,30434,20000,0,0,0,0.873,0,'2025-01-17 16:46:46'),(9,57,378,2,24,'16','15','52','41','0','0','0',14,26730,18000,4,4,0,0.873,0,'2025-01-17 16:46:46'),(10,58,378,2,24,'13','15/16','38/41','41/44','0','0','0',13,26251,22000,5,5,0,0.873,0,'2025-01-17 16:46:46'),(11,59,378,NULL,0,'0','0','0','0','0','0','0',0,16000,0,50,50,0,0.873,1,'2025-01-17 16:46:46'),(12,60,378,NULL,0,'0','0','0','0','0','0','0',0,23000,0,50,50,0,0.873,1,'2025-01-17 16:46:46'),(13,61,378,2,24,'16','13/16','40/45','44/47','0','0','0',23,26741,21000,0,0,0,0.873,0,'2025-01-17 16:46:46'),(14,62,378,2,24,'15','19/21','40/43','59/60','0','0','0',29,39844,37000,37.9,37.9,0,0.858,0,'2025-01-17 16:46:46'),(15,63,378,2,24,'13','22','43','55','0','0','0',42,20497,17000,0,0,0,0.855,0,'2025-01-17 16:46:47'),(16,64,378,2,24,'10','24/44','64/66','80','7','0','0',66,30744,24000,71,71,0.1,0.855,0,'2025-01-17 16:46:47'),(17,65,378,2,24,'13','17/18','37','49','0','0','0',30,21497,19000,0,0,0,0.855,0,'2025-01-17 16:46:47'),(18,66,378,2,24,'11','27/38','72/74','151','0','0','0',100,20209,13000,42,42,0.1,0.855,0,'2025-01-17 16:46:47'),(19,67,378,2,24,'10','44/46','88','86','0','0','0',88,25312,21000,70.4,70.4,0,0.855,0,'2025-01-17 16:46:47'),(20,68,378,2,24,'11','21/33','52/54','68/69','13','0','0',43,28498,25000,45,45,0.1,0.855,0,'2025-01-17 16:46:47'),(21,69,378,2,24,'9','26/30','114','164','22','0','0',106,3495,0,50,50,0.1,0.855,0,'2025-01-17 16:46:47'),(22,70,378,2,24,'7','32/45','65/69','70/72','0','0','0',29,16000,14000,20,20,0.1,0.855,0,'2025-01-17 16:46:47'),(23,71,378,2,24,'16','14/27','61','65','0','0','0',61,31058,25000,65,65,0.1,0.861,0,'2025-01-17 16:46:47'),(24,72,378,2,24,'11','19/31','49/57','59/61','0','0','0',31,27961,27000,47,47,0.1,0.861,0,'2025-01-17 16:46:47'),(25,73,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:47'),(26,74,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:47'),(27,75,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:47'),(28,76,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:47'),(29,77,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:47'),(30,78,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:48'),(31,79,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:48'),(32,80,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,'2025-01-17 16:46:48'),(33,102,378,7,24,'15','36/37','0','87','6','13','0',5,108700,0,17,17,0,0.851,0,'2025-01-17 16:46:48'),(34,103,378,7,24,'8','40/41','0','133','6','13','0',106,7500,0,0,0,0,0.9,0,'2025-01-17 16:46:48'),(35,104,378,7,24,'12','44/45','96/97','170','0','84','77/1',183,29500,17000,65,65,0.1,0.855,0,'2025-01-17 16:46:48'),(36,105,378,7,24,'8','50/53','98/99','128','17','3','0',77,22300,16000,36,36,0.1,0.855,0,'2025-01-17 16:46:48'),(37,106,378,7,24,'12','53/54','105/107','110/111','38','46','0',168,42500,20000,48,48,0.1,0.855,0,'2025-01-17 16:46:48'),(38,107,378,7,24,'13','40/48','81/82','94/95','28','4','0',108,57600,23000,60,60,0.1,0.861,0,'2025-01-17 16:46:48'),(39,108,378,7,24,'11','45/55','98/99','170','0','25','26',167,32000,16000,40,40,0.1,0.855,0,'2025-01-17 16:46:49'),(40,109,378,7,24,'3/8/13','145/146','0','106','22','1','9',1,94000,0,0,0,0,0.755,0,'2025-01-17 16:46:49'),(41,110,378,7,24,'10','72/73','107/108','113','0','15','14',132,51100,3000,33,33,0.1,0.9,0,'2025-01-17 16:46:49'),(42,111,378,7,24,'7','65/78','115/120','130','9','40','2',63,27300,15000,40,40,0.1,0.855,0,'2025-01-17 16:46:49'),(43,112,378,NULL,0,'0','0','0','0','0','0','0',0,46700,0,0,0,0,0.873,148,'2025-01-17 16:46:49'),(44,113,378,7,24,'10,5','64/65','99/100','127','0','28','25',156,40800,0,0,0,0,0.9,0,'2025-01-17 16:46:49'),(45,114,378,7,24,'10','62/67','118/120','162','30','17','25',177,31600,15000,42,42,0.2,0.9,0,'2025-01-17 16:46:49'),(46,115,378,7,24,'10/19','71/72','75','76','0','25','12',10,103000,0,0,0,0,0.873,0,'2025-01-17 16:46:49'),(47,116,378,7,24,'14','23/43','79/81','88/89','5','17','18',132,41000,27000,48,48,0.1,0.861,0,'2025-01-17 16:46:49'),(48,117,378,7,24,'12','30/40','54/55','121','14','20','22',222,21300,2000,59,59,0.1,0.881,0,'2025-01-17 16:46:49'),(49,118,378,7,24,'12','35/47','68/71','79/80','14','15','1',109,45000,30000,75,75,0.1,0.861,0,'2025-01-17 16:46:49'),(50,119,378,7,24,'12','43/58','71/75','80/81','51','0','3',91,53400,33000,44,44,0.1,0.861,0,'2025-01-17 16:46:49'),(51,120,378,7,24,'12/15','145/146','158','160','33','16','17',8,314000,0,0,0,0,0.76,0,'2025-01-17 16:46:49'),(52,121,378,NULL,0,'0','0','0','0','0','0','0',0,14500,0,39.6,39.6,0,0.861,61,'2025-01-17 16:46:49'),(53,122,378,7,24,'8','40/60','0','136','58','13','22',105,17100,6000,58,58,0.2,0.9,0,'2025-01-17 16:46:50'),(54,123,378,NULL,0,'0','0','0','0','0','0','0',0,0,0,10.3,10.3,0,0.873,17,'2025-01-17 16:46:50'),(55,124,378,7,24,'12','58/59','83/84','84/85','30','32','33',15,117500,0,10,10,0.1,0.873,0,'2025-01-17 16:46:50'),(56,125,378,7,24,'13','30/42','68/69','86/87','36','31','15',94,45400,34000,43,43,0.1,0.861,0,'2025-01-17 16:46:50'),(57,126,378,7,24,'8','62/67','0','126','0','18','15',85,27500,15000,1,1,0,0.855,0,'2025-01-17 16:46:50'),(58,127,378,7,24,'9','42/43','0','78','0','18','15',31,31400,18000,0,0,0,0.861,0,'2025-01-17 16:46:50'),(59,128,378,7,24,'11','79/83','113/114','136','20','0','2',157,70500,0,0,0,0,0.9,0,'2025-01-17 16:46:50'),(60,129,378,7,24,'8','65/82','99/104','132','0','10','13',62,33000,18000,20,20,0.3,0.861,0,'2025-01-17 16:46:50'),(61,130,378,7,24,'9','53/70','106/107','168/169','62','17','11',106,33800,15000,63,63,0.1,0.855,0,'2025-01-17 16:46:50'),(62,131,378,7,24,'7','50/51','0','132','0','15','35/30',62,14400,8000,55,55,0.1,0.855,0,'2025-01-17 16:46:50'),(63,132,378,7,24,'7','44/45','0','142','0','15','35/30',82,8700,0,0,0,0,0.9,0,'2025-01-17 16:46:50');
/*!40000 ALTER TABLE `daily_well_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ogpd_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_field` (`name`,`ogpd_id`),
  KEY `ogpd_id` (`ogpd_id`),
  CONSTRAINT `fields_ibfk_1` FOREIGN KEY (`ogpd_id`) REFERENCES `ogpd` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,'SWG',1);
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flowmeters`
--

DROP TABLE IF EXISTS `flowmeters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flowmeters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform_id` int NOT NULL,
  `report_date_id` int NOT NULL,
  `reading1` int DEFAULT NULL,
  `reading2` int DEFAULT NULL,
  `reading3` int DEFAULT NULL,
  `reading4` int DEFAULT NULL,
  `calibration_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_flowmeter` (`platform_id`,`report_date_id`),
  KEY `report_date_id` (`report_date_id`),
  CONSTRAINT `flowmeters_ibfk_1` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`),
  CONSTRAINT `flowmeters_ibfk_2` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flowmeters`
--

LOCK TABLES `flowmeters` WRITE;
/*!40000 ALTER TABLE `flowmeters` DISABLE KEYS */;
INSERT INTO `flowmeters` VALUES (1,6,378,NULL,2594,NULL,2593,'2020-01-01','2025-01-17 16:46:48');
/*!40000 ALTER TABLE `flowmeters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horizons`
--

DROP TABLE IF EXISTS `horizons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horizons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_horizon` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horizons`
--

LOCK TABLES `horizons` WRITE;
/*!40000 ALTER TABLE `horizons` DISABLE KEYS */;
INSERT INTO `horizons` VALUES (11,'BLD_IX'),(14,'BLD_IX+BLD_VIII'),(7,'BLD_V'),(6,'BLD_V+Sabunçu_IV'),(8,'BLD_VI'),(17,'BLD_VI+BLD_V'),(9,'BLD_VII'),(16,'BLD_VII+BLD_VI'),(10,'BLD_VIII'),(15,'BLD_VIII+BLD_VII'),(12,'BLD_X'),(13,'BLD_X+BLD_IX'),(30,'BLD_X+BLD_VIII'),(18,'FLD'),(19,'FLD+BLD_X'),(26,'QA'),(27,'QA+QD'),(32,'QA+QÜG'),(31,'QA+QÜQ'),(28,'QaLD'),(29,'QaLD+QA'),(24,'QD'),(25,'QD+QÜQ'),(20,'QÜG'),(21,'QÜG+FLD'),(22,'QÜQ'),(23,'QÜQ+QÜG'),(1,'Sabunçu_II'),(2,'Sabunçu_III'),(5,'Sabunçu_III+Sabunçu_II'),(3,'Sabunçu_IV'),(4,'Sabunçu_IV+Sabunçu_III');
/*!40000 ALTER TABLE `horizons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratory_results`
--

DROP TABLE IF EXISTS `laboratory_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratory_results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `well_id` int NOT NULL,
  `report_date_id` int DEFAULT NULL,
  `last_lab_date` date DEFAULT NULL,
  `water_cut` float DEFAULT NULL,
  `mechanical_impurities` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_laboratory_result` (`well_id`,`last_lab_date`),
  KEY `fk_lr_report_date_id` (`report_date_id`),
  CONSTRAINT `fk_lr_report_date_id` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`),
  CONSTRAINT `laboratory_results_ibfk_1` FOREIGN KEY (`well_id`) REFERENCES `wells` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratory_results`
--

LOCK TABLES `laboratory_results` WRITE;
/*!40000 ALTER TABLE `laboratory_results` DISABLE KEYS */;
INSERT INTO `laboratory_results` VALUES (1,49,378,'2025-01-08',81,0.1,'2025-01-17 12:46:46'),(2,50,378,'2025-01-12',100,0,'2025-01-17 12:46:46'),(3,51,378,'2025-01-12',100,0,'2025-01-17 12:46:46'),(4,52,378,'2025-01-08',10,0,'2025-01-17 12:46:46'),(5,53,378,'2025-01-01',84.7,0.1,'2025-01-17 12:46:46'),(6,54,378,'2024-12-22',100,0,'2025-01-17 12:46:46'),(7,55,378,'2025-01-08',5,0,'2025-01-17 12:46:46'),(8,56,378,'2025-01-08',0,0,'2025-01-17 12:46:46'),(9,57,378,'2025-01-08',4,0,'2025-01-17 12:46:46'),(10,58,378,'2025-01-08',5,0,'2025-01-17 12:46:46'),(11,59,378,'2024-02-07',50,0,'2025-01-17 12:46:46'),(12,60,378,'2024-07-21',50,0,'2025-01-17 12:46:46'),(13,61,378,'2025-01-08',0,0,'2025-01-17 12:46:46'),(14,62,378,'2025-01-08',37.9,0,'2025-01-17 12:46:46'),(15,63,378,'2025-01-08',0,0,'2025-01-17 12:46:47'),(16,64,378,'2025-01-08',71,0.1,'2025-01-17 12:46:47'),(17,65,378,'2025-01-08',0,0,'2025-01-17 12:46:47'),(18,66,378,'2025-01-08',42,0.1,'2025-01-17 12:46:47'),(19,67,378,'2025-01-08',70.4,0,'2025-01-17 12:46:47'),(20,68,378,'2025-01-08',45,0.1,'2025-01-17 12:46:47'),(21,69,378,'2025-01-08',50,0.1,'2025-01-17 12:46:47'),(22,70,378,'2025-01-08',20,0.1,'2025-01-17 12:46:47'),(23,71,378,'2025-01-08',65,0.1,'2025-01-17 12:46:47'),(24,72,378,'2025-01-08',47,0.1,'2025-01-17 12:46:47'),(25,73,378,'1899-12-31',0,0,'2025-01-17 12:46:47'),(26,74,378,'1899-12-31',0,0,'2025-01-17 12:46:47'),(27,75,378,'1899-12-31',0,0,'2025-01-17 12:46:47'),(28,76,378,'1899-12-31',0,0,'2025-01-17 12:46:47'),(29,77,378,'1899-12-31',0,0,'2025-01-17 12:46:47'),(30,78,378,'1899-12-31',0,0,'2025-01-17 12:46:48'),(31,79,378,'1899-12-31',0,0,'2025-01-17 12:46:48'),(32,80,378,'1899-12-31',0,0,'2025-01-17 12:46:48'),(33,102,378,'2025-01-02',17,0,'2025-01-17 12:46:48'),(34,103,378,'2025-01-02',0,0,'2025-01-17 12:46:48'),(35,104,378,'2025-01-02',65,0.1,'2025-01-17 12:46:48'),(36,105,378,'2025-01-02',36,0.1,'2025-01-17 12:46:48'),(37,106,378,'2025-01-02',48,0.1,'2025-01-17 12:46:48'),(38,107,378,'2025-01-02',60,0.1,'2025-01-17 12:46:49'),(39,108,378,'2025-01-02',40,0.1,'2025-01-17 12:46:49'),(40,109,378,'2024-01-01',0,0,'2025-01-17 12:46:49'),(41,110,378,'2025-01-02',33,0.1,'2025-01-17 12:46:49'),(42,111,378,'2025-01-02',40,0.1,'2025-01-17 12:46:49'),(43,112,378,'2024-12-08',0,0,'2025-01-17 12:46:49'),(44,113,378,'2025-01-02',0,0,'2025-01-17 12:46:49'),(45,114,378,'2025-01-02',42,0.2,'2025-01-17 12:46:49'),(46,115,378,'2024-01-01',0,0,'2025-01-17 12:46:49'),(47,116,378,'2025-01-02',48,0.1,'2025-01-17 12:46:49'),(48,117,378,'2025-01-02',59,0.1,'2025-01-17 12:46:49'),(49,118,378,'2025-01-02',75,0.1,'2025-01-17 12:46:49'),(50,119,378,'2025-01-02',44,0.1,'2025-01-17 12:46:49'),(51,120,378,'2025-01-02',0,0,'2025-01-17 12:46:49'),(52,121,378,'2024-12-11',39.6,0,'2025-01-17 12:46:49'),(53,122,378,'2025-01-02',58,0.2,'2025-01-17 12:46:50'),(54,123,378,'2024-12-11',10.3,0,'2025-01-17 12:46:50'),(55,124,378,'2025-01-02',10,0.1,'2025-01-17 12:46:50'),(56,125,378,'2025-01-02',43,0.1,'2025-01-17 12:46:50'),(57,126,378,'2025-01-02',1,0,'2025-01-17 12:46:50'),(58,127,378,'2025-01-02',0,0,'2025-01-17 12:46:50'),(59,128,378,'2025-01-02',0,0,'2025-01-17 12:46:50'),(60,129,378,'2025-01-02',20,0.3,'2025-01-17 12:46:50'),(61,130,378,'2025-01-02',63,0.1,'2025-01-17 12:46:50'),(62,131,378,'2025-01-02',55,0.1,'2025-01-17 12:46:50'),(63,132,378,'2025-01-02',0,0,'2025-01-17 12:46:50');
/*!40000 ALTER TABLE `laboratory_results` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_laboratory_results_insert` AFTER INSERT ON `laboratory_results` FOR EACH ROW BEGIN
		DECLARE report_date DATE;

		SELECT rd.report_date INTO report_date
		FROM report_dates AS rd
		WHERE rd.id = NEW.report_date_id;

    UPDATE well_tests 
    SET water_cut = NEW.water_cut, 
		mechanical_impurities = NEW.mechanical_impurities 
		WHERE well_id = NEW.well_id 
		AND well_test_date >= NEW.last_lab_date 
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 where lr1.last_lab_date > NEW.last_lab_date
			)
			OR well_test_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  NEW.last_lab_date )
		); 
    -- ORDER BY well_test_date 
    -- LIMIT 1;
    
    UPDATE daily_well_parameters
    SET water_cut = NEW.water_cut,
		mechanical_impurities = NEW.mechanical_impurities
		WHERE well_id = NEW.well_id 
		AND report_date >= NEW.last_lab_date
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 WHERE lr1.last_lab_date > NEW.last_lab_date
			)
			OR report_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  NEW.last_lab_date )
		);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_laboratory_results_delete` AFTER DELETE ON `laboratory_results` FOR EACH ROW BEGIN
	DECLARE last_available_water_cut FLOAT;
  DECLARE last_available_mechanical_impurities FLOAT;
	DECLARE report_date DATE;

	SELECT rd.report_date INTO report_date
	FROM report_dates AS rd
	WHERE rd.id = OLD.report_date_id;
    
  SELECT water_cut, mechanical_impurities
	INTO last_available_water_cut, last_available_mechanical_impurities
	FROM laboratory_results
	WHERE well_id = OLD.well_id
	AND last_lab_date < OLD.last_lab_date
	ORDER BY last_lab_date DESC
	LIMIT 1;

	UPDATE well_tests 
	SET water_cut = last_available_water_cut, 
	mechanical_impurities = last_available_mechanical_impurities 
	WHERE well_id = OLD.well_id 
	AND well_test_date >= OLD.last_lab_date 
	AND (
		NOT EXISTS (
			SELECT 1 FROM laboratory_results as lr1 where lr1.last_lab_date > OLD.last_lab_date
		)
		OR well_test_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  OLD.last_lab_date )
	); 

	UPDATE daily_well_parameters
    SET water_cut = last_available_water_cut,
		mechanical_impurities = last_available_mechanical_impurities
		WHERE well_id = OLD.well_id 
		AND report_date >= OLD.last_lab_date
		AND (
			NOT EXISTS (
				SELECT 1 FROM laboratory_results as lr1 WHERE lr1.last_lab_date > OLD.last_lab_date
			)
			OR report_date < (SELECT MIN(lr2.last_lab_date) FROM laboratory_results as lr2 WHERE lr2.last_lab_date >  OLD.last_lab_date )
		);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ogpd`
--

DROP TABLE IF EXISTS `ogpd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ogpd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_ogpd` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ogpd`
--

LOCK TABLES `ogpd` WRITE;
/*!40000 ALTER TABLE `ogpd` DISABLE KEYS */;
INSERT INTO `ogpd` VALUES (1,'28 May');
/*!40000 ALTER TABLE `ogpd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `field_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_platform` (`name`,`field_id`),
  KEY `field_id` (`field_id`),
  CONSTRAINT `platforms_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `fields` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (9,'10',1),(10,'11',1),(11,'13',1),(12,'14',1),(13,'15',1),(14,'19',1),(1,'2',1),(2,'3',1),(3,'4',1),(4,'5',1),(5,'6',1),(6,'7',1),(7,'8',1),(8,'9',1);
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_methods`
--

DROP TABLE IF EXISTS `production_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_production_method` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_methods`
--

LOCK TABLES `production_methods` WRITE;
/*!40000 ALTER TABLE `production_methods` DISABLE KEYS */;
INSERT INTO `production_methods` VALUES (5,'Erlift'),(1,'Fontan'),(7,'MEDN'),(2,'Qazlift (boru arxası)'),(3,'Qazlift (həlqəvi fəza)'),(4,'Qazlift (mandrel)'),(6,'ŞDN'),(8,'Vintli');
/*!40000 ALTER TABLE `production_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_skins`
--

DROP TABLE IF EXISTS `production_skins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_skins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_production_skin` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_skins`
--

LOCK TABLES `production_skins` WRITE;
/*!40000 ALTER TABLE `production_skins` DISABLE KEYS */;
INSERT INTO `production_skins` VALUES (5,'Dəniz_Özülüdə_və_ya_Quruda_Yığım_Nəql_Sistemi'),(6,'İxrac_Sistemi'),(1,'Keçici_Fond_Guyuları'),(7,'OPEC_Tələblərinin_Yerinə_Yetirilməsi'),(2,'Quyu_Ağzında_Aparılan_Əməliyyatlar'),(3,'Tədqiqat_Cari_və_Əsaslı_Təmir_Məqsədilə_Quyulara_Müdaxilə '),(4,'Yeni_Quyular ');
/*!40000 ALTER TABLE `production_skins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_sub_skins`
--

DROP TABLE IF EXISTS `production_sub_skins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_sub_skins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `production_skin_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_production_sub_skin` (`name`,`production_skin_id`),
  KEY `production_skin_id` (`production_skin_id`),
  CONSTRAINT `production_sub_skins_ibfk_1` FOREIGN KEY (`production_skin_id`) REFERENCES `production_skins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_sub_skins`
--

LOCK TABLES `production_sub_skins` WRITE;
/*!40000 ALTER TABLE `production_sub_skins` DISABLE KEYS */;
INSERT INTO `production_sub_skins` VALUES (9,'Dəniz_Özülüdə_və_ya_Quruda_Hasilat_Sistemi_ilə_Bağlı_Əməliyyatlar',5),(14,'Hasilatın_Azaldılması',7),(6,'Hasilatın_Bərpası_Məqsədilə_Aparılan_Təmirlər',3),(1,'İdarə_Olunan_Keçici_Fond',1),(13,'İxrac_Boru_Kəmərinin_İşlək_Vəziyyətdə_Saxlanılması',6),(4,'Layalara_və_Quyulara_Tədqiqatlarla_Aparılan_Nəzarət',3),(12,'Neft_İxrac_Nasosu',6),(10,'Qazın_Sıxılması_Sistem_ilə_Bağlı_Əməliyyatlar',5),(8,'Quyu_Təyinatının_Dəyişdirilməsi',4),(2,'Quyuağzı_Bütövlülüyü',2),(3,'Quyudaxili_Avadanlıqların_Optimallaşdırılması',3),(11,'Suvurma_Sistemi_ilə_Bağlı_Əməliyyatlar',5),(7,'Yan_Lülə_Quyular_İstismar_və_Vurucu',4),(5,'Yatağın_İşlənməsinın_İdarə_Edilməsi_ilə_Bağlı_Fəaliyyətlər',3);
/*!40000 ALTER TABLE `production_sub_skins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_sub_skins_activities`
--

DROP TABLE IF EXISTS `production_sub_skins_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_sub_skins_activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `production_sub_skin_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_production_sub_skins_activity` (`name`,`production_sub_skin_id`),
  KEY `production_sub_skin_id` (`production_sub_skin_id`),
  CONSTRAINT `production_sub_skins_activities_ibfk_1` FOREIGN KEY (`production_sub_skin_id`) REFERENCES `production_sub_skins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_sub_skins_activities`
--

LOCK TABLES `production_sub_skins_activities` WRITE;
/*!40000 ALTER TABLE `production_sub_skins_activities` DISABLE KEYS */;
INSERT INTO `production_sub_skins_activities` VALUES (1,'1.1.1_Cari ilin yanvarın 1-də Bazadakı quyularda hasilatın azalma dərəcəsi',1),(2,'1.1.2_Quyuların il ərzində fəaliyyətsiz fonda keçməsi və təmirdən sonra işlək fonduna (bazaya) qaytarılması',1),(3,'2.2.1_Fontan armaturana daxil olan siyirtmələrin bütövlüyünün yoxlanılması',2),(4,'2.2.2_Quyudaxili Təhlükəsizlik Klapanın bütövlüyünün yoxlanılması',2),(5,'2.2.3_Quyuağzı avadanlığının bütövlüyü ilə bağlı digər işlər (istismar və suvurucu quyular üçün)',2),(6,'3.1.1_ŞDN quyularında quyudaxili avadanlıqların optimallaşdırılması  (Misal; nasosun dəyişdirilməsi)',3),(7,'3.1.2_MEDN quyularında quyudaxili avadanlıqların optimallaşdırılması  (Misal; nasosun dəyişdirilməsi)',3),(8,'3.1.3_Vintli nasos quyularında quyudaxili avadanlıqların optimallaşdırılması  (Misal; nasosun dəyişdirilməsi)',3),(9,'3.1.4_Qaz-lift quyularında qaz-maye qaldırıcının və avadanlıqların optimallaşdırılması (Misal; sıraları tənzimləmək, klapanlar tətbiqi, və.s)',3),(10,'3.1.5_Neft, qaz və qaz-kondensat fontan quyularında qaz-maye qaldırıcının optimallaşdırılması ((məsələn, NKB-ın uzunluğu və ölçüsü)',3),(11,'3.1.6_İstismar üsullarının dəyişdirilməsi',3),(12,'3.2.1_Quyudibi nümunələrin götürülməsi (neft, qaz, su, qum və s)',4),(13,'3.2.2_İstismar karotaji - PLT/ILT (istismar və vurucu quyularında axın və vurma profilinin çıxarılması, mayenin bir laydan digərinə axmasınln təyin edilməsi)',4),(14,'3.2.3_Quyudibi təzyiqin bərpa (istismar quyularda) və düşmə (vurucu quyularda) əyrilərin çıxarılması (lay təzyiqi, skin, kh əmsalının təyini) ',4),(15,'3.2.4_Akustik Noise və DAS cihazların tədbiqi (qumun gəlmə intervalının təyini, NKB-da və kəmərdə sızmaların təyini və s.)',4),(16,'3.2.5_Temperatur karotaji (sızmaların təyini,qaz amili yüksək olan intervalların təyini və s.) ',4),(17,'3.2.6_Doyumluluq karotajı (əlavə neftə douymuş zonaların təyini)',4),(18,'3.2.7_CBL Sement karotaji (sementin kefiyyıtini təyin edilməsi)',4),(19,'3.2.8_Çox ayaqlı Kaliper (kəmərin və qaldırıcı boruların vəziyyətini təyin edilməsi)',4),(20,'3.3.1_İstismarda olan horizontda yeni perforasiya intervalının əlavə edilməsi',5),(21,'3.3.2_İstismarda olan horizonta yeni horizontun (üst və ya alt) əlavə edilməsi - iki horizontun birgə istismarını həyata keçirilməsi',5),(22,'3.3.3_Su, qaz vurmada olan horizonta yeni horizontun (üst və ya alt) əlavəsi, vurmanın iki horizonta birgə həyata keçirilməsi (dəstək altında istasmar quyularında əlavə hasilat)',5),(23,'3.3.4_İstismar quyuların yuxarı və ya aşağı horizonta qaytarılması',5),(24,'3.3.5_Vurucu quyuların yuxarı və ya aşağı horizonta qaytarılması (dəstək altında olan istismar quyularında əlavə hasilat)',5),(25,'3.3.6_İstismar quyularında lay sularının təcrid olunma əməliyyatları (kimyəvi və mexaniki)',5),(26,'3.3.7_Quyu ətrafı zonaya təsir üsulları (hidravliki yarılma, turşu ilə işlənmə, termiki işlənmə və s)',5),(27,'3.4.1_Boruların sızması və digər hidravlik izolyasiya problemlərinin aradan qaldırılması',6),(28,'3.4.2_Mövcud tamamlanmış intervalın yenidən perforasiyası',6),(29,'3.4.3_Qum tıxacın yuyulması',6),(30,'3.4.4_Qumun gəlməsinin qarşısını almaq əməliyyatları (kimyəvi və mexaniki)',6),(31,'3.4.5_NKB-a və digər quydaxili avadanlıqlarda parafin və duz çöküntülərinə qarşı tədbirlər (mexaniki, istiliklə, kimyəvi və s.)',6),(32,'3.4.6_Qondarma qum süzgəclərin quraşdırılması',6),(33,'5.2.1_Yeni istismar və su vı ya qaz vurucu yan lülə quyuların qazılması (Əlavə olaraq bütün alt-sahələrdə olan əməliyyatlar daxil ola bilər)',7),(34,'5.3.1_Quyu təyinatının dəyişdirilməsi (misal: istismar quyunun su və ya qaz vurucuya kecirilməsi)\n(Əlavə olaraq bütün alt-sahələrdə olan əməliyyatlar daxil ola bilər)',8),(35,'5.3.3_İstismar quyuların istehsal növünün dəyişməsi (misal: neft quyusunu qaz quyusuna kecirməsi) (Əlavə olaraq bütün alt-sahələrdə olan əməliyyatlar daxil ola bilər)',8),(36,'6.1.1_Dəniz özülünün tam dayanması (planlaşdırılmış müddət ərzində)',9),(37,'6.1.2_Dəniz özülünün tam dayanması (planlaşdırılmışdan daha uzun müddət ərzində)',9),(38,'6.1.3_Hasilat sisteminin bir hissəsinin dayanması',9),(39,'6.1.4_Hasilat prosesi xəttinin dayanması',9),(40,'6.1.5_Hasilat prosesin dayanması',9),(41,'6.1.6_Fövqəladə dayanma',9),(42,'6.1.7_Sistemdəki limitlər: Əks təzyiqin qalxması (məs. sistemə əlavə qazın daxil olması), yerüstü avadanlıqlarda darboğazının aradan qaldırılmasıı: xəttlərdə təzyiqlərin aşağı salınması, əlavə xəttlərin çəkilməsi, gücləndirici nasosun dəyişdirilməsi və s',9),(43,'6.2.1_Qaz kompressorlarının nasazlığının bərpası',10),(44,'6.2.2_Qaz lift boru kəməri və axın xəttinin sızması, zədələnməsi, hidratın əmələ gəlməsi və s. problemlərin bərpası',10),(45,'6.2.3_Qaz vurma infrastrukturunun yenilənməsi, yeni kompressorların quraşdırılması, yeni xətlərin çəkilməsi və s',10),(46,'6.3.1_Suvurucu nasoslarının nasazlığının bərpası',11),(47,'6.3.2_Sistem axın xətlərinin sızması, zədələnməsi və s. səbəbiylə tam və ya qismən dayanma',11),(48,'6.3.3_Elektrik enerjisinin kəsilməsi',11),(49,'6.3.4_Suvurma infrastrukturunun təkmilləşdirilməsi, yeni nasosların quraşdırılması, yeni xətlərin çəkilməsi və s.',11),(50,'7.1.1_Mexanik, elektrik, idarəetmə sistemi və s. nasazlıqlar, insan səhvləri, yüksək temperatur və əks təzyiqdən bərpa',12),(51,'7.2.1_Ərsinləmə əməliyyati (parafin, su, qum təmizləmə)',13),(52,'7.2.2_Sızma/zədərin aşkarlanması və bərpası',13),(53,'8.1.1_Hədəfə nail olması üçün bir qrup istismar quyuların hasilatının azalması',14);
/*!40000 ALTER TABLE `production_sub_skins_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_well_stock_sub_categories`
--

DROP TABLE IF EXISTS `production_well_stock_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_well_stock_sub_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `production_well_stock_sub_category` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_well_stock_sub_categories`
--

LOCK TABLES `production_well_stock_sub_categories` WRITE;
/*!40000 ALTER TABLE `production_well_stock_sub_categories` DISABLE KEYS */;
INSERT INTO `production_well_stock_sub_categories` VALUES (1,'Fəaliyyətdə (məhsul verən)'),(2,'Fəaliyyətdə (təmir gözləyən)'),(3,'Fəaliyyətsiz'),(4,'Qazmadan mənimsəmədə ');
/*!40000 ALTER TABLE `production_well_stock_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_dates`
--

DROP TABLE IF EXISTS `report_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_dates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_report_date` (`report_date`)
) ENGINE=InnoDB AUTO_INCREMENT=4096 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_dates`
--

LOCK TABLES `report_dates` WRITE;
/*!40000 ALTER TABLE `report_dates` DISABLE KEYS */;
INSERT INTO `report_dates` VALUES (1,'2024-01-01'),(2,'2024-01-02'),(3,'2024-01-03'),(4,'2024-01-04'),(5,'2024-01-05'),(6,'2024-01-06'),(7,'2024-01-07'),(8,'2024-01-08'),(9,'2024-01-09'),(10,'2024-01-10'),(11,'2024-01-11'),(12,'2024-01-12'),(13,'2024-01-13'),(14,'2024-01-14'),(15,'2024-01-15'),(16,'2024-01-16'),(17,'2024-01-17'),(18,'2024-01-18'),(19,'2024-01-19'),(20,'2024-01-20'),(21,'2024-01-21'),(22,'2024-01-22'),(23,'2024-01-23'),(24,'2024-01-24'),(25,'2024-01-25'),(26,'2024-01-26'),(27,'2024-01-27'),(28,'2024-01-28'),(29,'2024-01-29'),(30,'2024-01-30'),(31,'2024-01-31'),(32,'2024-02-01'),(33,'2024-02-02'),(34,'2024-02-03'),(35,'2024-02-04'),(36,'2024-02-05'),(37,'2024-02-06'),(38,'2024-02-07'),(39,'2024-02-08'),(40,'2024-02-09'),(41,'2024-02-10'),(42,'2024-02-11'),(43,'2024-02-12'),(44,'2024-02-13'),(45,'2024-02-14'),(46,'2024-02-15'),(47,'2024-02-16'),(48,'2024-02-17'),(49,'2024-02-18'),(50,'2024-02-19'),(51,'2024-02-20'),(52,'2024-02-21'),(53,'2024-02-22'),(54,'2024-02-23'),(55,'2024-02-24'),(56,'2024-02-25'),(57,'2024-02-26'),(58,'2024-02-27'),(59,'2024-02-28'),(60,'2024-02-29'),(61,'2024-03-01'),(62,'2024-03-02'),(63,'2024-03-03'),(64,'2024-03-04'),(65,'2024-03-05'),(66,'2024-03-06'),(67,'2024-03-07'),(68,'2024-03-08'),(69,'2024-03-09'),(70,'2024-03-10'),(71,'2024-03-11'),(72,'2024-03-12'),(73,'2024-03-13'),(74,'2024-03-14'),(75,'2024-03-15'),(76,'2024-03-16'),(77,'2024-03-17'),(78,'2024-03-18'),(79,'2024-03-19'),(80,'2024-03-20'),(81,'2024-03-21'),(82,'2024-03-22'),(83,'2024-03-23'),(84,'2024-03-24'),(85,'2024-03-25'),(86,'2024-03-26'),(87,'2024-03-27'),(88,'2024-03-28'),(89,'2024-03-29'),(90,'2024-03-30'),(91,'2024-03-31'),(92,'2024-04-01'),(93,'2024-04-02'),(94,'2024-04-03'),(95,'2024-04-04'),(96,'2024-04-05'),(97,'2024-04-06'),(98,'2024-04-07'),(99,'2024-04-08'),(100,'2024-04-09'),(101,'2024-04-10'),(102,'2024-04-11'),(103,'2024-04-12'),(104,'2024-04-13'),(105,'2024-04-14'),(106,'2024-04-15'),(107,'2024-04-16'),(108,'2024-04-17'),(109,'2024-04-18'),(110,'2024-04-19'),(111,'2024-04-20'),(112,'2024-04-21'),(113,'2024-04-22'),(114,'2024-04-23'),(115,'2024-04-24'),(116,'2024-04-25'),(117,'2024-04-26'),(118,'2024-04-27'),(119,'2024-04-28'),(120,'2024-04-29'),(121,'2024-04-30'),(122,'2024-05-01'),(123,'2024-05-02'),(124,'2024-05-03'),(125,'2024-05-04'),(126,'2024-05-05'),(127,'2024-05-06'),(128,'2024-05-07'),(129,'2024-05-08'),(130,'2024-05-09'),(131,'2024-05-10'),(132,'2024-05-11'),(133,'2024-05-12'),(134,'2024-05-13'),(135,'2024-05-14'),(136,'2024-05-15'),(137,'2024-05-16'),(138,'2024-05-17'),(139,'2024-05-18'),(140,'2024-05-19'),(141,'2024-05-20'),(142,'2024-05-21'),(143,'2024-05-22'),(144,'2024-05-23'),(145,'2024-05-24'),(146,'2024-05-25'),(147,'2024-05-26'),(148,'2024-05-27'),(149,'2024-05-28'),(150,'2024-05-29'),(151,'2024-05-30'),(152,'2024-05-31'),(153,'2024-06-01'),(154,'2024-06-02'),(155,'2024-06-03'),(156,'2024-06-04'),(157,'2024-06-05'),(158,'2024-06-06'),(159,'2024-06-07'),(160,'2024-06-08'),(161,'2024-06-09'),(162,'2024-06-10'),(163,'2024-06-11'),(164,'2024-06-12'),(165,'2024-06-13'),(166,'2024-06-14'),(167,'2024-06-15'),(168,'2024-06-16'),(169,'2024-06-17'),(170,'2024-06-18'),(171,'2024-06-19'),(172,'2024-06-20'),(173,'2024-06-21'),(174,'2024-06-22'),(175,'2024-06-23'),(176,'2024-06-24'),(177,'2024-06-25'),(178,'2024-06-26'),(179,'2024-06-27'),(180,'2024-06-28'),(181,'2024-06-29'),(182,'2024-06-30'),(183,'2024-07-01'),(184,'2024-07-02'),(185,'2024-07-03'),(186,'2024-07-04'),(187,'2024-07-05'),(188,'2024-07-06'),(189,'2024-07-07'),(190,'2024-07-08'),(191,'2024-07-09'),(192,'2024-07-10'),(193,'2024-07-11'),(194,'2024-07-12'),(195,'2024-07-13'),(196,'2024-07-14'),(197,'2024-07-15'),(198,'2024-07-16'),(199,'2024-07-17'),(200,'2024-07-18'),(201,'2024-07-19'),(202,'2024-07-20'),(203,'2024-07-21'),(204,'2024-07-22'),(205,'2024-07-23'),(206,'2024-07-24'),(207,'2024-07-25'),(208,'2024-07-26'),(209,'2024-07-27'),(210,'2024-07-28'),(211,'2024-07-29'),(212,'2024-07-30'),(213,'2024-07-31'),(214,'2024-08-01'),(215,'2024-08-02'),(216,'2024-08-03'),(217,'2024-08-04'),(218,'2024-08-05'),(219,'2024-08-06'),(220,'2024-08-07'),(221,'2024-08-08'),(222,'2024-08-09'),(223,'2024-08-10'),(224,'2024-08-11'),(225,'2024-08-12'),(226,'2024-08-13'),(227,'2024-08-14'),(228,'2024-08-15'),(229,'2024-08-16'),(230,'2024-08-17'),(231,'2024-08-18'),(232,'2024-08-19'),(233,'2024-08-20'),(234,'2024-08-21'),(235,'2024-08-22'),(236,'2024-08-23'),(237,'2024-08-24'),(238,'2024-08-25'),(239,'2024-08-26'),(240,'2024-08-27'),(241,'2024-08-28'),(242,'2024-08-29'),(243,'2024-08-30'),(244,'2024-08-31'),(245,'2024-09-01'),(246,'2024-09-02'),(247,'2024-09-03'),(248,'2024-09-04'),(249,'2024-09-05'),(250,'2024-09-06'),(251,'2024-09-07'),(252,'2024-09-08'),(253,'2024-09-09'),(254,'2024-09-10'),(255,'2024-09-11'),(256,'2024-09-12'),(257,'2024-09-13'),(258,'2024-09-14'),(259,'2024-09-15'),(260,'2024-09-16'),(261,'2024-09-17'),(262,'2024-09-18'),(263,'2024-09-19'),(264,'2024-09-20'),(265,'2024-09-21'),(266,'2024-09-22'),(267,'2024-09-23'),(268,'2024-09-24'),(269,'2024-09-25'),(270,'2024-09-26'),(271,'2024-09-27'),(272,'2024-09-28'),(273,'2024-09-29'),(274,'2024-09-30'),(275,'2024-10-01'),(276,'2024-10-02'),(277,'2024-10-03'),(278,'2024-10-04'),(279,'2024-10-05'),(280,'2024-10-06'),(281,'2024-10-07'),(282,'2024-10-08'),(283,'2024-10-09'),(284,'2024-10-10'),(285,'2024-10-11'),(286,'2024-10-12'),(287,'2024-10-13'),(288,'2024-10-14'),(289,'2024-10-15'),(290,'2024-10-16'),(291,'2024-10-17'),(292,'2024-10-18'),(293,'2024-10-19'),(294,'2024-10-20'),(295,'2024-10-21'),(296,'2024-10-22'),(297,'2024-10-23'),(298,'2024-10-24'),(299,'2024-10-25'),(300,'2024-10-26'),(301,'2024-10-27'),(302,'2024-10-28'),(303,'2024-10-29'),(304,'2024-10-30'),(305,'2024-10-31'),(306,'2024-11-01'),(307,'2024-11-02'),(308,'2024-11-03'),(309,'2024-11-04'),(310,'2024-11-05'),(311,'2024-11-06'),(312,'2024-11-07'),(313,'2024-11-08'),(314,'2024-11-09'),(315,'2024-11-10'),(316,'2024-11-11'),(317,'2024-11-12'),(318,'2024-11-13'),(319,'2024-11-14'),(320,'2024-11-15'),(321,'2024-11-16'),(322,'2024-11-17'),(323,'2024-11-18'),(324,'2024-11-19'),(325,'2024-11-20'),(326,'2024-11-21'),(327,'2024-11-22'),(328,'2024-11-23'),(329,'2024-11-24'),(330,'2024-11-25'),(331,'2024-11-26'),(332,'2024-11-27'),(333,'2024-11-28'),(334,'2024-11-29'),(335,'2024-11-30'),(336,'2024-12-01'),(337,'2024-12-02'),(338,'2024-12-03'),(339,'2024-12-04'),(340,'2024-12-05'),(341,'2024-12-06'),(342,'2024-12-07'),(343,'2024-12-08'),(344,'2024-12-09'),(345,'2024-12-10'),(346,'2024-12-11'),(347,'2024-12-12'),(348,'2024-12-13'),(349,'2024-12-14'),(350,'2024-12-15'),(351,'2024-12-16'),(352,'2024-12-17'),(353,'2024-12-18'),(354,'2024-12-19'),(355,'2024-12-20'),(356,'2024-12-21'),(357,'2024-12-22'),(358,'2024-12-23'),(359,'2024-12-24'),(360,'2024-12-25'),(361,'2024-12-26'),(362,'2024-12-27'),(363,'2024-12-28'),(364,'2024-12-29'),(365,'2024-12-30'),(366,'2024-12-31'),(367,'2025-01-01'),(368,'2025-01-02'),(369,'2025-01-03'),(370,'2025-01-04'),(371,'2025-01-05'),(372,'2025-01-06'),(373,'2025-01-07'),(374,'2025-01-08'),(375,'2025-01-09'),(376,'2025-01-10'),(377,'2025-01-11'),(378,'2025-01-12'),(379,'2025-01-13'),(380,'2025-01-14'),(381,'2025-01-15'),(382,'2025-01-16'),(383,'2025-01-17'),(384,'2025-01-18'),(385,'2025-01-19'),(386,'2025-01-20'),(387,'2025-01-21'),(388,'2025-01-22'),(389,'2025-01-23'),(390,'2025-01-24'),(391,'2025-01-25'),(392,'2025-01-26'),(393,'2025-01-27'),(394,'2025-01-28'),(395,'2025-01-29'),(396,'2025-01-30'),(397,'2025-01-31'),(398,'2025-02-01'),(399,'2025-02-02'),(400,'2025-02-03'),(401,'2025-02-04'),(402,'2025-02-05'),(403,'2025-02-06'),(404,'2025-02-07'),(405,'2025-02-08'),(406,'2025-02-09'),(407,'2025-02-10'),(408,'2025-02-11'),(409,'2025-02-12'),(410,'2025-02-13'),(411,'2025-02-14'),(412,'2025-02-15'),(413,'2025-02-16'),(414,'2025-02-17'),(415,'2025-02-18'),(416,'2025-02-19'),(417,'2025-02-20'),(418,'2025-02-21'),(419,'2025-02-22'),(420,'2025-02-23'),(421,'2025-02-24'),(422,'2025-02-25'),(423,'2025-02-26'),(424,'2025-02-27'),(425,'2025-02-28'),(426,'2025-03-01'),(427,'2025-03-02'),(428,'2025-03-03'),(429,'2025-03-04'),(430,'2025-03-05'),(431,'2025-03-06'),(432,'2025-03-07'),(433,'2025-03-08'),(434,'2025-03-09'),(435,'2025-03-10'),(436,'2025-03-11'),(437,'2025-03-12'),(438,'2025-03-13'),(439,'2025-03-14'),(440,'2025-03-15'),(441,'2025-03-16'),(442,'2025-03-17'),(443,'2025-03-18'),(444,'2025-03-19'),(445,'2025-03-20'),(446,'2025-03-21'),(447,'2025-03-22'),(448,'2025-03-23'),(449,'2025-03-24'),(450,'2025-03-25'),(451,'2025-03-26'),(452,'2025-03-27'),(453,'2025-03-28'),(454,'2025-03-29'),(455,'2025-03-30'),(456,'2025-03-31'),(457,'2025-04-01'),(458,'2025-04-02'),(459,'2025-04-03'),(460,'2025-04-04'),(461,'2025-04-05'),(462,'2025-04-06'),(463,'2025-04-07'),(464,'2025-04-08'),(465,'2025-04-09'),(466,'2025-04-10'),(467,'2025-04-11'),(468,'2025-04-12'),(469,'2025-04-13'),(470,'2025-04-14'),(471,'2025-04-15'),(472,'2025-04-16'),(473,'2025-04-17'),(474,'2025-04-18'),(475,'2025-04-19'),(476,'2025-04-20'),(477,'2025-04-21'),(478,'2025-04-22'),(479,'2025-04-23'),(480,'2025-04-24'),(481,'2025-04-25'),(482,'2025-04-26'),(483,'2025-04-27'),(484,'2025-04-28'),(485,'2025-04-29'),(486,'2025-04-30'),(487,'2025-05-01'),(488,'2025-05-02'),(489,'2025-05-03'),(490,'2025-05-04'),(491,'2025-05-05'),(492,'2025-05-06'),(493,'2025-05-07'),(494,'2025-05-08'),(495,'2025-05-09'),(496,'2025-05-10'),(497,'2025-05-11'),(498,'2025-05-12'),(499,'2025-05-13'),(500,'2025-05-14'),(501,'2025-05-15'),(502,'2025-05-16'),(503,'2025-05-17'),(504,'2025-05-18'),(505,'2025-05-19'),(506,'2025-05-20'),(507,'2025-05-21'),(508,'2025-05-22'),(509,'2025-05-23'),(510,'2025-05-24'),(511,'2025-05-25'),(512,'2025-05-26'),(513,'2025-05-27'),(514,'2025-05-28'),(515,'2025-05-29'),(516,'2025-05-30'),(517,'2025-05-31'),(518,'2025-06-01'),(519,'2025-06-02'),(520,'2025-06-03'),(521,'2025-06-04'),(522,'2025-06-05'),(523,'2025-06-06'),(524,'2025-06-07'),(525,'2025-06-08'),(526,'2025-06-09'),(527,'2025-06-10'),(528,'2025-06-11'),(529,'2025-06-12'),(530,'2025-06-13'),(531,'2025-06-14'),(532,'2025-06-15'),(533,'2025-06-16'),(534,'2025-06-17'),(535,'2025-06-18'),(536,'2025-06-19'),(537,'2025-06-20'),(538,'2025-06-21'),(539,'2025-06-22'),(540,'2025-06-23'),(541,'2025-06-24'),(542,'2025-06-25'),(543,'2025-06-26'),(544,'2025-06-27'),(545,'2025-06-28'),(546,'2025-06-29'),(547,'2025-06-30'),(548,'2025-07-01'),(549,'2025-07-02'),(550,'2025-07-03'),(551,'2025-07-04'),(552,'2025-07-05'),(553,'2025-07-06'),(554,'2025-07-07'),(555,'2025-07-08'),(556,'2025-07-09'),(557,'2025-07-10'),(558,'2025-07-11'),(559,'2025-07-12'),(560,'2025-07-13'),(561,'2025-07-14'),(562,'2025-07-15'),(563,'2025-07-16'),(564,'2025-07-17'),(565,'2025-07-18'),(566,'2025-07-19'),(567,'2025-07-20'),(568,'2025-07-21'),(569,'2025-07-22'),(570,'2025-07-23'),(571,'2025-07-24'),(572,'2025-07-25'),(573,'2025-07-26'),(574,'2025-07-27'),(575,'2025-07-28'),(576,'2025-07-29'),(577,'2025-07-30'),(578,'2025-07-31'),(579,'2025-08-01'),(580,'2025-08-02'),(581,'2025-08-03'),(582,'2025-08-04'),(583,'2025-08-05'),(584,'2025-08-06'),(585,'2025-08-07'),(586,'2025-08-08'),(587,'2025-08-09'),(588,'2025-08-10'),(589,'2025-08-11'),(590,'2025-08-12'),(591,'2025-08-13'),(592,'2025-08-14'),(593,'2025-08-15'),(594,'2025-08-16'),(595,'2025-08-17'),(596,'2025-08-18'),(597,'2025-08-19'),(598,'2025-08-20'),(599,'2025-08-21'),(600,'2025-08-22'),(601,'2025-08-23'),(602,'2025-08-24'),(603,'2025-08-25'),(604,'2025-08-26'),(605,'2025-08-27'),(606,'2025-08-28'),(607,'2025-08-29'),(608,'2025-08-30'),(609,'2025-08-31'),(610,'2025-09-01'),(611,'2025-09-02'),(612,'2025-09-03'),(613,'2025-09-04'),(614,'2025-09-05'),(615,'2025-09-06'),(616,'2025-09-07'),(617,'2025-09-08'),(618,'2025-09-09'),(619,'2025-09-10'),(620,'2025-09-11'),(621,'2025-09-12'),(622,'2025-09-13'),(623,'2025-09-14'),(624,'2025-09-15'),(625,'2025-09-16'),(626,'2025-09-17'),(627,'2025-09-18'),(628,'2025-09-19'),(629,'2025-09-20'),(630,'2025-09-21'),(631,'2025-09-22'),(632,'2025-09-23'),(633,'2025-09-24'),(634,'2025-09-25'),(635,'2025-09-26'),(636,'2025-09-27'),(637,'2025-09-28'),(638,'2025-09-29'),(639,'2025-09-30'),(640,'2025-10-01'),(641,'2025-10-02'),(642,'2025-10-03'),(643,'2025-10-04'),(644,'2025-10-05'),(645,'2025-10-06'),(646,'2025-10-07'),(647,'2025-10-08'),(648,'2025-10-09'),(649,'2025-10-10'),(650,'2025-10-11'),(651,'2025-10-12'),(652,'2025-10-13'),(653,'2025-10-14'),(654,'2025-10-15'),(655,'2025-10-16'),(656,'2025-10-17'),(657,'2025-10-18'),(658,'2025-10-19'),(659,'2025-10-20'),(660,'2025-10-21'),(661,'2025-10-22'),(662,'2025-10-23'),(663,'2025-10-24'),(664,'2025-10-25'),(665,'2025-10-26'),(666,'2025-10-27'),(667,'2025-10-28'),(668,'2025-10-29'),(669,'2025-10-30'),(670,'2025-10-31'),(671,'2025-11-01'),(672,'2025-11-02'),(673,'2025-11-03'),(674,'2025-11-04'),(675,'2025-11-05'),(676,'2025-11-06'),(677,'2025-11-07'),(678,'2025-11-08'),(679,'2025-11-09'),(680,'2025-11-10'),(681,'2025-11-11'),(682,'2025-11-12'),(683,'2025-11-13'),(684,'2025-11-14'),(685,'2025-11-15'),(686,'2025-11-16'),(687,'2025-11-17'),(688,'2025-11-18'),(689,'2025-11-19'),(690,'2025-11-20'),(691,'2025-11-21'),(692,'2025-11-22'),(693,'2025-11-23'),(694,'2025-11-24'),(695,'2025-11-25'),(696,'2025-11-26'),(697,'2025-11-27'),(698,'2025-11-28'),(699,'2025-11-29'),(700,'2025-11-30'),(701,'2025-12-01'),(702,'2025-12-02'),(703,'2025-12-03'),(704,'2025-12-04'),(705,'2025-12-05'),(706,'2025-12-06'),(707,'2025-12-07'),(708,'2025-12-08'),(709,'2025-12-09'),(710,'2025-12-10'),(711,'2025-12-11'),(712,'2025-12-12'),(713,'2025-12-13'),(714,'2025-12-14'),(715,'2025-12-15'),(716,'2025-12-16'),(717,'2025-12-17'),(718,'2025-12-18'),(719,'2025-12-19'),(720,'2025-12-20'),(721,'2025-12-21'),(722,'2025-12-22'),(723,'2025-12-23'),(724,'2025-12-24'),(725,'2025-12-25'),(726,'2025-12-26'),(727,'2025-12-27'),(728,'2025-12-28'),(729,'2025-12-29'),(730,'2025-12-30'),(731,'2025-12-31'),(732,'2026-01-01'),(733,'2026-01-02'),(734,'2026-01-03'),(735,'2026-01-04'),(736,'2026-01-05'),(737,'2026-01-06'),(738,'2026-01-07'),(739,'2026-01-08'),(740,'2026-01-09'),(741,'2026-01-10'),(742,'2026-01-11'),(743,'2026-01-12'),(744,'2026-01-13'),(745,'2026-01-14'),(746,'2026-01-15'),(747,'2026-01-16'),(748,'2026-01-17'),(749,'2026-01-18'),(750,'2026-01-19'),(751,'2026-01-20'),(752,'2026-01-21'),(753,'2026-01-22'),(754,'2026-01-23'),(755,'2026-01-24'),(756,'2026-01-25'),(757,'2026-01-26'),(758,'2026-01-27'),(759,'2026-01-28'),(760,'2026-01-29'),(761,'2026-01-30'),(762,'2026-01-31'),(763,'2026-02-01'),(764,'2026-02-02'),(765,'2026-02-03'),(766,'2026-02-04'),(767,'2026-02-05'),(768,'2026-02-06'),(769,'2026-02-07'),(770,'2026-02-08'),(771,'2026-02-09'),(772,'2026-02-10'),(773,'2026-02-11'),(774,'2026-02-12'),(775,'2026-02-13'),(776,'2026-02-14'),(777,'2026-02-15'),(778,'2026-02-16'),(779,'2026-02-17'),(780,'2026-02-18'),(781,'2026-02-19'),(782,'2026-02-20'),(783,'2026-02-21'),(784,'2026-02-22'),(785,'2026-02-23'),(786,'2026-02-24'),(787,'2026-02-25'),(788,'2026-02-26'),(789,'2026-02-27'),(790,'2026-02-28'),(791,'2026-03-01'),(792,'2026-03-02'),(793,'2026-03-03'),(794,'2026-03-04'),(795,'2026-03-05'),(796,'2026-03-06'),(797,'2026-03-07'),(798,'2026-03-08'),(799,'2026-03-09'),(800,'2026-03-10'),(801,'2026-03-11'),(802,'2026-03-12'),(803,'2026-03-13'),(804,'2026-03-14'),(805,'2026-03-15'),(806,'2026-03-16'),(807,'2026-03-17'),(808,'2026-03-18'),(809,'2026-03-19'),(810,'2026-03-20'),(811,'2026-03-21'),(812,'2026-03-22'),(813,'2026-03-23'),(814,'2026-03-24'),(815,'2026-03-25'),(816,'2026-03-26'),(817,'2026-03-27'),(818,'2026-03-28'),(819,'2026-03-29'),(820,'2026-03-30'),(821,'2026-03-31'),(822,'2026-04-01'),(823,'2026-04-02'),(824,'2026-04-03'),(825,'2026-04-04'),(826,'2026-04-05'),(827,'2026-04-06'),(828,'2026-04-07'),(829,'2026-04-08'),(830,'2026-04-09'),(831,'2026-04-10'),(832,'2026-04-11'),(833,'2026-04-12'),(834,'2026-04-13'),(835,'2026-04-14'),(836,'2026-04-15'),(837,'2026-04-16'),(838,'2026-04-17'),(839,'2026-04-18'),(840,'2026-04-19'),(841,'2026-04-20'),(842,'2026-04-21'),(843,'2026-04-22'),(844,'2026-04-23'),(845,'2026-04-24'),(846,'2026-04-25'),(847,'2026-04-26'),(848,'2026-04-27'),(849,'2026-04-28'),(850,'2026-04-29'),(851,'2026-04-30'),(852,'2026-05-01'),(853,'2026-05-02'),(854,'2026-05-03'),(855,'2026-05-04'),(856,'2026-05-05'),(857,'2026-05-06'),(858,'2026-05-07'),(859,'2026-05-08'),(860,'2026-05-09'),(861,'2026-05-10'),(862,'2026-05-11'),(863,'2026-05-12'),(864,'2026-05-13'),(865,'2026-05-14'),(866,'2026-05-15'),(867,'2026-05-16'),(868,'2026-05-17'),(869,'2026-05-18'),(870,'2026-05-19'),(871,'2026-05-20'),(872,'2026-05-21'),(873,'2026-05-22'),(874,'2026-05-23'),(875,'2026-05-24'),(876,'2026-05-25'),(877,'2026-05-26'),(878,'2026-05-27'),(879,'2026-05-28'),(880,'2026-05-29'),(881,'2026-05-30'),(882,'2026-05-31'),(883,'2026-06-01'),(884,'2026-06-02'),(885,'2026-06-03'),(886,'2026-06-04'),(887,'2026-06-05'),(888,'2026-06-06'),(889,'2026-06-07'),(890,'2026-06-08'),(891,'2026-06-09'),(892,'2026-06-10'),(893,'2026-06-11'),(894,'2026-06-12'),(895,'2026-06-13'),(896,'2026-06-14'),(897,'2026-06-15'),(898,'2026-06-16'),(899,'2026-06-17'),(900,'2026-06-18'),(901,'2026-06-19'),(902,'2026-06-20'),(903,'2026-06-21'),(904,'2026-06-22'),(905,'2026-06-23'),(906,'2026-06-24'),(907,'2026-06-25'),(908,'2026-06-26'),(909,'2026-06-27'),(910,'2026-06-28'),(911,'2026-06-29'),(912,'2026-06-30'),(913,'2026-07-01'),(914,'2026-07-02'),(915,'2026-07-03'),(916,'2026-07-04'),(917,'2026-07-05'),(918,'2026-07-06'),(919,'2026-07-07'),(920,'2026-07-08'),(921,'2026-07-09'),(922,'2026-07-10'),(923,'2026-07-11'),(924,'2026-07-12'),(925,'2026-07-13'),(926,'2026-07-14'),(927,'2026-07-15'),(928,'2026-07-16'),(929,'2026-07-17'),(930,'2026-07-18'),(931,'2026-07-19'),(932,'2026-07-20'),(933,'2026-07-21'),(934,'2026-07-22'),(935,'2026-07-23'),(936,'2026-07-24'),(937,'2026-07-25'),(938,'2026-07-26'),(939,'2026-07-27'),(940,'2026-07-28'),(941,'2026-07-29'),(942,'2026-07-30'),(943,'2026-07-31'),(944,'2026-08-01'),(945,'2026-08-02'),(946,'2026-08-03'),(947,'2026-08-04'),(948,'2026-08-05'),(949,'2026-08-06'),(950,'2026-08-07'),(951,'2026-08-08'),(952,'2026-08-09'),(953,'2026-08-10'),(954,'2026-08-11'),(955,'2026-08-12'),(956,'2026-08-13'),(957,'2026-08-14'),(958,'2026-08-15'),(959,'2026-08-16'),(960,'2026-08-17'),(961,'2026-08-18'),(962,'2026-08-19'),(963,'2026-08-20'),(964,'2026-08-21'),(965,'2026-08-22'),(966,'2026-08-23'),(967,'2026-08-24'),(968,'2026-08-25'),(969,'2026-08-26'),(970,'2026-08-27'),(971,'2026-08-28'),(972,'2026-08-29'),(973,'2026-08-30'),(974,'2026-08-31'),(975,'2026-09-01'),(976,'2026-09-02'),(977,'2026-09-03'),(978,'2026-09-04'),(979,'2026-09-05'),(980,'2026-09-06'),(981,'2026-09-07'),(982,'2026-09-08'),(983,'2026-09-09'),(984,'2026-09-10'),(985,'2026-09-11'),(986,'2026-09-12'),(987,'2026-09-13'),(988,'2026-09-14'),(989,'2026-09-15'),(990,'2026-09-16'),(991,'2026-09-17'),(992,'2026-09-18'),(993,'2026-09-19'),(994,'2026-09-20'),(995,'2026-09-21'),(996,'2026-09-22'),(997,'2026-09-23'),(998,'2026-09-24'),(999,'2026-09-25'),(1000,'2026-09-26'),(1001,'2026-09-27'),(1002,'2026-09-28'),(1003,'2026-09-29'),(1004,'2026-09-30'),(1005,'2026-10-01'),(1006,'2026-10-02'),(1007,'2026-10-03'),(1008,'2026-10-04'),(1009,'2026-10-05'),(1010,'2026-10-06'),(1011,'2026-10-07'),(1012,'2026-10-08'),(1013,'2026-10-09'),(1014,'2026-10-10'),(1015,'2026-10-11'),(1016,'2026-10-12'),(1017,'2026-10-13'),(1018,'2026-10-14'),(1019,'2026-10-15'),(1020,'2026-10-16'),(1021,'2026-10-17'),(1022,'2026-10-18'),(1023,'2026-10-19'),(1024,'2026-10-20'),(1025,'2026-10-21'),(1026,'2026-10-22'),(1027,'2026-10-23'),(1028,'2026-10-24'),(1029,'2026-10-25'),(1030,'2026-10-26'),(1031,'2026-10-27'),(1032,'2026-10-28'),(1033,'2026-10-29'),(1034,'2026-10-30'),(1035,'2026-10-31'),(1036,'2026-11-01'),(1037,'2026-11-02'),(1038,'2026-11-03'),(1039,'2026-11-04'),(1040,'2026-11-05'),(1041,'2026-11-06'),(1042,'2026-11-07'),(1043,'2026-11-08'),(1044,'2026-11-09'),(1045,'2026-11-10'),(1046,'2026-11-11'),(1047,'2026-11-12'),(1048,'2026-11-13'),(1049,'2026-11-14'),(1050,'2026-11-15'),(1051,'2026-11-16'),(1052,'2026-11-17'),(1053,'2026-11-18'),(1054,'2026-11-19'),(1055,'2026-11-20'),(1056,'2026-11-21'),(1057,'2026-11-22'),(1058,'2026-11-23'),(1059,'2026-11-24'),(1060,'2026-11-25'),(1061,'2026-11-26'),(1062,'2026-11-27'),(1063,'2026-11-28'),(1064,'2026-11-29'),(1065,'2026-11-30'),(1066,'2026-12-01'),(1067,'2026-12-02'),(1068,'2026-12-03'),(1069,'2026-12-04'),(1070,'2026-12-05'),(1071,'2026-12-06'),(1072,'2026-12-07'),(1073,'2026-12-08'),(1074,'2026-12-09'),(1075,'2026-12-10'),(1076,'2026-12-11'),(1077,'2026-12-12'),(1078,'2026-12-13'),(1079,'2026-12-14'),(1080,'2026-12-15'),(1081,'2026-12-16'),(1082,'2026-12-17'),(1083,'2026-12-18'),(1084,'2026-12-19'),(1085,'2026-12-20'),(1086,'2026-12-21'),(1087,'2026-12-22'),(1088,'2026-12-23'),(1089,'2026-12-24'),(1090,'2026-12-25'),(1091,'2026-12-26'),(1092,'2026-12-27'),(1093,'2026-12-28'),(1094,'2026-12-29'),(1095,'2026-12-30'),(1096,'2026-12-31'),(1097,'2027-01-01'),(1098,'2027-01-02'),(1099,'2027-01-03'),(1100,'2027-01-04'),(1101,'2027-01-05'),(1102,'2027-01-06'),(1103,'2027-01-07'),(1104,'2027-01-08'),(1105,'2027-01-09'),(1106,'2027-01-10'),(1107,'2027-01-11'),(1108,'2027-01-12'),(1109,'2027-01-13'),(1110,'2027-01-14'),(1111,'2027-01-15'),(1112,'2027-01-16'),(1113,'2027-01-17'),(1114,'2027-01-18'),(1115,'2027-01-19'),(1116,'2027-01-20'),(1117,'2027-01-21'),(1118,'2027-01-22'),(1119,'2027-01-23'),(1120,'2027-01-24'),(1121,'2027-01-25'),(1122,'2027-01-26'),(1123,'2027-01-27'),(1124,'2027-01-28'),(1125,'2027-01-29'),(1126,'2027-01-30'),(1127,'2027-01-31'),(1128,'2027-02-01'),(1129,'2027-02-02'),(1130,'2027-02-03'),(1131,'2027-02-04'),(1132,'2027-02-05'),(1133,'2027-02-06'),(1134,'2027-02-07'),(1135,'2027-02-08'),(1136,'2027-02-09'),(1137,'2027-02-10'),(1138,'2027-02-11'),(1139,'2027-02-12'),(1140,'2027-02-13'),(1141,'2027-02-14'),(1142,'2027-02-15'),(1143,'2027-02-16'),(1144,'2027-02-17'),(1145,'2027-02-18'),(1146,'2027-02-19'),(1147,'2027-02-20'),(1148,'2027-02-21'),(1149,'2027-02-22'),(1150,'2027-02-23'),(1151,'2027-02-24'),(1152,'2027-02-25'),(1153,'2027-02-26'),(1154,'2027-02-27'),(1155,'2027-02-28'),(1156,'2027-03-01'),(1157,'2027-03-02'),(1158,'2027-03-03'),(1159,'2027-03-04'),(1160,'2027-03-05'),(1161,'2027-03-06'),(1162,'2027-03-07'),(1163,'2027-03-08'),(1164,'2027-03-09'),(1165,'2027-03-10'),(1166,'2027-03-11'),(1167,'2027-03-12'),(1168,'2027-03-13'),(1169,'2027-03-14'),(1170,'2027-03-15'),(1171,'2027-03-16'),(1172,'2027-03-17'),(1173,'2027-03-18'),(1174,'2027-03-19'),(1175,'2027-03-20'),(1176,'2027-03-21'),(1177,'2027-03-22'),(1178,'2027-03-23'),(1179,'2027-03-24'),(1180,'2027-03-25'),(1181,'2027-03-26'),(1182,'2027-03-27'),(1183,'2027-03-28'),(1184,'2027-03-29'),(1185,'2027-03-30'),(1186,'2027-03-31'),(1187,'2027-04-01'),(1188,'2027-04-02'),(1189,'2027-04-03'),(1190,'2027-04-04'),(1191,'2027-04-05'),(1192,'2027-04-06'),(1193,'2027-04-07'),(1194,'2027-04-08'),(1195,'2027-04-09'),(1196,'2027-04-10'),(1197,'2027-04-11'),(1198,'2027-04-12'),(1199,'2027-04-13'),(1200,'2027-04-14'),(1201,'2027-04-15'),(1202,'2027-04-16'),(1203,'2027-04-17'),(1204,'2027-04-18'),(1205,'2027-04-19'),(1206,'2027-04-20'),(1207,'2027-04-21'),(1208,'2027-04-22'),(1209,'2027-04-23'),(1210,'2027-04-24'),(1211,'2027-04-25'),(1212,'2027-04-26'),(1213,'2027-04-27'),(1214,'2027-04-28'),(1215,'2027-04-29'),(1216,'2027-04-30'),(1217,'2027-05-01'),(1218,'2027-05-02'),(1219,'2027-05-03'),(1220,'2027-05-04'),(1221,'2027-05-05'),(1222,'2027-05-06'),(1223,'2027-05-07'),(1224,'2027-05-08'),(1225,'2027-05-09'),(1226,'2027-05-10'),(1227,'2027-05-11'),(1228,'2027-05-12'),(1229,'2027-05-13'),(1230,'2027-05-14'),(1231,'2027-05-15'),(1232,'2027-05-16'),(1233,'2027-05-17'),(1234,'2027-05-18'),(1235,'2027-05-19'),(1236,'2027-05-20'),(1237,'2027-05-21'),(1238,'2027-05-22'),(1239,'2027-05-23'),(1240,'2027-05-24'),(1241,'2027-05-25'),(1242,'2027-05-26'),(1243,'2027-05-27'),(1244,'2027-05-28'),(1245,'2027-05-29'),(1246,'2027-05-30'),(1247,'2027-05-31'),(1248,'2027-06-01'),(1249,'2027-06-02'),(1250,'2027-06-03'),(1251,'2027-06-04'),(1252,'2027-06-05'),(1253,'2027-06-06'),(1254,'2027-06-07'),(1255,'2027-06-08'),(1256,'2027-06-09'),(1257,'2027-06-10'),(1258,'2027-06-11'),(1259,'2027-06-12'),(1260,'2027-06-13'),(1261,'2027-06-14'),(1262,'2027-06-15'),(1263,'2027-06-16'),(1264,'2027-06-17'),(1265,'2027-06-18'),(1266,'2027-06-19'),(1267,'2027-06-20'),(1268,'2027-06-21'),(1269,'2027-06-22'),(1270,'2027-06-23'),(1271,'2027-06-24'),(1272,'2027-06-25'),(1273,'2027-06-26'),(1274,'2027-06-27'),(1275,'2027-06-28'),(1276,'2027-06-29'),(1277,'2027-06-30'),(1278,'2027-07-01'),(1279,'2027-07-02'),(1280,'2027-07-03'),(1281,'2027-07-04'),(1282,'2027-07-05'),(1283,'2027-07-06'),(1284,'2027-07-07'),(1285,'2027-07-08'),(1286,'2027-07-09'),(1287,'2027-07-10'),(1288,'2027-07-11'),(1289,'2027-07-12'),(1290,'2027-07-13'),(1291,'2027-07-14'),(1292,'2027-07-15'),(1293,'2027-07-16'),(1294,'2027-07-17'),(1295,'2027-07-18'),(1296,'2027-07-19'),(1297,'2027-07-20'),(1298,'2027-07-21'),(1299,'2027-07-22'),(1300,'2027-07-23'),(1301,'2027-07-24'),(1302,'2027-07-25'),(1303,'2027-07-26'),(1304,'2027-07-27'),(1305,'2027-07-28'),(1306,'2027-07-29'),(1307,'2027-07-30'),(1308,'2027-07-31'),(1309,'2027-08-01'),(1310,'2027-08-02'),(1311,'2027-08-03'),(1312,'2027-08-04'),(1313,'2027-08-05'),(1314,'2027-08-06'),(1315,'2027-08-07'),(1316,'2027-08-08'),(1317,'2027-08-09'),(1318,'2027-08-10'),(1319,'2027-08-11'),(1320,'2027-08-12'),(1321,'2027-08-13'),(1322,'2027-08-14'),(1323,'2027-08-15'),(1324,'2027-08-16'),(1325,'2027-08-17'),(1326,'2027-08-18'),(1327,'2027-08-19'),(1328,'2027-08-20'),(1329,'2027-08-21'),(1330,'2027-08-22'),(1331,'2027-08-23'),(1332,'2027-08-24'),(1333,'2027-08-25'),(1334,'2027-08-26'),(1335,'2027-08-27'),(1336,'2027-08-28'),(1337,'2027-08-29'),(1338,'2027-08-30'),(1339,'2027-08-31'),(1340,'2027-09-01'),(1341,'2027-09-02'),(1342,'2027-09-03'),(1343,'2027-09-04'),(1344,'2027-09-05'),(1345,'2027-09-06'),(1346,'2027-09-07'),(1347,'2027-09-08'),(1348,'2027-09-09'),(1349,'2027-09-10'),(1350,'2027-09-11'),(1351,'2027-09-12'),(1352,'2027-09-13'),(1353,'2027-09-14'),(1354,'2027-09-15'),(1355,'2027-09-16'),(1356,'2027-09-17'),(1357,'2027-09-18'),(1358,'2027-09-19'),(1359,'2027-09-20'),(1360,'2027-09-21'),(1361,'2027-09-22'),(1362,'2027-09-23'),(1363,'2027-09-24'),(1364,'2027-09-25'),(1365,'2027-09-26'),(1366,'2027-09-27'),(1367,'2027-09-28'),(1368,'2027-09-29'),(1369,'2027-09-30'),(1370,'2027-10-01'),(1371,'2027-10-02'),(1372,'2027-10-03'),(1373,'2027-10-04'),(1374,'2027-10-05'),(1375,'2027-10-06'),(1376,'2027-10-07'),(1377,'2027-10-08'),(1378,'2027-10-09'),(1379,'2027-10-10'),(1380,'2027-10-11'),(1381,'2027-10-12'),(1382,'2027-10-13'),(1383,'2027-10-14'),(1384,'2027-10-15'),(1385,'2027-10-16'),(1386,'2027-10-17'),(1387,'2027-10-18'),(1388,'2027-10-19'),(1389,'2027-10-20'),(1390,'2027-10-21'),(1391,'2027-10-22'),(1392,'2027-10-23'),(1393,'2027-10-24'),(1394,'2027-10-25'),(1395,'2027-10-26'),(1396,'2027-10-27'),(1397,'2027-10-28'),(1398,'2027-10-29'),(1399,'2027-10-30'),(1400,'2027-10-31'),(1401,'2027-11-01'),(1402,'2027-11-02'),(1403,'2027-11-03'),(1404,'2027-11-04'),(1405,'2027-11-05'),(1406,'2027-11-06'),(1407,'2027-11-07'),(1408,'2027-11-08'),(1409,'2027-11-09'),(1410,'2027-11-10'),(1411,'2027-11-11'),(1412,'2027-11-12'),(1413,'2027-11-13'),(1414,'2027-11-14'),(1415,'2027-11-15'),(1416,'2027-11-16'),(1417,'2027-11-17'),(1418,'2027-11-18'),(1419,'2027-11-19'),(1420,'2027-11-20'),(1421,'2027-11-21'),(1422,'2027-11-22'),(1423,'2027-11-23'),(1424,'2027-11-24'),(1425,'2027-11-25'),(1426,'2027-11-26'),(1427,'2027-11-27'),(1428,'2027-11-28'),(1429,'2027-11-29'),(1430,'2027-11-30'),(1431,'2027-12-01'),(1432,'2027-12-02'),(1433,'2027-12-03'),(1434,'2027-12-04'),(1435,'2027-12-05'),(1436,'2027-12-06'),(1437,'2027-12-07'),(1438,'2027-12-08'),(1439,'2027-12-09'),(1440,'2027-12-10'),(1441,'2027-12-11'),(1442,'2027-12-12'),(1443,'2027-12-13'),(1444,'2027-12-14'),(1445,'2027-12-15'),(1446,'2027-12-16'),(1447,'2027-12-17'),(1448,'2027-12-18'),(1449,'2027-12-19'),(1450,'2027-12-20'),(1451,'2027-12-21'),(1452,'2027-12-22'),(1453,'2027-12-23'),(1454,'2027-12-24'),(1455,'2027-12-25'),(1456,'2027-12-26'),(1457,'2027-12-27'),(1458,'2027-12-28'),(1459,'2027-12-29'),(1460,'2027-12-30'),(1461,'2027-12-31'),(1462,'2028-01-01'),(1463,'2028-01-02'),(1464,'2028-01-03'),(1465,'2028-01-04'),(1466,'2028-01-05'),(1467,'2028-01-06'),(1468,'2028-01-07'),(1469,'2028-01-08'),(1470,'2028-01-09'),(1471,'2028-01-10'),(1472,'2028-01-11'),(1473,'2028-01-12'),(1474,'2028-01-13'),(1475,'2028-01-14'),(1476,'2028-01-15'),(1477,'2028-01-16'),(1478,'2028-01-17'),(1479,'2028-01-18'),(1480,'2028-01-19'),(1481,'2028-01-20'),(1482,'2028-01-21'),(1483,'2028-01-22'),(1484,'2028-01-23'),(1485,'2028-01-24'),(1486,'2028-01-25'),(1487,'2028-01-26'),(1488,'2028-01-27'),(1489,'2028-01-28'),(1490,'2028-01-29'),(1491,'2028-01-30'),(1492,'2028-01-31'),(1493,'2028-02-01'),(1494,'2028-02-02'),(1495,'2028-02-03'),(1496,'2028-02-04'),(1497,'2028-02-05'),(1498,'2028-02-06'),(1499,'2028-02-07'),(1500,'2028-02-08'),(1501,'2028-02-09'),(1502,'2028-02-10'),(1503,'2028-02-11'),(1504,'2028-02-12'),(1505,'2028-02-13'),(1506,'2028-02-14'),(1507,'2028-02-15'),(1508,'2028-02-16'),(1509,'2028-02-17'),(1510,'2028-02-18'),(1511,'2028-02-19'),(1512,'2028-02-20'),(1513,'2028-02-21'),(1514,'2028-02-22'),(1515,'2028-02-23'),(1516,'2028-02-24'),(1517,'2028-02-25'),(1518,'2028-02-26'),(1519,'2028-02-27'),(1520,'2028-02-28'),(1521,'2028-02-29'),(1522,'2028-03-01'),(1523,'2028-03-02'),(1524,'2028-03-03'),(1525,'2028-03-04'),(1526,'2028-03-05'),(1527,'2028-03-06'),(1528,'2028-03-07'),(1529,'2028-03-08'),(1530,'2028-03-09'),(1531,'2028-03-10'),(1532,'2028-03-11'),(1533,'2028-03-12'),(1534,'2028-03-13'),(1535,'2028-03-14'),(1536,'2028-03-15'),(1537,'2028-03-16'),(1538,'2028-03-17'),(1539,'2028-03-18'),(1540,'2028-03-19'),(1541,'2028-03-20'),(1542,'2028-03-21'),(1543,'2028-03-22'),(1544,'2028-03-23'),(1545,'2028-03-24'),(1546,'2028-03-25'),(1547,'2028-03-26'),(1548,'2028-03-27'),(1549,'2028-03-28'),(1550,'2028-03-29'),(1551,'2028-03-30'),(1552,'2028-03-31'),(1553,'2028-04-01'),(1554,'2028-04-02'),(1555,'2028-04-03'),(1556,'2028-04-04'),(1557,'2028-04-05'),(1558,'2028-04-06'),(1559,'2028-04-07'),(1560,'2028-04-08'),(1561,'2028-04-09'),(1562,'2028-04-10'),(1563,'2028-04-11'),(1564,'2028-04-12'),(1565,'2028-04-13'),(1566,'2028-04-14'),(1567,'2028-04-15'),(1568,'2028-04-16'),(1569,'2028-04-17'),(1570,'2028-04-18'),(1571,'2028-04-19'),(1572,'2028-04-20'),(1573,'2028-04-21'),(1574,'2028-04-22'),(1575,'2028-04-23'),(1576,'2028-04-24'),(1577,'2028-04-25'),(1578,'2028-04-26'),(1579,'2028-04-27'),(1580,'2028-04-28'),(1581,'2028-04-29'),(1582,'2028-04-30'),(1583,'2028-05-01'),(1584,'2028-05-02'),(1585,'2028-05-03'),(1586,'2028-05-04'),(1587,'2028-05-05'),(1588,'2028-05-06'),(1589,'2028-05-07'),(1590,'2028-05-08'),(1591,'2028-05-09'),(1592,'2028-05-10'),(1593,'2028-05-11'),(1594,'2028-05-12'),(1595,'2028-05-13'),(1596,'2028-05-14'),(1597,'2028-05-15'),(1598,'2028-05-16'),(1599,'2028-05-17'),(1600,'2028-05-18'),(1601,'2028-05-19'),(1602,'2028-05-20'),(1603,'2028-05-21'),(1604,'2028-05-22'),(1605,'2028-05-23'),(1606,'2028-05-24'),(1607,'2028-05-25'),(1608,'2028-05-26'),(1609,'2028-05-27'),(1610,'2028-05-28'),(1611,'2028-05-29'),(1612,'2028-05-30'),(1613,'2028-05-31'),(1614,'2028-06-01'),(1615,'2028-06-02'),(1616,'2028-06-03'),(1617,'2028-06-04'),(1618,'2028-06-05'),(1619,'2028-06-06'),(1620,'2028-06-07'),(1621,'2028-06-08'),(1622,'2028-06-09'),(1623,'2028-06-10'),(1624,'2028-06-11'),(1625,'2028-06-12'),(1626,'2028-06-13'),(1627,'2028-06-14'),(1628,'2028-06-15'),(1629,'2028-06-16'),(1630,'2028-06-17'),(1631,'2028-06-18'),(1632,'2028-06-19'),(1633,'2028-06-20'),(1634,'2028-06-21'),(1635,'2028-06-22'),(1636,'2028-06-23'),(1637,'2028-06-24'),(1638,'2028-06-25'),(1639,'2028-06-26'),(1640,'2028-06-27'),(1641,'2028-06-28'),(1642,'2028-06-29'),(1643,'2028-06-30'),(1644,'2028-07-01'),(1645,'2028-07-02'),(1646,'2028-07-03'),(1647,'2028-07-04'),(1648,'2028-07-05'),(1649,'2028-07-06'),(1650,'2028-07-07'),(1651,'2028-07-08'),(1652,'2028-07-09'),(1653,'2028-07-10'),(1654,'2028-07-11'),(1655,'2028-07-12'),(1656,'2028-07-13'),(1657,'2028-07-14'),(1658,'2028-07-15'),(1659,'2028-07-16'),(1660,'2028-07-17'),(1661,'2028-07-18'),(1662,'2028-07-19'),(1663,'2028-07-20'),(1664,'2028-07-21'),(1665,'2028-07-22'),(1666,'2028-07-23'),(1667,'2028-07-24'),(1668,'2028-07-25'),(1669,'2028-07-26'),(1670,'2028-07-27'),(1671,'2028-07-28'),(1672,'2028-07-29'),(1673,'2028-07-30'),(1674,'2028-07-31'),(1675,'2028-08-01'),(1676,'2028-08-02'),(1677,'2028-08-03'),(1678,'2028-08-04'),(1679,'2028-08-05'),(1680,'2028-08-06'),(1681,'2028-08-07'),(1682,'2028-08-08'),(1683,'2028-08-09'),(1684,'2028-08-10'),(1685,'2028-08-11'),(1686,'2028-08-12'),(1687,'2028-08-13'),(1688,'2028-08-14'),(1689,'2028-08-15'),(1690,'2028-08-16'),(1691,'2028-08-17'),(1692,'2028-08-18'),(1693,'2028-08-19'),(1694,'2028-08-20'),(1695,'2028-08-21'),(1696,'2028-08-22'),(1697,'2028-08-23'),(1698,'2028-08-24'),(1699,'2028-08-25'),(1700,'2028-08-26'),(1701,'2028-08-27'),(1702,'2028-08-28'),(1703,'2028-08-29'),(1704,'2028-08-30'),(1705,'2028-08-31'),(1706,'2028-09-01'),(1707,'2028-09-02'),(1708,'2028-09-03'),(1709,'2028-09-04'),(1710,'2028-09-05'),(1711,'2028-09-06'),(1712,'2028-09-07'),(1713,'2028-09-08'),(1714,'2028-09-09'),(1715,'2028-09-10'),(1716,'2028-09-11'),(1717,'2028-09-12'),(1718,'2028-09-13'),(1719,'2028-09-14'),(1720,'2028-09-15'),(1721,'2028-09-16'),(1722,'2028-09-17'),(1723,'2028-09-18'),(1724,'2028-09-19'),(1725,'2028-09-20'),(1726,'2028-09-21'),(1727,'2028-09-22'),(1728,'2028-09-23'),(1729,'2028-09-24'),(1730,'2028-09-25'),(1731,'2028-09-26'),(1732,'2028-09-27'),(1733,'2028-09-28'),(1734,'2028-09-29'),(1735,'2028-09-30'),(1736,'2028-10-01'),(1737,'2028-10-02'),(1738,'2028-10-03'),(1739,'2028-10-04'),(1740,'2028-10-05'),(1741,'2028-10-06'),(1742,'2028-10-07'),(1743,'2028-10-08'),(1744,'2028-10-09'),(1745,'2028-10-10'),(1746,'2028-10-11'),(1747,'2028-10-12'),(1748,'2028-10-13'),(1749,'2028-10-14'),(1750,'2028-10-15'),(1751,'2028-10-16'),(1752,'2028-10-17'),(1753,'2028-10-18'),(1754,'2028-10-19'),(1755,'2028-10-20'),(1756,'2028-10-21'),(1757,'2028-10-22'),(1758,'2028-10-23'),(1759,'2028-10-24'),(1760,'2028-10-25'),(1761,'2028-10-26'),(1762,'2028-10-27'),(1763,'2028-10-28'),(1764,'2028-10-29'),(1765,'2028-10-30'),(1766,'2028-10-31'),(1767,'2028-11-01'),(1768,'2028-11-02'),(1769,'2028-11-03'),(1770,'2028-11-04'),(1771,'2028-11-05'),(1772,'2028-11-06'),(1773,'2028-11-07'),(1774,'2028-11-08'),(1775,'2028-11-09'),(1776,'2028-11-10'),(1777,'2028-11-11'),(1778,'2028-11-12'),(1779,'2028-11-13'),(1780,'2028-11-14'),(1781,'2028-11-15'),(1782,'2028-11-16'),(1783,'2028-11-17'),(1784,'2028-11-18'),(1785,'2028-11-19'),(1786,'2028-11-20'),(1787,'2028-11-21'),(1788,'2028-11-22'),(1789,'2028-11-23'),(1790,'2028-11-24'),(1791,'2028-11-25'),(1792,'2028-11-26'),(1793,'2028-11-27'),(1794,'2028-11-28'),(1795,'2028-11-29'),(1796,'2028-11-30'),(1797,'2028-12-01'),(1798,'2028-12-02'),(1799,'2028-12-03'),(1800,'2028-12-04'),(1801,'2028-12-05'),(1802,'2028-12-06'),(1803,'2028-12-07'),(1804,'2028-12-08'),(1805,'2028-12-09'),(1806,'2028-12-10'),(1807,'2028-12-11'),(1808,'2028-12-12'),(1809,'2028-12-13'),(1810,'2028-12-14'),(1811,'2028-12-15'),(1812,'2028-12-16'),(1813,'2028-12-17'),(1814,'2028-12-18'),(1815,'2028-12-19'),(1816,'2028-12-20'),(1817,'2028-12-21'),(1818,'2028-12-22'),(1819,'2028-12-23'),(1820,'2028-12-24'),(1821,'2028-12-25'),(1822,'2028-12-26'),(1823,'2028-12-27'),(1824,'2028-12-28'),(1825,'2028-12-29'),(1826,'2028-12-30'),(1827,'2028-12-31'),(1828,'2029-01-01'),(1829,'2029-01-02'),(1830,'2029-01-03'),(1831,'2029-01-04'),(1832,'2029-01-05'),(1833,'2029-01-06'),(1834,'2029-01-07'),(1835,'2029-01-08'),(1836,'2029-01-09'),(1837,'2029-01-10'),(1838,'2029-01-11'),(1839,'2029-01-12'),(1840,'2029-01-13'),(1841,'2029-01-14'),(1842,'2029-01-15'),(1843,'2029-01-16'),(1844,'2029-01-17'),(1845,'2029-01-18'),(1846,'2029-01-19'),(1847,'2029-01-20'),(1848,'2029-01-21'),(1849,'2029-01-22'),(1850,'2029-01-23'),(1851,'2029-01-24'),(1852,'2029-01-25'),(1853,'2029-01-26'),(1854,'2029-01-27'),(1855,'2029-01-28'),(1856,'2029-01-29'),(1857,'2029-01-30'),(1858,'2029-01-31'),(1859,'2029-02-01'),(1860,'2029-02-02'),(1861,'2029-02-03'),(1862,'2029-02-04'),(1863,'2029-02-05'),(1864,'2029-02-06'),(1865,'2029-02-07'),(1866,'2029-02-08'),(1867,'2029-02-09'),(1868,'2029-02-10'),(1869,'2029-02-11'),(1870,'2029-02-12'),(1871,'2029-02-13'),(1872,'2029-02-14'),(1873,'2029-02-15'),(1874,'2029-02-16'),(1875,'2029-02-17'),(1876,'2029-02-18'),(1877,'2029-02-19'),(1878,'2029-02-20'),(1879,'2029-02-21'),(1880,'2029-02-22'),(1881,'2029-02-23'),(1882,'2029-02-24'),(1883,'2029-02-25'),(1884,'2029-02-26'),(1885,'2029-02-27'),(1886,'2029-02-28'),(1887,'2029-03-01'),(1888,'2029-03-02'),(1889,'2029-03-03'),(1890,'2029-03-04'),(1891,'2029-03-05'),(1892,'2029-03-06'),(1893,'2029-03-07'),(1894,'2029-03-08'),(1895,'2029-03-09'),(1896,'2029-03-10'),(1897,'2029-03-11'),(1898,'2029-03-12'),(1899,'2029-03-13'),(1900,'2029-03-14'),(1901,'2029-03-15'),(1902,'2029-03-16'),(1903,'2029-03-17'),(1904,'2029-03-18'),(1905,'2029-03-19'),(1906,'2029-03-20'),(1907,'2029-03-21'),(1908,'2029-03-22'),(1909,'2029-03-23'),(1910,'2029-03-24'),(1911,'2029-03-25'),(1912,'2029-03-26'),(1913,'2029-03-27'),(1914,'2029-03-28'),(1915,'2029-03-29'),(1916,'2029-03-30'),(1917,'2029-03-31'),(1918,'2029-04-01'),(1919,'2029-04-02'),(1920,'2029-04-03'),(1921,'2029-04-04'),(1922,'2029-04-05'),(1923,'2029-04-06'),(1924,'2029-04-07'),(1925,'2029-04-08'),(1926,'2029-04-09'),(1927,'2029-04-10'),(1928,'2029-04-11'),(1929,'2029-04-12'),(1930,'2029-04-13'),(1931,'2029-04-14'),(1932,'2029-04-15'),(1933,'2029-04-16'),(1934,'2029-04-17'),(1935,'2029-04-18'),(1936,'2029-04-19'),(1937,'2029-04-20'),(1938,'2029-04-21'),(1939,'2029-04-22'),(1940,'2029-04-23'),(1941,'2029-04-24'),(1942,'2029-04-25'),(1943,'2029-04-26'),(1944,'2029-04-27'),(1945,'2029-04-28'),(1946,'2029-04-29'),(1947,'2029-04-30'),(1948,'2029-05-01'),(1949,'2029-05-02'),(1950,'2029-05-03'),(1951,'2029-05-04'),(1952,'2029-05-05'),(1953,'2029-05-06'),(1954,'2029-05-07'),(1955,'2029-05-08'),(1956,'2029-05-09'),(1957,'2029-05-10'),(1958,'2029-05-11'),(1959,'2029-05-12'),(1960,'2029-05-13'),(1961,'2029-05-14'),(1962,'2029-05-15'),(1963,'2029-05-16'),(1964,'2029-05-17'),(1965,'2029-05-18'),(1966,'2029-05-19'),(1967,'2029-05-20'),(1968,'2029-05-21'),(1969,'2029-05-22'),(1970,'2029-05-23'),(1971,'2029-05-24'),(1972,'2029-05-25'),(1973,'2029-05-26'),(1974,'2029-05-27'),(1975,'2029-05-28'),(1976,'2029-05-29'),(1977,'2029-05-30'),(1978,'2029-05-31'),(1979,'2029-06-01'),(1980,'2029-06-02'),(1981,'2029-06-03'),(1982,'2029-06-04'),(1983,'2029-06-05'),(1984,'2029-06-06'),(1985,'2029-06-07'),(1986,'2029-06-08'),(1987,'2029-06-09'),(1988,'2029-06-10'),(1989,'2029-06-11'),(1990,'2029-06-12'),(1991,'2029-06-13'),(1992,'2029-06-14'),(1993,'2029-06-15'),(1994,'2029-06-16'),(1995,'2029-06-17'),(1996,'2029-06-18'),(1997,'2029-06-19'),(1998,'2029-06-20'),(1999,'2029-06-21'),(2000,'2029-06-22'),(2001,'2029-06-23'),(2002,'2029-06-24'),(2003,'2029-06-25'),(2004,'2029-06-26'),(2005,'2029-06-27'),(2006,'2029-06-28'),(2007,'2029-06-29'),(2008,'2029-06-30'),(2009,'2029-07-01'),(2010,'2029-07-02'),(2011,'2029-07-03'),(2012,'2029-07-04'),(2013,'2029-07-05'),(2014,'2029-07-06'),(2015,'2029-07-07'),(2016,'2029-07-08'),(2017,'2029-07-09'),(2018,'2029-07-10'),(2019,'2029-07-11'),(2020,'2029-07-12'),(2021,'2029-07-13'),(2022,'2029-07-14'),(2023,'2029-07-15'),(2024,'2029-07-16'),(2025,'2029-07-17'),(2026,'2029-07-18'),(2027,'2029-07-19'),(2028,'2029-07-20'),(2029,'2029-07-21'),(2030,'2029-07-22'),(2031,'2029-07-23'),(2032,'2029-07-24'),(2033,'2029-07-25'),(2034,'2029-07-26'),(2035,'2029-07-27'),(2036,'2029-07-28'),(2037,'2029-07-29'),(2038,'2029-07-30'),(2039,'2029-07-31'),(2040,'2029-08-01'),(2041,'2029-08-02'),(2042,'2029-08-03'),(2043,'2029-08-04'),(2044,'2029-08-05'),(2045,'2029-08-06'),(2046,'2029-08-07'),(2047,'2029-08-08'),(2048,'2029-08-09'),(2049,'2029-08-10'),(2050,'2029-08-11'),(2051,'2029-08-12'),(2052,'2029-08-13'),(2053,'2029-08-14'),(2054,'2029-08-15'),(2055,'2029-08-16'),(2056,'2029-08-17'),(2057,'2029-08-18'),(2058,'2029-08-19'),(2059,'2029-08-20'),(2060,'2029-08-21'),(2061,'2029-08-22'),(2062,'2029-08-23'),(2063,'2029-08-24'),(2064,'2029-08-25'),(2065,'2029-08-26'),(2066,'2029-08-27'),(2067,'2029-08-28'),(2068,'2029-08-29'),(2069,'2029-08-30'),(2070,'2029-08-31'),(2071,'2029-09-01'),(2072,'2029-09-02'),(2073,'2029-09-03'),(2074,'2029-09-04'),(2075,'2029-09-05'),(2076,'2029-09-06'),(2077,'2029-09-07'),(2078,'2029-09-08'),(2079,'2029-09-09'),(2080,'2029-09-10'),(2081,'2029-09-11'),(2082,'2029-09-12'),(2083,'2029-09-13'),(2084,'2029-09-14'),(2085,'2029-09-15'),(2086,'2029-09-16'),(2087,'2029-09-17'),(2088,'2029-09-18'),(2089,'2029-09-19'),(2090,'2029-09-20'),(2091,'2029-09-21'),(2092,'2029-09-22'),(2093,'2029-09-23'),(2094,'2029-09-24'),(2095,'2029-09-25'),(2096,'2029-09-26'),(2097,'2029-09-27'),(2098,'2029-09-28'),(2099,'2029-09-29'),(2100,'2029-09-30'),(2101,'2029-10-01'),(2102,'2029-10-02'),(2103,'2029-10-03'),(2104,'2029-10-04'),(2105,'2029-10-05'),(2106,'2029-10-06'),(2107,'2029-10-07'),(2108,'2029-10-08'),(2109,'2029-10-09'),(2110,'2029-10-10'),(2111,'2029-10-11'),(2112,'2029-10-12'),(2113,'2029-10-13'),(2114,'2029-10-14'),(2115,'2029-10-15'),(2116,'2029-10-16'),(2117,'2029-10-17'),(2118,'2029-10-18'),(2119,'2029-10-19'),(2120,'2029-10-20'),(2121,'2029-10-21'),(2122,'2029-10-22'),(2123,'2029-10-23'),(2124,'2029-10-24'),(2125,'2029-10-25'),(2126,'2029-10-26'),(2127,'2029-10-27'),(2128,'2029-10-28'),(2129,'2029-10-29'),(2130,'2029-10-30'),(2131,'2029-10-31'),(2132,'2029-11-01'),(2133,'2029-11-02'),(2134,'2029-11-03'),(2135,'2029-11-04'),(2136,'2029-11-05'),(2137,'2029-11-06'),(2138,'2029-11-07'),(2139,'2029-11-08'),(2140,'2029-11-09'),(2141,'2029-11-10'),(2142,'2029-11-11'),(2143,'2029-11-12'),(2144,'2029-11-13'),(2145,'2029-11-14'),(2146,'2029-11-15'),(2147,'2029-11-16'),(2148,'2029-11-17'),(2149,'2029-11-18'),(2150,'2029-11-19'),(2151,'2029-11-20'),(2152,'2029-11-21'),(2153,'2029-11-22'),(2154,'2029-11-23'),(2155,'2029-11-24'),(2156,'2029-11-25'),(2157,'2029-11-26'),(2158,'2029-11-27'),(2159,'2029-11-28'),(2160,'2029-11-29'),(2161,'2029-11-30'),(2162,'2029-12-01'),(2163,'2029-12-02'),(2164,'2029-12-03'),(2165,'2029-12-04'),(2166,'2029-12-05'),(2167,'2029-12-06'),(2168,'2029-12-07'),(2169,'2029-12-08'),(2170,'2029-12-09'),(2171,'2029-12-10'),(2172,'2029-12-11'),(2173,'2029-12-12'),(2174,'2029-12-13'),(2175,'2029-12-14'),(2176,'2029-12-15'),(2177,'2029-12-16'),(2178,'2029-12-17'),(2179,'2029-12-18'),(2180,'2029-12-19'),(2181,'2029-12-20'),(2182,'2029-12-21'),(2183,'2029-12-22'),(2184,'2029-12-23'),(2185,'2029-12-24'),(2186,'2029-12-25'),(2187,'2029-12-26'),(2188,'2029-12-27'),(2189,'2029-12-28'),(2190,'2029-12-29'),(2191,'2029-12-30'),(2192,'2029-12-31'),(2193,'2030-01-01');
/*!40000 ALTER TABLE `report_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_downtime_reasons`
--

DROP TABLE IF EXISTS `well_downtime_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_downtime_reasons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `well_id` int NOT NULL,
  `report_date_id` int NOT NULL,
  `downtime_category` varchar(255) DEFAULT NULL,
  `production_sub_skins_activity_id` int DEFAULT NULL,
  `comments` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_well_downtime_reason` (`well_id`,`report_date_id`),
  KEY `report_date_id` (`report_date_id`),
  KEY `production_sub_skins_activity_id` (`production_sub_skins_activity_id`),
  CONSTRAINT `well_downtime_reasons_ibfk_1` FOREIGN KEY (`well_id`) REFERENCES `wells` (`id`),
  CONSTRAINT `well_downtime_reasons_ibfk_2` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`),
  CONSTRAINT `well_downtime_reasons_ibfk_3` FOREIGN KEY (`production_sub_skins_activity_id`) REFERENCES `production_sub_skins_activities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_downtime_reasons`
--

LOCK TABLES `well_downtime_reasons` WRITE;
/*!40000 ALTER TABLE `well_downtime_reasons` DISABLE KEYS */;
INSERT INTO `well_downtime_reasons` VALUES (1,54,378,'Planlaşdırılmamış',10,'I sıra tam qaldırıldı. 2,5\"Pero başmaq 2966 m-ə kimi endirildi, oturdu. 2966 m-dən 2976 m-ə kimi yuma, qum gətirir. 2976m-dən aşağı getmir, yuma işi davam edir.','2025-01-17 16:46:46'),(2,59,378,'Planlaşdırılmış',1,'Hasilatı az olduğundan dayandırılıb.','2025-01-17 16:46:46'),(3,60,378,'Planlaşdırılmış',1,'Hasilatı az olduğundan dayandırılıb.','2025-01-17 16:46:46'),(4,73,378,'Planlaşdırılmış',1,'Ləğv olunmuş','2025-01-17 16:46:47'),(5,74,378,'Planlaşdırılmış',1,'Fəaliyyətsiz','2025-01-17 16:46:47'),(6,75,378,'Planlaşdırılmış',1,'Fəaliyyətsiz','2025-01-17 16:46:47'),(7,76,378,'Planlaşdırılmış',1,'Ləğv olunmuş','2025-01-17 16:46:47'),(8,77,378,'Planlaşdırılmış',1,'Ləğvini gözləyən','2025-01-17 16:46:47'),(9,78,378,'Planlaşdırılmış',1,'Ləğvini gözləyən','2025-01-17 16:46:48'),(10,79,378,'Planlaşdırılmış',1,'Fəaliyyətsiz','2025-01-17 16:46:48'),(11,80,378,'Planlaşdırılmış',1,'Ləğv olunmuş','2025-01-17 16:46:48'),(12,112,378,'Planlaşdırılmış',2,'Təmirdə','2025-01-17 16:46:49'),(13,121,378,'Planlaşdırılmış',2,'Təmirdə','2025-01-17 16:46:49'),(14,123,378,'Planlaşdırılmış',2,'Təmirdə(Quyuda qalıb: Paker-2834,33m; 2,5\"-5,5əd-48,5m\nQn-2794m(gövdə))','2025-01-17 16:46:50');
/*!40000 ALTER TABLE `well_downtime_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_stock`
--

DROP TABLE IF EXISTS `well_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `well_id` int NOT NULL,
  `report_date_id` int NOT NULL,
  `well_stock_category_id` int DEFAULT NULL,
  `well_stock_sub_category_id` int DEFAULT NULL,
  `production_well_stock_sub_category_id` int DEFAULT NULL,
  `production_method_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_well_stock` (`well_id`,`report_date_id`),
  KEY `report_date_id` (`report_date_id`),
  KEY `well_stock_category_id` (`well_stock_category_id`),
  KEY `well_stock_sub_category_id` (`well_stock_sub_category_id`),
  KEY `production_well_stock_sub_category_id` (`production_well_stock_sub_category_id`),
  KEY `production_method_id` (`production_method_id`),
  CONSTRAINT `well_stock_ibfk_1` FOREIGN KEY (`well_id`) REFERENCES `wells` (`id`),
  CONSTRAINT `well_stock_ibfk_2` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`),
  CONSTRAINT `well_stock_ibfk_3` FOREIGN KEY (`well_stock_category_id`) REFERENCES `well_stock_categories` (`id`),
  CONSTRAINT `well_stock_ibfk_4` FOREIGN KEY (`well_stock_sub_category_id`) REFERENCES `well_stock_sub_categories` (`id`),
  CONSTRAINT `well_stock_ibfk_5` FOREIGN KEY (`production_well_stock_sub_category_id`) REFERENCES `production_well_stock_sub_categories` (`id`),
  CONSTRAINT `well_stock_ibfk_6` FOREIGN KEY (`production_method_id`) REFERENCES `production_methods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_stock`
--

LOCK TABLES `well_stock` WRITE;
/*!40000 ALTER TABLE `well_stock` DISABLE KEYS */;
INSERT INTO `well_stock` VALUES (1,49,378,1,1,1,3,'2025-01-17 16:46:46'),(2,50,378,3,1,1,NULL,'2025-01-17 16:46:46'),(3,51,378,3,1,1,NULL,'2025-01-17 16:46:46'),(4,52,378,1,1,1,2,'2025-01-17 16:46:46'),(5,53,378,1,1,1,2,'2025-01-17 16:46:46'),(6,54,378,3,1,1,NULL,'2025-01-17 16:46:46'),(7,55,378,1,1,1,2,'2025-01-17 16:46:46'),(8,56,378,1,1,1,2,'2025-01-17 16:46:46'),(9,57,378,1,1,1,3,'2025-01-17 16:46:46'),(10,58,378,1,1,1,2,'2025-01-17 16:46:46'),(11,59,378,1,1,3,3,'2025-01-17 16:46:46'),(12,60,378,1,1,3,2,'2025-01-17 16:46:46'),(13,61,378,1,1,1,2,'2025-01-17 16:46:46'),(14,62,378,1,1,1,2,'2025-01-17 16:46:46'),(15,63,378,1,1,1,2,'2025-01-17 16:46:46'),(16,64,378,1,1,1,3,'2025-01-17 16:46:47'),(17,65,378,1,1,1,2,'2025-01-17 16:46:47'),(18,66,378,1,1,1,3,'2025-01-17 16:46:47'),(19,67,378,1,1,1,3,'2025-01-17 16:46:47'),(20,68,378,1,1,1,2,'2025-01-17 16:46:47'),(21,69,378,1,1,1,1,'2025-01-17 16:46:47'),(22,70,378,1,1,1,3,'2025-01-17 16:46:47'),(23,71,378,1,1,1,3,'2025-01-17 16:46:47'),(24,72,378,1,1,1,2,'2025-01-17 16:46:47'),(25,73,378,1,2,NULL,NULL,'2025-01-17 16:46:47'),(26,74,378,3,1,3,NULL,'2025-01-17 16:46:47'),(27,75,378,3,1,3,NULL,'2025-01-17 16:46:47'),(28,76,378,1,2,NULL,NULL,'2025-01-17 16:46:47'),(29,77,378,3,3,NULL,NULL,'2025-01-17 16:46:47'),(30,78,378,1,3,NULL,NULL,'2025-01-17 16:46:48'),(31,79,378,3,1,3,NULL,'2025-01-17 16:46:48'),(32,80,378,3,2,NULL,NULL,'2025-01-17 16:46:48'),(33,102,378,2,1,1,1,'2025-01-17 16:46:48'),(34,103,378,1,1,1,1,'2025-01-17 16:46:48'),(35,104,378,1,1,1,3,'2025-01-17 16:46:48'),(36,105,378,1,1,1,3,'2025-01-17 16:46:48'),(37,106,378,1,1,1,3,'2025-01-17 16:46:48'),(38,107,378,1,1,1,2,'2025-01-17 16:46:48'),(39,108,378,1,1,1,3,'2025-01-17 16:46:49'),(40,109,378,2,1,1,1,'2025-01-17 16:46:49'),(41,110,378,1,1,1,3,'2025-01-17 16:46:49'),(42,111,378,1,1,1,3,'2025-01-17 16:46:49'),(43,112,378,1,1,2,1,'2025-01-17 16:46:49'),(44,113,378,1,1,1,1,'2025-01-17 16:46:49'),(45,114,378,1,1,1,3,'2025-01-17 16:46:49'),(46,115,378,2,1,1,1,'2025-01-17 16:46:49'),(47,116,378,1,1,1,3,'2025-01-17 16:46:49'),(48,117,378,1,1,1,3,'2025-01-17 16:46:49'),(49,118,378,1,1,1,2,'2025-01-17 16:46:49'),(50,119,378,1,1,1,2,'2025-01-17 16:46:49'),(51,120,378,2,1,1,1,'2025-01-17 16:46:49'),(52,121,378,1,1,2,1,'2025-01-17 16:46:49'),(53,122,378,1,1,1,2,'2025-01-17 16:46:49'),(54,123,378,1,1,2,1,'2025-01-17 16:46:50'),(55,124,378,1,1,1,1,'2025-01-17 16:46:50'),(56,125,378,1,1,1,2,'2025-01-17 16:46:50'),(57,126,378,1,1,1,2,'2025-01-17 16:46:50'),(58,127,378,1,1,1,2,'2025-01-17 16:46:50'),(59,128,378,1,1,1,1,'2025-01-17 16:46:50'),(60,129,378,1,1,1,3,'2025-01-17 16:46:50'),(61,130,378,1,1,1,3,'2025-01-17 16:46:50'),(62,131,378,1,1,1,3,'2025-01-17 16:46:50'),(63,132,378,1,1,1,1,'2025-01-17 16:46:50');
/*!40000 ALTER TABLE `well_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_stock_categories`
--

DROP TABLE IF EXISTS `well_stock_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_stock_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_well_stock_category` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_stock_categories`
--

LOCK TABLES `well_stock_categories` WRITE;
/*!40000 ALTER TABLE `well_stock_categories` DISABLE KEYS */;
INSERT INTO `well_stock_categories` VALUES (5,'Müşahidə quyu fondu'),(1,'Neft quyu fondu'),(2,'Qaz quyu fondu'),(4,'Qazvurucu quyu fondu'),(3,'Suvurucu quyu fondu'),(6,'Uducu quyu fondu');
/*!40000 ALTER TABLE `well_stock_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_stock_sub_categories`
--

DROP TABLE IF EXISTS `well_stock_sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_stock_sub_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_well_stock_sub_category` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_stock_sub_categories`
--

LOCK TABLES `well_stock_sub_categories` WRITE;
/*!40000 ALTER TABLE `well_stock_sub_categories` DISABLE KEYS */;
INSERT INTO `well_stock_sub_categories` VALUES (1,'İstismar'),(4,'Konservasiyada olan'),(2,'Ləğv olunmuş '),(3,'Ləğvini gözləyən');
/*!40000 ALTER TABLE `well_stock_sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `well_tests`
--

DROP TABLE IF EXISTS `well_tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `well_tests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `well_id` int NOT NULL,
  `report_date_id` int DEFAULT NULL,
  `well_test_date` date NOT NULL,
  `choke` varchar(255) DEFAULT NULL,
  `pqa` varchar(255) DEFAULT NULL,
  `phf` varchar(255) DEFAULT NULL,
  `pba` varchar(255) DEFAULT NULL,
  `p6x9` varchar(255) DEFAULT NULL,
  `p9x13` varchar(255) DEFAULT NULL,
  `p13x20` varchar(255) DEFAULT NULL,
  `liquid_ton` int DEFAULT NULL,
  `total_gas` int DEFAULT NULL,
  `gaslift_gas` int DEFAULT NULL,
  `reported_water_cut` float DEFAULT NULL,
  `water_cut` float DEFAULT NULL,
  `mechanical_impurities` float DEFAULT NULL,
  `oil_density` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_well_test` (`well_id`,`well_test_date`),
  KEY `fk_report_date_id` (`report_date_id`),
  CONSTRAINT `fk_report_date_id` FOREIGN KEY (`report_date_id`) REFERENCES `report_dates` (`id`),
  CONSTRAINT `well_tests_ibfk_1` FOREIGN KEY (`well_id`) REFERENCES `wells` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `well_tests`
--

LOCK TABLES `well_tests` WRITE;
/*!40000 ALTER TABLE `well_tests` DISABLE KEYS */;
INSERT INTO `well_tests` VALUES (1,49,378,'2025-01-11','15','14/16','60','68','0','0','0',21,25507,23000,81,81,0.1,0.861,'2025-01-17 12:46:46'),(2,50,378,'2025-01-12','26','214','181','134','4','0','0',1003,0,0,100,100,0,0.855,'2025-01-17 12:46:46'),(3,51,378,'2025-01-12','40','214','0','0','0','0','0',54,0,0,100,100,0,0.861,'2025-01-17 12:46:46'),(4,52,378,'2025-01-11','10','17/19','30/32','36/38','0','0','0',11,18738,16000,10,10,0,0.873,'2025-01-17 12:46:46'),(5,53,378,'2025-01-07','15','20/23','71/72','82','0','0','0',83,29976,26000,84.7,84.7,0.1,0.858,'2025-01-17 12:46:46'),(6,54,378,'2024-12-31','40','0','0','0','0','0','0',0,0,0,100,100,0,0.873,'2025-01-17 12:46:46'),(7,55,378,'2025-01-09','15','16','43','45','0','0','0',23,31659,20000,5,5,0,0.873,'2025-01-17 12:46:46'),(8,56,378,'2025-01-09','13','18/19','34/35','39/40','0','0','0',13,30434,20000,0,0,0,0.873,'2025-01-17 12:46:46'),(9,57,378,'2025-01-09','16','15','52','41','0','0','0',14,26730,18000,4,4,0,0.873,'2025-01-17 12:46:46'),(10,58,378,'2025-01-09','13','15/16','38/41','41/44','0','0','0',13,26251,22000,5,5,0,0.873,'2025-01-17 12:46:46'),(11,59,378,'2024-02-07','7','38','24/25','33','0','0','0',2,16000,14000,50,50,0,0.873,'2025-01-17 12:46:46'),(12,60,378,'2024-07-21','8','26/28','26/30','40/41','0','0','0',2,23000,22000,50,50,0,0.873,'2025-01-17 12:46:46'),(13,61,378,'2025-01-08','16','13/16','40/45','44/47','0','0','0',23,26741,21000,0,0,0,0.873,'2025-01-17 12:46:46'),(14,62,378,'2025-01-08','15','19/21','41/43','59/60','0','0','0',29,39844,37000,37.9,37.9,0,0.858,'2025-01-17 12:46:46'),(15,63,378,'2025-01-08','13','22','43','55','0','0','0',42,20497,17000,0,0,0,0.855,'2025-01-17 12:46:47'),(16,64,378,'2025-01-09','10','24/45','64/66','79','7','0','0',66,30744,24000,71,71,0.1,0.855,'2025-01-17 12:46:47'),(17,65,378,'2025-01-08','13','17/18','37','49','0','0','0',30,21497,19000,0,0,0,0.855,'2025-01-17 12:46:47'),(18,66,378,'2025-01-10','11','27/38','72/74','150/151','0','0','0',100,20209,13000,42,42,0.1,0.855,'2025-01-17 12:46:47'),(19,67,378,'2025-01-08','10','44/46','88','89','0','0','0',88,25312,21000,70.4,70.4,0,0.855,'2025-01-17 12:46:47'),(20,68,378,'2025-01-09','11','21/33','53/58','68/69','13','0','0',43,28498,25000,45,45,0.1,0.855,'2025-01-17 12:46:47'),(21,69,378,'2025-01-10','9','26/31','113','164','22','0','0',106,3495,0,50,50,0.1,0.855,'2025-01-17 12:46:47'),(22,70,378,'2025-01-08','7','32/45','65/69','71/72','0','0','0',29,16000,14000,20,20,0.1,0.855,'2025-01-17 12:46:47'),(23,71,378,'2025-01-10','16','14/28','61','64','0','0','0',61,31058,25000,65,65,0.1,0.861,'2025-01-17 12:46:47'),(24,72,378,'2025-01-10','11','19/31','50/57','61','0','0','0',31,27961,27000,47,47,0.1,0.861,'2025-01-17 12:46:47'),(25,73,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:47'),(26,74,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:47'),(27,75,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:47'),(28,76,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:47'),(29,77,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:47'),(30,78,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:48'),(31,79,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:48'),(32,80,378,'1899-12-31','0','0','0','0','0','0','0',0,0,0,0,0,0,0,'2025-01-17 12:46:48'),(33,102,378,'2025-01-11','15','36/37','0','87','6','13','0',5,108700,0,17,17,0,0.851,'2025-01-17 12:46:48'),(34,103,378,'2025-01-11','8','40/41','0','133','6','13','0',106,7500,0,0,0,0,0.9,'2025-01-17 12:46:48'),(35,104,378,'2025-01-12','12','44/45','96/97','170','0','84','77/1',183,29500,17000,65,65,0.1,0.855,'2025-01-17 12:46:48'),(36,105,378,'2025-01-11','8','50/53','98/99','128','17','3','0',77,22300,16000,36,36,0.1,0.855,'2025-01-17 12:46:48'),(37,106,378,'2025-01-12','12','53/54','105/107','110/111','38','46','0',168,42500,20000,48,48,0.1,0.855,'2025-01-17 12:46:48'),(38,107,378,'2025-01-11','13','40/48','81/82','94/95','28','4','0',108,57600,23000,60,60,0.1,0.861,'2025-01-17 12:46:48'),(39,108,378,'2025-01-12','11','45/55','98/99','170','0','25','26',167,32000,16000,40,40,0.1,0.855,'2025-01-17 12:46:49'),(40,109,378,'2025-01-11','3/8/13','145/146','0','105/106','22','1','9',1,94000,0,0,0,0,0.755,'2025-01-17 12:46:49'),(41,110,378,'2025-01-11','10','69/74','106/108','113','0','15','14',132,51100,3000,33,33,0.1,0.9,'2025-01-17 12:46:49'),(42,111,378,'2025-01-11','7','65/80','115/120','130','9','40','2',63,27300,15000,40,40,0.1,0.855,'2025-01-17 12:46:49'),(43,112,378,'2024-12-08','10','68/69','103/104','128/129','0','0','0',148,46700,46700,0,0,0,0.873,'2025-01-17 12:46:49'),(44,113,378,'2025-01-12','10,5','64/65','99/100','127','0','28','25',156,40800,0,0,0,0,0.9,'2025-01-17 12:46:49'),(45,114,378,'2025-01-12','10','62/67','118/120','162','30','17','25',177,31600,15000,42,42,0.2,0.9,'2025-01-17 12:46:49'),(46,115,378,'2025-01-11','10/19','71/72','75','76','0','25','12',10,103000,0,0,0,0,0.873,'2025-01-17 12:46:49'),(47,116,378,'2025-01-11','14','24/41','79/81','89/90','5','17','18',132,41000,27000,48,48,0.1,0.861,'2025-01-17 12:46:49'),(48,117,378,'2025-01-12','12','30/40','54/55','121','14','20','22',222,21300,2000,59,59,0.1,0.881,'2025-01-17 12:46:49'),(49,118,378,'2025-01-11','12','35/47','69/71','79/80','14','15','1',109,45000,30000,75,75,0.1,0.861,'2025-01-17 12:46:49'),(50,119,378,'2025-01-11','12','43/58','71/75','79/82','51','0','3',91,53400,33000,44,44,0.1,0.861,'2025-01-17 12:46:49'),(51,120,378,'2025-01-11','12/15','145/146','158','160','33','16','17',8,314000,0,0,0,0,0.76,'2025-01-17 12:46:49'),(52,121,378,'2024-12-11','8','45/54','0','138/139','0','0','0',101,14500,6000,39.6,39.6,0,0.861,'2025-01-17 12:46:49'),(53,122,378,'2025-01-11','8','40/60','0','136/137','58','13','22',105,17100,6000,58,58,0.2,0.9,'2025-01-17 12:46:50'),(54,123,378,'2024-12-11','12','57/59','82/83','83/84','0','0','0',19,0,0,10.3,10.3,0,0.873,'2025-01-17 12:46:50'),(55,124,378,'2025-01-11','12','58/59','83/84','84/85','30','32','33',15,117500,0,10,10,0.1,0.873,'2025-01-17 12:46:50'),(56,125,378,'2025-01-11','13','30/40','67/69','86/87','36','31','15',94,45400,34000,43,43,0.1,0.861,'2025-01-17 12:46:50'),(57,126,378,'2025-01-11','8','60/67','0','125','0','18','15',85,27500,15000,1,1,0,0.855,'2025-01-17 12:46:50'),(58,127,378,'2025-01-11','9','42/43','0','78','0','18','15',31,31400,18000,0,0,0,0.861,'2025-01-17 12:46:50'),(59,128,378,'2025-01-11','11','80/82','113/114','136','20','0','2',157,70500,0,0,0,0,0.9,'2025-01-17 12:46:50'),(60,129,378,'2025-01-11','8','60/82','99/104','132','0','10','13',62,33000,18000,20,20,0.3,0.861,'2025-01-17 12:46:50'),(61,130,378,'2025-01-11','9','65/70','107/108','171','62','17','11',106,33800,15000,63,63,0.1,0.855,'2025-01-17 12:46:50'),(62,131,378,'2025-01-11','7','50/51','0','132','0','15','35/30',62,14400,8000,55,55,0.1,0.855,'2025-01-17 12:46:50'),(63,132,378,'2025-01-12','7','44/45','0','142','0','15','35/30',82,8700,0,0,0,0,0.9,'2025-01-17 12:46:50');
/*!40000 ALTER TABLE `well_tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wells`
--

DROP TABLE IF EXISTS `wells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wells` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `platform_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_well` (`name`,`platform_id`),
  KEY `platform_id` (`platform_id`),
  CONSTRAINT `wells_ibfk_1` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wells`
--

LOCK TABLES `wells` WRITE;
/*!40000 ALTER TABLE `wells` DISABLE KEYS */;
INSERT INTO `wells` VALUES (53,'100',4),(41,'101',3),(2,'102',1),(12,'103',1),(3,'104',1),(4,'105',1),(5,'106',1),(6,'107',1),(7,'108',1),(8,'109',1),(13,'110',1),(16,'111',2),(17,'112',2),(18,'113',2),(363,'114',2),(19,'115',2),(364,'116',2),(20,'117',2),(21,'118',2),(22,'119',2),(9,'12',1),(23,'120',2),(365,'121',2),(24,'122',2),(366,'123',2),(25,'124',2),(26,'125',2),(27,'126',2),(367,'127',2),(368,'128',2),(369,'129',2),(168,'13',8),(42,'130',3),(33,'131',3),(161,'132',7),(136,'132a',7),(43,'133',3),(34,'134',3),(35,'135',3),(36,'136',3),(44,'137',3),(45,'138',3),(46,'139',3),(47,'140',3),(137,'141',7),(138,'142',7),(195,'143',9),(93,'144',5),(85,'145',5),(86,'147',5),(87,'148',5),(94,'149',5),(10,'15',1),(95,'150',5),(96,'151',5),(88,'152',5),(89,'153',5),(97,'154',5),(98,'155',5),(99,'156',5),(100,'157',5),(101,'159',5),(178,'160',9),(165,'161',8),(139,'162',7),(170,'163',8),(140,'164',7),(141,'165',7),(218,'166',10),(196,'167',9),(219,'168',10),(241,'169',10),(11,'17',1),(220,'170',10),(221,'171',10),(222,'172',10),(223,'173',10),(224,'174',10),(225,'175',10),(226,'176',10),(227,'177',10),(228,'178',10),(229,'179',10),(73,'18',4),(179,'180',9),(180,'181',9),(181,'182',9),(182,'183',9),(183,'184',9),(184,'185',9),(185,'186',9),(197,'187',9),(186,'188',9),(187,'189',9),(188,'190',9),(189,'191',9),(203,'192',9),(198,'193',9),(199,'194',9),(200,'195',9),(190,'196',9),(191,'197',9),(201,'198',9),(192,'199',9),(1,'2',1),(14,'20',2),(204,'200',9),(166,'201',8),(167,'202',8),(171,'203',8),(205,'204',9),(172,'205',8),(173,'206',8),(242,'207',10),(174,'208',8),(230,'209',10),(231,'210',10),(232,'211',10),(54,'212',4),(55,'213',4),(243,'214',10),(77,'215',4),(56,'216',4),(249,'217',11),(250,'218',11),(57,'219',4),(275,'22',12),(316,'220',13),(78,'221',4),(281,'222',12),(58,'223',4),(282,'225',12),(59,'226',4),(79,'227',4),(142,'228',7),(283,'229',12),(29,'23',3),(233,'230',10),(143,'231',7),(144,'232',7),(162,'233',7),(234,'234',10),(317,'235',13),(318,'236',13),(319,'237',13),(145,'238',7),(235,'239',10),(353,'24',12),(251,'240',11),(60,'241',4),(146,'242',7),(274,'243',11),(252,'244',11),(253,'245',11),(254,'246',11),(284,'247',12),(320,'248',13),(255,'249',11),(256,'250',11),(285,'251',12),(356,'252',12),(352,'253',12),(286,'254',12),(287,'255',12),(288,'256',12),(289,'257',12),(357,'258',12),(290,'259',12),(133,'26',7),(358,'260',12),(291,'261',12),(292,'262',12),(293,'263',12),(359,'264',12),(294,'265',12),(295,'266',12),(360,'267',12),(296,'268',12),(297,'269',12),(80,'270',4),(321,'271',13),(322,'272',13),(323,'273',13),(324,'274',13),(325,'275',13),(348,'276',13),(326,'277',13),(349,'278',13),(327,'279',13),(333,'28',14),(350,'280',13),(328,'281',13),(351,'282',13),(329,'283',13),(330,'285',13),(61,'286',4),(147,'287',7),(148,'288',7),(149,'289',7),(102,'29',6),(28,'290',2),(48,'291',3),(37,'292',3),(38,'293',3),(331,'294',13),(62,'295',4),(150,'296',7),(151,'297',7),(152,'298',7),(153,'299',7),(103,'29a',6),(163,'3',8),(206,'30',10),(154,'300',7),(298,'301',12),(155,'302',7),(156,'303',7),(157,'303a',7),(158,'304',7),(299,'305',12),(300,'306',12),(236,'307',10),(257,'308',11),(159,'309',7),(207,'31',10),(160,'310',7),(258,'311',11),(259,'312',11),(260,'313',11),(261,'313a',11),(262,'314',11),(263,'315',11),(105,'316',6),(106,'317',6),(107,'318',6),(108,'320',6),(109,'321',6),(110,'322',6),(111,'323',6),(112,'324',6),(113,'324a',6),(114,'325',6),(115,'326',6),(116,'327',6),(117,'328',6),(118,'329',6),(244,'33',11),(63,'330',4),(64,'331',4),(65,'332',4),(66,'333',4),(67,'334',4),(68,'335',4),(69,'336',4),(70,'337',4),(119,'338',6),(120,'339',6),(134,'34',7),(193,'340',9),(202,'341',9),(194,'341a',9),(121,'342',6),(122,'342a',6),(301,'343',12),(237,'344',10),(238,'345',10),(239,'346',10),(240,'347',10),(123,'348',6),(124,'348a',6),(125,'349',6),(135,'34a',7),(264,'350',11),(265,'351',11),(266,'352',11),(303,'353',12),(302,'353a',12),(304,'354',12),(305,'355',12),(126,'356',6),(127,'356a',6),(128,'357',6),(129,'358',6),(130,'359',6),(131,'360',6),(132,'360a',6),(71,'365',4),(72,'366',4),(334,'37',14),(104,'38',6),(306,'401',12),(307,'402',12),(342,'405',14),(346,'406',14),(343,'407',14),(308,'408',12),(276,'41',12),(344,'410',14),(309,'411',12),(310,'412',12),(311,'417',12),(81,'42',5),(267,'420',11),(90,'421',5),(268,'427',11),(269,'428',11),(175,'43',9),(270,'430',11),(332,'431',13),(271,'432',11),(272,'435',11),(273,'436',11),(208,'44',10),(82,'45',5),(245,'46',11),(246,'47',11),(209,'48',10),(83,'49',5),(176,'50',9),(361,'51',2),(210,'52',10),(362,'53',2),(211,'54',10),(91,'55',5),(212,'56',10),(213,'57',10),(214,'58',10),(215,'59',10),(177,'61',9),(354,'62',12),(355,'63',12),(39,'64',3),(40,'65',3),(30,'66',3),(31,'67',3),(32,'68',3),(335,'69',14),(84,'70',5),(345,'71',14),(336,'72',14),(337,'73',14),(277,'74',12),(338,'75',14),(339,'75a',14),(278,'76',12),(279,'77',12),(280,'77a',12),(216,'78',10),(247,'79',11),(248,'80',11),(15,'81',2),(92,'82',5),(217,'83',10),(49,'84',4),(50,'85',4),(74,'86',4),(51,'87',4),(164,'88',8),(312,'89',13),(340,'90',14),(341,'91',14),(169,'92',8),(313,'93',13),(52,'94',4),(75,'95',4),(76,'96',4),(314,'97',13),(315,'98',13),(347,'99',13);
/*!40000 ALTER TABLE `wells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dpr'
--

--
-- Dumping routines for database 'dpr'
--
/*!50003 DROP PROCEDURE IF EXISTS `DeleteAllEntries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteAllEntries`()
BEGIN
    TRUNCATE TABLE flowmeters;
    TRUNCATE TABLE well_stock;
    TRUNCATE TABLE completions;
    TRUNCATE TABLE well_downtime_reasons;
    TRUNCATE TABLE daily_well_parameters;
    TRUNCATE TABLE well_tests;
    TRUNCATE TABLE laboratory_results;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteEntries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteEntries`(IN reportDate DATE, IN platform VARCHAR(255) )
BEGIN
    DECLARE reportDateId INT;

    SET SQL_SAFE_UPDATES = 0;

    SELECT rd.id INTO reportDateId
    FROM report_dates AS rd
    WHERE rd.report_date = reportDate;

    DELETE flowmeters
    FROM flowmeters 
    INNER JOIN platforms ON flowmeters.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL);

    DELETE well_stock
    FROM well_stock
    INNER JOIN wells ON well_stock.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL);

    DELETE completions
    FROM completions
    INNER JOIN wells ON completions.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL);

    DELETE well_downtime_reasons
    FROM well_downtime_reasons
    INNER JOIN wells ON well_downtime_reasons.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    DELETE daily_well_parameters
    FROM daily_well_parameters
    INNER JOIN wells ON daily_well_parameters.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    DELETE well_tests
    FROM well_tests
    INNER JOIN wells ON well_tests.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    DELETE laboratory_results
    FROM laboratory_results
    INNER JOIN wells ON laboratory_results.well_id = wells.id
    INNER JOIN platforms ON wells.platform_id = platforms.id
    WHERE report_date_id = reportDateId AND (platforms.name = platform OR platform IS NULL); 

    SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteTodayEntries` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteTodayEntries`()
BEGIN
    DELETE FROM flowmeters WHERE DATE(created_at) = CURDATE();
    DELETE FROM well_stock WHERE DATE(created_at) = CURDATE();
    DELETE FROM completions WHERE DATE(created_at) = CURDATE();
    DELETE FROM well_downtime_reasons WHERE DATE(created_at) = CURDATE();
    DELETE FROM daily_well_parameters WHERE DATE(created_at) = CURDATE();
    DELETE FROM well_tests WHERE DATE(created_at) = CURDATE();
    DELETE FROM laboratory_results WHERE DATE(created_at) = CURDATE();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `complete_table`
--

/*!50001 DROP VIEW IF EXISTS `complete_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `complete_table` AS select `rd`.`report_date` AS `report_date`,`p`.`name` AS `platform`,`w`.`name` AS `well`,`wsc`.`name` AS `well_stock_category`,`wssc`.`name` AS `well_stock_sub_category`,`pwssc`.`name` AS `production_well_stock_sub_category`,`pm`.`name` AS `production_method`,`h`.`name` AS `horizon`,`dwp`.`flowmeter` AS `flowmeter`,`dwp`.`well_uptime_hours` AS `well_uptime_hours`,`dwp`.`choke` AS `choke`,`dwp`.`pqa` AS `Pqa`,`dwp`.`phf` AS `Phf`,`dwp`.`pba` AS `Pba`,`dwp`.`p6x9` AS `P6x9`,`dwp`.`P9x13` AS `P9x13`,`dwp`.`p13x20` AS `P13x20`,`dwp`.`liquid_ton` AS `liquid_ton`,`dwp`.`total_gas` AS `total_gas`,`dwp`.`gaslift_gas` AS `gaslift_gas`,`dwp`.`reported_water_cut` AS `reported_water_cut`,`dwp`.`water_cut` AS `allocated_water_cut`,`dwp`.`mechanical_impurities` AS `mechanical_impurities`,`dwp`.`oil_density` AS `oil_density`,`dwp`.`oil_loss_ton` AS `oil_loss_ton`,`wdr`.`downtime_category` AS `donwtime_category`,`pssa`.`name` AS `production_skin`,`wdr`.`comments` AS `comments` from ((((((((((((`daily_well_parameters` `dwp` left join `well_stock` `ws` on(((`dwp`.`well_id` = `ws`.`well_id`) and (`ws`.`report_date_id` = (select max(`ws`.`report_date_id`) from `well_stock` `ws_sub` where ((`ws_sub`.`well_id` = `dwp`.`well_id`) and (`ws_sub`.`report_date_id` <= `dwp`.`report_date_id`))))))) left join `completions` `c` on(((`dwp`.`well_id` = `c`.`well_id`) and (`c`.`report_date_id` = (select max(`c`.`report_date_id`) from `completions` `c_sub` where ((`c_sub`.`well_id` = `dwp`.`well_id`) and (`c_sub`.`report_date_id` <= `dwp`.`report_date_id`))))))) left join `well_downtime_reasons` `wdr` on(((`dwp`.`well_id` = `wdr`.`well_id`) and (`wdr`.`report_date_id` = (select max(`wdr`.`report_date_id`) from `well_downtime_reasons` `wdr_sub` where ((`wdr_sub`.`well_id` = `dwp`.`well_id`) and (`wdr_sub`.`report_date_id` <= `dwp`.`report_date_id`))))))) left join `wells` `w` on((`dwp`.`well_id` = `w`.`id`))) left join `platforms` `p` on((`w`.`platform_id` = `p`.`id`))) left join `report_dates` `rd` on((`dwp`.`report_date_id` = `rd`.`id`))) left join `well_stock_categories` `wsc` on((`ws`.`well_stock_category_id` = `wsc`.`id`))) left join `well_stock_sub_categories` `wssc` on((`ws`.`well_stock_sub_category_id` = `wssc`.`id`))) left join `production_well_stock_sub_categories` `pwssc` on((`ws`.`production_well_stock_sub_category_id` = `pwssc`.`id`))) left join `production_methods` `pm` on((`ws`.`production_method_id` = `pm`.`id`))) left join `horizons` `h` on((`c`.`horizon_id` = `h`.`id`))) left join `production_sub_skins_activities` `pssa` on((`wdr`.`production_sub_skins_activity_id` = `pssa`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-17 16:49:14
