CREATE DATABASE  IF NOT EXISTS `propertymanagementdatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `propertymanagementdatabase`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: propertymanagementdatabase
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment_schedules`
--

DROP TABLE IF EXISTS `appointment_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `appointment_schedules` (
  `AppointmentId` int(11) NOT NULL AUTO_INCREMENT,
  `Scheduled_Date` datetime NOT NULL,
  `StaffId` int(11) NOT NULL,
  `Resident_Id` int(11) NOT NULL,
  `MeetingNotes` varchar(45) DEFAULT NULL,
  `IS_MR_Logged` char(3) DEFAULT NULL,
  `MR_notes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AppointmentId`),
  KEY `Staff Id_idx` (`StaffId`),
  KEY `Resident Id_idx` (`Resident_Id`),
  CONSTRAINT `Resident Id` FOREIGN KEY (`Resident_Id`) REFERENCES `residential_details` (`resident_id`),
  CONSTRAINT `Staff Id` FOREIGN KEY (`StaffId`) REFERENCES `staffdetails` (`staff id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_schedules`
--

LOCK TABLES `appointment_schedules` WRITE;
/*!40000 ALTER TABLE `appointment_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointment_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildingdetails`
--

DROP TABLE IF EXISTS `buildingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buildingdetails` (
  `Building number` int(11) NOT NULL,
  `Parking Facility` varchar(45) DEFAULT NULL,
  `Gym facility` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Building number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildingdetails`
--

