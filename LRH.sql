-- MySQL dump 10.13  Distrib 8.0.41, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: lastresort
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `access_log`
--

DROP TABLE IF EXISTS `access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `access_log` (
  `logId` int NOT NULL AUTO_INCREMENT,
  `cardId` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `exitTime` datetime DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `cardId` (`cardId`),
  CONSTRAINT `access_log_ibfk_1` FOREIGN KEY (`cardId`) REFERENCES `guest_pin_card` (`cardId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_log`
--

LOCK TABLES `access_log` WRITE;
/*!40000 ALTER TABLE `access_log` DISABLE KEYS */;
INSERT INTO `access_log` VALUES (1,1001,'Lobby','2019-01-27 08:00:00','2019-01-27 09:30:00'),(2,1002,'Gym','2019-01-27 08:15:00','2019-01-27 09:45:00'),(3,1003,'Cafeteria','2019-01-27 09:00:00','2019-01-27 10:00:00'),(4,1004,'Lobby','2019-01-27 09:30:00','2019-01-27 11:00:00'),(5,1005,'Gym','2019-01-27 10:00:00','2019-01-27 12:00:00'),(6,1006,'Cafeteria','2020-01-27 10:15:00','2020-01-27 12:15:00'),(7,1007,'Lobby','2020-01-27 11:00:00','2020-01-27 12:30:00'),(8,1008,'Gym','2020-01-27 11:15:00','2020-01-27 12:45:00'),(9,1009,'Cafeteria','2020-01-27 12:00:00','2020-01-27 14:00:00'),(10,1010,'Lobby','2020-01-27 12:30:00','2020-01-27 14:30:00'),(11,1011,'Gym','2021-01-27 13:00:00','2021-01-27 14:30:00'),(12,1012,'Cafeteria','2021-01-27 13:15:00','2021-01-27 14:45:00'),(13,1013,'Lobby','2021-01-27 14:00:00','2021-01-27 15:30:00'),(14,1014,'Gym','2021-01-27 14:15:00','2021-01-27 16:15:00'),(15,1015,'Cafeteria','2021-01-27 15:00:00','2021-01-27 16:30:00'),(16,1016,'Lobby','2022-01-27 15:30:00','2022-01-27 17:30:00'),(17,1017,'Gym','2022-01-27 16:00:00','2022-01-27 17:00:00'),(18,1018,'Cafeteria','2022-01-27 16:15:00','2022-01-27 18:15:00'),(19,1019,'Lobby','2022-01-27 17:00:00','2022-01-27 18:30:00'),(20,1020,'Gym','2022-01-27 17:15:00','2022-01-27 19:15:00'),(21,1021,'Cafeteria','2023-01-27 18:00:00','2023-01-27 19:30:00'),(22,1022,'Lobby','2023-01-27 18:30:00','2023-01-27 20:30:00'),(23,1023,'Gym','2023-01-27 19:00:00','2023-01-27 20:00:00'),(24,1024,'Cafeteria','2023-01-27 19:15:00','2023-01-27 21:15:00'),(25,1025,'Lobby','2023-01-27 20:00:00','2023-01-27 21:00:00'),(26,1026,'Gym','2024-01-27 20:15:00','2024-01-27 22:15:00'),(27,1027,'Cafeteria','2024-01-27 21:00:00','2024-01-27 23:00:00'),(28,1028,'Lobby','2024-01-27 21:30:00','2024-01-27 23:30:00'),(29,1029,'Gym','2024-01-27 22:00:00','2024-01-28 00:00:00'),(30,1030,'Cafeteria','2024-01-27 22:15:00','2024-01-28 00:45:00');
/*!40000 ALTER TABLE `access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed`
--

DROP TABLE IF EXISTS `bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed` (
  `bedId` int NOT NULL AUTO_INCREMENT,
  `bedType` varchar(50) DEFAULT NULL,
  `bedSize` varchar(50) DEFAULT NULL,
  `roomId` int DEFAULT NULL,
  PRIMARY KEY (`bedId`),
  KEY `roomId` (`roomId`),
  CONSTRAINT `bed_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed`
--

LOCK TABLES `bed` WRITE;
/*!40000 ALTER TABLE `bed` DISABLE KEYS */;
INSERT INTO `bed` VALUES (1,'Standard','Twin',1),(2,'Standard','Twin',1),(3,'Deluxe','Queen',2),(4,'Deluxe','Queen',2),(5,'Suite','King',3),(6,'Suite','King',4),(7,'Standard','Twin',5),(8,'Standard','Twin',5),(9,'Standard','Full',6),(10,'Standard','Full',6),(11,'Deluxe','Queen',7),(12,'Deluxe','Queen',8),(13,'Suite','King',9),(14,'Suite','King',10),(15,'Standard','Twin',11),(16,'Standard','Twin',12),(17,'Standard','Twin',13),(18,'Standard','Twin',14),(19,'Deluxe','Queen',15),(20,'Deluxe','Queen',16);
/*!40000 ALTER TABLE `bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_party`
--

DROP TABLE IF EXISTS `billing_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_party` (
  `billingPartyId` int NOT NULL AUTO_INCREMENT,
  `billingAddress` varchar(255) DEFAULT NULL,
  `contactInfo` varchar(100) DEFAULT NULL,
  `guestId` int DEFAULT NULL,
  PRIMARY KEY (`billingPartyId`),
  KEY `fk_guestId_billing_party_idx` (`guestId`),
  CONSTRAINT `fk_guestId_billing_party` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_party`
--

