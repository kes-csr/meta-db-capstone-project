-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: LittleLemonDB
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bookings` (
  `BookingID` int NOT NULL,
  `BookingDate` date NOT NULL,
  `TableNo` int NOT NULL,
  `ArrivalSlot` varchar(45) NOT NULL,
  `Customer_ID` int NOT NULL,
  `Employee_ID` int NOT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `EmployeeID_idx` (`Employee_ID`),
  KEY `CustomerID_idx` (`Customer_ID`),
  CONSTRAINT `Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `Customers` (`CustomerID`),
  CONSTRAINT `Employee_ID` FOREIGN KEY (`Employee_ID`) REFERENCES `Employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES (1,'2022-05-01',1,'Afternoon',4,6),(2,'2022-05-02',2,'Evening',5,6),(3,'2022-05-03',2,'Afternoon',6,6),(4,'2022-05-04',3,'Evening',7,6),(5,'2022-05-05',3,'Afternoon',8,6),(6,'2022-05-06',4,'Evening',9,6),(7,'2022-05-07',4,'Afternoon',10,6),(8,'2022-05-08',5,'Evening',11,6),(9,'2022-05-09',5,'Afternoon',12,6),(10,'2022-05-10',6,'Evening',13,6),(11,'2022-05-11',6,'Afternoon',14,6),(12,'2022-05-12',7,'Evening',15,6),(13,'2022-05-13',7,'Afternoon',16,6),(14,'2022-05-14',8,'Evening',17,6),(15,'2022-05-15',8,'Afternoon',18,6),(16,'2022-05-16',9,'Evening',19,6),(17,'2022-05-17',9,'Afternoon',20,6),(18,'2022-05-18',10,'Evening',21,6),(19,'2022-05-19',10,'Afternoon',22,6),(20,'2022-05-20',11,'Evening',23,6),(21,'2022-05-21',11,'Afternoon',24,6),(22,'2022-05-22',12,'Evening',25,6),(23,'2022-05-23',12,'Afternoon',26,6),(24,'2022-05-24',13,'Evening',27,6),(25,'2022-05-25',13,'Afternoon',28,6),(26,'2022-05-26',14,'Evening',29,6),(27,'2022-05-27',14,'Afternoon',30,6),(28,'2022-05-28',15,'Evening',31,6),(29,'2022-05-29',15,'Afternoon',32,6),(30,'2022-05-30',16,'Evening',33,6);
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `ContactNumber` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (4,'Laney','Fadden','6668889935','Laney_Fadden@GGmaill.com'),(5,'Giacopo','Bramich','6668889941','Giacopo_Bramich@GGmaill.com'),(6,'Lia','Bonar','6668889951','Lia_Bonar@GGmaill.com'),(7,'Merrill','Baudon','6668889965','Merrill_Baudon@GGmaill.com'),(8,'Tasia','Fautly','6668889983','Tasia_Fautly@GGmaill.com'),(9,'Angel','Veschambre','6668890005','Angel_Veschambre@GGmaill.com'),(10,'Sheilah','Maestro','6668890031','Sheilah_Maestro@GGmaill.com'),(11,'Audie','Willcocks','6668890061','Audie_Willcocks@GGmaill.com'),(12,'Mart','Malsher','6668890095','Mart_Malsher@GGmaill.com'),(13,'Magdalen','Lacheze','6668890133','Magdalen_Lacheze@GGmaill.com'),(14,'Margarita','Mancktelow','6668890175','Margarita_Mancktelow@GGmaill.com'),(15,'Ashil','Brogini','6668890221','Ashil_Brogini@GGmaill.com'),(16,'Arthur','Mathewson','6668890271','Arthur_Mathewson@GGmaill.com'),(17,'Ennis','Dungate','6668890325','Ennis_Dungate@GGmaill.com'),(18,'Tiffani','Halstead','6668890383','Tiffani_Halstead@GGmaill.com'),(19,'Roddie','Winterbotham','6668890445','Roddie_Winterbotham@GGmaill.com'),(20,'Pincas','Stearn','6668890511','Pincas_Stearn@GGmaill.com'),(21,'Tony','Crabtree','6668890581','Tony_Crabtree@GGmaill.com'),(22,'Tamarah','Filasov','6668890655','Tamarah_Filasov@GGmaill.com'),(23,'Pen','Pruce','6668890733','Pen_Pruce@GGmaill.com'),(24,'Boot','Burree','6668890815','Boot_Burree@GGmaill.com'),(25,'Sabra','Calbreath','6668890901','Sabra_Calbreath@GGmaill.com'),(26,'Obidiah','Zanicchi','6668890991','Obidiah_Zanicchi@GGmaill.com'),(27,'Anders','Stowe','6668891085','Anders_Stowe@GGmaill.com'),(28,'Locke','Janaway','6668891183','Locke_Janaway@GGmaill.com'),(29,'Kaylyn','Colebourne','6668891285','Kaylyn_Colebourne@GGmaill.com'),(30,'Noni','Quickenden','6668891391','Noni_Quickenden@GGmaill.com'),(31,'Alan','Paskell','6668891501','Alan_Paskell@GGmaill.com'),(32,'Anny','Pattemore','6668891615','Anny_Pattemore@GGmaill.com'),(33,'Les','Harmson','6668891733','Les_Harmson@GGmaill.com'),(34,'Horatio','Lundy','6668891855','Horatio_Lundy@GGmaill.com'),(35,'Sibley','Rodder','6668891981','Sibley_Rodder@GGmaill.com'),(36,'Dniren','Copperwaite','6668892111','Dniren_Copperwaite@GGmaill.com'),(37,'Sorcha','Beesley','6668892245','Sorcha_Beesley@GGmaill.com'),(38,'Alison','Jamieson','6668892383','Alison_Jamieson@GGmaill.com'),(39,'Dre','Danher','6668892525','Dre_Danher@GGmaill.com'),(40,'Chris','Gummer','6668892671','Chris_Gummer@GGmaill.com'),(41,'Adiana','Shirtliff','6668892821','Adiana_Shirtliff@GGmaill.com'),(42,'Derry','Davis','6668892975','Derry_Davis@GGmaill.com'),(43,'Lenci','McFadzean','6668893133','Lenci_McFadzean@GGmaill.com'),(44,'Uriel','Grooby','6668893295','Uriel_Grooby@GGmaill.com'),(45,'Jillayne','Gaiford','6668893461','Jillayne_Gaiford@GGmaill.com'),(46,'Tiertza','Doogan','6668893631','Tiertza_Doogan@GGmaill.com'),(47,'Ilario','Michie','6668893805','Ilario_Michie@GGmaill.com'),(48,'Sarah','Plaschke','6668893983','Sarah_Plaschke@GGmaill.com'),(49,'Skipp','Lowater','6668894165','Skipp_Lowater@GGmaill.com'),(50,'Maddalena','Wolfinger','6668894351','Maddalena_Wolfinger@GGmaill.com'),(51,'Mariquilla','Labbe','6668894541','Mariquilla_Labbe@GGmaill.com'),(52,'Cornelius','Harkess','6668894735','Cornelius_Harkess@GGmaill.com');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Salary` varchar(45) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (1,'Mario','Gollini','Manager','$70,000'),(2,'Adrian','Gollini','Assistant Manager','$65,000'),(3,'Giorgos','Dioudis','Head Chef','$50,000'),(4,'Fatma','Kaya','Assistant Chef','$45,000'),(5,'Elena','Salvai','Head Waiter','$40,000'),(6,'John','Millar','Receptionist','$35,000');
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuItems`
--

DROP TABLE IF EXISTS `MenuItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuItems` (
  `MenuItemsID` int NOT NULL AUTO_INCREMENT,
  `Course` varchar(45) NOT NULL,
  `Starter` varchar(45) NOT NULL,
  `Desert` varchar(45) NOT NULL,
  `Drink` varchar(45) NOT NULL,
  `Sides` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuItemsID`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuItems`
--

LOCK TABLES `MenuItems` WRITE;
/*!40000 ALTER TABLE `MenuItems` DISABLE KEYS */;
INSERT INTO `MenuItems` VALUES (381,'Greek salad','Olives','Greek yoghurt','Athens White wine','Tapas'),(382,'Bean soup','Flatbread','Ice cream','Corfu Red Wine','Potato salad'),(383,'Pizza','Minestrone','Cheesecake','Italian Coffee','Bruschetta'),(384,'Carbonara','Tomato bread','Affogato','Roma Red wine','Focaccia'),(385,'Kabasa','Falafel','Turkish yoghurt','Ankara White Wine','Meatballs'),(386,'Shwarma','Hummus','Baklava','Turkish Coffee','Fries'),(387,'Greek salad','Olives','Greek yoghurt','Athens White wine','Tapas'),(388,'Bean soup','Flatbread','Ice cream','Corfu Red Wine','Potato salad'),(389,'Pizza','Minestrone','Cheesecake','Italian Coffee','Bruschetta'),(390,'Carbonara','Tomato bread','Affogato','Roma Red wine','Focaccia'),(391,'Kabasa','Falafel','Turkish yoghurt','Ankara White Wine','Meatballs'),(392,'Shwarma','Hummus','Baklava','Turkish Coffee','Fries'),(393,'Bean soup','Olives','Ice cream','Corfu Red Wine','Potato salad'),(394,'Pizza','Flatbread','Cheesecake','Italian Coffee','Bruschetta'),(395,'Carbonara','Minestrone','Affogato','Roma Red wine','Focaccia'),(396,'Kabasa','Tomato bread','Turkish yoghurt','Ankara White Wine','Meatballs'),(397,'Shwarma','Falafel','Baklava','Turkish Coffee','Fries'),(398,'Greek salad','Hummus','Greek yoghurt','Athens White wine','Tapas'),(399,'Bean soup','Olives','Ice cream','Corfu Red Wine','Potato salad'),(400,'Pizza','Flatbread','Cheesecake','Italian Coffee','Bruschetta'),(401,'Carbonara','Minestrone','Affogato','Roma Red wine','Focaccia'),(402,'Kabasa','Tomato bread','Turkish yoghurt','Ankara White Wine','Meatballs'),(403,'Shwarma','Falafel','Baklava','Turkish Coffee','Fries'),(404,'Greek salad','Hummus','Greek yoghurt','Athens White wine','Tapas'),(405,'Pizza','Olives','Cheesecake','Italian Coffee','Bruschetta'),(406,'Carbonara','Flatbread','Affogato','Roma Red wine','Focaccia'),(407,'Kabasa','Minestrone','Turkish yoghurt','Ankara White Wine','Meatballs'),(408,'Shwarma','Tomato bread','Baklava','Turkish Coffee','Fries'),(409,'Greek salad','Falafel','Greek yoghurt','Athens White wine','Tapas'),(410,'Bean soup','Hummus','Ice cream','Corfu Red Wine','Potato salad'),(411,'Pizza','Olives','Cheesecake','Italian Coffee','Bruschetta'),(412,'Carbonara','Flatbread','Affogato','Roma Red wine','Focaccia'),(413,'Kabasa','Minestrone','Turkish yoghurt','Ankara White Wine','Meatballs'),(414,'Shwarma','Tomato bread','Baklava','Turkish Coffee','Fries'),(415,'Greek salad','Falafel','Greek yoghurt','Athens White wine','Tapas'),(416,'Bean soup','Hummus','Ice cream','Corfu Red Wine','Potato salad'),(417,'Carbonara','Olives','Affogato','Roma Red wine','Focaccia'),(418,'Kabasa','Flatbread','Turkish yoghurt','Ankara White Wine','Meatballs'),(419,'Shwarma','Minestrone','Baklava','Turkish Coffee','Fries'),(420,'Greek salad','Tomato bread','Greek yoghurt','Athens White wine','Tapas'),(421,'Bean soup','Falafel','Ice cream','Corfu Red Wine','Potato salad'),(422,'Pizza','Hummus','Cheesecake','Italian Coffee','Bruschetta'),(423,'Carbonara','Olives','Affogato','Roma Red wine','Focaccia'),(424,'Kabasa','Flatbread','Turkish yoghurt','Ankara White Wine','Meatballs'),(425,'Shwarma','Minestrone','Baklava','Turkish Coffee','Fries'),(426,'Greek salad','Tomato bread','Greek yoghurt','Athens White wine','Tapas'),(427,'Bean soup','Falafel','Ice cream','Corfu Red Wine','Potato salad'),(428,'Pizza','Hummus','Cheesecake','Italian Coffee','Bruschetta'),(429,'Kabasa','Olives','Turkish yoghurt','Ankara White Wine','Meatballs'),(430,'Shwarma','Flatbread','Baklava','Turkish Coffee','Fries'),(431,'Greek salad','Minestrone','Greek yoghurt','Athens White wine','Tapas'),(432,'Bean soup','Tomato bread','Ice cream','Corfu Red Wine','Potato salad'),(433,'Pizza','Falafel','Cheesecake','Italian Coffee','Bruschetta'),(434,'Carbonara','Hummus','Affogato','Roma Red wine','Focaccia'),(435,'Kabasa','Olives','Turkish yoghurt','Ankara White Wine','Meatballs'),(436,'Shwarma','Flatbread','Baklava','Turkish Coffee','Fries'),(437,'Greek salad','Minestrone','Greek yoghurt','Athens White wine','Tapas'),(438,'Bean soup','Tomato bread','Ice cream','Corfu Red Wine','Potato salad'),(439,'Pizza','Falafel','Cheesecake','Italian Coffee','Bruschetta'),(440,'Carbonara','Hummus','Affogato','Roma Red wine','Focaccia'),(441,'Shwarma','Olives','Baklava','Turkish Coffee','Fries'),(442,'Greek salad','Flatbread','Greek yoghurt','Athens White wine','Tapas'),(443,'Bean soup','Minestrone','Ice cream','Corfu Red Wine','Potato salad'),(444,'Pizza','Tomato bread','Cheesecake','Italian Coffee','Bruschetta'),(445,'Carbonara','Falafel','Affogato','Roma Red wine','Focaccia'),(446,'Kabasa','Hummus','Turkish yoghurt','Ankara White Wine','Meatballs'),(447,'Shwarma','Olives','Baklava','Turkish Coffee','Fries'),(448,'Greek salad','Flatbread','Greek yoghurt','Athens White wine','Tapas'),(449,'Bean soup','Minestrone','Ice cream','Corfu Red Wine','Potato salad'),(450,'Pizza','Tomato bread','Cheesecake','Italian Coffee','Bruschetta'),(451,'Carbonara','Falafel','Affogato','Roma Red wine','Focaccia'),(452,'Kabasa','Hummus','Turkish yoghurt','Ankara White Wine','Meatballs');
/*!40000 ALTER TABLE `MenuItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menus`
--

DROP TABLE IF EXISTS `Menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Menus` (
  `MenuID` int NOT NULL,
  `MenuItemsID` int NOT NULL,
  `Cuisine` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuID`),
  KEY `MenuItemsID_idx` (`MenuItemsID`),
  CONSTRAINT `MenuItemsID` FOREIGN KEY (`MenuItemsID`) REFERENCES `MenuItems` (`MenuItemsID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menus`
--

LOCK TABLES `Menus` WRITE;
/*!40000 ALTER TABLE `Menus` DISABLE KEYS */;
INSERT INTO `Menus` VALUES (1,381,'Greek'),(2,382,'Italian'),(3,383,'Italian'),(4,384,'Turkish'),(5,385,'Greek'),(6,386,'Italian'),(7,387,'Italian'),(8,388,'Turkish'),(9,389,'Greek'),(10,390,'Italian'),(11,391,'Italian'),(12,392,'Turkish'),(13,393,'Turkish'),(14,394,'Greek'),(15,395,'Italian'),(16,396,'Italian'),(17,397,'Turkish'),(18,398,'Greek'),(19,399,'Italian'),(20,400,'Italian'),(21,401,'Turkish'),(22,402,'Greek'),(23,403,'Italian'),(24,404,'Italian'),(25,405,'Italian'),(26,406,'Turkish'),(27,407,'Greek'),(28,408,'Italian'),(29,409,'Italian'),(30,410,'Turkish'),(31,411,'Greek'),(32,412,'Italian'),(33,413,'Italian'),(34,414,'Turkish'),(35,415,'Greek'),(36,416,'Italian'),(37,417,'Italian'),(38,418,'Italian'),(39,419,'Turkish'),(40,420,'Greek'),(41,421,'Italian'),(42,422,'Italian'),(43,423,'Turkish'),(44,424,'Greek'),(45,425,'Italian'),(46,426,'Italian'),(47,427,'Turkish'),(48,428,'Greek'),(49,429,'Greek'),(50,430,'Italian'),(51,431,'Italian'),(52,432,'Turkish'),(53,433,'Greek'),(54,434,'Italian'),(55,435,'Italian'),(56,436,'Turkish'),(57,437,'Greek'),(58,438,'Italian'),(59,439,'Italian'),(60,440,'Turkish'),(61,441,'Turkish'),(62,442,'Greek'),(63,443,'Italian'),(64,444,'Italian'),(65,445,'Turkish'),(66,446,'Greek'),(67,447,'Italian'),(68,448,'Italian'),(69,449,'Turkish'),(70,450,'Greek'),(71,451,'Italian'),(72,452,'Italian');
/*!40000 ALTER TABLE `Menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDeliveryStatus`
--

DROP TABLE IF EXISTS `OrderDeliveryStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDeliveryStatus` (
  `DeliveryID` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `DeliveryStatus` varchar(255) NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  `OrderID` int NOT NULL,
  PRIMARY KEY (`DeliveryID`),
  KEY `OrderID_idx` (`OrderID`),
  CONSTRAINT `OrderID` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDeliveryStatus`
--

LOCK TABLES `OrderDeliveryStatus` WRITE;
/*!40000 ALTER TABLE `OrderDeliveryStatus` DISABLE KEYS */;
INSERT INTO `OrderDeliveryStatus` VALUES (1,'2022-05-01','Delivered',NULL,1),(2,'2022-05-02','Delivered',NULL,2),(3,'2022-05-03','Delivered',NULL,3),(4,'2022-05-04','Delivered',NULL,4),(5,'2022-05-05','Delivered',NULL,5),(6,'2022-05-06','Delivered',NULL,6),(7,'2022-05-07','Delivered',NULL,7),(8,'2022-05-08','Delivered',NULL,8),(9,'2022-05-09','Delivered',NULL,9),(10,'2022-05-10','Delivered',NULL,10),(11,'2022-05-11','Delivered',NULL,11),(12,'2022-05-12','Delivered',NULL,12),(13,'2022-05-13','Delivered',NULL,13),(14,'2022-05-14','Delivered',NULL,14),(15,'2022-05-15','Delivered',NULL,15),(16,'2022-05-16','Delivered',NULL,16),(17,'2022-05-17','Delivered',NULL,17),(18,'2022-05-18','Delivered',NULL,18),(19,'2022-05-19','Delivered',NULL,19),(20,'2022-05-20','Delivered',NULL,20),(21,'2022-05-21','Delivered',NULL,21),(22,'2022-05-22','Delivered',NULL,22),(23,'2022-05-23','Delivered',NULL,23),(24,'2022-05-24','Delivered',NULL,24),(25,'2022-05-25','Delivered',NULL,25),(26,'2022-05-26','Delivered',NULL,26),(27,'2022-05-27','Delivered',NULL,27),(28,'2022-05-28','Delivered',NULL,28),(29,'2022-05-29','Delivered',NULL,29),(30,'2022-05-30','Delivered',NULL,30);
/*!40000 ALTER TABLE `OrderDeliveryStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL,
  `TableNo` int NOT NULL,
  `Date` date NOT NULL,
  `MenuID` int NOT NULL,
  `Quantity` int NOT NULL,
  `Discount` decimal(10,0) DEFAULT NULL,
  `TotalCost` decimal(10,0) NOT NULL,
  `CustomerID` int DEFAULT NULL,
  `EmployeeID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `MenuID_idx` (`MenuID`),
  KEY `EmployeeID_idx` (`EmployeeID`),
  KEY `CustomerID_idx` (`CustomerID`),
  CONSTRAINT `CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
  CONSTRAINT `EmployeeID` FOREIGN KEY (`EmployeeID`) REFERENCES `Employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,2,'2022-05-01',36,2,63,125,4,1),(2,2,'2022-05-02',2,1,118,235,5,1),(3,3,'2022-05-03',70,3,38,75,6,1),(4,3,'2022-05-04',8,3,110,220,7,1),(5,4,'2022-05-05',14,2,160,320,8,1),(6,4,'2022-05-06',71,1,105,210,9,1),(7,5,'2022-05-07',68,2,155,310,10,1),(8,5,'2022-05-08',36,3,113,225,11,1),(9,6,'2022-05-09',55,2,95,190,12,1),(10,6,'2022-05-10',68,1,49,98,13,1),(11,7,'2022-05-11',52,3,84,168,14,1),(12,7,'2022-05-12',11,3,51,102,15,1),(13,8,'2022-05-13',3,2,47,93,16,1),(14,8,'2022-05-14',7,1,22,45,17,1),(15,9,'2022-05-15',56,2,46,92,18,1),(16,9,'2022-05-16',58,3,67,133,19,1),(17,10,'2022-05-17',2,2,26,52,20,1),(18,10,'2022-05-18',26,1,42,84,21,1),(19,11,'2022-05-19',57,3,35,69,22,1),(20,11,'2022-05-20',20,3,60,120,23,1),(21,12,'2022-05-21',38,2,63,125,24,1),(22,12,'2022-05-22',7,1,118,235,25,1),(23,13,'2022-05-23',69,2,38,75,26,1),(24,13,'2022-05-24',18,3,110,220,27,1),(25,14,'2022-05-25',60,2,160,320,28,1),(26,14,'2022-05-26',34,1,105,210,29,1),(27,15,'2022-05-27',17,3,155,310,30,1),(28,15,'2022-05-28',33,3,113,225,31,1),(29,16,'2022-05-29',38,2,95,190,32,1),(30,16,'2022-05-30',42,1,49,98,33,1);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-27 19:33:41
