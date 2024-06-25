-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: db-clinicalsystem.c5w4osi0sl7q.us-east-2.rds.amazonaws.com    Database: clinicalsystem
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Temporary view structure for view `estudos`
--

DROP TABLE IF EXISTS `estudos`;
/*!50001 DROP VIEW IF EXISTS `estudos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `estudos` AS SELECT 
 1 AS `id`,
 1 AS `ntcId`,
 1 AS `briefTitle`,
 1 AS `officialTitle`,
 1 AS `overallStatus`,
 1 AS `studyFirstSubmitDate`,
 1 AS `studyFirstPostDate`,
 1 AS `farma`,
 1 AS `count`,
 1 AS `sex`,
 1 AS `condicoes`,
 1 AS `faixa_etaria`,
 1 AS `fases`,
 1 AS `clinica`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `estudos`
--

/*!50001 DROP VIEW IF EXISTS `estudos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`admin`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `estudos` AS select `e`.`id` AS `id`,`e`.`ntcId` AS `ntcId`,`e`.`briefTitle` AS `briefTitle`,`e`.`officialTitle` AS `officialTitle`,`e`.`overallStatus` AS `overallStatus`,`e`.`studyFirstSubmitDate` AS `studyFirstSubmitDate`,`e`.`studyFirstPostDate` AS `studyFirstPostDate`,`e`.`farma` AS `farma`,`e`.`count` AS `count`,`e`.`sex` AS `sex`,group_concat(distinct `c`.`nome` separator ', ') AS `condicoes`,group_concat(distinct `fa`.`faixa_etaria` separator ', ') AS `faixa_etaria`,group_concat(distinct `f`.`fase` separator ', ') AS `fases`,group_concat(distinct `l`.`clinica` separator ', ') AS `clinica` from ((((`estudo` `e` left join `condicao` `c` on((`c`.`ntcId` = `e`.`ntcId`))) left join `faixa_etaria` `fa` on((`fa`.`ntcId` = `e`.`ntcId`))) left join `fase` `f` on((`f`.`ntcId` = `e`.`ntcId`))) left join `location` `l` on((`l`.`ntcId` = `e`.`ntcId`))) group by `e`.`id`,`e`.`ntcId`,`e`.`briefTitle`,`e`.`officialTitle`,`e`.`overallStatus`,`e`.`studyFirstSubmitDate`,`e`.`studyFirstPostDate`,`e`.`farma`,`e`.`count`,`e`.`sex` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-25  0:16:30