LOCK TABLES `buildingdetails` WRITE;
/*!40000 ALTER TABLE `buildingdetails` DISABLE KEYS */;
INSERT INTO `buildingdetails` VALUES (1,'Parking available','Gym available'),(2,'Parking available','Gym not available'),(3,'Parking available','Gym not available'),(4,'Parking available','Gym not available'),(5,'Parking available','Gym not available'),(6,'Parking available','Gym available'),(7,'Street parking','Gym not available'),(8,'Street Parking','Gym not available'),(9,'Parking available','Gym not available'),(10,'Parking available','Gym available');
/*!40000 ALTER TABLE `buildingdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_check`
--

DROP TABLE IF EXISTS `inspection_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `inspection_check` (
  `InspectionId` int(11) NOT NULL AUTO_INCREMENT,
  `Date_logged` datetime NOT NULL,
  `Inspected_By` int(11) NOT NULL,
  `NoOfUnits` int(11) DEFAULT NULL,
  `Unit_Id_number` int(11) NOT NULL,
  `No_of_devices_damaged` int(11) DEFAULT NULL,
  PRIMARY KEY (`InspectionId`),
  UNIQUE KEY `Unit Id number_UNIQUE` (`Unit_Id_number`),
  KEY `Staff Id_idx` (`Inspected_By`),
  CONSTRAINT `Inspected_By` FOREIGN KEY (`Inspected_By`) REFERENCES `staffdetails` (`staff id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_check`
--

LOCK TABLES `inspection_check` WRITE;
/*!40000 ALTER TABLE `inspection_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `inspection_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leasedetails`
--

DROP TABLE IF EXISTS `leasedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `leasedetails` (
  `LeaseId` int(11) NOT NULL AUTO_INCREMENT,
  `Resident_Building_Number` int(11) NOT NULL,
  `Resident_Unit_Number` int(11) NOT NULL,
  `Upcoming_Resident` int(11) NOT NULL,
  `Lease_Date` datetime NOT NULL,
  `LeaseStartDate` datetime NOT NULL,
  `LeaseEndDate` datetime NOT NULL,
  `LeaseTerm` int(11) NOT NULL,
  `MonthlyRent` int(11) NOT NULL,
  `SecurityDepositAmount` int(11) NOT NULL,
  `Pet_Deposit` int(11) DEFAULT NULL,
  `Lease_Status` varchar(10) NOT NULL,
  PRIMARY KEY (`LeaseId`),
  KEY `Resident Id_idx` (`Upcoming_Resident`),
  KEY `Building number_idx` (`Resident_Building_Number`),
  KEY `Unit number_idx` (`Resident_Unit_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leasedetails`
--

LOCK TABLES `leasedetails` WRITE;
/*!40000 ALTER TABLE `leasedetails` DISABLE KEYS */;
INSERT INTO `leasedetails` VALUES (7,1,1,1,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(8,1,1,2,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(9,1,2,3,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(10,1,2,4,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2250,2250,0,'Active'),(11,1,3,2,'2018-09-01 00:00:00','2018-09-01 00:00:00','2019-08-31 00:00:00',12,2500,2500,100,'Active'),(12,2,3,5,'2018-12-11 00:00:00','2019-01-01 00:00:00','2020-12-31 00:00:00',12,2700,2700,150,'Active'),(13,2,3,6,'2018-12-11 00:00:00','2017-01-01 00:00:00','2018-06-30 00:00:00',6,2700,2700,150,'Expired');
/*!40000 ALTER TABLE `leasedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leasepayment`
--

DROP TABLE IF EXISTS `leasepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `leasepayment` (
  `LeasePaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `PaymentType` varchar(45) NOT NULL,
  `PaymentDate` datetime NOT NULL,
  `PaymentAmount` int(11) NOT NULL,
  `LeaseId` int(11) NOT NULL,
  `Late_Fees` int(11) DEFAULT NULL,
  `Paid_By` int(11) DEFAULT NULL,
  PRIMARY KEY (`LeasePaymentId`),
  KEY `LeaseId_idx` (`LeaseId`),
  KEY `Paid By_idx` (`Paid_By`),
  CONSTRAINT `Lease Id` FOREIGN KEY (`LeaseId`) REFERENCES `leasedetails` (`leaseid`),
  CONSTRAINT `Paid By` FOREIGN KEY (`Paid_By`) REFERENCES `residential_details` (`resident_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leasepayment`
--

LOCK TABLES `leasepayment` WRITE;
/*!40000 ALTER TABLE `leasepayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `leasepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_requests`
--

DROP TABLE IF EXISTS `maintenance_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `maintenance_requests` (
  `RequestId` int(11) NOT NULL AUTO_INCREMENT,
  `Logged By` int(11) NOT NULL,
  `Reported_to_staff id` int(11) NOT NULL,
  `MR_notes` varchar(45) DEFAULT NULL,
  `Priority` varchar(45) NOT NULL,
  `Date_Logged` datetime DEFAULT NULL,
  `Status` varchar(45) NOT NULL,
  `Due_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`RequestId`),
  KEY `Reported to Staff id_idx` (`Reported_to_staff id`),
  KEY `Logged By Resident Id_idx` (`Logged By`),
  CONSTRAINT `Logged By Resident Id` FOREIGN KEY (`Logged By`) REFERENCES `residential_details` (`resident_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_requests`
--

LOCK TABLES `maintenance_requests` WRITE;
/*!40000 ALTER TABLE `maintenance_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residential_details`
--

DROP TABLE IF EXISTS `residential_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `residential_details` (
  `Resident_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Resident_First_Name` varchar(45) NOT NULL,
  `Resident_Last_Name` varchar(45) NOT NULL,
  `Resident_Email_Address` varchar(45) DEFAULT NULL,
  `Home_Phone` bigint(20) NOT NULL,
  `Mobile_Phone` bigint(20) NOT NULL,
  PRIMARY KEY (`Resident_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residential_details`
--

LOCK TABLES `residential_details` WRITE;
/*!40000 ALTER TABLE `residential_details` DISABLE KEYS */;
INSERT INTO `residential_details` VALUES (6,'Ashmita','Nigam','ashmitan@gmail.com',9,90),(7,'Ria','Rajput','rrajput@hotmail.com',9920055780,9867227460),(8,'Jessica','Simpson','jsimpson@hotmail.com',8572631098,8572891100),(9,'Wang','Wei','wangwei@yahoo.com',8761234980,866690056),(10,'Jennifer','Goddard','jenniferg@gmail.com',7074119097,7074119097);
/*!40000 ALTER TABLE `residential_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `RoleId` int(11) NOT NULL,
  `Role name` varchar(45) NOT NULL,
  PRIMARY KEY (`RoleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Management Staff'),(2,'Maintenance Staff');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitydepositreturns`
--

DROP TABLE IF EXISTS `securitydepositreturns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `securitydepositreturns` (
  `PaymentId` int(11) NOT NULL AUTO_INCREMENT,
  `Return_Date` datetime NOT NULL,
  `SecurityDepositAmount` int(11) NOT NULL,
  `Amount_returned_after_lease` int(11) DEFAULT NULL,
  `Leaving_Res_BldgNo` int(11) NOT NULL,
  `Unit_No` int(11) NOT NULL,
  `Leaving_Resident` int(11) NOT NULL,
  PRIMARY KEY (`PaymentId`),
  KEY `Building number_idx` (`Leaving_Res_BldgNo`),
  KEY `Unit number_idx` (`Unit_No`),
  KEY `Leaving Resident_idx` (`Leaving_Resident`),
  CONSTRAINT `Leaving Resident` FOREIGN KEY (`Leaving_Resident`) REFERENCES `leasedetails` (`upcoming_resident`),
  CONSTRAINT `Resident Bldg No` FOREIGN KEY (`Leaving_Res_BldgNo`) REFERENCES `leasedetails` (`resident_building_number`),
  CONSTRAINT `Resident Unit No` FOREIGN KEY (`Unit_No`) REFERENCES `leasedetails` (`resident_unit_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitydepositreturns`
--

LOCK TABLES `securitydepositreturns` WRITE;
/*!40000 ALTER TABLE `securitydepositreturns` DISABLE KEYS */;
INSERT INTO `securitydepositreturns` VALUES (3,'2018-08-31 00:00:00',2500,2450,2,3,6),(4,'2018-01-02 10:00:00',2000,1500,1,1,1);
/*!40000 ALTER TABLE `securitydepositreturns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffdetails`
--

DROP TABLE IF EXISTS `staffdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `staffdetails` (
  `Staff id` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_First_Name` varchar(45) NOT NULL,
  `Staff_Last_Name` varchar(45) NOT NULL,
  `Role_RoleId` int(11) NOT NULL,
  PRIMARY KEY (`Staff id`),
  KEY `fk_Staff Table_Role_idx` (`Role_RoleId`),
  CONSTRAINT `RoleId` FOREIGN KEY (`Role_RoleId`) REFERENCES `role` (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffdetails`
--

LOCK TABLES `staffdetails` WRITE;
/*!40000 ALTER TABLE `staffdetails` DISABLE KEYS */;
INSERT INTO `staffdetails` VALUES (7,'Yana','Simpson',2);
/*!40000 ALTER TABLE `staffdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unitdetails`
--

DROP TABLE IF EXISTS `unitdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `unitdetails` (
  `Unit_number` int(11) NOT NULL,
  `Building_No` int(11) NOT NULL,
  `Unit_Type` varchar(45) NOT NULL,
  `In_Unit_Laundry` char(3) DEFAULT NULL,
  `Pets_Allowed` char(3) DEFAULT NULL,
  `No_of_bedrooms` varchar(45) NOT NULL,
  `No_of_bathrooms` varchar(45) NOT NULL,
  `Current_Resident` int(11) DEFAULT NULL,
  PRIMARY KEY (`Unit_number`),
  KEY `Resident Id_idx` (`Current_Resident`),
  KEY `Building number_idx` (`Building_No`),
  CONSTRAINT `Building No` FOREIGN KEY (`Building_No`) REFERENCES `buildingdetails` (`building number`),
  CONSTRAINT `Current Resident` FOREIGN KEY (`Current_Resident`) REFERENCES `residential_details` (`resident_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unitdetails`
--

LOCK TABLES `unitdetails` WRITE;
/*!40000 ALTER TABLE `unitdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `unitdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `negative_value` BEFORE INSERT ON `unitdetails` FOR EACH ROW begin
    SET @NoOfBedrooms:= NEW.No_of_Bedrooms;
    IF new.No_of_Bedrooms < 0 then
    signal sqlstate '45000' set message_text = "Trying to insert a negative value in table";
    end if;
end */;;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `negative_value_bathrooms` BEFORE INSERT ON `unitdetails` FOR EACH ROW begin
    SET @NoOfBathrooms:= NEW.No_of_Bathrooms;
    IF new.No_of_Bedrooms < 0 then
    signal sqlstate '45000' set message_text = "Trying to insert a negative value in table";
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `viewleasedetails`
--

DROP TABLE IF EXISTS `viewleasedetails`;
/*!50001 DROP VIEW IF EXISTS `viewleasedetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewleasedetails` AS SELECT 
 1 AS `leaseId`,
 1 AS `Resident_Building_Number`,
 1 AS `Resident_Unit_Number`,
 1 AS `LeaseStartDate`,
 1 AS `LeaseEndDate`,
 1 AS `LeasePaymentId`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewresdetails`
--

DROP TABLE IF EXISTS `viewresdetails`;
/*!50001 DROP VIEW IF EXISTS `viewresdetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `viewresdetails` AS SELECT 
 1 AS `Resident_Id`,
 1 AS `Resident_First_Name`,
 1 AS `Resident_Last_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'propertymanagementdatabase'
--

--
-- Dumping routines for database 'propertymanagementdatabase'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_AddDatatoSecurityDeposit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_AddDatatoSecurityDeposit`(IN Return_Date datetime,
 IN SecurityDepositAmount INT,
 IN Amount_returned_after_lease INT,
 IN Leaving_Res_BldgNo INT,
 IN Unit_No INT,
 IN Leaving_Resident INT)
BEGIN
INSERT INTO SecurityDepositReturns(
 Return_Date,
 SecurityDepositAmount,
 Amount_returned_after_lease,
 Leaving_Res_BldgNo,
 Unit_No,
 Leaving_Resident
 )
 values 
 ( Return_Date,
 SecurityDepositAmount,
 Amount_returned_after_lease,
 Leaving_Res_BldgNo,
 Unit_No,
 Leaving_Resident);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `viewleasedetails`
--

/*!50001 DROP VIEW IF EXISTS `viewleasedetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewleasedetails` AS select `ld`.`LeaseId` AS `leaseId`,`ld`.`Resident_Building_Number` AS `Resident_Building_Number`,`ld`.`Resident_Unit_Number` AS `Resident_Unit_Number`,`ld`.`LeaseStartDate` AS `LeaseStartDate`,`ld`.`LeaseEndDate` AS `LeaseEndDate`,`lp`.`LeasePaymentId` AS `LeasePaymentId` from (`leasedetails` `ld` join `leasepayment` `lp` on((`ld`.`LeaseId` = `lp`.`LeaseId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewresdetails`
--

/*!50001 DROP VIEW IF EXISTS `viewresdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewresdetails` AS select `rd`.`Resident_Id` AS `Resident_Id`,`rd`.`Resident_First_Name` AS `Resident_First_Name`,`rd`.`Resident_Last_Name` AS `Resident_Last_Name` from (`residential_details` `rd` join `leasedetails` `ld` on((`rd`.`Resident_Id` = `ld`.`Upcoming_Resident`))) */;
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

-- Dump completed on 2018-12-13 11:47:40
