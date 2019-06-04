-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: hogwarts
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*! SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0*/; 
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `type` varchar(6) NOT NULL,
  `class_year` int(1) DEFAULT NULL,
  `house_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Harry','Potterr','Wizard',6,1),(2,'Hermione','Granger','Witch',6,1),(3,'Ginevra','Weasley','Witch',5,1),(4,'Ronald','Weasley','Witch',5,1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `house_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Severus','Snape','Wizard','Teacher',3),(2,'Albus','Dumbledore','Wizard','Headmaster',1),(3,'Argus','Filch','Squib','Caretaker',5);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses`
--

LOCK TABLES `houses` WRITE;
/*!40000 ALTER TABLE `houses` DISABLE KEYS */;
INSERT INTO `houses` VALUES (1,'Gryffindor'),(2,'Hufflepuff'),(3,'Slytherin'),(4,'Ravenclaw'),(5,'Unsorted');
/*!40000 ALTER TABLE `houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pets`
--

DROP TABLE IF EXISTS `pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `species` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pets`
--

LOCK TABLES `pets` WRITE;
/*!40000 ALTER TABLE `pets` DISABLE KEYS */;
INSERT INTO `pets` VALUES (1,'Mrs Norris','Cat'),(2,'Fawkes','Phoenix'),(3,'Hedwig','Snowy Owl');
/*!40000 ALTER TABLE `pets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) NOT NULL,
  `instructor_id` int(11),
  PRIMARY KEY (`id`),
  KEY `instructor_id` (`instructor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (1,'Potions',1);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `students_pets`
--
DROP TABLE IF EXISTS `students_pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_pets` (
`student_id` int(11) NOT NULL DEFAULT '0',
`pet_id` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`student_id`,`pet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `students_pets`
--
LOCK TABLES `students_pets` WRITE;
/*!40000 ALTER TABLE `students_pets` DISABLE KEYS */;
INSERT INTO `students_pets` VALUES 
(1,3);
/*!40000 ALTER TABLE `students_pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_pets`
--
DROP TABLE IF EXISTS `staff_pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_pets` (
`staff_id` int(11) NOT NULL DEFAULT '0',
`pet_id` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`staff_id`,`pet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `staff_pets`
--
LOCK TABLES `staff_pets` WRITE;
/*!40000 ALTER TABLE `staff_pets` DISABLE KEYS */;
INSERT INTO `staff_pets` VALUES 
(2,2),(3,1);
/*!40000 ALTER TABLE `staff_pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_classes`
--
DROP TABLE IF EXISTS `students_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_classes` (
`student_id` int(11) NOT NULL DEFAULT '0',
`class_id` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`student_id`,`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `students_classes`
--
LOCK TABLES `students_classes` WRITE;
/*!40000 ALTER TABLE `students_classes` DISABLE KEYS */;
INSERT INTO `students_classes` VALUES 
(1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `students_classes` ENABLE KEYS */;
UNLOCK TABLES;

-- Dump completed on 2019-02-03  0:38:33

ALTER TABLE `classes`
	ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `staff` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `students`
	ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `staff`
	ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `students_pets`
	ADD CONSTRAINT `students_pets_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `students_pets`
	ADD CONSTRAINT `students_pets_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE `staff_pets`
	ADD CONSTRAINT `staff_pets_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `staff_pets`
	ADD CONSTRAINT `staff_pets_ibfk_2` FOREIGN KEY (`pet_id`) REFERENCES `pets` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE `students_classes`
	ADD CONSTRAINT `students_classes_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE `students_classes`
	ADD CONSTRAINT `students_classes_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON UPDATE CASCADE ON DELETE CASCADE
