-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: LMS
-- ------------------------------------------------------

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
DROP DATABASE IF EXISTS `lms`;
CREATE DATABASE lms CHARACTER SET utf8 COLLATE utf8_general_ci;
--
-- Table structure for table `user`
--
DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `MobNo` bigint(11) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RollNo`),
  UNIQUE KEY `EmailId` (`EmailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ADMIN','admin','Admin',NULL,'admin@gmail.com',123456789,'admin'),('user01','Phi','Sinh Viên','SV','phi@gmail.com',9876543210,'user01'),('user02','Huy','Sinh Viên','SV','huy@gmail.com',7845965212,'user02'),('user03','Thi','Người dùng','US','thi@hotmail.com',4512451245,'user03'),('user04','Tiến','Giáo viên','GV','tien@gmail.com',6352416352,'user04'),('user05','Lý','Giáo viên','GV','ly@gmail.com',96685747485,'user05'),('user06','Long','Sinh Viên','SV','long@gmail.com',4141415263,'user06'),('user07','Anh','Giáo viên','GV','anh@gmail.com',4545451212,'user07');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `BookId` int(10) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) DEFAULT NULL,
  `Publisher` varchar(50) DEFAULT NULL,
  `Year` varchar(50) DEFAULT NULL,
  `Availability` int(5) DEFAULT NULL,
  PRIMARY KEY (`BookId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Tuổi thơ dữ dội','Hồ Chí Minh','2002',5),(2,'Sống mòn','Hà Nội','2003',5),(3,'Vượt côn đảo','Hồ Chí Minh','2003',4),(4,'Kim Vân Kiều','Hồ Chí Minh','2003',1),(5,'Ông Già Và Biển Cả','Kim Đồng','2002',0),(6,'Chí Phèo','Kim Đồng','2001',10),(7,'Lão Hạc','Hồ Chí Minh','2002',10),(8,'Truyện Kiều','Kim Đồng','2005',12),(9,'Mặt trời vẫn mọc','Hồ Chí Minh','2001',4),(10,'Cho tôi xin một vé đi tuổi thơ','Hồ Chí Minh','2006',3),(11,'Tôi thấy hoa vàng trên cỏ xanh','Hồ Chí Minh','2010',13),(12,'Chồng Xứ Lạ','Hồ Chí Minh','2010',12);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `BookId` int(10) NOT NULL,
  `Author` varchar(50) NOT NULL,
  PRIMARY KEY (`BookId`,`Author`),
  CONSTRAINT `author_ibfk_1` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Phùng Quán'),(2,'Nam Cao'),(3,'Phùng Quán'),(4,'Nguyễn Du'),(5,'Ernest Hemingway'),(6,'Nam Cao'),(7,'Nam Cao'),(8,'Nguyễn Du'),(9,'Ernest Hemingway'),(10,'Nguyễn Nhật Ánh'),(11,'Nguyễn Nhật Ánh'),(12,'Hạ Trang');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `M_Id` int(10) NOT NULL AUTO_INCREMENT,
  `RollNo` varchar(50) DEFAULT NULL,
  `Msg` varchar(255) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` time DEFAULT NULL,
  PRIMARY KEY (`M_Id`),
  KEY `RollNo` (`RollNo`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'user01','Yêu cầu cho id sách: 1  đã được chấp nhận','2024-06-15','23:47:40'),(2,'user02','Yêu cầu cho id sách: 1  đã được chấp nhận','2024-06-15','23:47:50'),(3,'user01','Yêu cầu cho id sách: 2  đã bị từ chối','2024-06-15','23:47:58'),(4,'user04','Yêu cầu cho id sách: 3  đã được chấp nhận','2024-06-16','16:54:29'),(5,'user05','Yêu cầu cho id sách: 2  đã được chấp nhận','2024-06-16','16:54:58'),(6,'user06','Yêu cầu cho id sách: 6  đã được chấp nhận','2024-06-16','21:56:11'),(7,'user02','Yêu cầu cho id sách: 6 đã được chấp nhận','2024-06-16','22:11:12'),(8,'user07','Yêu cầu làm mới cho id sách: 1  đã được chấp nhận','2024-06-16','22:43:24'),(9,'user03','Yêu cầu trả id sách: 6  đã được chấp nhận','2024-06-16','22:44:24'),(10,'user02','Yêu cầu làm mới cho id sách: 1  đã được chấp nhận','2024-06-16','23:05:12'),(11,'user03','Yêu cầu làm mới cho id sách: 1  đã được chấp nhận','2024-05-16','23:09:51'),(12,'user01','Yêu cầu trả id sách: 6  đã được chấp nhận','2024-05-16','23:10:27'),(13,'user04','Yêu cầu trả id sách: 2  đã được chấp nhận','2024-05-16','23:36:10'),(14,'user05','Yêu cầu mượn id sách: 1  đã bị từ chối','2024-06-16','23:36:20'),(15,'user03','Yêu cầu mượn id sách: 3  đã bị từ chối','2024-06-16','23:43:37'),(16,'user03','Yêu cầu mượn id sách: 6  đã bị từ chối','2024-03-16','23:43:42');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendations` (
  `R_ID` int(10) NOT NULL AUTO_INCREMENT,
  `Book_Name` varchar(50) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `RollNo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`R_ID`),
  KEY `RollNo` (`RollNo`),
  CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendations`
--

LOCK TABLES `recommendations` WRITE;
/*!40000 ALTER TABLE `recommendations` DISABLE KEYS */;
INSERT INTO `recommendations` VALUES (2,'Sống mòn','Đề xuất sách vì hay','user01'),(3,'Vượt côn đảo','Đề xuất sách vì hữu ích','user01'),(5,'Lão Hạc','Tác phẩm được đánh giá là một trong những truyện ngắn tiêu biểu của dòng văn học hiện thực, nội dung truyện đã phần nào phản ánh được hiện trạng xã hội Việt Nam trong giai đoạn trước Cách mạng tháng Mười Nga.','user04'),(7,'Tuổi thơ dữ dội ','tiểu thuyết dài tám phần xuất bản năm 1988 của nhà văn Phùng Quán, có nội dung xoay quanh cuộc sống chiến đấu và sự hy sinh của những thiếu niên 13, 14 tuổi trong hàng ngũ Đội thiếu niên trinh sát của trung đoàn Trần Cao Vân.','user07'),(8,'Tôi thấy hoa vàng trên cỏ xanh','một tiểu thuyết dành cho thanh thiếu niên của nhà văn Nguyễn Nhật Ánh','user03'),(9,'Ông Già Và Biển Cả','Tác phẩm là bản anh hùng ca ca ngợi sức lao động và khát vọng của con người','user05');
/*!40000 ALTER TABLE `recommendations` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `record` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  `Date_of_Issue` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `Date_of_Return` date DEFAULT NULL,
  `Dues` int(10) DEFAULT NULL,
  `Renewals_left` int(10) DEFAULT NULL,
  `Time` time DEFAULT NULL,
  PRIMARY KEY (`RollNo`,`BookId`),
  KEY `BookId` (`BookId`),
  CONSTRAINT `record_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  CONSTRAINT `record_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record`
