-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: ebs
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','java@1991','admin@gmail.com','2021-07-27 14:38:11','2021-09-16 19:28:28');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('14900');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (2,'Sagar Kharmale','kharmalesagar88@gmail.com','9276755516','Nice','2021-08-17 23:35:21'),(4,'Arun Shivaji Pandit','30arunpandit@gmail.com','08208210071','Awesome billing system','2021-08-18 23:32:00'),(9,'Javed Tamboli','javed.tamboli@gmail.com','8369651475','I want this portal.','2021-09-14 14:03:53'),(10,'Kishor Balasaheb Kadam','kadamk33@gmail.com','9404308673','I want this java web portal.','2021-09-16 12:25:00');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `parentname` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `atpost` varchar(45) DEFAULT NULL,
  `plotno` int DEFAULT NULL,
  `taluka` varchar(45) DEFAULT NULL,
  `dist` varchar(45) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `electricityno` varchar(100) DEFAULT NULL,
  `initialmeterReading` varchar(100) DEFAULT NULL,
  `custumno` varchar(100) DEFAULT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` VALUES (1,'Kishor','Balasaheb','Kadam','Bhalawani',213,'Parner','Ahmednagar',414103,'Maharashtra','Rural','1992940','899.0','C20210915113115','01','2021-09-15 06:01:54','2021-09-16 18:10:48'),(2,'Arun','Shivaji','Pandit','Kharwandi',984,'Newasa','Ahmednagar',411022,'Andhra Pradesh','Rural','2368464','65.0','C20210916073420','01','2021-09-16 14:05:07','2021-09-16 19:37:40'),(3,'Sagar','Prakash','Kharmale','Warje Malwadi',966,'Warje','Pune',414103,'Andhra Pradesh','City','5662924','154.0','C20210916073532','01','2021-09-16 14:06:08','2021-09-16 19:50:56'),(4,'Sanket','Sambhaji','Kadam','Bhalawani',363,'Parner','Ahmednagar',414103,'Maharashtra','Rural','3881067','235.0','C20210916075227','01','2021-09-16 14:22:54','2021-09-16 19:54:39');
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomersbillingrecords`
--

DROP TABLE IF EXISTS `tblcustomersbillingrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomersbillingrecords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `electricityno` varchar(100) DEFAULT NULL,
  `custumno` varchar(100) DEFAULT NULL,
  `billno` varchar(100) DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `atpost` varchar(45) DEFAULT NULL,
  `plotno` int DEFAULT NULL,
  `taluka` varchar(45) DEFAULT NULL,
  `dist` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `initialMeterReading` varchar(100) DEFAULT NULL,
  `finalMeterReading` varchar(100) DEFAULT NULL,
  `totalUnit` varchar(100) DEFAULT NULL,
  `freeUnit` varchar(100) DEFAULT NULL,
  `netChargeableUnit` varchar(100) DEFAULT NULL,
  `fixedMonthlyCharges` double DEFAULT NULL,
  `meterCharges` double DEFAULT NULL,
  `serviceTax` double DEFAULT NULL,
  `totalBill` double DEFAULT NULL,
  `system_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomersbillingrecords`
--

LOCK TABLES `tblcustomersbillingrecords` WRITE;
/*!40000 ALTER TABLE `tblcustomersbillingrecords` DISABLE KEYS */;
INSERT INTO `tblcustomersbillingrecords` VALUES (1,'1992940','C20210915113115','2','Kishor Balasaheb Kadam','Bhalawani',213,'Parner','Ahmednagar','Maharashtra',414103,'Rural','550.0','788.0','238.0','30','208.0',125,1248,104.84,1477.84,'2021-09-16'),(2,'5662924','C20210916073532','2','Sagar Prakash Kharmale','Warje-Malwadi',986,'Warje','Pune','Maharashtra',414103,'City','0.0','154.0','154.0','15','139.0',175,1251,133.1,1559.1,'2021-09-16'),(3,'2368464','C20210916073420','2','Arun Shivaji Pandit','Kharwandi',984,'Newasa','Ahmednagar','Andhra Pradesh',411022,'Rural','0.0','65.0','65.0','30','35.0',125,210,21.8,356.8,'2021-09-16'),(4,'3881067','C20210916075227','2','Sanket Sambhaji Kadam','Bhalawani',363,'Parner','Ahmednagar','Maharashtra',414103,'Rural','144.0','235.0','91.0','30','61.0',125,366,34.28,525.28,'2021-09-16');
/*!40000 ALTER TABLE `tblcustomersbillingrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfeedback` (
  `contact_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfeedback`
--

LOCK TABLES `tblfeedback` WRITE;
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
INSERT INTO `tblfeedback` VALUES (2,'Sagar Kharmale','sagarkharmale@gmail.com','8456571542','Awesome project development.','2021-08-19 00:23:14'),(3,'Govind Raut','govindraut780@yahoomail.com','9858563214','I want this system.','2021-08-19 00:23:46'),(4,'Arun Shivaji Pandit','30arunpandit@gmail.com','08208210071','Marvellous','2021-08-19 00:24:09'),(5,'Javed Tamboli','javed.tamboli@gmail.com','8369651475','Awesome functionality.','2021-08-19 00:24:31'),(7,'Mangesh Subhash Kadam','mangeshkadam99@gmail.com','7499697705','Awesome electricity billing portal.','2021-09-14 14:06:23'),(8,'Kishor Balasaheb Kadam','kadamk33@gmail.com','+917276763516','Awesome electricity web portal.','2021-09-16 12:29:16');
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-16 19:58:31