LOCK TABLES `billing_party` WRITE;
/*!40000 ALTER TABLE `billing_party` DISABLE KEYS */;
INSERT INTO `billing_party` VALUES (1,'123 Main St #1','billing1@email.com',NULL),(2,'123 Main St #2','billing2@email.com',NULL),(3,'123 Main St #3','billing3@email.com',NULL),(4,'123 Main St #4','billing4@email.com',NULL),(5,'123 Main St #5','billing5@email.com',NULL),(6,'123 Main St #6','billing6@email.com',NULL),(7,'123 Main St #7','billing7@email.com',NULL),(8,'123 Main St #8','billing8@email.com',NULL),(9,'123 Main St #9','billing9@email.com',NULL),(10,'123 Main St #10','billing10@email.com',NULL),(11,'123 Main St #11','billing11@email.com',NULL),(12,'123 Main St #12','billing12@email.com',NULL),(13,'123 Main St #13','billing13@email.com',NULL),(14,'123 Main St #14','billing14@email.com',NULL),(15,'123 Main St #15','billing15@email.com',NULL),(16,'123 Main St #16','billing16@email.com',NULL),(17,'123 Main St #17','billing17@email.com',NULL),(18,'123 Main St #18','billing18@email.com',NULL),(19,'123 Main St #19','billing19@email.com',NULL),(20,'123 Main St #20','billing20@email.com',NULL);
/*!40000 ALTER TABLE `billing_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `buildingId` int NOT NULL AUTO_INCREMENT,
  `hotelId` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`buildingId`),
  KEY `hotelId` (`hotelId`),
  CONSTRAINT `building_ibfk_1` FOREIGN KEY (`hotelId`) REFERENCES `hotel` (`hotelId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,1,'Main Building'),(2,1,'North Tower'),(3,1,'South Wing');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_forward_log`
--

DROP TABLE IF EXISTS `call_forward_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_forward_log` (
  `logId` int NOT NULL AUTO_INCREMENT,
  `guestId` int DEFAULT NULL,
  `forwardTo` varchar(100) DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `call_forward_log_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_forward_log`
--

LOCK TABLES `call_forward_log` WRITE;
/*!40000 ALTER TABLE `call_forward_log` DISABLE KEYS */;
INSERT INTO `call_forward_log` VALUES (1,1,'555-1111','2025-03-01 09:00:00','2025-03-01 10:00:00'),(2,2,'555-2222','2025-03-01 10:15:00','2025-03-01 11:30:00'),(3,3,'555-3333','2025-03-01 12:00:00','2025-03-01 13:30:00'),(4,4,'555-4444','2025-03-01 14:00:00','2025-03-01 15:00:00'),(5,5,'555-5555','2025-03-01 15:30:00','2025-03-01 16:30:00');
/*!40000 ALTER TABLE `call_forward_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit` (
  `depositId` int NOT NULL AUTO_INCREMENT,
  `billingId` int DEFAULT NULL,
  `guestId` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`depositId`),
  KEY `billingId` (`billingId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `deposit_ibfk_1` FOREIGN KEY (`billingId`) REFERENCES `billing_party` (`billingPartyId`),
  CONSTRAINT `deposit_ibfk_2` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit`
--

LOCK TABLES `deposit` WRITE;
/*!40000 ALTER TABLE `deposit` DISABLE KEYS */;
INSERT INTO `deposit` VALUES (1,1,1,300.00),(2,2,2,250.00),(3,3,3,280.00),(4,4,4,320.00),(5,5,5,310.00),(6,6,6,270.00),(7,7,7,290.00),(8,8,8,330.00),(9,9,9,300.00),(10,10,10,305.00);
/*!40000 ALTER TABLE `deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dining`
--

DROP TABLE IF EXISTS `dining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dining` (
  `diningId` int NOT NULL AUTO_INCREMENT,
  `guestId` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `mealType` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`diningId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `dining_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dining`
--

LOCK TABLES `dining` WRITE;
/*!40000 ALTER TABLE `dining` DISABLE KEYS */;
INSERT INTO `dining` VALUES (1,67,'Main Restaurant','Dinner',35.00,'2025-03-02'),(2,47,'Main Restaurant','Dinner',47.00,'2025-03-27'),(3,21,'Poolside Bar','Lunch',43.00,'2025-03-07'),(4,73,'Main Restaurant','Dinner',67.00,'2025-03-22'),(5,52,'Main Restaurant','Breakfast',48.00,'2025-03-22'),(6,27,'Main Restaurant','Dinner',60.00,'2025-03-23'),(7,48,'Main Restaurant','Dinner',40.00,'2025-03-04'),(8,29,'Rooftop Lounge','Dinner',67.00,'2025-03-20'),(9,29,'Rooftop Lounge','Dinner',74.00,'2025-03-10'),(10,23,'Main Restaurant','Dinner',77.00,'2025-03-07'),(11,16,'Main Restaurant','Dinner',44.00,'2025-03-27'),(12,18,'Poolside Bar','Lunch',45.00,'2025-03-11'),(13,58,'Main Restaurant','Dinner',58.00,'2025-03-11'),(14,53,'Main Restaurant','Dinner',52.00,'2025-03-09'),(15,35,'Main Restaurant','Dinner',66.00,'2025-03-23'),(16,74,'Rooftop Lounge','Dinner',53.00,'2025-03-02'),(17,46,'Poolside Bar','Lunch',51.00,'2025-03-06'),(18,57,'Main Restaurant','Dinner',47.00,'2025-03-09'),(19,51,'Main Restaurant','Dinner',55.00,'2025-03-17'),(20,1,'Main Restaurant','Breakfast',47.00,'2025-03-24'),(21,43,'Main Restaurant','Dinner',42.00,'2025-03-06'),(22,17,'Main Restaurant','Dinner',71.00,'2025-03-04'),(23,19,'Main Restaurant','Breakfast',65.00,'2025-03-06'),(24,31,'Main Restaurant','Dinner',66.00,'2025-03-16'),(25,18,'Rooftop Lounge','Dinner',34.00,'2025-03-21'),(26,23,'Main Restaurant','Lunch',68.00,'2025-03-14'),(27,37,'Main Restaurant','Dinner',74.00,'2025-03-01'),(28,5,'Main Restaurant','Lunch',42.00,'2025-03-17'),(29,65,'Rooftop Lounge','Dinner',61.00,'2025-03-13'),(30,37,'Main Restaurant','Dinner',66.00,'2025-03-03'),(31,28,'Main Restaurant','Breakfast',41.00,'2025-03-25'),(32,64,'Main Restaurant','Dinner',43.00,'2025-03-07'),(33,64,'Main Restaurant','Dinner',51.00,'2025-03-02'),(34,65,'Main Restaurant','Dinner',73.00,'2025-03-15'),(35,35,'Main Restaurant','Lunch',54.00,'2025-03-25'),(36,10,'Main Restaurant','Dinner',47.00,'2025-03-27'),(37,64,'Rooftop Lounge','Dinner',51.00,'2025-03-04'),(38,39,'Main Restaurant','Dinner',76.00,'2025-03-10'),(39,42,'Main Restaurant','Dinner',39.00,'2025-03-20'),(40,58,'Main Restaurant','Lunch',76.00,'2025-03-09'),(41,40,'Main Restaurant','Dinner',79.00,'2025-03-02'),(42,31,'Main Restaurant','Dinner',56.00,'2025-03-20'),(43,4,'Rooftop Lounge','Dinner',53.00,'2025-03-02'),(44,4,'Main Restaurant','Breakfast',38.00,'2025-03-07'),(45,53,'Main Restaurant','Dinner',79.00,'2025-03-13'),(46,13,'Main Restaurant','Dinner',32.00,'2025-03-09'),(47,28,'Main Restaurant','Breakfast',65.00,'2025-03-16'),(48,33,'Main Restaurant','Dinner',54.00,'2025-03-28'),(49,22,'Poolside Bar','Lunch',64.00,'2025-03-13'),(50,59,'Main Restaurant','Dinner',59.00,'2025-03-01');
/*!40000 ALTER TABLE `dining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `telephoneNo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Emp_1','Reception',35887.00,'555-3868'),(2,'Emp_2','Housekeeping',32103.00,'555-3971'),(3,'Emp_3','Housekeeping',36651.00,'555-1468'),(4,'Emp_4','Reception',41689.00,'555-3528'),(5,'Emp_5','Housekeeping',49988.00,'555-9549'),(6,'Emp_6','Reception',31646.00,'555-4601'),(7,'Emp_7','Housekeeping',52222.00,'555-3797'),(8,'Emp_8','Maintenance',34742.00,'555-1316'),(9,'Emp_9','Reception',59210.00,'555-4536'),(10,'Emp_10','Reception',39399.00,'555-2108'),(11,'Emp_11','Reception',52289.00,'555-5080'),(12,'Emp_12','Reception',57013.00,'555-4911'),(13,'Emp_13','Housekeeping',52898.00,'555-7830'),(14,'Emp_14','Maintenance',30646.00,'555-1158'),(15,'Emp_15','Housekeeping',44607.00,'555-3999'),(16,'Emp_16','Reception',31115.00,'555-4468'),(17,'Emp_17','Housekeeping',44546.00,'555-1032'),(18,'Emp_18','Housekeeping',32415.00,'555-9534'),(19,'Emp_19','Housekeeping',55651.00,'555-3906'),(20,'Emp_20','Maintenance',37092.00,'555-3888');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_mag_card`
--

DROP TABLE IF EXISTS `employee_mag_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_mag_card` (
  `cardId` int NOT NULL AUTO_INCREMENT,
  `employeeId` int DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  PRIMARY KEY (`cardId`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `employee_mag_card_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_mag_card`
--

LOCK TABLES `employee_mag_card` WRITE;
/*!40000 ALTER TABLE `employee_mag_card` DISABLE KEYS */;
INSERT INTO `employee_mag_card` VALUES (1001,1,'2025-01-01'),(1002,2,'2025-01-02'),(1003,3,'2025-01-03'),(1004,4,'2025-01-04'),(1005,5,'2025-01-05'),(1006,6,'2025-01-06'),(1007,7,'2025-01-07'),(1008,8,'2025-01-08'),(1009,9,'2025-01-09'),(1010,10,'2025-01-10');
/*!40000 ALTER TABLE `employee_mag_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_room_task`
--

DROP TABLE IF EXISTS `employee_room_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_room_task` (
  `roomId` int NOT NULL,
  `taskCode` int NOT NULL,
  `employeeId` int NOT NULL,
  `assignedDate` date DEFAULT NULL,
  `completeDate` date DEFAULT NULL,
  PRIMARY KEY (`roomId`,`taskCode`,`employeeId`),
  KEY `taskCode` (`taskCode`),
  KEY `employeeId` (`employeeId`),
  CONSTRAINT `employee_room_task_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`),
  CONSTRAINT `employee_room_task_ibfk_2` FOREIGN KEY (`taskCode`) REFERENCES `task` (`taskCode`),
  CONSTRAINT `employee_room_task_ibfk_3` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`employeeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_room_task`
--

LOCK TABLES `employee_room_task` WRITE;
/*!40000 ALTER TABLE `employee_room_task` DISABLE KEYS */;
INSERT INTO `employee_room_task` VALUES (1,1,1,'2025-03-01','2025-03-01'),(2,1,2,'2025-03-02','2025-03-02'),(3,2,3,'2025-03-03','2025-03-04'),(4,2,4,'2025-03-04','2025-03-05'),(5,1,5,'2025-03-05','2025-03-05'),(6,1,6,'2025-03-06','2025-03-06'),(7,2,7,'2025-03-07','2025-03-08'),(8,1,8,'2025-03-08','2025-03-08'),(9,1,9,'2025-03-09','2025-03-09'),(10,2,10,'2025-03-10','2025-03-11');
/*!40000 ALTER TABLE `employee_room_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `eventId` int NOT NULL AUTO_INCREMENT,
  `hostId` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `estimatedAttendance` int DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  KEY `hostId` (`hostId`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`hostId`) REFERENCES `host` (`hostId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,1,'Spring Gala',150),(2,2,'Tech Conference',300),(3,3,'Wedding Reception',100),(4,4,'Charity Banquet',200),(5,5,'Summer Festival',500),(6,6,'Business Retreat',50),(7,7,'Art Exhibit',120),(8,8,'Wellness Workshop',80),(9,9,'Music Night',250),(10,10,'Food Tasting Event',180);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_discount`
--

DROP TABLE IF EXISTS `event_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_discount` (
  `discountId` int NOT NULL AUTO_INCREMENT,
  `mainBillId` int DEFAULT NULL,
  `guestAmount` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`discountId`),
  KEY `mainBillId` (`mainBillId`),
  CONSTRAINT `event_discount_ibfk_1` FOREIGN KEY (`mainBillId`) REFERENCES `main_bill` (`mainBillId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_discount`
--

LOCK TABLES `event_discount` WRITE;
/*!40000 ALTER TABLE `event_discount` DISABLE KEYS */;
INSERT INTO `event_discount` VALUES (1,1,20,50.00),(2,2,15,30.00),(3,3,10,25.00),(4,4,13,35.00),(5,5,5,15.00),(6,6,18,40.00),(7,7,25,60.00),(8,8,8,20.00),(9,9,8,18.00),(10,10,22,55.00);
/*!40000 ALTER TABLE `event_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_guest`
--

DROP TABLE IF EXISTS `event_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_guest` (
  `eventId` int NOT NULL,
  `guestId` int NOT NULL,
  PRIMARY KEY (`eventId`,`guestId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `event_guest_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `event` (`eventId`),
  CONSTRAINT `event_guest_ibfk_2` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_guest`
--

LOCK TABLES `event_guest` WRITE;
/*!40000 ALTER TABLE `event_guest` DISABLE KEYS */;
INSERT INTO `event_guest` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(5,8),(5,9),(6,10);
/*!40000 ALTER TABLE `event_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_room`
--

DROP TABLE IF EXISTS `event_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_room` (
  `eventId` int NOT NULL,
  `roomId` int NOT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  PRIMARY KEY (`eventId`,`roomId`),
  KEY `roomId` (`roomId`),
  CONSTRAINT `event_room_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `event` (`eventId`),
  CONSTRAINT `event_room_ibfk_2` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_room`
--

LOCK TABLES `event_room` WRITE;
/*!40000 ALTER TABLE `event_room` DISABLE KEYS */;
INSERT INTO `event_room` VALUES (1,1,'2025-04-01 10:00:00','2025-04-01 15:00:00'),(2,2,'2025-04-02 09:00:00','2025-04-02 17:00:00'),(3,3,'2025-04-03 17:00:00','2025-04-03 23:00:00'),(4,4,'2025-04-04 18:00:00','2025-04-04 22:00:00'),(5,5,'2025-04-05 12:00:00','2025-04-05 20:00:00'),(6,6,'2025-04-06 08:00:00','2025-04-06 18:00:00'),(7,7,'2025-04-07 13:00:00','2025-04-07 19:00:00'),(8,8,'2025-04-08 09:00:00','2025-04-08 17:00:00'),(9,9,'2025-04-09 19:00:00','2025-04-09 23:00:00'),(10,10,'2025-04-10 18:00:00','2025-04-10 22:00:00');
/*!40000 ALTER TABLE `event_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floor` (
  `floorId` int NOT NULL AUTO_INCREMENT,
  `wingId` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  `smoking` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`floorId`),
  KEY `wingId` (`wingId`),
  CONSTRAINT `floor_ibfk_1` FOREIGN KEY (`wingId`) REFERENCES `wing` (`wingId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT INTO `floor` VALUES (1,1,1,0),(2,1,2,0),(3,1,3,0),(4,1,4,0),(5,1,5,0),(6,1,6,0),(7,1,7,0),(8,1,8,0),(9,1,9,0),(10,1,10,0);
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `guestId` int NOT NULL AUTO_INCREMENT,
  `billingPartyId` int DEFAULT NULL,
  `contactInfo` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `guestRating` int DEFAULT NULL,
  `depositRequirement` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`guestId`),
  KEY `billingPartyId` (`billingPartyId`),
  CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`billingPartyId`) REFERENCES `billing_party` (`billingPartyId`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,18,'cherry_1@example.com','Cherry_1',1,305.00),(2,17,'olive_2@example.com','Olive_2',3,265.00),(3,4,'banana_3@example.com','Banana_3',4,290.00),(4,9,'mint_4@example.com','Mint_4',2,327.00),(5,6,'banana_5@example.com','Banana_5',4,179.00),(6,7,'fig_6@example.com','Fig_6',2,371.00),(7,7,'cherry_7@example.com','Cherry_7',3,224.00),(8,5,'banana_8@example.com','Banana_8',1,489.00),(9,16,'cherry_9@example.com','Cherry_9',4,207.00),(10,16,'mint_10@example.com','Mint_10',1,254.00),(11,10,'mint_11@example.com','Mint_11',1,395.00),(12,2,'olive_12@example.com','Olive_12',2,342.00),(13,18,'quince_13@example.com','Quince_13',2,381.00),(14,1,'mint_14@example.com','Mint_14',5,159.00),(15,11,'lavender_15@example.com','Lavender_15',1,497.00),(16,17,'mint_16@example.com','Mint_16',1,458.00),(17,20,'rose_17@example.com','Rose_17',5,282.00),(18,19,'lavender_18@example.com','Lavender_18',2,252.00),(19,15,'lavender_19@example.com','Lavender_19',5,198.00),(20,5,'olive_20@example.com','Olive_20',1,370.00),(21,4,'lavender_21@example.com','Lavender_21',2,156.00),(22,6,'rose_22@example.com','Rose_22',2,474.00),(23,5,'banana_23@example.com','Banana_23',1,122.00),(24,15,'peach_24@example.com','Peach_24',3,216.00),(25,19,'quince_25@example.com','Quince_25',3,251.00),(26,7,'rose_26@example.com','Rose_26',2,460.00),(27,1,'peach_27@example.com','Peach_27',5,306.00),(28,3,'apple_28@example.com','Apple_28',4,177.00),(29,12,'quince_29@example.com','Quince_29',2,335.00),(30,4,'rose_30@example.com','Rose_30',1,354.00),(31,17,'olive_31@example.com','Olive_31',4,248.00),(32,6,'banana_32@example.com','Banana_32',3,242.00),(33,19,'apple_33@example.com','Apple_33',3,209.00),(34,19,'peach_34@example.com','Peach_34',2,130.00),(35,14,'peach_35@example.com','Peach_35',4,252.00),(36,6,'olive_36@example.com','Olive_36',4,398.00),(37,18,'mint_37@example.com','Mint_37',5,339.00),(38,12,'mint_38@example.com','Mint_38',4,409.00),(39,19,'mint_39@example.com','Mint_39',2,248.00),(40,10,'mint_40@example.com','Mint_40',1,130.00),(41,18,'rose_41@example.com','Rose_41',2,439.00),(42,7,'mint_42@example.com','Mint_42',3,425.00),(43,6,'quince_43@example.com','Quince_43',5,405.00),(44,18,'cherry_44@example.com','Cherry_44',4,128.00),(45,19,'cherry_45@example.com','Cherry_45',3,461.00),(46,3,'mint_46@example.com','Mint_46',2,296.00),(47,5,'apple_47@example.com','Apple_47',1,490.00),(48,19,'fig_48@example.com','Fig_48',2,425.00),(49,13,'olive_49@example.com','Olive_49',2,273.00),(50,4,'apple_50@example.com','Apple_50',5,359.00),(51,11,'fig_51@example.com','Fig_51',3,293.00),(52,8,'mint_52@example.com','Mint_52',1,238.00),(53,11,'peach_53@example.com','Peach_53',1,434.00),(54,1,'mint_54@example.com','Mint_54',4,137.00),(55,14,'quince_55@example.com','Quince_55',1,371.00),(56,3,'apple_56@example.com','Apple_56',3,353.00),(57,19,'lavender_57@example.com','Lavender_57',2,317.00),(58,8,'banana_58@example.com','Banana_58',1,424.00),(59,12,'mint_59@example.com','Mint_59',3,321.00),(60,2,'peach_60@example.com','Peach_60',2,118.00),(61,13,'apple_61@example.com','Apple_61',4,495.00),(62,5,'apple_62@example.com','Apple_62',5,398.00),(63,10,'cherry_63@example.com','Cherry_63',1,202.00),(64,16,'rose_64@example.com','Rose_64',5,302.00),(65,18,'olive_65@example.com','Olive_65',3,329.00),(66,11,'fig_66@example.com','Fig_66',1,488.00),(67,10,'lavender_67@example.com','Lavender_67',3,268.00),(68,13,'fig_68@example.com','Fig_68',5,154.00),(69,6,'peach_69@example.com','Peach_69',1,319.00),(70,8,'lavender_70@example.com','Lavender_70',4,325.00),(71,9,'lavender_71@example.com','Lavender_71',4,457.00),(72,7,'peach_72@example.com','Peach_72',3,360.00),(73,5,'rose_73@example.com','Rose_73',1,123.00),(74,20,'cherry_74@example.com','Cherry_74',1,325.00),(75,6,'quince_75@example.com','Quince_75',3,323.00),(100,NULL,NULL,NULL,NULL,NULL),(101,NULL,NULL,NULL,NULL,NULL),(102,NULL,NULL,NULL,NULL,NULL),(103,NULL,NULL,NULL,NULL,NULL),(104,NULL,NULL,NULL,NULL,NULL),(105,NULL,NULL,NULL,NULL,NULL),(106,NULL,NULL,NULL,NULL,NULL),(107,NULL,NULL,NULL,NULL,NULL),(108,NULL,NULL,NULL,NULL,NULL),(109,NULL,NULL,NULL,NULL,NULL),(110,NULL,NULL,NULL,NULL,NULL),(111,NULL,NULL,NULL,NULL,NULL),(112,NULL,NULL,NULL,NULL,NULL),(113,NULL,NULL,NULL,NULL,NULL),(114,NULL,NULL,NULL,NULL,NULL),(115,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_billing_assignment`
--

DROP TABLE IF EXISTS `guest_billing_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_billing_assignment` (
  `guestId` int NOT NULL,
  `reservationId` int NOT NULL,
  `billingProportion` int DEFAULT NULL,
  `billingItem` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`guestId`,`reservationId`),
  KEY `fk_reservation_guest_billing_assignment_idx` (`reservationId`),
  CONSTRAINT `fk_guest_guest_billing_assignment` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`),
  CONSTRAINT `fk_reservation_guest_billing_assignment` FOREIGN KEY (`reservationId`) REFERENCES `reservation` (`reservationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_billing_assignment`
--

LOCK TABLES `guest_billing_assignment` WRITE;
/*!40000 ALTER TABLE `guest_billing_assignment` DISABLE KEYS */;
INSERT INTO `guest_billing_assignment` VALUES (1,1,1,'Room'),(2,2,1,'Dining'),(3,3,1,'Dining'),(4,4,1,'Room'),(5,5,1,'Room'),(6,6,1,'Service'),(7,7,1,'Room'),(8,8,1,'Dining'),(9,9,1,'Dining'),(10,10,1,'Room');
/*!40000 ALTER TABLE `guest_billing_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_call_status`
--

DROP TABLE IF EXISTS `guest_call_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_call_status` (
  `guestId` int NOT NULL,
  `voicemailMessage` text,
  `allowContactByHotel` tinyint(1) DEFAULT NULL,
  `allowContactByCallers` tinyint(1) DEFAULT NULL,
  `relayMessagesByHotel` tinyint(1) DEFAULT NULL,
  `whereaboutsStatus` varchar(255) DEFAULT NULL,
  `lastUpdated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`guestId`),
  CONSTRAINT `guest_call_status_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_call_status`
--

LOCK TABLES `guest_call_status` WRITE;
/*!40000 ALTER TABLE `guest_call_status` DISABLE KEYS */;
INSERT INTO `guest_call_status` VALUES (1,'Unavailable',1,0,1,'In room','2025-04-20 14:00:00'),(2,'At event',1,1,1,'Event Hall','2025-04-20 16:00:00'),(3,'Away',0,1,0,'Offsite','2025-04-21 13:30:00'),(4,'Sleeping',1,0,0,'Room','2025-04-21 12:00:00'),(5,'Please leave a message',1,1,1,'Lobby','2025-04-22 18:00:00'),(6,'Busy',0,1,1,'Gym','2025-04-22 19:30:00'),(7,'On break',1,1,0,'Restaurant','2025-04-22 15:00:00'),(8,'Relaxing',1,0,1,'Spa','2025-04-23 20:00:00'),(9,'Unavailable',1,0,1,'Room','2025-04-23 17:00:00'),(10,'Available',1,1,1,'Anywhere','2025-04-23 14:30:00');
/*!40000 ALTER TABLE `guest_call_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_pin_card`
--

DROP TABLE IF EXISTS `guest_pin_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_pin_card` (
  `cardId` int NOT NULL AUTO_INCREMENT,
  `guestId` int DEFAULT NULL,
  `pinCode` varchar(20) DEFAULT NULL,
  `issueDate` date DEFAULT NULL,
  PRIMARY KEY (`cardId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `guest_pin_card_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_pin_card`
--

LOCK TABLES `guest_pin_card` WRITE;
/*!40000 ALTER TABLE `guest_pin_card` DISABLE KEYS */;
INSERT INTO `guest_pin_card` VALUES (1001,1,'1234','2025-03-01'),(1002,2,'2345','2025-03-02'),(1003,3,'3456','2025-03-03'),(1004,4,'4567','2025-03-04'),(1005,5,'5678','2025-03-05'),(1006,6,'6789','2025-03-06'),(1007,7,'7890','2025-03-07'),(1008,8,'8901','2025-03-08'),(1009,9,'9012','2025-03-09'),(1010,10,'0123','2025-03-10'),(1011,NULL,NULL,NULL),(1012,NULL,NULL,NULL),(1013,NULL,NULL,NULL),(1014,NULL,NULL,NULL),(1015,NULL,NULL,NULL),(1016,NULL,NULL,NULL),(1017,NULL,NULL,NULL),(1018,NULL,NULL,NULL),(1019,NULL,NULL,NULL),(1020,NULL,NULL,NULL),(1021,NULL,NULL,NULL),(1022,NULL,NULL,NULL),(1023,NULL,NULL,NULL),(1024,NULL,NULL,NULL),(1025,NULL,NULL,NULL),(1026,NULL,NULL,NULL),(1027,NULL,NULL,NULL),(1028,NULL,NULL,NULL),(1029,NULL,NULL,NULL),(1030,NULL,NULL,NULL);
/*!40000 ALTER TABLE `guest_pin_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `hostId` int NOT NULL,
  `guestId` int DEFAULT NULL,
  `hostName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hostId`),
  KEY `fk_guest_host_idx` (`guestId`),
  CONSTRAINT `fk_guest_host` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,1,'Cherry_1 Host'),(2,2,'Olive_2 Host'),(3,3,'Banana_3 Host'),(4,4,'Mint_4 Host'),(5,5,'Banana_5 Host'),(6,6,'Fig_6 Host'),(7,7,'Cherry_7 Host'),(8,8,'Banana_8 Host'),(9,9,'Cherry_9 Host'),(10,10,'Mint_10 Host');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotelId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`hotelId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Last Resort Hotel','New York');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_bill`
--

DROP TABLE IF EXISTS `main_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_bill` (
  `mainBillId` int NOT NULL AUTO_INCREMENT,
  `billingPartyId` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `currentBalance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`mainBillId`),
  KEY `billingPartyId` (`billingPartyId`),
  CONSTRAINT `main_bill_ibfk_1` FOREIGN KEY (`billingPartyId`) REFERENCES `billing_party` (`billingPartyId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_bill`
--

LOCK TABLES `main_bill` WRITE;
/*!40000 ALTER TABLE `main_bill` DISABLE KEYS */;
INSERT INTO `main_bill` VALUES (1,1,'Open',1200.00,200.00),(2,2,'Closed',800.00,0.00),(3,3,'Open',500.00,150.00),(4,NULL,NULL,NULL,NULL),(5,NULL,NULL,NULL,NULL),(6,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `main_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_room`
--

DROP TABLE IF EXISTS `meeting_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_room` (
  `roomId` int NOT NULL,
  `toilet` varchar(45) DEFAULT NULL,
  `moveableWalls` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roomId`),
  CONSTRAINT `meeting_room_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_room`
--

LOCK TABLES `meeting_room` WRITE;
/*!40000 ALTER TABLE `meeting_room` DISABLE KEYS */;
INSERT INTO `meeting_room` VALUES (28,'Yes','No'),(29,'No','Yes'),(30,'Yes','Yes');
/*!40000 ALTER TABLE `meeting_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `orgId` int NOT NULL AUTO_INCREMENT,
  `billingPartyId` int DEFAULT NULL,
  `contactInfo` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orgId`),
  KEY `billingPartyId` (`billingPartyId`),
  CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`billingPartyId`) REFERENCES `billing_party` (`billingPartyId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,1,'info@techcorp.com','TechCorp'),(2,2,'contact@healthplus.org','HealthPlus Org'),(3,3,'info@greenworld.net','GreenWorld');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_bill`
--

DROP TABLE IF EXISTS `other_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_bill` (
  `otherBillId` int NOT NULL AUTO_INCREMENT,
  `mainBillId` int DEFAULT NULL,
  `guestId` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `currentBalance` decimal(10,2) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`otherBillId`),
  KEY `mainBillId` (`mainBillId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `other_bill_ibfk_1` FOREIGN KEY (`mainBillId`) REFERENCES `main_bill` (`mainBillId`),
  CONSTRAINT `other_bill_ibfk_2` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_bill`
--

LOCK TABLES `other_bill` WRITE;
/*!40000 ALTER TABLE `other_bill` DISABLE KEYS */;
INSERT INTO `other_bill` VALUES (1,1,101,'Open',500.00,200.00,'Room Service'),(2,1,102,'Closed',300.00,0.00,'Laundry'),(3,2,103,'Pending',150.00,150.00,'Mini Bar'),(4,2,104,'Open',400.00,400.00,'Spa Services'),(5,3,105,'Closed',250.00,0.00,'Dining'),(6,3,106,'Open',600.00,300.00,'Transportation'),(7,4,107,'Pending',450.00,450.00,'Laundry'),(8,4,108,'Closed',200.00,0.00,'Mini Bar'),(9,5,109,'Open',700.00,500.00,'Room Upgrade'),(10,5,110,'Open',350.00,350.00,'Fitness Center'),(11,6,111,'Closed',275.00,0.00,'Dining'),(12,6,112,'Pending',125.00,125.00,'Laundry'),(13,7,113,'Open',800.00,800.00,'Spa Services'),(14,7,114,'Closed',500.00,0.00,'Room Service'),(15,8,115,'Open',550.00,250.00,'Dining');
/*!40000 ALTER TABLE `other_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_charge`
--

DROP TABLE IF EXISTS `other_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_charge` (
  `chargeId` int NOT NULL AUTO_INCREMENT,
  `guestId` int DEFAULT NULL,
  `description` text,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`chargeId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `other_charge_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_charge`
--

LOCK TABLES `other_charge` WRITE;
/*!40000 ALTER TABLE `other_charge` DISABLE KEYS */;
INSERT INTO `other_charge` VALUES (1,101,'Room Service Breakfast',45.00,'2025-04-27'),(2,102,'Spa Service',120.00,'2025-04-26'),(3,103,'Late Checkout Fee',60.00,'2025-04-25'),(4,104,'Lost Key Fee',25.00,'2025-04-24'),(5,105,'Minibar Restock',85.00,'2025-04-23'),(6,106,'Fitness Center Access',30.00,'2025-04-22'),(7,107,'Airport Shuttle',50.00,'2025-04-21'),(8,108,'Parking Fee',15.00,'2025-04-20'),(9,109,'Extra Bed Request',40.00,'2025-04-19'),(10,110,'Pet Cleaning Fee',75.00,'2025-04-18'),(11,111,'City Tour',120.00,'2025-04-17'),(12,112,'Welcome Package',35.00,'2025-04-16');
/*!40000 ALTER TABLE `other_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservationId` int NOT NULL AUTO_INCREMENT,
  `guestId` int DEFAULT NULL,
  `roomId` int DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `billingId` int DEFAULT NULL,
  PRIMARY KEY (`reservationId`),
  KEY `guestId` (`guestId`),
  KEY `roomId` (`roomId`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`)
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,69,18,'2025-03-19','2025-03-21','checked_out',190.00,19),(2,50,9,'2025-01-07','2025-01-10','checked_out',132.00,10),(3,44,10,'2025-02-13','2025-02-15','confirmed',284.00,11),(4,31,16,'2025-02-01','2025-02-03','confirmed',299.00,18),(5,8,28,'2025-01-29','2025-01-31','checked_out',263.00,12),(6,29,16,'2025-03-23','2025-03-26','checked_in',210.00,12),(7,64,15,'2025-03-04','2025-03-09','checked_out',148.00,5),(8,47,2,'2025-02-16','2025-02-17','checked_out',209.00,6),(9,45,26,'2025-02-15','2025-02-20','checked_in',161.00,12),(10,26,3,'2025-03-29','2025-04-01','confirmed',198.00,10),(11,55,18,'2025-01-08','2025-01-11','confirmed',145.00,20),(12,74,18,'2025-01-09','2025-01-14','confirmed',242.00,16),(13,30,5,'2025-03-18','2025-03-23','checked_in',210.00,16),(14,15,18,'2025-01-03','2025-01-06','confirmed',122.00,1),(15,74,16,'2025-02-18','2025-02-23','checked_in',252.00,15),(16,68,23,'2025-02-06','2025-02-09','checked_in',192.00,11),(17,65,17,'2025-01-13','2025-01-17','confirmed',140.00,10),(18,69,11,'2025-03-28','2025-04-01','checked_in',214.00,1),(19,67,7,'2025-03-02','2025-03-06','checked_in',225.00,1),(20,18,19,'2025-03-10','2025-03-14','checked_in',190.00,14),(21,18,20,'2025-03-08','2025-03-12','checked_out',135.00,13),(22,52,21,'2025-02-06','2025-02-09','confirmed',217.00,12),(23,62,28,'2025-01-30','2025-02-01','confirmed',200.00,15),(24,69,23,'2025-03-14','2025-03-18','confirmed',126.00,5),(25,11,16,'2025-03-30','2025-04-04','checked_in',223.00,13),(26,44,20,'2025-01-01','2025-01-06','checked_out',229.00,9),(27,42,16,'2025-02-13','2025-02-16','confirmed',189.00,19),(28,59,17,'2025-01-16','2025-01-17','checked_out',242.00,10),(29,67,27,'2025-03-10','2025-03-14','checked_in',183.00,1),(30,41,26,'2025-02-16','2025-02-18','checked_out',227.00,11),(31,32,26,'2025-03-18','2025-03-19','checked_out',274.00,3),(32,52,11,'2025-02-28','2025-03-04','checked_in',169.00,6),(33,71,13,'2025-01-01','2025-01-02','confirmed',198.00,1),(34,45,10,'2025-01-15','2025-01-20','checked_in',130.00,11),(35,64,8,'2025-01-24','2025-01-26','checked_in',246.00,17),(36,24,15,'2025-01-07','2025-01-10','checked_in',121.00,13),(37,64,7,'2025-01-23','2025-01-26','checked_in',235.00,4),(38,33,10,'2025-03-03','2025-03-06','checked_in',147.00,8),(39,58,23,'2025-03-29','2025-04-01','checked_out',164.00,17),(40,24,27,'2025-01-12','2025-01-14','checked_in',203.00,19),(41,33,14,'2025-02-03','2025-02-08','checked_out',263.00,2),(42,57,26,'2025-01-10','2025-01-15','checked_in',266.00,3),(43,51,27,'2025-01-04','2025-01-08','confirmed',164.00,10),(44,15,14,'2025-01-10','2025-01-11','checked_out',111.00,1),(45,64,19,'2025-03-05','2025-03-08','confirmed',246.00,12),(46,10,26,'2025-03-07','2025-03-09','confirmed',210.00,7),(47,35,8,'2025-03-16','2025-03-21','confirmed',239.00,17),(48,17,10,'2025-01-12','2025-01-17','checked_in',126.00,18),(49,71,2,'2025-02-03','2025-02-08','checked_out',225.00,16),(50,55,19,'2025-02-05','2025-02-07','checked_in',223.00,3),(51,46,15,'2025-01-03','2025-01-06','checked_out',155.00,19),(52,66,14,'2025-01-30','2025-02-04','checked_out',125.00,7),(53,28,9,'2025-02-26','2025-03-03','checked_out',230.00,14),(54,57,23,'2025-03-12','2025-03-13','confirmed',217.00,13),(55,69,26,'2025-02-20','2025-02-21','confirmed',118.00,9),(56,63,21,'2025-03-21','2025-03-23','confirmed',208.00,2),(57,39,16,'2025-03-13','2025-03-15','checked_out',210.00,4),(58,22,6,'2025-03-13','2025-03-18','confirmed',213.00,17),(59,70,30,'2025-02-08','2025-02-10','checked_out',286.00,3),(60,21,10,'2025-01-11','2025-01-12','confirmed',229.00,3),(61,16,24,'2025-01-11','2025-01-14','checked_in',290.00,12),(62,68,19,'2025-02-21','2025-02-24','confirmed',114.00,15),(63,55,5,'2025-03-23','2025-03-27','confirmed',130.00,10),(64,4,4,'2025-01-18','2025-01-22','confirmed',248.00,8),(65,20,22,'2025-03-21','2025-03-25','confirmed',122.00,19),(66,23,4,'2025-03-04','2025-03-05','checked_out',172.00,5),(67,53,14,'2025-03-13','2025-03-15','confirmed',161.00,20),(68,72,2,'2025-01-08','2025-01-10','checked_out',212.00,19),(69,25,2,'2025-01-27','2025-01-31','confirmed',275.00,19),(70,15,11,'2025-03-12','2025-03-15','checked_in',107.00,7),(71,28,5,'2025-02-18','2025-02-19','confirmed',266.00,11),(72,67,30,'2025-03-11','2025-03-15','checked_in',205.00,19),(73,35,10,'2025-03-16','2025-03-21','checked_out',201.00,2),(74,24,29,'2025-03-09','2025-03-13','checked_in',222.00,6),(75,24,20,'2025-03-11','2025-03-14','confirmed',240.00,12),(76,9,16,'2025-02-23','2025-02-24','checked_out',125.00,18),(77,65,25,'2025-01-09','2025-01-13','checked_in',169.00,4),(78,32,22,'2025-02-15','2025-02-17','checked_in',117.00,13),(79,7,20,'2025-02-25','2025-02-27','confirmed',125.00,18),(80,55,28,'2025-03-12','2025-03-16','checked_out',166.00,9),(81,56,30,'2025-02-05','2025-02-06','checked_out',221.00,13),(82,22,12,'2025-02-18','2025-02-21','confirmed',204.00,3),(83,72,6,'2025-01-13','2025-01-17','confirmed',133.00,18),(84,35,9,'2025-02-26','2025-02-28','checked_in',121.00,16),(85,73,2,'2025-02-11','2025-02-16','confirmed',240.00,18),(86,14,8,'2025-01-31','2025-02-01','confirmed',102.00,7),(87,10,11,'2025-02-18','2025-02-21','checked_in',143.00,14),(88,69,20,'2025-03-28','2025-03-30','confirmed',244.00,14),(89,10,25,'2025-02-18','2025-02-22','checked_in',154.00,1),(90,5,21,'2025-03-07','2025-03-11','checked_in',238.00,20),(91,63,28,'2025-01-16','2025-01-19','confirmed',124.00,8),(92,29,18,'2025-02-02','2025-02-07','confirmed',109.00,3),(93,55,23,'2025-02-11','2025-02-16','confirmed',254.00,19),(94,55,2,'2025-01-20','2025-01-24','confirmed',296.00,9),(95,29,30,'2025-03-28','2025-04-01','confirmed',287.00,13),(96,12,5,'2025-02-18','2025-02-20','checked_out',153.00,6),(97,33,21,'2025-03-13','2025-03-14','confirmed',170.00,10),(98,13,16,'2025-03-03','2025-03-07','checked_in',214.00,14),(99,11,19,'2025-02-06','2025-02-07','confirmed',128.00,17),(100,22,23,'2025-03-10','2025-03-12','checked_in',198.00,3),(101,74,1,'2025-03-12','2025-03-16','checked_in',150.00,2),(102,6,12,'2025-03-10','2025-03-12','confirmed',242.00,19),(103,22,24,'2025-03-11','2025-03-16','checked_in',252.00,8),(104,64,16,'2025-01-29','2025-02-02','checked_in',131.00,18),(105,66,23,'2025-03-30','2025-04-04','checked_out',258.00,16),(106,51,7,'2025-01-06','2025-01-11','confirmed',290.00,1),(107,13,22,'2025-02-18','2025-02-23','checked_out',232.00,11),(108,39,1,'2025-03-29','2025-04-01','checked_out',185.00,18),(109,34,4,'2025-02-24','2025-02-27','checked_out',115.00,11),(110,52,14,'2025-02-15','2025-02-19','checked_in',128.00,9),(111,44,12,'2025-03-25','2025-03-28','checked_out',156.00,11),(112,65,8,'2025-03-25','2025-03-29','checked_out',151.00,3),(113,52,16,'2025-01-25','2025-01-28','checked_in',271.00,13),(114,59,2,'2025-01-16','2025-01-19','confirmed',300.00,20),(115,23,6,'2025-03-11','2025-03-13','confirmed',292.00,17),(116,35,3,'2025-01-26','2025-01-31','checked_in',215.00,10),(117,5,9,'2025-02-26','2025-03-02','confirmed',264.00,12),(118,64,23,'2025-03-23','2025-03-25','checked_in',233.00,17),(119,14,6,'2025-03-09','2025-03-10','checked_in',289.00,14),(120,47,27,'2025-03-17','2025-03-18','confirmed',105.00,11),(121,52,10,'2025-03-05','2025-03-09','confirmed',226.00,16),(122,23,23,'2025-03-20','2025-03-24','checked_out',256.00,5),(123,46,8,'2025-03-30','2025-03-31','confirmed',209.00,18),(124,47,4,'2025-03-30','2025-04-02','confirmed',116.00,18),(125,52,25,'2025-04-01','2025-04-02','confirmed',151.00,12),(126,10,1,'2025-02-11','2025-02-16','checked_out',228.00,6),(127,62,2,'2025-02-10','2025-02-13','confirmed',177.00,20),(128,1,20,'2025-01-31','2025-02-02','checked_in',250.00,3),(129,51,23,'2025-03-30','2025-04-03','confirmed',272.00,9),(130,10,14,'2025-03-14','2025-03-18','confirmed',145.00,3),(131,62,6,'2025-02-09','2025-02-14','checked_in',132.00,5),(132,60,4,'2025-01-03','2025-01-08','confirmed',119.00,8),(133,63,22,'2025-03-19','2025-03-22','confirmed',138.00,2),(134,69,5,'2025-03-10','2025-03-15','checked_out',268.00,11),(135,42,25,'2025-02-26','2025-03-03','checked_out',277.00,17),(136,10,25,'2025-01-25','2025-01-27','confirmed',275.00,16),(137,28,30,'2025-01-12','2025-01-13','checked_out',240.00,17),(201,27,24,'2025-03-10','2025-03-12','checked_out',156.00,3),(202,28,10,'2025-02-27','2025-03-04','checked_out',300.00,9),(203,1,25,'2025-01-14','2025-01-18','checked_in',155.00,4),(204,34,27,'2025-02-14','2025-02-19','confirmed',222.00,3),(205,34,14,'2025-03-04','2025-03-06','checked_in',143.00,15),(206,71,7,'2025-03-09','2025-03-14','checked_in',259.00,15),(207,46,11,'2025-03-15','2025-03-20','checked_in',281.00,6),(208,31,14,'2025-03-19','2025-03-21','checked_out',129.00,3),(209,66,1,'2025-02-12','2025-02-17','checked_out',115.00,14),(210,9,29,'2025-02-04','2025-02-05','checked_out',101.00,17),(211,65,1,'2025-01-11','2025-01-15','checked_in',291.00,19),(212,2,16,'2025-02-14','2025-02-15','checked_in',248.00,17),(213,6,28,'2025-03-05','2025-03-08','checked_in',119.00,20);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_log`
--

DROP TABLE IF EXISTS `reservation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation_log` (
  `logId` int NOT NULL AUTO_INCREMENT,
  `reservationId` int DEFAULT NULL,
  `modifyDetails` text,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `reservationId` (`reservationId`),
  CONSTRAINT `reservation_log_ibfk_1` FOREIGN KEY (`reservationId`) REFERENCES `reservation` (`reservationId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_log`
--

LOCK TABLES `reservation_log` WRITE;
/*!40000 ALTER TABLE `reservation_log` DISABLE KEYS */;
INSERT INTO `reservation_log` VALUES (1,201,'Changed room type to suite','2025-04-27 15:30:00'),(2,202,'Extended stay by 2 days','2025-04-26 10:15:00'),(3,203,'Cancelled one guest','2025-04-25 09:00:00'),(4,204,'Updated payment method','2025-04-24 14:45:00'),(5,205,'Requested early check-in','2025-04-23 12:00:00'),(6,206,'Added special room requests','2025-04-22 16:20:00'),(7,207,'Changed reservation dates','2025-04-21 11:30:00'),(8,208,'Updated guest email address','2025-04-20 09:40:00'),(9,209,'Requested high floor room','2025-04-19 13:10:00'),(10,210,'Added extra bed','2025-04-18 17:55:00'),(11,211,'Removed breakfast package','2025-04-17 08:20:00'),(12,212,'Delayed check-out','2025-04-16 14:50:00'),(13,213,'Updated flight arrival time','2025-04-15 18:30:00');
/*!40000 ALTER TABLE `reservation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `roomId` int NOT NULL AUTO_INCREMENT,
  `floorId` int DEFAULT NULL,
  `baseRate` decimal(10,2) DEFAULT NULL,
  `roomNumber` varchar(10) DEFAULT NULL,
  `maxOccupancy` int DEFAULT NULL,
  `isAdjacentRoom` tinyint(1) DEFAULT NULL,
  `roomType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roomId`),
  KEY `floorId` (`floorId`),
  KEY `roomType` (`roomType`),
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`floorId`) REFERENCES `floor` (`floorId`),
  CONSTRAINT `room_ibfk_2` FOREIGN KEY (`roomType`) REFERENCES `room_type` (`roomType`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,10,348.00,'806',2,1,'Suite'),(2,1,162.00,'805',4,1,'Double'),(3,10,263.00,'207',3,0,'Single'),(4,5,467.00,'408',4,0,'Suite'),(5,4,405.00,'302',4,0,'Single'),(6,8,165.00,'301',2,0,'Suite'),(7,4,176.00,'602',4,0,'Suite'),(8,8,319.00,'603',2,1,'Single'),(9,6,436.00,'403',4,0,'Double'),(10,5,187.00,'402',1,0,'Suite'),(11,7,344.00,'108',1,1,'Single'),(12,4,461.00,'209',4,0,'Double'),(13,2,242.00,'703',2,1,'Single'),(14,2,271.00,'708',4,1,'Double'),(15,7,424.00,'804',1,0,'Single'),(16,3,162.00,'504',3,0,'Single'),(17,9,485.00,'206',4,1,'Suite'),(18,10,377.00,'107',1,0,'Suite'),(19,6,338.00,'506',1,0,'Double'),(20,8,354.00,'809',4,0,'Suite'),(21,7,435.00,'608',2,0,'Single'),(22,9,260.00,'705',2,0,'Single'),(23,7,335.00,'601',1,1,'Double'),(24,9,115.00,'101',1,0,'Suite'),(25,5,472.00,'903',4,1,'Double'),(26,9,227.00,'905',4,0,'Double'),(27,7,169.00,'202',1,0,'Suite'),(28,8,413.00,'204',2,0,'Single'),(29,2,233.00,'104',4,0,'Single'),(30,6,494.00,'502',1,0,'Suite');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_fee`
--

DROP TABLE IF EXISTS `room_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_fee` (
  `feeId` int NOT NULL AUTO_INCREMENT,
  `roomId` int DEFAULT NULL,
  `roomType` varchar(50) DEFAULT NULL,
  `baseRate` decimal(10,2) DEFAULT NULL,
  `extraBedFee` decimal(10,2) DEFAULT NULL,
  `lateCheckoutFee` decimal(10,2) DEFAULT NULL,
  `seasonalRateMultiplier` decimal(3,2) DEFAULT NULL,
  `effectiveDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  PRIMARY KEY (`feeId`),
  KEY `roomId` (`roomId`),
  KEY `roomType` (`roomType`),
  CONSTRAINT `room_fee_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`),
  CONSTRAINT `room_fee_ibfk_2` FOREIGN KEY (`roomType`) REFERENCES `room_type` (`roomType`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_fee`
--

LOCK TABLES `room_fee` WRITE;
/*!40000 ALTER TABLE `room_fee` DISABLE KEYS */;
INSERT INTO `room_fee` VALUES (1,1,'Single',292.00,34.00,44.00,1.20,'2025-01-01',NULL),(2,2,'Single',352.00,37.00,47.00,1.20,'2025-01-01',NULL),(3,3,'Single',107.00,39.00,49.00,1.20,'2025-01-01',NULL),(4,4,'Single',289.00,43.00,53.00,1.20,'2025-01-01',NULL),(5,5,'Single',101.00,28.00,38.00,1.20,'2025-01-01',NULL),(6,6,'Single',351.00,47.00,57.00,1.20,'2025-01-01',NULL),(7,7,'Single',129.00,47.00,57.00,1.20,'2025-01-01',NULL),(8,8,'Single',246.00,29.00,39.00,1.20,'2025-01-01',NULL),(9,9,'Single',332.00,42.00,52.00,1.20,'2025-01-01',NULL),(10,10,'Single',368.00,27.00,37.00,1.20,'2025-01-01',NULL),(11,11,'Single',138.00,20.00,30.00,1.20,'2025-01-01',NULL),(12,12,'Single',249.00,21.00,31.00,1.20,'2025-01-01',NULL),(13,13,'Single',261.00,36.00,46.00,1.20,'2025-01-01',NULL),(14,14,'Single',106.00,43.00,53.00,1.20,'2025-01-01',NULL),(15,15,'Single',146.00,35.00,45.00,1.20,'2025-01-01',NULL),(16,16,'Single',161.00,44.00,54.00,1.20,'2025-01-01',NULL),(17,17,'Single',326.00,28.00,38.00,1.20,'2025-01-01',NULL),(18,18,'Single',291.00,44.00,54.00,1.20,'2025-01-01',NULL),(19,19,'Single',260.00,22.00,32.00,1.20,'2025-01-01',NULL),(20,20,'Single',286.00,46.00,56.00,1.20,'2025-01-01',NULL),(21,21,'Single',156.00,37.00,47.00,1.20,'2025-01-01',NULL),(22,22,'Single',363.00,23.00,33.00,1.20,'2025-01-01',NULL),(23,23,'Single',212.00,43.00,53.00,1.20,'2025-01-01',NULL),(24,24,'Single',294.00,38.00,48.00,1.20,'2025-01-01',NULL),(25,25,'Single',216.00,38.00,48.00,1.20,'2025-01-01',NULL),(26,26,'Single',157.00,34.00,44.00,1.20,'2025-01-01',NULL),(27,27,'Single',144.00,26.00,36.00,1.20,'2025-01-01',NULL),(28,28,'Single',311.00,46.00,56.00,1.20,'2025-01-01',NULL),(29,29,'Single',321.00,39.00,49.00,1.20,'2025-01-01',NULL),(30,30,'Single',389.00,39.00,49.00,1.20,'2025-01-01',NULL);
/*!40000 ALTER TABLE `room_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `roomType` varchar(50) NOT NULL,
  PRIMARY KEY (`roomType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES ('Double'),('Single'),('Suite');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `serviceId` int NOT NULL AUTO_INCREMENT,
  `guestId` int DEFAULT NULL,
  `serviceType` varchar(50) DEFAULT NULL,
  `description` text,
  `amount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`serviceId`),
  KEY `guestId` (`guestId`),
  CONSTRAINT `service_ibfk_1` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,70,'Spa','Massage',59.00,'2025-03-13'),(2,66,'Childcare','Babysitting Services',66.00,'2025-03-05'),(3,46,'Spa','Massage',75.00,'2025-03-09'),(4,7,'Valet','Parking Service',65.00,'2025-03-02'),(5,39,'Spa','Massage',61.00,'2025-03-27'),(6,50,'Spa','Massage',66.00,'2025-03-26'),(7,18,'Childcare','Babysitting Services',89.00,'2025-03-18'),(8,33,'Spa','Massage',87.00,'2025-03-08'),(9,16,'Spa','Massage',84.00,'2025-03-01'),(10,18,'Spa','Massage',82.00,'2025-03-16'),(11,4,'Room Service','Late Night Dining',68.00,'2025-03-17'),(12,59,'Spa','Massage',75.00,'2025-03-16'),(13,10,'Spa','Massage',99.00,'2025-03-15'),(14,38,'Spa','Massage',57.00,'2025-03-03'),(15,16,'Laundry','Express Dry Cleaning',95.00,'2025-03-02'),(16,43,'Spa','Massage',60.00,'2025-03-21'),(17,7,'Spa','Massage',81.00,'2025-03-12'),(18,56,'Room Service','Breakfast in Bed',100.00,'2025-03-06'),(19,23,'Spa','Massage',78.00,'2025-03-09'),(20,26,'Spa','Massage',66.00,'2025-03-03'),(21,33,'Childcare','Babysitting Services',81.00,'2025-03-24'),(22,47,'Valet','Car Washing Service',58.00,'2025-03-09'),(23,16,'Spa','Massage',74.00,'2025-03-20'),(24,51,'Spa','Massage',84.00,'2025-03-08'),(25,40,'Room Service','Late Night Dining',63.00,'2025-03-22'),(26,61,'Spa','Massage',85.00,'2025-03-22'),(27,60,'Room Service','Champagne',52.00,'2025-03-24'),(28,22,'Spa','Massage',66.00,'2025-03-22'),(29,65,'Lundry','Express Dry Cleaning',51.00,'2025-03-03'),(30,51,'Spa','Massage',72.00,'2025-03-02'),(31,27,'Concierge','Theater Ticket Booking',77.00,'2025-03-27'),(32,58,'Childcare','Babysitting Services',76.00,'2025-03-15'),(33,59,'Spa','Massage',73.00,'2025-03-11'),(34,27,'Spa','Massage',95.00,'2025-03-07'),(35,28,'Transportation','Airport Limousine',92.00,'2025-03-13'),(36,20,'Fitness','Tennis Court Rental',53.00,'2025-03-10'),(37,50,'Spa','Massage',56.00,'2025-03-27'),(38,50,'Fitness','Yoga Class',99.00,'2025-03-11'),(39,12,'Spa','Massage',58.00,'2025-03-21'),(40,54,'Spa','Massage',95.00,'2025-03-24'),(41,11,'Room Service','Late Night Dining',56.00,'2025-03-19'),(42,56,'Spa','Massage',56.00,'2025-03-20'),(43,34,'Concierge','Restaurant Reservation',74.00,'2025-03-07'),(44,75,'Spa','Massage',61.00,'2025-03-11'),(45,62,'Spa','Massage',65.00,'2025-03-28'),(46,54,'Fitness','Yoga Class',97.00,'2025-03-09'),(47,31,'Spa','Massage',60.00,'2025-03-10'),(48,9,'Concierge','Special Event Access',73.00,'2025-03-14'),(49,37,'Spa','Massage',56.00,'2025-03-07'),(50,9,'Spa','Massage',67.00,'2025-03-11');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sleeping_room`
--

DROP TABLE IF EXISTS `sleeping_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sleeping_room` (
  `roomId` int NOT NULL,
  `toilet` varchar(45) DEFAULT NULL,
  `extraSpace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roomId`),
  CONSTRAINT `sleeping_room_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sleeping_room`
--

LOCK TABLES `sleeping_room` WRITE;
/*!40000 ALTER TABLE `sleeping_room` DISABLE KEYS */;
INSERT INTO `sleeping_room` VALUES (10,'yes','yes'),(11,'yes','no'),(12,'yes','no');
/*!40000 ALTER TABLE `sleeping_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `taskCode` int NOT NULL,
  `taskTypeId` int DEFAULT NULL,
  `taskStatusId` int DEFAULT NULL,
  `taskDescripton` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`taskCode`),
  KEY `taskTypeId` (`taskTypeId`),
  KEY `taskStatusId` (`taskStatusId`),
  CONSTRAINT `task_ibfk_1` FOREIGN KEY (`taskTypeId`) REFERENCES `task_type` (`taskTypeId`),
  CONSTRAINT `task_ibfk_2` FOREIGN KEY (`taskStatusId`) REFERENCES `task_status` (`taskStatusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,1,2,'Carpet Replace'),(2,1,1,'AC Repair'),(3,2,2,'AC Repair'),(4,2,2,'Daily Clean'),(5,1,1,'Carpet Replace'),(6,2,1,'Carpet Replace'),(7,1,2,'Daily Clean'),(8,2,1,'AC Repair'),(9,2,2,'Carpet Replace'),(10,1,2,'Daily Clean'),(11,1,1,'AC Repair'),(12,2,1,'Carpet Replace'),(13,1,2,'Carpet Replace'),(14,1,2,'AC Repair'),(15,2,2,'AC Repair'),(16,2,2,'Daily Clean'),(17,2,2,'Window Wipe'),(18,1,1,'Window Wipe'),(19,2,2,'Carpet Replace'),(20,1,2,'Window Wipe');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_status`
--

DROP TABLE IF EXISTS `task_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_status` (
  `taskStatusId` int NOT NULL,
  `taskStatusName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`taskStatusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_status`
--

LOCK TABLES `task_status` WRITE;
/*!40000 ALTER TABLE `task_status` DISABLE KEYS */;
INSERT INTO `task_status` VALUES (1,'Pending'),(2,'Completed');
/*!40000 ALTER TABLE `task_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_type`
--

DROP TABLE IF EXISTS `task_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_type` (
  `taskTypeId` int NOT NULL,
  `taskTypeName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`taskTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_type`
--

LOCK TABLES `task_type` WRITE;
/*!40000 ALTER TABLE `task_type` DISABLE KEYS */;
INSERT INTO `task_type` VALUES (1,'Cleaning'),(2,'Repair');
/*!40000 ALTER TABLE `task_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transactionId` int NOT NULL AUTO_INCREMENT,
  `billingId` int DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`transactionId`),
  KEY `billingId` (`billingId`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`billingId`) REFERENCES `billing_party` (`billingPartyId`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,12,123.00,'event','2024-01-08 00:00:00'),(2,14,954.00,'event','2024-01-25 00:00:00'),(3,2,414.00,'service','2024-01-02 00:00:00'),(4,4,314.00,'event','2024-01-02 00:00:00'),(5,18,881.00,'service','2024-01-22 00:00:00'),(6,2,736.00,'room','2024-01-26 00:00:00'),(7,2,840.00,'other','2024-01-03 00:00:00'),(8,8,811.00,'service','2024-01-22 00:00:00'),(9,4,348.00,'dining','2024-01-08 00:00:00'),(10,14,955.00,'event','2024-01-17 00:00:00'),(11,3,968.00,'dining','2024-02-10 00:00:00'),(12,12,781.00,'dining','2024-02-21 00:00:00'),(13,11,119.00,'other','2024-02-11 00:00:00'),(14,3,447.00,'room','2024-02-19 00:00:00'),(15,13,851.00,'room','2024-02-10 00:00:00'),(16,10,821.00,'room','2024-02-21 00:00:00'),(17,6,339.00,'other','2024-02-28 00:00:00'),(18,1,291.00,'service','2024-02-23 00:00:00'),(19,14,422.00,'other','2024-02-16 00:00:00'),(20,12,524.00,'room','2024-02-02 00:00:00'),(21,19,841.00,'room','2024-03-09 00:00:00'),(22,6,143.00,'other','2024-03-14 00:00:00'),(23,1,577.00,'room','2024-03-24 00:00:00'),(24,6,948.00,'service','2024-03-02 00:00:00'),(25,20,928.00,'room','2024-03-14 00:00:00'),(26,2,249.00,'service','2024-03-19 00:00:00'),(27,19,620.00,'event','2024-03-14 00:00:00'),(28,8,938.00,'other','2024-03-12 00:00:00'),(29,9,486.00,'event','2024-03-14 00:00:00'),(30,9,202.00,'service','2024-03-18 00:00:00'),(31,18,324.00,'event','2024-04-18 00:00:00'),(32,9,674.00,'event','2024-04-13 00:00:00'),(33,7,715.00,'other','2024-04-14 00:00:00'),(34,10,472.00,'other','2024-04-28 00:00:00'),(35,15,750.00,'dining','2024-04-15 00:00:00'),(36,20,204.00,'event','2024-04-20 00:00:00'),(37,19,136.00,'event','2024-04-16 00:00:00'),(38,5,918.00,'service','2024-04-17 00:00:00'),(39,12,850.00,'room','2024-04-17 00:00:00'),(40,19,113.00,'other','2024-04-09 00:00:00'),(41,7,609.00,'other','2024-05-12 00:00:00'),(42,4,878.00,'other','2024-05-26 00:00:00'),(43,1,733.00,'other','2024-05-19 00:00:00'),(44,18,423.00,'room','2024-05-14 00:00:00'),(45,12,251.00,'service','2024-05-21 00:00:00'),(46,6,965.00,'event','2024-05-15 00:00:00'),(47,18,132.00,'dining','2024-05-28 00:00:00'),(48,20,264.00,'service','2024-05-19 00:00:00'),(49,1,363.00,'other','2024-05-22 00:00:00'),(50,14,863.00,'service','2024-05-04 00:00:00'),(51,1,992.00,'dining','2024-06-25 00:00:00'),(52,4,197.00,'event','2024-06-23 00:00:00'),(53,1,742.00,'room','2024-06-23 00:00:00'),(54,4,636.00,'other','2024-06-04 00:00:00'),(55,2,669.00,'event','2024-06-03 00:00:00'),(56,9,745.00,'event','2024-06-17 00:00:00'),(57,20,151.00,'dining','2024-06-06 00:00:00'),(58,5,277.00,'dining','2024-06-24 00:00:00'),(59,6,334.00,'dining','2024-06-03 00:00:00'),(60,15,794.00,'service','2024-06-08 00:00:00'),(61,7,584.00,'dining','2024-07-15 00:00:00'),(62,7,405.00,'room','2024-07-22 00:00:00'),(63,3,554.00,'service','2024-07-21 00:00:00'),(64,2,943.00,'room','2024-07-11 00:00:00'),(65,7,601.00,'room','2024-07-20 00:00:00'),(66,10,767.00,'event','2024-07-07 00:00:00'),(67,13,279.00,'room','2024-07-17 00:00:00'),(68,7,637.00,'event','2024-07-03 00:00:00'),(69,19,172.00,'room','2024-07-25 00:00:00'),(70,2,575.00,'dining','2024-07-19 00:00:00'),(71,16,974.00,'room','2024-08-22 00:00:00'),(72,15,679.00,'event','2024-08-23 00:00:00'),(73,20,839.00,'other','2024-08-25 00:00:00'),(74,18,498.00,'dining','2024-08-08 00:00:00'),(75,17,201.00,'dining','2024-08-27 00:00:00'),(76,20,333.00,'other','2024-08-09 00:00:00'),(77,19,567.00,'service','2024-08-05 00:00:00'),(78,16,745.00,'room','2024-08-25 00:00:00'),(79,7,547.00,'dining','2024-08-06 00:00:00'),(80,12,469.00,'dining','2024-08-24 00:00:00'),(81,12,154.00,'room','2024-09-23 00:00:00'),(82,1,817.00,'room','2024-09-19 00:00:00'),(83,9,485.00,'service','2024-09-19 00:00:00'),(84,9,412.00,'dining','2024-09-24 00:00:00'),(85,7,367.00,'dining','2024-09-22 00:00:00'),(86,3,641.00,'service','2024-09-26 00:00:00'),(87,17,465.00,'room','2024-09-23 00:00:00'),(88,10,758.00,'event','2024-09-01 00:00:00'),(89,6,328.00,'service','2024-09-12 00:00:00'),(90,17,306.00,'event','2024-09-12 00:00:00'),(91,6,924.00,'other','2024-10-08 00:00:00'),(92,19,687.00,'event','2024-10-19 00:00:00'),(93,3,438.00,'dining','2024-10-04 00:00:00'),(94,1,611.00,'event','2024-10-21 00:00:00'),(95,6,597.00,'service','2024-10-22 00:00:00'),(96,7,937.00,'service','2024-10-10 00:00:00'),(97,13,176.00,'service','2024-10-02 00:00:00'),(98,8,910.00,'service','2024-10-23 00:00:00'),(99,13,640.00,'room','2024-10-05 00:00:00'),(100,13,326.00,'event','2024-10-25 00:00:00'),(101,18,709.00,'event','2024-11-13 00:00:00'),(102,4,405.00,'event','2024-11-28 00:00:00'),(103,3,177.00,'service','2024-11-25 00:00:00'),(104,10,928.00,'event','2024-11-08 00:00:00'),(105,16,305.00,'dining','2024-11-16 00:00:00'),(106,19,285.00,'dining','2024-11-02 00:00:00'),(107,11,327.00,'event','2024-11-22 00:00:00'),(108,11,720.00,'room','2024-11-21 00:00:00'),(109,9,412.00,'dining','2024-11-16 00:00:00'),(110,5,982.00,'room','2024-11-16 00:00:00'),(111,9,568.00,'other','2024-12-11 00:00:00'),(112,16,272.00,'other','2024-12-01 00:00:00'),(113,1,881.00,'dining','2024-12-04 00:00:00'),(114,14,114.00,'service','2024-12-15 00:00:00'),(115,20,591.00,'other','2024-12-09 00:00:00'),(116,14,939.00,'dining','2024-12-14 00:00:00'),(117,17,120.00,'event','2024-12-14 00:00:00'),(118,18,893.00,'dining','2024-12-19 00:00:00'),(119,9,973.00,'service','2024-12-13 00:00:00'),(120,5,735.00,'service','2024-12-20 00:00:00'),(121,7,664.00,'service','2025-01-05 00:00:00'),(122,12,282.00,'service','2025-01-14 00:00:00'),(123,11,918.00,'service','2025-01-06 00:00:00'),(124,9,704.00,'room','2025-01-26 00:00:00'),(125,16,241.00,'other','2025-01-24 00:00:00'),(126,17,382.00,'event','2025-01-02 00:00:00'),(127,16,770.00,'service','2025-01-19 00:00:00'),(128,15,957.00,'event','2025-01-09 00:00:00'),(129,16,350.00,'other','2025-01-22 00:00:00'),(130,20,437.00,'room','2025-01-28 00:00:00'),(131,7,795.00,'dining','2025-02-05 00:00:00'),(132,10,967.00,'event','2025-02-21 00:00:00'),(133,15,433.00,'room','2025-02-10 00:00:00'),(134,12,739.00,'dining','2025-02-14 00:00:00'),(135,8,223.00,'other','2025-02-15 00:00:00'),(136,3,877.00,'other','2025-02-26 00:00:00'),(137,15,447.00,'room','2025-02-27 00:00:00'),(138,15,758.00,'service','2025-02-19 00:00:00'),(139,14,416.00,'service','2025-02-14 00:00:00'),(140,4,414.00,'other','2025-02-09 00:00:00'),(141,8,632.00,'other','2025-03-21 00:00:00'),(142,10,964.00,'other','2025-03-17 00:00:00'),(143,8,824.00,'other','2025-03-21 00:00:00'),(144,9,131.00,'dining','2025-03-05 00:00:00'),(145,9,916.00,'event','2025-03-24 00:00:00'),(146,12,420.00,'other','2025-03-07 00:00:00'),(147,4,717.00,'other','2025-03-26 00:00:00'),(148,2,798.00,'other','2025-03-07 00:00:00'),(149,18,754.00,'dining','2025-03-05 00:00:00'),(150,16,820.00,'dining','2025-03-06 00:00:00'),(151,2,792.00,'other','2025-04-02 00:00:00'),(152,12,211.00,'room','2025-04-26 00:00:00'),(153,12,497.00,'event','2025-04-27 00:00:00'),(154,3,365.00,'service','2025-04-11 00:00:00'),(155,7,802.00,'service','2025-04-27 00:00:00'),(156,15,310.00,'service','2025-04-10 00:00:00'),(157,18,869.00,'service','2025-04-07 00:00:00'),(158,17,713.00,'service','2025-04-13 00:00:00'),(159,9,566.00,'dining','2025-04-28 00:00:00'),(160,6,651.00,'other','2025-04-13 00:00:00'),(161,1,349.00,'event','2025-05-07 00:00:00'),(162,6,270.00,'other','2025-05-26 00:00:00'),(163,20,254.00,'room','2025-05-26 00:00:00'),(164,3,125.00,'service','2025-05-16 00:00:00'),(165,4,393.00,'room','2025-05-26 00:00:00'),(166,9,693.00,'room','2025-05-06 00:00:00'),(167,20,588.00,'dining','2025-05-09 00:00:00'),(168,5,380.00,'dining','2025-05-20 00:00:00'),(169,10,322.00,'service','2025-05-22 00:00:00'),(170,17,120.00,'service','2025-05-04 00:00:00'),(171,1,508.00,'event','2025-06-03 00:00:00'),(172,3,711.00,'dining','2025-06-18 00:00:00'),(173,12,690.00,'other','2025-06-16 00:00:00'),(174,19,102.00,'other','2025-06-20 00:00:00'),(175,14,303.00,'dining','2025-06-16 00:00:00'),(176,15,638.00,'dining','2025-06-06 00:00:00'),(177,13,416.00,'dining','2025-06-15 00:00:00'),(178,17,737.00,'other','2025-06-05 00:00:00'),(179,16,328.00,'service','2025-06-18 00:00:00'),(180,1,298.00,'room','2025-06-03 00:00:00'),(181,16,582.00,'dining','2025-07-01 00:00:00'),(182,9,141.00,'dining','2025-07-05 00:00:00'),(183,3,938.00,'other','2025-07-08 00:00:00'),(184,18,279.00,'room','2025-07-03 00:00:00'),(185,2,181.00,'event','2025-07-23 00:00:00'),(186,18,195.00,'other','2025-07-03 00:00:00'),(187,2,794.00,'service','2025-07-06 00:00:00'),(188,17,753.00,'other','2025-07-06 00:00:00'),(189,6,976.00,'room','2025-07-03 00:00:00'),(190,11,784.00,'other','2025-07-25 00:00:00'),(191,9,411.00,'event','2025-08-09 00:00:00'),(192,7,367.00,'service','2025-08-04 00:00:00'),(193,2,232.00,'room','2025-08-21 00:00:00'),(194,20,771.00,'room','2025-08-12 00:00:00'),(195,2,646.00,'service','2025-08-05 00:00:00'),(196,10,795.00,'dining','2025-08-07 00:00:00'),(197,19,635.00,'other','2025-08-27 00:00:00'),(198,5,380.00,'service','2025-08-10 00:00:00'),(199,15,878.00,'room','2025-08-27 00:00:00'),(200,16,272.00,'dining','2025-08-14 00:00:00'),(201,3,255.00,'room','2025-09-10 00:00:00'),(202,15,975.00,'room','2025-09-26 00:00:00'),(203,18,648.00,'room','2025-09-06 00:00:00'),(204,7,531.00,'event','2025-09-03 00:00:00'),(205,10,256.00,'room','2025-09-08 00:00:00'),(206,10,569.00,'dining','2025-09-08 00:00:00'),(207,14,577.00,'event','2025-09-19 00:00:00'),(208,3,595.00,'service','2025-09-07 00:00:00'),(209,8,433.00,'event','2025-09-05 00:00:00'),(210,5,759.00,'other','2025-09-06 00:00:00'),(211,17,635.00,'event','2025-10-20 00:00:00'),(212,1,282.00,'service','2025-10-16 00:00:00'),(213,18,794.00,'event','2025-10-16 00:00:00'),(214,6,621.00,'room','2025-10-23 00:00:00'),(215,14,100.00,'service','2025-10-13 00:00:00'),(216,5,167.00,'other','2025-10-26 00:00:00'),(217,14,646.00,'service','2025-10-07 00:00:00'),(218,14,772.00,'room','2025-10-19 00:00:00'),(219,9,137.00,'dining','2025-10-01 00:00:00'),(220,4,496.00,'service','2025-10-05 00:00:00'),(221,7,509.00,'event','2025-11-16 00:00:00'),(222,10,634.00,'service','2025-11-26 00:00:00'),(223,2,541.00,'service','2025-11-16 00:00:00'),(224,16,204.00,'room','2025-11-19 00:00:00'),(225,6,844.00,'room','2025-11-27 00:00:00'),(226,13,304.00,'service','2025-11-17 00:00:00'),(227,20,312.00,'dining','2025-11-18 00:00:00'),(228,10,342.00,'other','2025-11-08 00:00:00'),(229,7,897.00,'room','2025-11-08 00:00:00'),(230,2,412.00,'room','2025-11-10 00:00:00'),(231,2,992.00,'room','2025-12-06 00:00:00'),(232,12,519.00,'event','2025-12-08 00:00:00'),(233,19,157.00,'other','2025-12-12 00:00:00'),(234,13,342.00,'event','2025-12-15 00:00:00'),(235,9,771.00,'event','2025-12-11 00:00:00'),(236,14,979.00,'service','2025-12-13 00:00:00'),(237,4,527.00,'service','2025-12-20 00:00:00'),(238,3,622.00,'service','2025-12-23 00:00:00'),(239,1,587.00,'other','2025-12-23 00:00:00'),(240,4,383.00,'event','2025-12-27 00:00:00');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wing`
--

DROP TABLE IF EXISTS `wing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wing` (
  `wingId` int NOT NULL AUTO_INCREMENT,
  `buildingId` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `proximity` varchar(50) DEFAULT NULL,
  `smoking` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`wingId`),
  KEY `buildingId` (`buildingId`),
  CONSTRAINT `wing_ibfk_1` FOREIGN KEY (`buildingId`) REFERENCES `building` (`buildingId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wing`
--

LOCK TABLES `wing` WRITE;
/*!40000 ALTER TABLE `wing` DISABLE KEYS */;
INSERT INTO `wing` VALUES (1,1,'North Wing','Pool',0),(2,1,'Main Garden Wing','Garden',0),(3,2,'North Tower - Lower','Parking',0),(4,2,'North Tower - Upper','Elevator',1),(5,2,'North Tower - Penthouse','Top Floor',1),(6,3,'South Wing - East','Pool',0),(7,3,'South Wing - West','Courtyard',0),(8,3,'South Wing - Suites','Garden',1),(9,1,'Main Lobby Wing','Reception',0);
/*!40000 ALTER TABLE `wing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-30 20:08:12
