-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mcdonalds
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Database: `McDonalds`
--
DROP DATABASE IF EXISTS mcdonalds;
CREATE DATABASE IF NOT EXISTS `mcdonalds` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `mcdonalds`;

-- --------------------------------------------------------
--
-- Table structure for table `contain`
--

DROP TABLE IF EXISTS `contain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contain` (
  `OrderID` char(6) NOT NULL,
  `ProductID` char(6) NOT NULL,
  `Quantity` int NOT NULL,
  PRIMARY KEY (`Quantity`,`OrderID`,`ProductID`),
  KEY `FK_ODc` (`OrderID`),
  KEY `FK_PDc` (`ProductID`),
  CONSTRAINT `FK_ODc` FOREIGN KEY (`OrderID`) REFERENCES `od` (`OrderID`),
  CONSTRAINT `FK_PDc` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contain`
--

LOCK TABLES `contain` WRITE;
/*!40000 ALTER TABLE `contain` DISABLE KEYS */;
INSERT INTO `contain` VALUES 
('AA0001','MC2002',2),
('AA0002','MC3001',1),
('AA0003','MC2020',1),
('AA0004','MC2003',3),
('AA0005','MC3012',2),
('AA0006','MC2015',2),
('AA0007','MC3004',4),
('AA0008','MC2007',2),
('AA0009','MC2014',2),
('AA0010','MC3009',1),
('BB0001','MC1002',1),
('BB0001','MC1001',2),
('BB0002','MC3017',1),
('BB0002','MC3006',2),
('BB0003','MC3018',1),
('BB0003','MC3012',2),
('BB0004','MC3018',1),
('BB0004','MC3020',1),
('BB0005','MC2019',1),
('BB0005','MC2011',2),
('BB0006','MC2002',1),
('BB0006','MC2003',1),
('BB0007','MC2015',2),
('BB0007','MC2016',2),
('BB0008','MC3019',1),
('BB0008','MC3010',2),
('BB0009','MC3003',1),
('BB0009','MC3020',1),
('BB0010','MC2016',1),
('BB0010','MC2017',2),
('CC0001','MC2003',1),
('CC0001','MC2010',1),
('CC0001','MC2019',1),
('CC0002','MC2001',1),
('CC0002','MC2020',1),
('CC0002','MC2011',2),
('CC0003','MC1018',1),
('CC0003','MC1005',2),
('CC0003','MC1012',3),
('CC0004','MC3008',1),
('CC0004','MC3019',1),
('CC0004','MC3015',3),
('CC0005','MC1020',1),
('CC0005','MC1009',2),
('CC0005','MC1014',2);
/*!40000 ALTER TABLE `contain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` varchar(5) NOT NULL,
  `CTM_FirstName` varchar(20) NOT NULL,
  `CTM_LastName` varchar(20) NOT NULL,
  `CTM_Gender` char(1) DEFAULT NULL,
  `CTM_PhoneNumber` char(10) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES 
('10001','Olivia','Turner','F','0812345678'),
('10002','Thomas','Murphy','M','0823456789'),
('10005','Noah','Reynolds','M','0834567890'),
('10008','Aiden','Simmons','M','0845678901'),
('10012','Lily','Coleman','F','0856789012'),
('10051','Alex','Webb','M','0996225544'),
('10120','Era','Rose','M','0900607788'),
('10456','Miles','Morales','M','0817869562'),
('10958','Elena','Foster','F','0846523896'),
('10984','Laura','Kearney','F','0876653547'),
('11502','Mary','Steven','F','0651452589'),
('11987','Freddy','Fazbear','M','0958623395'),
('13250','Selina','Wayne','F','0852596321'),
('15842','Eimi','Fukada','F','0864852314'),
('19999','Taylor','Hopper','F','0875162498'),
('21616','Peter','Parker','M','0669145723'),
('22021','Eric','King','M','0975541256'),
('23712','Xavier','Gobling','F','0997794126'),
('26054','John','Baller','M','0985671256'),
('44444','Harry','Styles','M','0811455577'),
('45781','Charlie','Puth','M','0748817982'),
('50668','Dylan','Lenivy','M','0625148963'),
('58075','Sorawit','Piriyapanyaporn','M','0987654321'),
('70853','Sugonde','Knuts','M','0634617819'),
('80808','Vichayuth','Nguyensittipong','M','0869748852');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discountcoupon`
--

DROP TABLE IF EXISTS `discountcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discountcoupon` (
  `OfferName` varchar(30) NOT NULL,
  `DiscountPercent` int NOT NULL,
  `DC_DiscountID` varchar(10) NOT NULL,
  PRIMARY KEY (`OfferName`),
  CONSTRAINT `FK_SOdc` FOREIGN KEY (`OfferName`) REFERENCES `specialoffer` (`OfferName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discountcoupon`
--

LOCK TABLES `discountcoupon` WRITE;
/*!40000 ALTER TABLE `discountcoupon` DISABLE KEYS */;
INSERT INTO `discountcoupon` VALUES 
('Crave & Claim',40,'CCFEST'),
('FirstTime',50,'FIRSTIN50'),
('Five-Hundred',20,'500HUNDRED'),
('One-Hundred',15,'100HUNDRED'),
('Ten Percent Off',10,'10PERCENT');
/*!40000 ALTER TABLE `discountcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `Email` varchar(30) NOT NULL,
  `CustomerID` varchar(5) NOT NULL,
  PRIMARY KEY (`Email`,`CustomerID`),
  KEY `FK_CTMe` (`CustomerID`),
  CONSTRAINT `FK_CTMe` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES 
('oliviatur@gmail.com','10001'),
('thomasmurp@outlook.com','10002'),
('reynoldsn@hotmail.com','10005'),
('asimmons@outlook.com','10008'),
('colelily@yahoo.com','10012'),
('alexthegreat@gmail.com','10051'),
('erarose@gmail.com','10120'),
('iamblackspider@gmail.com','10456'),
('eldendiff@hotmail.com','10958'),
('huntingwolf@gmail.com','10984'),
('maryjostar@hotmail.com','11502'),
('fnaffan2006@gmail.com','11987'),
('batmanfangirl@gmail.com','13250'),
('nihonbet@outlook.co.th','15842'),
('swiftieseras@gmail.com','19999'),
('imnotspiderman@hotmail.com','21616'),
('unkings@outlook.co.th','22021'),
('charles.xev@gmail.com','23712'),
('tbballerid@gmail.com','26054'),
('itwasharry@gmail.com','44444'),
('seeyouagain15@gmail.com','45781'),
('blazedyaln@hotmail.com','50668'),
('sorawitisreal@gmail.com','58075'),
('sugonde@gmail.com','70853'),
('vichayuthinwza@gmail.com','80808');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `EMP_FirstName` varchar(20) NOT NULL,
  `EMP_LastName` varchar(20) NOT NULL,
  `EMP_Shift` char(11) NOT NULL,
  `EMP_Role` varchar(10) NOT NULL,
  `EMP_Salary` decimal(7,2) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES 
(1,'Jennifer','Jones','08:00-16:00','Cashier',15000.00),
(2,'Daniel','Anderson','08:00-16:00','Chef',16000.00),
(3,'Patricia','Smith','00:00-08:00','Janitor',13000.00),
(4,'Jeremy','White','16:00-00:00','Cashier',15000.00),
(5,'Mike','Schmidt','00:00-08:00','Chef',14000.00),
(6,'Harvey','Solanke','16:00-00:00','Chef',14000.00),
(7,'Robert','Downing','16:00-00:00','Chef',13000.00),
(8,'Chinnawat','Sooksawat','08:00-16:00','Cashier',15000.00),
(9,'Term','Mongkhonwatt','00:00-08:00','Chef',16000.00),
(10,'Wasunthara','Pongpinich','16:00-00:00','Cashier',14000.00),
(11,'Maggy','Max','08:00-16:00','Cashier',16000.00),
(12,'Jui','Versteppen','16:00-00:00','Chef',15000.00),
(13,'Kate','Seaway','16:00-00:00','Janitor',12000.00),
(14,'Yuji','Itadori','00:00-08:00','Cashier',16000.00),
(15,'James','Maloney','16:00-00:00','Cashier',15000.00),
(16,'Pran','Laohachoti','00:00-08:00','Chef',13000.00),
(17,'Abby','Chester','08:00-16:00','Janitor',13000.00),
(18,'Arthit','Suksom','16:00-00:00','Janitor',16000.00),
(19,'Yingyai','Jaidee','08:00-16:00','Chef',15000.00),
(20,'Kamol','Klomdee','08:00-16:00','Chef',13000.00),
(21,'Markus','Brinly','00:00-08:00','Janitor',15000.00),
(22,'Mark','Fischbach','00:00-08:00','Cashier',14000.00),
(23,'Emily','Bloom','08:00-16:00','Janitor',13000.00);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `od`
--

DROP TABLE IF EXISTS `od`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `od` (
  `OrderID` char(6) NOT NULL,
  `OD_Detail` varchar(999) NOT NULL,
  `OD_Status` char(1) NOT NULL,
  `OD_Time` datetime NOT NULL,
  `OD_TotalPrice` decimal(9,2) NOT NULL,
  `CustomerID` varchar(5) DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_CTMor` (`CustomerID`),
  KEY `FK_EMPor` (`EmployeeID`),
  CONSTRAINT `FK_CTMor` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `FK_EMPor` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `od`
--

LOCK TABLES `od` WRITE;
/*!40000 ALTER TABLE `od` DISABLE KEYS */;
INSERT INTO `od` VALUES 
('AA0001','MC0002 : 2','Y','2023-02-15 09:45:17',200.00,'10001',1),
('AA0002','MC0001 : 1','Y','2023-11-03 18:20:42',175.00,'10002',4),
('AA0003','MC0020 : 1','Y','2023-06-10 14:34:29',150.00,'10005',1),
('AA0004','MC0003 : 3','Y','2023-03-21 11:52:53',120.00,'10008',8),
('AA0005','MC0012 : 2','Y','2023-09-05 16:45:12',160.00,'10012',15),
('AA0006','MC0015 : 2','Y','2023-01-23 08:15:36',50.00,'10120',11),
('AA0007','MC0004 : 4','Y','2023-05-12 20:23:24',500.00,'10051',10),
('AA0008','MC0007 : 2','Y','2023-08-28 13:10:18',180.00,'10984',8),
('AA0009','MC0014 : 2','Y','2023-07-07 10:36:45',100.00,'50668',11),
('AA0010','MC0009 : 1','Y','2023-10-02 17:40:37',155.00,'80808',15),
('BB0001','MC0001 : 2 / MC0002 : 1','Y','2023-02-28 07:55:21',450.00,'21616',14),
('BB0002','MC0006 : 2 / MC0017 : 1','Y','2023-04-17 22:30:48',225.00,'11987',10),
('BB0003','MC0012 : 2 / MC0018 : 1','Y','2023-06-25 19:15:09',195.00,'22021',4),
('BB0004','MC0020 : 1 / MC0018 : 1','Y','2023-03-06 16:27:57',185.00,'58075',10),
('BB0005','MC0011 : 2 / MC0019 : 1','Y','2023-09-20 12:35:29',320.00,'10958',1),
('BB0006','MC0003 : 1 / MC0002 : 1','Y','2023-01-15 14:50:08',140.00,'13250',4),
('BB0007','MC0016 : 2 / MC0015 : 2','Y','2023-05-03 09:41:33',110.00,'19999',8),
('BB0008','MC0010 : 2 / MC0019 : 1','Y','2023-07-24 18:55:16',250.00,'26054',15),
('BB0009','MC0020 : 1 / MC0003 : 1','Y','2023-10-10 21:20:43',190.00,'44444',15),
('BB0010','MC0017 : 2 / MC0016 : 1','Y','2023-02-03 15:30:26',100.00,'10456',11),
('CC0001','MC0003 : 1 / MC0010 : 1 / MC0019 : 1','Y','2023-04-22 10:59:59',180.00,'70853',1),
('CC0002','MC0011 : 2 / MC0001 : 1 / MC0020 : 1','Y','2023-11-05 08:40:14',615.00,'23712',1),
('CC0003','MC0012 : 3 / MC0005 : 2 / MC0018 : 1','Y','2023-03-15 03:25:39',515.00,'45781',22),
('CC0004','MC0008 : 1 / MC0015 : 3 / MC0019 : 1','Y','2023-08-15 23:45:51',204.00,'11502',10),
('CC0005','MC0020 : 1 / MC0009 : 2 / MC0014 : 2','Y','2023-09-10 06:50:27',560.00,'15842',22);
/*!40000 ALTER TABLE `od` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` char(5) NOT NULL,
  `PM_Method` varchar(10) NOT NULL,
  `PM_Amount` decimal(7,2) NOT NULL,
  `PM_Status` char(1) NOT NULL,
  `PM_Time` datetime NOT NULL,
  `CustomerID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `FK_CTMpay` (`CustomerID`),
  CONSTRAINT `FK_CTMpay` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES 
('CA001','Cash',150.00,'Y','2023-06-10 14:35:49','10005'),
('CA002','Cash',100.00,'Y','2023-07-07 10:38:02','50668'),
('CA003','Cash',250.00,'Y','2023-07-24 18:56:32','26054'),
('CA004','Cash',474.00,'Y','2023-03-15 03:27:02','45781'),
('CC001','CreditCard',105.00,'Y','2023-11-03 18:23:23','10002'),
('CC002','CreditCard',500.00,'Y','2023-05-12 20:24:14','10051'),
('CC003','CreditCard',238.00,'Y','2023-02-28 07:56:36','21616'),
('CC004','CreditCard',225.00,'Y','2023-04-17 22:32:24','11987'),
('CC005','CreditCard',180.00,'Y','2023-04-22 11:01:02','70853'),
('CC006','CreditCard',615.00,'Y','2023-06-05 08:42:35','23712'),
('QR001','QRcode',200.00,'Y','2023-02-15 09:46:00','10001'),
('QR002','QRcode',120.00,'Y','2023-03-21 11:54:03','10008'),
('QR003','QRcode',160.00,'Y','2023-09-05 16:45:12','10012'),
('QR004','QRcode',38.00,'Y','2023-01-23 08:16:58','10120'),
('QR005','QRcode',90.00,'Y','2023-08-28 13:11:00','10984'),
('QR006','QRcode',155.00,'Y','2023-10-02 17:42:26','80808'),
('QR007','QRcode',178.00,'Y','2023-06-25 19:16:09','22021'),
('QR008','QRcode',99.00,'Y','2023-03-06 16:29:20','58075'),
('QR009','QRcode',272.00,'Y','2023-09-20 12:36:26','10958'),
('QR010','QRcode',140.00,'Y','2023-01-15 14:51:18','13250'),
('QR011','QRcode',110.00,'Y','2023-05-03 09:42:13','19999'),
('QR012','QRcode',171.00,'Y','2023-10-10 21:22:12','44444'),
('QR013','QRcode',100.00,'Y','2023-02-03 15:32:13','10456'),
('QR014','QRcode',204.00,'Y','2023-08-15 23:46:49','11502'),
('QR015','QRcode',448.00,'Y','2023-09-10 06:51:57','15842');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` char(6) NOT NULL,
  `PD_Name` varchar(40) NOT NULL,
  `PD_Price` decimal(7,2) NOT NULL,
  `PD_Category` varchar(10) NOT NULL,
  `PD_Description` varchar(999) DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `FK_EMPpr` (`EmployeeID`),
  CONSTRAINT `FK_EMPpr` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES 
('MC1001','Beef Burger',175.00,'Burger','Burger with beef inside',5),
('MC1002','McNuggets',100.00,'Fried','A chicken nugget',9),
('MC1003','French Fries',40.00,'Fried','A fried Potato cut in rectangle shape',16),
('MC1004','Big Mac',125.00,'Burger','A very large burger has everything inside',5),
('MC1005','McFried Chicken',120.00,'Burger','Burger with fried chicken and cabbage inside',9),
('MC1006','Cheeseburger',95.00,'Burger','Burger with fried beef and cheese inside',16),
('MC1007','Filet-O-Fish',90.00,'Burger','Burger with fried fish and cheese',5),
('MC1008','McChicken',99.00,'Burger','Burger with chicken inside',9),
('MC1009','Double Cheeseburger',155.00,'Burger','Double size of cheeseburger',16),
('MC1010','Samurai Pork Burger',110.00,'Burger','Burger with fried pork and samurai sauce inside',5),
('MC1011','Double Big Mac',145.00,'Burger','Double size of Big Mac Burger',9),
('MC1012','Chic stick',80.00,'Fried','Chicken stick fried',16),
('MC1013','McSpicy Chicken Burger',115.00,'Burger','Burger with Chicken spicy inside',5),
('MC1014','McWing',50.00,'Fried','Chicken wing fried',9),
('MC1015','Corn Pie',25.00,'Dessert','Pie with boiled corn inside',16),
('MC1016','Chicken Pie',30.00,'Dessert','Pie with chicken inside',5),
('MC1017','Strawberry Sundae',35.00,'Dessert','An ice cream strawberry flavor',9),
('MC1018','Chocolate Sundae',35.00,'Dessert','An ice cream chocolate flavor',16),
('MC1019','Coca-cola',30.00,'Beverage','A soft drink with cola flavor',5),
('MC1020','Happy Meal',150.00,'Happy Meal','In the box it contains Burger, Nugget, and a drink',9),
('MC2001','Beef Burger',175.00,'Burger','Burger with beef inside',2),
('MC2002','McNuggets',100.00,'Fried','A chicken nugget',19),
('MC2003','French Fries',40.00,'Fried','A fried Potato cut in rectangle shape',20),
('MC2004','Big Mac',125.00,'Burger','A very large burger has everything inside',2),
('MC2005','McFried Chicken',120.00,'Burger','Burger with fried chicken and cabbage inside',19),
('MC2006','Cheeseburger',95.00,'Burger','Burger with fried beef and cheese inside',20),
('MC2007','Filet-O-Fish',90.00,'Burger','Burger with fried fish and cheese',2),
('MC2008','McChicken',99.00,'Burger','Burger with chicken inside',19),
('MC2009','Double Cheeseburger',155.00,'Burger','Double size of cheeseburger',20),
('MC2010','Samurai Pork Burger',110.00,'Burger','Burger with fried pork and samurai sauce inside',2),
('MC2011','Double Big Mac',145.00,'Burger','Double size of Big Mac Burger',19),
('MC2012','Chic stick',80.00,'Fried','Chicken stick fried',20),
('MC2013','McSpicy Chicken Burger',115.00,'Burger','Burger with Chicken spicy inside',2),
('MC2014','McWing',50.00,'Fried','Chicken wing fried',19),
('MC2015','Corn Pie',25.00,'Dessert','Pie with boiled corn inside',20),
('MC2016','Chicken Pie',30.00,'Dessert','Pie with chicken inside',2),
('MC2017','Strawberry Sundae',35.00,'Dessert','An ice cream strawberry flavor',19),
('MC2018','Chocolate Sundae',35.00,'Dessert','An ice cream chocolate flavor',20),
('MC2019','Coca-cola',30.00,'Beverage','A soft drink with cola flavor',2),
('MC2020','Happy Meal',150.00,'Happy Meal','In the box it contains Burger, Nugget, and a drink',19),
('MC3001','Beef Burger',175.00,'Burger','Burger with beef inside',6),
('MC3002','McNuggets',100.00,'Fried','A chicken nugget',7),
('MC3003','French Fries',40.00,'Fried','A fried Potato cut in rectangle shape',12),
('MC3004','Big Mac',125.00,'Burger','A very large burger has everything inside',6),
('MC3005','McFried Chicken',120.00,'Burger','Burger with fried chicken and cabbage inside',7),
('MC3006','Cheeseburger',95.00,'Burger','Burger with fried beef and cheese inside',12),
('MC3007','Filet-O-Fish',90.00,'Burger','Burger with fried fish and cheese',6),
('MC3008','McChicken',99.00,'Burger','Burger with chicken inside',7),
('MC3009','Double Cheeseburger',155.00,'Burger','Double size of cheeseburger',12),
('MC3010','Samurai Pork Burger',110.00,'Burger','Burger with fried pork and samurai sauce inside',6),
('MC3011','Double Big Mac',145.00,'Burger','Double size of Big Mac Burger',7),
('MC3012','Chic stick',80.00,'Fried','Chicken stick fried',12),
('MC3013','McSpicy Chicken Burger',115.00,'Burger','Burger with Chicken spicy inside',6),
('MC3014','McWing',50.00,'Fried','Chicken wing fried',7),
('MC3015','Corn Pie',25.00,'Dessert','Pie with boiled corn inside',12),
('MC3016','Chicken Pie',30.00,'Dessert','Pie with chicken inside',6),
('MC3017','Strawberry Sundae',35.00,'Dessert','An ice cream strawberry flavor',7),
('MC3018','Chocolate Sundae',35.00,'Dessert','An ice cream chocolate flavor',12),
('MC3019','Coca-cola',30.00,'Beverage','A soft drink with cola flavor',6),
('MC3020','Happy Meal',150.00,'Happy Meal','In the box it contains Burger, Nugget, and a drink',7);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `OfferName` varchar(30) NOT NULL,
  `ApplicableProducts` varchar(50) NOT NULL,
  `PromotionDetail` varchar(100) NOT NULL,
  PRIMARY KEY (`OfferName`),
  CONSTRAINT `FK_SOpro` FOREIGN KEY (`OfferName`) REFERENCES `specialoffer` (`OfferName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES 
('69 Hamset','Hamburger','Hamburger set 69 baht'),
('Dessert Snack 1','Pie','Pie (any flavor) for only 19 baht'),
('Dessert Snack 2','Sundae','Sundae (any flavor) for only 19 baht'),
('Fish & Chicken','Hamburger','Hamburger set with an addition of fried chicken for only 89 baht'),
('Super Supper','Happy Meal','Happy Meal with sundae (any flavor) for only 99 baht');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `ReceiptID` char(7) NOT NULL,
  `RC_PaidTime` datetime NOT NULL,
  `RC_Method` varchar(20) NOT NULL,
  `RC_TotalAmount` decimal(7,2) NOT NULL,
  `RC_Detail` varchar(100) NOT NULL,
  `CustomerID` varchar(5) DEFAULT NULL,
  `PaymentID` char(5) DEFAULT NULL,
  PRIMARY KEY (`ReceiptID`),
  KEY `FK_CTMrc` (`CustomerID`),
  KEY `FK_PMrc` (`PaymentID`),
  CONSTRAINT `FK_CTMrc` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `FK_PMrc` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES 
('AA0001','2023-02-15 09:46:00','QRcode',200.00,'MC0002 : 2','10001','QR001'),
('AA0002','2023-04-03 18:23:23','CreditCard',105.00,'MC0001 : 1','10002','CC001'),
('AA0003','2023-06-10 14:35:49','Cash',150.00,'MC0020 : 1','10005','CA001'),
('AA0004','2023-03-21 11:54:03','QRcode',120.00,'MC0003 : 3','10008','QR002'),
('AA0005','2023-09-05 16:45:12','QRcode',160.00,'MC0012 : 2','10012','QR003'),
('AA0006','2023-01-23 08:16:58','QRcode',38.00,'MC0015 : 2','10120','QR004'),
('AA0007','2023-05-12 20:24:14','CreditCard',500.00,'MC0004 : 4','10051','CC002'),
('AA0008','2023-08-28 13:11:00','QRcode',90.00,'MC0007 : 2','10984','QR005'),
('AA0009','2023-07-07 10:38:02','Cash',100.00,'MC0014 : 2','50668','CA002'),
('AA0010','2023-10-02 17:42:26','QRcode',155.00,'MC0009 : 1','80808','QR006'),
('BB0001','2023-02-28 07:56:36','CreditCard',238.00,'MC0001 : 2 / MC0002 : 1','21616','CC003'),
('BB0002','2023-04-17 22:32:24','CreditCard',225.00,'MC0006 : 2 / MC0017 : 1','11987','CC004'),
('BB0003','2023-06-25 19:16:09','QRcode',178.00,'MC0012 : 2 / MC0018 : 1','22021','QR007'),
('BB0004','2023-03-06 16:29:20','QRcode',99.00,'MC0020 : 1 / MC0018 : 1','58075','QR008'),
('BB0005','2023-09-20 12:36:26','QRcode',272.00,'MC0011 : 2 / MC0019 : 1','10958','QR009'),
('BB0006','2023-01-15 14:51:18','QRcode',140.00,'MC0003 : 1 / MC0002 : 1','13250','QR010'),
('BB0007','2023-05-03 09:42:13','QRcode',110.00,'MC0016 : 2 / MC0015 : 2','19999','QR011'),
('BB0008','2023-07-24 18:56:32','Cash',250.00,'MC0010 : 2 / MC0019 : 1','26054','CA003'),
('BB0009','2023-10-10 21:22:12','QRcode',171.00,'MC0020 : 1 / MC0003 : 1','44444','QR012'),
('BB0010','2023-02-03 15:32:13','QRcode',100.00,'MC0017 : 2 / MC0016 : 1','10456','QR013'),
('CC0001','2023-04-22 11:01:02','CreditCard',180.00,'MC0003 : 1 / MC0010 : 1 / MC0019 : 1','70853','CC005'),
('CC0002','2023-06-05 08:42:35','CreditCard',615.00,'MC0011 : 2 / MC0001 : 1 / MC0020 : 1','23712','CC006'),
('CC0003','2023-03-15 03:27:02','Cash',474.00,'MC0012 : 3 / MC0005 : 2 / MC0018 : 1','45781','CA004'),
('CC0004','2023-08-15 23:46:49','QRcode',204.00,'MC0008 : 1 / MC0015 : 3 / MC0019 : 1','11502','QR014'),
('CC0005','2023-09-10 06:51:57','QRcode',448.00,'MC0020 : 1 / MC0009 : 2 / MC0014 : 2','15842','QR015');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialoffer`
--

DROP TABLE IF EXISTS `specialoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialoffer` (
  `OfferName` varchar(30) NOT NULL,
  `SO_Description` varchar(150) NOT NULL,
  `SO_StartedDate` date NOT NULL,
  `SO_ExpiredDate` date NOT NULL,
  `OrderID` char(10) NOT NULL,
  PRIMARY KEY (`OfferName`,`OrderID`),
  KEY `FK_ODso` (`OrderID`),
  CONSTRAINT `FK_ODso` FOREIGN KEY (`OrderID`) REFERENCES `od` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialoffer`
--

LOCK TABLES `specialoffer` WRITE;
/*!40000 ALTER TABLE `specialoffer` DISABLE KEYS */;
INSERT INTO `specialoffer` VALUES 
('69 Hamset','Hamburger set 69 baht','2023-01-01','2023-06-30','BB0001'),
('Crave & Claim','Saves up to 40% during Thanksgiving','2023-11-01','2023-11-30','AA0002'),
('Dessert Snack 1','Pie (any flavor) for only 19 baht','2023-01-01','2023-02-02','AA0006'),
('Dessert Snack 2','Sundae (any flavor) for only 19 baht','2023-06-01','2023-10-31','BB0003'),
('FirstTime','For the first time customer','2023-01-01','2023-12-31','AA0008'),
('Fish & Chicken','Hamburger set with an addition of fried chicken for only 89 baht','2023-03-01','2023-04-01','CC0003'),
('Five-Hundred','Twenty percent discount from total price','2023-10-01','2023-12-31','CC0005'),
('One-Hundred','Fifteen percent discount from total price','2023-07-01','2023-10-01','BB0005'),
('Super Supper','Happy Meal with sundae (any flavor) for only 99 baht','2023-03-01','2023-04-01','BB0004'),
('Ten Percent Off','Ten percent discount from total price','2023-09-01','2023-12-01','BB0009');
/*!40000 ALTER TABLE `specialoffer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 21:19:55

-- Query --
use McDonalds;
-- Table 1 --
select c.CustomerID, concat(c.CTM_FirstName, " ", c.CTM_LastName) as 'Customer Name' from Customer c
join Payment p on c.CustomerID = p.CustomerID
where p.PM_Method = 'QRcode'
order by c.CustomerID;

-- Table 2 --
select e.EmployeeID, concat(e.EMP_FirstName, " ", e.EMP_LastName) as 'Employee Name', e.EMP_Shift as 'Shift', e.EMP_Salary as 'Salary' from Employee e
where e.EMP_Role = 'Janitor';

-- Table 3 --
select c.CustomerID, concat(c.CTM_FirstName, " ", c.CTM_LastName) as 'Customer Name', e.Email as 'Customer Email', time(o.OD_Time) as 'Time' from Customer c
join Email e on c.CustomerID = e.CustomerID join OD o on c.CustomerID = o.CustomerID
where time(o.OD_Time) between '11:00:00' and '13:00:00';

-- Table 4 --
select e.EmployeeID, concat(e.EMP_FirstName, " ", e.EMP_LastName) as 'Employee Name', e.EMP_Shift as 'Shift', count(o.OrderID) as 'Number of Customer' from Employee e
join OD o on e.EmployeeID = o.EmployeeID
group by EmployeeID;

-- Table 5 --
select PM_Method as 'Method', max(PM_Amount) as Amount from Payment
group by PM_Method;
 
-- Table 6 --
select p.PD_Category, count(p.PD_Category) as 'Number of Customer' from Product p
join Contain c on p.ProductID = c.ProductID
group by P.PD_Category
order by count(p.PD_Category) desc;

-- Table 7 --
select c.CustomerID, concat(c.CTM_FirstName, " ", c.CTM_LastName) as 'Customer Name', e.Email as 'Customer Email', p.PD_Name as 'Burger Menu Name', ct.Quantity from Customer c
join Email e on c.CustomerID = e.CustomerID join OD o on e.CustomerID = o.CustomerID join Contain ct on o.OrderID = ct.OrderID join Product p on ct.ProductID = p.ProductID
where p.PD_Category = 'Burger'
order by p.PD_Name;

-- Table 8 --
select p.PD_Name as 'Product Name', count(p.PD_Name) as 'Number of Customer', sum(c.Quantity) as 'Quantity' from Product p
join Contain c on p.ProductID = c.ProductID
group by p.PD_Name
order by sum(c.Quantity) desc;

-- Table 9 --
select avg(c1.totalproduct) as 'Average Number of product purchased by customer'
from (
	select count(ProductID) as totalproduct from Contain
    group by OrderID) c1;

-- Table 10 --
select avg(p1.totalproduct) as 'Average Number of product taken care by chef'
from (
	select count(ProductID) as totalproduct from Product
    group by EmployeeID) p1;
    
-- Table 11 --
select EMP_Shift as "Shift Time",count(EmployeeID) as 'Total number of Employees' 
from Employee
group by EMP_Shift
order by EMP_Shift asc;

-- Table 12 --
select p.PD_Name as "Product Name" , sum(c.quantity ) as "Total Number" from Contain c
join Product p on c.ProductID = p.ProductID
group by p.PD_Name
order by sum(quantity ) desc
limit 10;

-- Table 13 --
select OfferName , SO_Description , SO_ExpiredDate as "Expired Date" from SpecialOffer s 
where curdate() < SO_ExpiredDate
order by SO_ExpiredDate asc;

-- Table 14 --
select round(avg(EMP_Salary),2) as "Average Salary of all Employee" from employee;

-- Table 15 --
select PM_Method as "Payment Method",count(PM_Method) as "Total Number"  from Payment
where PM_Status = "Y"
group by PM_Method;

-- Table 16 --
select e.EMP_Shift,count(e.EMP_Shift) as "Numbers of Order" from OD o
join Employee e on o.EmployeeID = e.EmployeeID
group by e.EMP_Shift;

-- Table 17 --
select round(avg(rr.Average),0) as "Average Total Price purchased by one Customer(Baht)" from (select c.CustomerID ,sum(RC_TotalAmount) as Average from Receipt r
join Customer c on r.CustomerID = c.CustomerID
group by c.CustomerID) rr;

-- Table 18 --
select p.PD_Name as "Product Name", sum(c.quantity) as "Total Number" from Contain c
join Product p on c.ProductID = p.ProductID
join OD o on o.OrderID = c.OrderID
join Customer cu on o.CustomerID  = cu.CustomerID 
where CTM_Gender = "F"
group by p.PD_Name
order by sum(c.quantity) desc
limit 5;

-- Table 19 --
select p.PD_Name as "Product Name", sum(c.quantity) as "Total Number" from Contain c
join Product p on c.ProductID = p.ProductID
join OD o on o.OrderID = c.OrderID
join Customer cu on o.CustomerID  = cu.CustomerID 
where CTM_Gender = "M"
group by p.PD_Name
order by sum(c.quantity) desc
limit 5;

-- Table 20 --
select  p.PD_Name as "Product Name",sum(c.quantity) as "Total quantity" from Contain c
join Product p on c.ProductID = p.ProductID
join OD o on c.OrderID = o.OrderID
join Employee e on p.EmployeeID = e.EmployeeID
where e.EMP_Shift = (select e.EMP_Shift from Contain c
join Product p on c.ProductID = p.ProductID
join Employee e on p.EmployeeID = e.EmployeeID
group by e.EMP_Shift
order by sum(c.quantity * p.PD_Price) desc
limit 1)
group by p.PD_Name 
order by sum(c.quantity) desc;

-- Table 21 --
select EmployeeID, concat(EMP_FirstName, " ", EMP_LastName) as "Employee Name", EMP_Role as "Role" from Employee
where EMP_Shift = '00:00-08:00';

-- Table 22 --
select * from Customer
where CTM_Gender = 'F'
order by CTM_FirstName;

-- Table 23 --
select PD_Category as "Category", max(PD_Price) as "Price" from Product
group by PD_Category;

-- Table 24 --
select EMP_Salary as "Salary", count(EmployeeID) as "No. of Employee" from Employee
group by EMP_Salary
order by EMP_Salary;

-- Table 25 --
select EMP_Role as "Role", count(EmployeeID) as "No. of Employee" from Employee
group by EMP_Role;

-- Table 26 --
select p.PD_Category, sum(c.Quantity) as 'Quantity' from OD o
left join Contain c on o.OrderID = c.OrderID
left join Product p on c.ProductID = p.ProductID
group by p.PD_Category
order by sum(c.Quantity) desc;

-- Table 27 --
select distinct c.CustomerID, concat(c.CTM_FirstName, " ", c.CTM_LastName) as "Customer Name", p.PD_Name as "Product Name" from Customer c
left join OD o on c.CustomerID = o.CustomerID
left join Contain cn on o.OrderID = cn.OrderID
left join Product p on cn.ProductID = p.ProductID
where p.PD_category = "Dessert"
order by c.CustomerID;

-- Table 28 --
select avg(aa.num) as "Average Number of Order Taken Care by Each Employee" 
from (select count(OrderID) as num from OD
group by EmployeeID) aa;

-- Table 29 --
select * from Employee
where EMP_Salary > (select avg(EMP_Salary) from Employee);

-- Table 30 --
select e.EMP_Shift as "Shift" , sum(Quantity) as "Quantity of a Product" from Contain c
left join OD o on c.OrderID = o.OrderID
left join Employee e on o.EmployeeID = e.EmployeeID
group by e.EMP_Shift
order by sum(Quantity) desc;

-- Table 31 --
select EMP_FirstName as First_name , EMP_LastName as Last_name , EMP_Role as Role , EMP_shift as Time from Employee
order by EMP_shift asc;


-- Table 32 --
select P.PD_Name as Name , P.PD_Price as Price , P.PD_Category as Category , sum(C.quantity) as Total from Product P
left join Contain C
on P.ProductID = C.ProductID
group by P.PD_name, Price, Category
order by Category;

-- Table 33 --
select concat(EMP_FirstName,' ',EMP_LastName) as Name , EMP_Role as Role , EMP_Salary as Salary From Employee
where EMP_Salary = (select max(EMP_Salary) from Employee);

-- Table 34 --
select R.ReceiptID, R.RC_PaidTime, R.RC_Method, R.RC_TotalAmount, R.RC_Detail  from Receipt R
inner join Customer Cu
on R.CustomerID = R.CustomerID
inner join Payment P
on P.PaymentID = R.PaymentID
join OD O
on O.CustomerID = R.CustomerID
join Contain C
on C.OrderID = O.OrderID
where R.RC_Method = 'QRcode'
group by R.ReceiptID
having count(c.ProductID) > 1
order by R.RC_TotalAmount desc;

-- Table 35 --
select concat(Cu.CTM_FirstName,' ',CTM_LastName) as Name, Sp.OfferName , Sp.SO_Description as 'Description' , P.PD_Name as 'Product Name'from SpecialOffer Sp
inner join OD O
on O.OrderID = Sp.OrderID
inner join Contain C
on O.OrderID = C.OrderID
left join Product P
on C.ProductID = P.ProductID
left join Customer Cu
on O.CustomerID = Cu.CustomerID
where Sp.OfferName like 'Dessert Snack%' and (P.PD_name like '%Pie' or P.PD_name like '%Sundae' );

-- Table 36 --
select OfferName , ApplicableProducts, PromotionDetail, null as 'DiscountID'  ,null as 'DiscountPercent' from Promotion 
union
select OfferName , null ,null , DC_DiscountID, DiscountPercent from DiscountCoupon;

-- Table 37 --
select P.ProductID , P.PD_Name as ProductName,E.EMP_shift as Time, sum(C.Quantity) as Total from Product P
left join Contain C 
on P.ProductID = C.ProductID
inner join Employee E
on P.EmployeeID = E.EmployeeID
where P.PD_name = 'Big Mac'
group by P.ProductID, P.PD_Name
order by P.ProductID asc;

-- Table 38 --
select concat(E.EMP_FirstName,' ',E.EMP_LastName) as Name , E.EMP_Shift as Shift , P.PD_Name as Product_Name from Employee E
left join Product P
on P.EmployeeID = E.EmployeeID
where E.EMP_FirstName = 'Jui' and E.EMP_LastName = 'Versteppen';

-- Table 39 --
select E.Email as EMAIL ,concat(C.CTM_FirstName,' ',C.CTM_LastName) as Name ,C.CTM_Gender as Gender , C.CTM_PhoneNumber as PhoneNum from Customer C
inner join Email E
on E.CustomerID = C.CustomerID
where E.Email like '%a%'
order by Name;

-- Table 40 --
select concat(Cu.CTM_FirstName,' ',Cu.CTM_LastName) as Name, P.PD_Name as Product_Name from Customer Cu
join OD O
on O.CustomerID = Cu.CustomerID
left join Contain C
on C.OrderID = O.OrderID
left join Product P
on C.ProductID = P.ProductID
where P.PD_Name like '% sundae';

-- Table 41 --
select EMP_Role as "Employee Role", avg(EMP_Salary) as "Average Salary" from employee group by EMP_Role;

-- Table 42 --
select OrderID, OD_TotalPrice from OD 
where OD_TotalPrice > 500 order by OD_TotalPrice desc;

-- Table 43 --
select o.OrderID, o.OD_TotalPrice, so.OfferName, so.SO_description
from OD o
join SpecialOffer so on o.OrderID = so.OrderID
order by o.OrderID asc;

--  Table 44 --
select count(distinct dc.DC_DiscountID) as OrdersWithDiscountCoupon,
count(distinct pr.ApplicableProducts) as OrdersWithPromotion,
count(distinct od.OrderID) - count(distinct so.OfferName) as OrdersWithoutSpecialOffer
from OD od
left join SpecialOffer so on od.OrderID = so.OrderID
left join DiscountCoupon dc on so.OfferName = dc.OfferName
left join Promotion pr on so.OfferName = pr.OfferName;

-- Table 45 --
select PM_Method, sum(PM_Amount) as TotalRevenue from Payment 
group by PM_Method order by TotalRevenue desc;

-- Table 46 --
select p.PD_Name as "Product Name" , sum(c.quantity ) as "Total Number" from Contain c
join Product p on c.ProductID = p.ProductID
group by p.PD_Name
order by sum(quantity ) asc
limit 10;

-- Table 47 --
select PD_Category, avg(PD_Price) as AveragePrice from Product 
group by PD_Category order by AveragePrice desc;

-- Table 48 --
select sum(PM_Amount) as BranchTotalRevenue from Payment;

-- Table 49 --
select concat(c.CTM_FirstName, " ", c.CTM_LastName) as CustomerName, sum(od.OD_TotalPrice) as HighestPurchaseAmount 
from Customer c join OD od on c.CustomerID = od.CustomerID 
group by c.CustomerID order by HighestPurchaseAmount desc limit 1;

-- Table 50 --
select e.EmployeeID, concat(e.EMP_FirstName, " ", e.EMP_LastName) as EmployeeName, count(od.OrderID) as HighestOrderDone
from Employee e join OD od on e.EmployeeID = od.EmployeeID 
group by e.EmployeeID order by HighestOrderDone desc limit 1;