--

LOCK TABLES `record` WRITE;
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` VALUES ('user01',1,'2024-04-17','2024-08-17','2024-06-17',NULL,NULL,'13:18:12'),('user02',9,'2024-06-25','2024-07-07','2024-10-17',NULL,NULL,'13:14:20'),('user03',10,'2024-06-25','2024-07-25','2024-08-25',NULL,NULL,'13:14:20'),('user04',5,'2024-04-25','2024-06-24','2024-08-25',NULL,NULL,'13:14:20'),('user06',3,'2024-06-25','2024-08-25',NULL,NULL,NULL,'13:14:20'),('user07',4,'2024-06-25','2024-08-24',NULL,NULL,1,'13:14:20'),('user05',8,'2024-06-25','2024-08-24',NULL,NULL,1,'13:14:20');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `renew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renew` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  PRIMARY KEY (`RollNo`,`BookId`),
  KEY `BookId` (`BookId`),
  CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  CONSTRAINT `renew_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renew`
--

LOCK TABLES `renew` WRITE;
/*!40000 ALTER TABLE `renew` DISABLE KEYS */;
INSERT INTO `renew` VALUES ('user01',2),('user05',6),('user02',11),('user04',12);
/*!40000 ALTER TABLE `renew` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return` (
  `RollNo` varchar(50) NOT NULL,
  `BookId` int(10) NOT NULL,
  PRIMARY KEY (`RollNo`,`BookId`),
  KEY `BookId` (`BookId`),
  CONSTRAINT `return_ibfk_1` FOREIGN KEY (`RollNo`) REFERENCES `user` (`RollNo`),
  CONSTRAINT `return_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return`
--

LOCK TABLES `return` WRITE;
/*!40000 ALTER TABLE `return` DISABLE KEYS */;
INSERT INTO `return` VALUES ('user06',3),('user04',5),('user03',8),('user07',4);
/*!40000 ALTER TABLE `return` ENABLE KEYS */;
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-27 13:20:27
