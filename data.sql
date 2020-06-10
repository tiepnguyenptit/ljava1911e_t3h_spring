-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_demo_project_t3h
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `tbl_booker`
--

DROP TABLE IF EXISTS `tbl_booker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_booker` (
  `bookerid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_amount` int(11) DEFAULT NULL,
  `time_booked` datetime DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`bookerid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_booker`
--

LOCK TABLES `tbl_booker` WRITE;
/*!40000 ALTER TABLE `tbl_booker` DISABLE KEYS */;
INSERT INTO `tbl_booker` VALUES (1,'Tiệp','0387137474','tiepnguyenptit@gmail.com',2,'2019-12-13 19:00:00','cho mình bàn gần cửa sổ');
/*!40000 ALTER TABLE `tbl_booker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `guid` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `price` int(11) DEFAULT '0',
  `tableid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart`
--

LOCK TABLES `tbl_cart` WRITE;
/*!40000 ALTER TABLE `tbl_cart` DISABLE KEYS */;
INSERT INTO `tbl_cart` VALUES (2,NULL,NULL,NULL,0,2),(3,NULL,NULL,NULL,0,3),(4,NULL,NULL,NULL,0,4),(5,NULL,NULL,NULL,0,5),(6,NULL,NULL,NULL,0,6),(7,NULL,NULL,NULL,0,7),(8,NULL,NULL,NULL,0,8),(9,NULL,NULL,NULL,0,9),(10,NULL,NULL,NULL,0,10),(11,NULL,NULL,NULL,0,11),(12,NULL,NULL,NULL,0,12),(15,NULL,'2579a523-d0fb-43df-b9fc-5de413f9551e',NULL,0,0),(16,'tiep','80937205-eec6-45f7-b6e0-e3f25a997c7e',NULL,0,0),(17,NULL,'9924adad-51cd-4a9e-a576-da1b60011d11',NULL,0,0),(18,NULL,'9924adad-51cd-4a9e-a576-da1b60011d11',NULL,0,0),(19,NULL,'7a90c0c2-1314-48a6-89ce-9ff56e9cf762',NULL,0,0),(21,'nam','3ae4454c-f4cb-42fd-897c-a00629ea7ae2',NULL,0,0),(22,NULL,'2f8466c2-3c62-4ff1-b60e-e254d34c623e',NULL,0,0),(24,NULL,'79ddd1aa-ee1a-46e6-9536-c31ad3ff9b82',NULL,0,0),(25,NULL,'7f488d22-2f43-4337-8977-711f38f8d72a',NULL,0,0),(26,NULL,'a6d4cbda-f0e9-49e4-ac46-046569380999',NULL,0,0),(27,NULL,'cf498ad5-970e-432f-bc5d-570daa638974',NULL,0,0),(28,NULL,'91a96319-8adb-4f3b-ab79-ba0c24fee944',NULL,0,0),(31,NULL,'e6ca55ab-353c-4937-ad1d-a3fdf73c430e',NULL,0,0),(32,NULL,'f7fbd943-e525-438a-8055-b3fef4d4f335',NULL,0,0),(33,NULL,'6417b155-b2ce-4a41-a36d-c63ae13abd10',NULL,0,0),(34,NULL,NULL,NULL,0,1),(35,NULL,'40946dcb-caea-4a98-b564-fa428499754f',NULL,0,0),(36,NULL,'3d1ce76b-2bf1-4a6e-ba79-878de4f0f660',NULL,0,0);
/*!40000 ALTER TABLE `tbl_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cart_product`
--

DROP TABLE IF EXISTS `tbl_cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_cart_product` (
  `cart_productid` int(11) NOT NULL AUTO_INCREMENT,
  `cartid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`cart_productid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart_product`
--

LOCK TABLES `tbl_cart_product` WRITE;
/*!40000 ALTER TABLE `tbl_cart_product` DISABLE KEYS */;
INSERT INTO `tbl_cart_product` VALUES (8,25,67,1,NULL),(16,16,2,-1,NULL),(17,34,1,1,NULL);
/*!40000 ALTER TABLE `tbl_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_contact` (
  `contactid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (1,'Tiệp','tiepnguyenptit@gmail.com','chào bạn');
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_material`
--

DROP TABLE IF EXISTS `tbl_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_material` (
  `materialid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`materialid`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_material`
--

LOCK TABLES `tbl_material` WRITE;
/*!40000 ALTER TABLE `tbl_material` DISABLE KEYS */;
INSERT INTO `tbl_material` VALUES (1,'ức gà',NULL,NULL,15,70),(2,'cà chua',NULL,NULL,0,30),(3,'mù tạp',NULL,NULL,0,60),(4,'thịt gà',NULL,NULL,20,100),(5,'củ xả',NULL,NULL,20,2),(6,'hành ta',NULL,NULL,9,40),(7,'bắp cải',NULL,NULL,9,50),(8,'thịt ba chỉ',NULL,NULL,9,70),(9,'trứng gà',NULL,NULL,9,30),(10,'bơ',NULL,NULL,20,30),(11,'ức vịt',NULL,NULL,20,246),(12,'con hàu',NULL,NULL,19,250),(13,'thịt thăn lợn',NULL,NULL,20,75),(14,'thịt cua',NULL,NULL,19,130),(15,'kem chua',NULL,NULL,20,30),(16,'phô mai',NULL,NULL,20,50),(17,'râu mực ',NULL,NULL,19,80),(18,'cải trắng',NULL,NULL,18,50),(19,'tôm to',NULL,NULL,20,180),(20,'tương ớt',NULL,NULL,20,45),(21,'sò',NULL,NULL,20,170),(22,'dưa chuột',NULL,NULL,20,30),(23,'tỏi',NULL,NULL,20,10),(24,'càng cua alatska',NULL,NULL,20,270),(25,'cà tím',NULL,NULL,20,30),(26,'trứng cá tuyết',NULL,NULL,20,199),(27,'rau mùi',NULL,NULL,20,4),(28,'hạt tiêu đen',NULL,NULL,20,20),(29,'bột mì',NULL,NULL,20,20),(30,'bột chiên xù',NULL,NULL,20,17),(31,'mực',NULL,NULL,20,234),(32,'bột chiên giòn',NULL,NULL,20,20),(33,'cá ayu',NULL,NULL,20,200),(34,'củ gừng',NULL,NULL,20,4),(35,'cá thu dao',NULL,NULL,20,123),(36,'chanh',NULL,NULL,20,10),(37,'xì đầu',NULL,NULL,20,25),(38,'khoai tây',NULL,NULL,20,15),(39,'sữa tươi',NULL,NULL,20,40),(40,'lươn',NULL,NULL,20,99),(41,'nước tương',NULL,NULL,20,27),(42,'mirin',NULL,NULL,20,60),(43,'gan ngỗng ',NULL,NULL,20,290),(44,'táo',NULL,NULL,20,26),(45,'dấm balsamic',NULL,NULL,20,54),(46,'nấm kim châm',NULL,NULL,20,145),(47,'cua',NULL,NULL,20,120),(48,'cá tuyết',NULL,NULL,20,299),(49,'rượu sake',NULL,NULL,20,90),(50,'miso trắng',NULL,NULL,20,89),(51,'cá hồi',NULL,NULL,20,389),(52,'wasabi',NULL,NULL,19,40),(53,'rong biển',NULL,NULL,20,99),(54,'gạo nhật',NULL,NULL,20,180),(55,'sò lửa',NULL,NULL,20,190),(56,'cá kam',NULL,NULL,19,268),(57,'sò diệp',NULL,NULL,20,190),(58,'cá ngừ',NULL,NULL,20,320),(59,'bạch tuộc',NULL,NULL,20,190),(60,'sò huyết',NULL,NULL,20,150),(61,'mực trứng',NULL,NULL,20,300),(62,'cá trích ép trứng',NULL,NULL,20,475),(63,'dấm',NULL,NULL,20,30),(64,'cá kiếm',NULL,NULL,20,231),(65,'cà rốt',NULL,NULL,20,23),(66,'nhím biển',NULL,NULL,20,340),(67,'mỳ soba',NULL,NULL,20,60),(68,'nấm đông ngô',NULL,NULL,20,130),(69,'nấm hương',NULL,NULL,20,150),(70,'rau chân vịt',NULL,NULL,20,190),(71,'mì udon',NULL,NULL,20,145),(72,'cần tàu',NULL,NULL,20,12),(73,'cải ngọt',NULL,NULL,20,20),(74,'cá cơm',NULL,NULL,20,132),(75,'tảo biển',NULL,NULL,20,99),(76,'mỳ zaru soba',NULL,NULL,20,120),(77,'trứng cút',NULL,NULL,20,30),(78,'hành lá',NULL,NULL,20,12),(79,'mỳ ramen',NULL,NULL,20,89),(80,'nori',NULL,NULL,20,45),(81,'giá',NULL,NULL,20,19),(82,'bò mỹ',NULL,NULL,20,230),(83,'mỳ ý',NULL,NULL,20,170),(84,'quả cam',NULL,NULL,20,60),(85,'quả chanh',NULL,NULL,19,45),(86,'rượu soju',NULL,NULL,20,85),(87,'rượu gạo',NULL,NULL,20,90),(88,'dưa hấu',NULL,NULL,20,34),(89,'quả ổi',NULL,NULL,20,25),(90,'quả dứa',NULL,NULL,20,40),(91,'chanh leo',NULL,NULL,20,57),(92,'quả cóc',NULL,NULL,20,34),(93,'pepsi',NULL,NULL,20,15),(94,'nước suối',NULL,NULL,20,10);
/*!40000 ALTER TABLE `tbl_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_material_history`
--

DROP TABLE IF EXISTS `tbl_material_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_material_history` (
  `material_historyid` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `materialid` int(11) DEFAULT NULL,
  PRIMARY KEY (`material_historyid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_material_history`
--

LOCK TABLES `tbl_material_history` WRITE;
/*!40000 ALTER TABLE `tbl_material_history` DISABLE KEYS */;
INSERT INTO `tbl_material_history` VALUES (1,5,'2019-12-05 09:28:31',1),(2,10,'2019-12-06 15:53:01',1);
/*!40000 ALTER TABLE `tbl_material_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_order` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '8',
  `created_date` date DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `user_point` int(11) DEFAULT NULL,
  `tableid` int(11) DEFAULT NULL,
  `guid` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,NULL,'2019-12-05',NULL,NULL,180,NULL,1,NULL,NULL,NULL),(2,'nam','2019-12-06','Khu đô thị Nam Cường Cổ Nhuế',1687137474,240,NULL,0,'3ae4454c-f4cb-42fd-897c-a00629ea7ae2','Nguyễn Ngọc','tiepnguyenptit@gmail.com'),(3,NULL,'2019-12-06','123',1234,65,NULL,0,'79ddd1aa-ee1a-46e6-9536-c31ad3ff9b82','test','nam@gmail.com'),(4,NULL,'2019-12-06',NULL,NULL,160,NULL,1,NULL,NULL,NULL),(5,NULL,'2019-12-06','Khu đô thị Nam Cường Cổ Nhuế',1687137474,120,NULL,0,'e6ca55ab-353c-4937-ad1d-a3fdf73c430e','Nguyễn Ngọc','tiepnguyenptit@gmail.com'),(6,NULL,'2019-12-06',NULL,NULL,650,NULL,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `categoryid` int(11) NOT NULL,
  `point` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `tp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,'Sụn gà nướng mù tạt','Khi chúng ta ăn món ăn này đầu tiên chúng ta sẽ cảm nhận được giòn của sụn gà. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,80,NULL,'b'),(2,'Chả gà nướng','Khi chúng ta ăn món ăn này đầu tiên chúng ta sẽ cảm nhận thấy nó dai dai mền mềm. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,75,NULL,NULL),(3,'Bánh xèo nhật bản','Khi chúng ta ăn món này đầu tiên chúng ta sẽ cảm nhận được thịt ba chỉ mèn và béo.Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,65,NULL,NULL),(4,'Ức vịt nướng sốt mù tạp','Khi chúng ta món ăn này đầu tiên chúng ta sẽ cảm nhận được thịt rất mền và béo của bơ. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,100,NULL,NULL),(5,'Thịt hun khói cuộn hàu nhật ','Món ăn này là một trong những món rất ngon',1,1,100,NULL,NULL),(6,'Thịt cua bỏ lò','Khi chúng ta món ăn này sẽ có vị béo của thịt thanh thanh cảu cua. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,110,NULL,NULL),(7,'Râu mực chiên sốt taru','Khi chúng ta ăn món ăn này đầu tiên chúng ta sẽ cảm nhận được râu mực giòn bên ngoài và mền bên trong.',1,1,120,NULL,NULL),(8,'Tôm lột sốt ớt ','Khi chúng ta ăn món ăn này đầu tiên chúng ta sẽ cảm nhận được vị tươi ngọt tôm. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,120,NULL,NULL),(9,'Sò điệp nhật sốt bơ tỏi','Khi chúng ta ăn món ăn này đầu tiên chúng ta sẽ cảm nhận được vị ngọt của sò vị thanh của dưa chuột. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,140,NULL,NULL),(10,'Chân cua alatska xào cà tím','Khi chúng ta ăn món ăn này đầu tiên chúng ta sẽ cảm nhận cà tím ăn mền và cang cua bên ngoài thì giòn giòn còn trong lại rất mền. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',1,1,150,NULL,NULL),(11,'Trứng cá tuyết nướng','Khi chúng ta món đầu tiên chúng ta sẽ cảm nhận được nó giòn khựt trong miệng nhưng lại không mang đến khi ăn vào không bị khô . Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',2,1,150,NULL,NULL),(12,'Tôm chiên tổng hợp','Tôm chiên tổng hợp là một món ăn ngon được nhiều người ưa thích, với lớp vỏ giòn tan bên ngoài, bên trong là vị ngọt tươi tự nhiên của tôm. Tuy nhiên, để món tôm chiên xù ngon, giòn thì không ai cũng biết làm. ',2,1,120,NULL,NULL),(13,'Tôm chiên giòn kiểu nhật','Tôm chiên giòn kiểu vừa nghe đến cái tên đã thấy thèm, lớp vỏ ngoài của của món ăn giòn rụm, bên trong thì dai dai, ngọt ngọt mang đến cảm giác thèm ăn mỗi khi nghĩ về.',2,1,120,NULL,NULL),(14,'Mực ống chiên xù','Mực ống chiên xù vừa nghe đến cái tên đã thấy thèm, lớp vỏ ngoài của Nó giòn rụm, bên trong thì dai dai, ngọt ngọt mang đến cảm giác thèm ăn mỗi khi nghĩ về.',2,1,130,NULL,NULL),(15,'Cá thu đao nhật bản nướng','Cá thu đao Thái Bình Dương được đánh bắt nhiều khi di chuyển từ ngoài khơi phía Nam của Đông Hokkaido tới ngoài khơi Choshi vào đầu thu. Cá thu đao Thái Bình Dương ở đây béo, và ruột nó cũng là một món ăn cực ngon khi cá còn sống. Nướng muối vỉ là ngon nhất, nhưn sashimi, hầm tương, “tatsuta” chiên xù và cá thu đao đóng hộp cũng rất phổ biến.',2,1,115,NULL,NULL),(16,'Cá đắng nhật bản nương muối','Cá ayu đem nướng khi chúng vẫn còn sống. khi cá chin thì giữ được lớp vỏ vàng ươm giòn rụm kết hợp cùng vị thơm ngọt đặc trưng của thịt cá, hấp dẫn thực khách từ thị giác đến vị giác.',2,1,145,NULL,NULL),(17,'Khoai tây cuôn hàu sữa nhật chiên giòn','Khoai tây cuôn hàu sữa nhật chiên giòn có màu vàng của khoai tây.món ăn này có sự giòn ở vỏ, trong mềm và ngọt hòa quyện với vị sữa',2,1,150,NULL,NULL),(18,'Lươn nhật nướng','Để chế biến món ăn truyền thống này, lươn được cắt, bỏ xương sống, thịt được xiên que và nướng không có nước xốt. Sau đó, nhúng vào nước tương có vị đậm đà. Nhờ các kỹ thuật chế biến và những tiến bộ trong công nghệ chế biến, hương vị của lươn nướng tươi hiện nay có thể được bảo quản bằng các túi chân không hoặc đóng gói như thực phẩm đông lạnh để ai cũng có thể thưởng thức một cách thoải mái tại nhà.',2,1,159,NULL,NULL),(19,'Gan ngỗng','Vị béo ngậy của gan ngỗng hòa cùng vị ngọt của trái táo cùng hương thơm ngát của quế.',2,1,200,NULL,NULL),(20,'Thịt cua nướng với nấm','Thịt cua nướng với nấm khi nhìn vào ta thấy sự hài hòa của màu sắc, nó là sự hòa quyện sự thanh mát của nấm với sự béo ngậy của thịt của. khi chúng đi cùng với nhau thì sẽ không tao cho cảm giác ngán món này',2,1,259,NULL,NULL),(21,'Cá tuyết nướng miso','Cá nướng vừa chín tới, nó sẽ không khô đông  thời nó cũng sẽ có độ ngon và ngọt thịt hơn hẳn. Có thể vắt vài giọt chanh lên cá cho thơm.',2,1,275,NULL,NULL),(22,'Cá hồi nigari','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác cá hồi mền béo. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,60,NULL,NULL),(23,'Bạch tuộc nigari ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác bạch tuộc mền béo. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,60,NULL,NULL),(24,'Tôm nigari','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác Tôm mền béo và giòn. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,65,NULL,NULL),(25,'Sò lửa nigari ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác mền béo của sò. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,75,NULL,NULL),(26,'Lươn nhật nigari ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác món này ăn vào sẽ có vị ngọt và tươi mát. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,80,NULL,NULL),(27,'Cá kam nigari ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác cá kam mền béo. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,85,NULL,NULL),(28,'Cá hồi maki ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác cá hồi mền béo. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,90,NULL,NULL),(29,'Sò điệp nhật bản nigari ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác mền béo của sò. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,105,NULL,NULL),(30,'Gan ngỗng nigari ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác gan mền mền béo. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,105,NULL,NULL),(31,'Cá ngừ nhật bản nigari ','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác cá ngừ mền béo. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,120,NULL,NULL),(32,'Cơm nén cá hồi','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác cá hồi mền béo. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,120,NULL,NULL),(33,'Cơm cuộn cá hồi Fukurai','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan.Sau đó chúng ta ăn vào sẽ cảm giác cá hồi mền béo giòn going của trứng. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',3,1,130,NULL,NULL),(34,'Hàu nhật sốt ponzu','Hàu nhật sốt ponzu như một bức tranh, là sự kết hợp giữa màu sắc, hương vị',4,1,90,NULL,NULL),(35,'Cá hồi sashimi','Sashimi cá hồi như một bức tranh, là sự kết hợp giữa màu sắc, hương vị và cách trình bày công phu của người bếp trưởng. Thoạt đầu, bạn sẽ chỉ nhận ra vị hăng cay của mù tạt, rồi dần dần vị mặn thanh của xì dầu, vị béo, ngọt của cá hồi sẽ thấm vào đầu lưỡi.',4,1,125,NULL,NULL),(36,'Bạch tuộc sashimi',' Khi thưởng thức sashimi bạc tuộc, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó sẽ là vị mặn vừa của nước tương hảo hạng và kế đó là vị ngọt tươi ngon, béo mà thanh của bạch tuộc tươi sống. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách.',4,1,130,NULL,NULL),(37,'Sò lửa sashimi','Khi thưởng thức sò lửa sashimi, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó sẽ là vị mặn vừa của nước tương hảo hạng và kế đó là vị ngọt tươi ngon, béo của sò. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',4,1,140,NULL,NULL),(38,'Mực ép trứng','Khi thưởng thức Mực trúng cá, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó béo nhậy của trứng cá và vị ngọt của mực. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',4,1,149,NULL,NULL),(39,'Cá trích ép trứng','Khi thưởng thức Cá trích ép trứng, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau dó là vị tươi ngọt béo của nó. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',4,1,149,NULL,NULL),(40,'Cá mướng sơ sốt dấm','khi chúng ta ăn Cá mướng sơ sốt dấm đầu tiên chúng ta sẽ cảm nhận được vị tươi ngọt của cá vị chua của chanh. Tất cả sẽ hòa quyện vào với nhau làm nên một món ăn rất ngon',4,1,150,NULL,NULL),(41,'Bụng cá hồi sashimi','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó béo của. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',4,1,165,NULL,NULL),(42,'Sò điệp điệp sashimi','Khi thưởng thức nó, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó béo của sò vị thanh của củ cải. Tất cả sẽ cùng hòa trộn với nhau tạo thành 1 món ăn rất đặc biệt',4,1,170,NULL,NULL),(43,'Cá kiếm nhật bản sashimi','Khi thưởng thức này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó béo và của cá. Tất cả sẽ cùng hòa trộn với nhau tạo được đặc trưng của món ăn này',4,1,250,NULL,NULL),(44,'Nhím biển nhật bản sashimi','Khi thưởng thức món này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó béo của nhím đồng thời cũng sẽ cảm nhận được vị ngọt của thịt nhím. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',4,1,250,NULL,NULL),(45,'Cá kam sashimi','Khi thưởng thức này, cảm giác đầu tiên sẽ là vị cay xộc đánh thức tất cả các giác quan. Sau đó là vị thanh mát của thịt cá đồng thời là cảm giác chua chua của chanh. Tất cả sẽ cùng hòa trộn với nhau và tan dần trong miệng những người thực khách',4,1,300,NULL,NULL),(46,'Mỳ soba rau  nấm','Mì Soba là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy',5,1,80,NULL,NULL),(47,'Mỳ udon rau nấm','Mì udon là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy',5,1,80,NULL,NULL),(48,'Mỳ udon lạnh','Mì udon là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy',5,1,89,NULL,NULL),(49,'Mỳ chasoba lạnh','Mì chasoba là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy',5,1,89,NULL,NULL),(50,'Mỳ ramen nấu sốt soyou','Mì ramen là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy',5,1,119,NULL,NULL),(51,'Mỳ ramen lạnh','Mì ramen là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy',5,1,129,NULL,NULL),(52,'Mỳ udon trmpura','Mì udom là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy',5,1,140,NULL,NULL),(53,'Mỳ udon với bò mỹ và trứng','Mì udom là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy.khi ăn vào nó sẽ có vị béo của thịt thanh của rau',5,1,159,NULL,NULL),(54,'Mỳ soba với bò  mỹ và trứng','Mì soba là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy.khi ăn vào nó sẽ có vị béo của thịt thanh của rau',5,1,145,NULL,NULL),(55,'Mỳ thố tôm chiên và trứng','Mì thố tôm chiên trứng là món ăn truyền thống lâu đời của Nhật Bản vô cùng nổi tiếng trên thế giới, không chỉ ngon miệng, ngon mắt còn cực kì giàu dinh dưỡng nữa đấy.',5,1,149,NULL,NULL),(56,'Nước Cam','Nước cam hay nước cam ép, nước cam vắt là một loại thức uống phổ biến được làm từ cam bằng cách chiết xuất nước từ trái cam tươi bằng việc vắt hay ép đó là một loại nước cam tươi. Đối với các sản phẩm nước cam được sản xuất theo kiểu công nghiệp, nước cam được chế biến có cho thêm các phụ gia, bảo quản rồi đóng chai hoặc hộp giấy để tiêu thụ.',6,1,25,NULL,NULL),(57,'Chanh tươi','Chanh có chứa rất ít chất béo và protein. Chúng bao gồm chủ yếu là carbohydrate (10%) và nước (88-89%). Một quả chanh bình thường chỉ chứa khoảng 20 calo.Axit citric: Các axit hữu cơ phong phú nhất trong chanh, có thể giúp ngăn ngừa sự hình thành sỏi thận.',6,1,25,NULL,NULL),(58,'Rượu soju',NULL,6,1,85,NULL,NULL),(59,'Rươu gạo',NULL,6,1,90,NULL,NULL),(60,'Nước suối',NULL,6,1,10,NULL,NULL),(61,'Nước ép dưa hấu','Ngọt và tràn ngập nước, dưa hấu đã “đóng gói” vô số chất chống ôxy hóa đầy uy lực vốn có trong tự nhiên. Dưa hấu được xem là nhà máy tổng hợp vitamin C và A, nhất là beta-carotene, đồng thời còn chứa rất nhiều chất lycopene. Khi các chất kể trên được đưa vào cơ thể, chúng sẽ “hô biến” những gốc tự do vốn gây hại.',6,1,25,NULL,NULL),(62,'Twiters',NULL,6,1,15,NULL,NULL),(63,'Nước ép ổi','Ổi có tên khoa học là Psidium guajava. Ổi mang lại một lợi ích về sức khỏe vô cùng to lớn, có khả năng chữa một số bệnh như tiêu chảy, lỵ, táo bón, ho, cảm, các bệnh về da, các trường hợp cao huyết áp, béo phì, hoại huyết…',6,1,25,NULL,NULL),(64,'Nước ép dứa','Dứa có đặc tính kháng viêm, chữa lành vết bầm tím và làm giảm đau viêm khớp. Nó cũng hỗ trợ rất tốt cho việc tiêu hóa.',6,1,25,NULL,NULL),(65,'Nước ép cóc',NULL,6,1,25,NULL,NULL),(66,'Chanh leo','Nước ép chanh leo vừa giúp giải nhiệt, làm mát cơ thể lại còn có tác dụng trẻ hóa làn da cho chị em, cùng chế biến thôi',6,1,25,NULL,NULL),(67,'Pepsi',NULL,6,1,15,NULL,NULL),(68,'qQ','2',3,0,30,NULL,NULL);
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_category`
--

DROP TABLE IF EXISTS `tbl_product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_product_category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_category`
--

LOCK TABLES `tbl_product_category` WRITE;
/*!40000 ALTER TABLE `tbl_product_category` DISABLE KEYS */;
INSERT INTO `tbl_product_category` VALUES (1,'KHAI VỊ','',NULL),(2,'CHIÊN & NƯỚNG','',NULL),(3,'SUSHI',NULL,NULL),(4,'SASHIMI','',NULL),(5,'MỲ',NULL,NULL),(6,'ĐỒ UỐNG',NULL,NULL);
/*!40000 ALTER TABLE `tbl_product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_history`
--

DROP TABLE IF EXISTS `tbl_product_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_product_history` (
  `product_historyid` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_historyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_history`
--

LOCK TABLES `tbl_product_history` WRITE;
/*!40000 ALTER TABLE `tbl_product_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_product_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_image`
--

DROP TABLE IF EXISTS `tbl_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_product_image` (
  `product_imageid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `image` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`product_imageid`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_image`
--

LOCK TABLES `tbl_product_image` WRITE;
/*!40000 ALTER TABLE `tbl_product_image` DISABLE KEYS */;
INSERT INTO `tbl_product_image` VALUES (1,1,'https://baomoi-photo-1-td.zadn.vn/w700_r1/15/04/11/61/16363761/1.jpg'),(2,1,'https://baomoi-photo-1-td.zadn.vn/w700_r1/15/04/11/61/16363761/5.jpg'),(4,2,'https://i.ytimg.com/vi/vfnDxk1nLMw/maxresdefault.jpg'),(5,2,'https://anh.eva.vn//upload/1-2015/images/2015-02-15/1424019413-tsukune.jpg'),(6,2,'https://anh.eva.vn//upload/1-2015/images/2015-02-15/1424019413-tsukune-ii.jpg'),(7,3,'http://sotaynauan.com/wp-content/uploads/2015/09/cach-lam-banh-xeo-nhat-ban-buoc-6.jpg'),(8,3,'https://images.foody.vn/res/g5/46963/prof/s640x400/foody-mobile-yxmnzgtm-jpg-749-636192086498294625.jpg'),(9,3,'https://monan9.com/wp-content/uploads/2015/08/Huong-dan-cach-lam-banh-xeo-Nhat-Ban.jpg'),(10,4,'http://nauanngon.thienmy.com/wp-content/uploads/2016/12/thit-ga-sot-kem-mu-tat-cordon-bleu.jpg'),(11,4,'http://7monngonmoingay.info/wp-content/uploads/2015/05/cach-lam-uc-vit-nuong-mat-ong-thom-ngot-dam-me.jpg'),(12,4,'http://kimchi.jcapt.com/img1/store/diembao/vit_4.jpg'),(13,5,'https://media.cooky.vn/recipe/g1/4515/s640/recipe4515-635742950621225624.jpg'),(14,5,'http://tieudungplus.vn/media/uploaded/26/2018/01/16/cac_mon_an_tu_thit_xong_khoi_tieudungplus_(1)_1.jpg'),(15,5,'http://western.edu.vn/wp-content/uploads/2017/04/thit-ba-chi-nam-kim-cham.jpg'),(16,6,'https://znews-photo.zadn.vn/w660/Uploaded/Ohunoaa/2016_06_04/Amigo__Cua_nhoi_1.jpg'),(17,6,'https://www.bepgiadinh.com/wp-content/uploads/2011/12/16/Cua-faci-%C4%91%C3%BAt-l%C3%B2.jpg'),(18,6,'https://danang.huongnghiepaau.com/images/hocnauanngon/cua-nhoi-dut-lo.jpg'),(19,7,'https://i.ytimg.com/vi/aWtqbGoB75M/hqdefault.jpg'),(20,7,'http://muckho.vn/wp-content/uploads/2015/06/muc-xao-chua-ngot.jpg'),(21,7,'https://d3l76hx23vw40a.cloudfront.net/recipe/gy54-033.jpg'),(22,8,'https://product.hstatic.net/1000360862/product/tldl60_80_a_8e301773ad91495a99e9e26a3e594e21_master.jpg'),(23,8,'http://media.phunutoday.vn/files/upload_images/2015/09/24/tom-nuong-muoi-ot-2.jpg'),(24,8,'http://afamilycdn.com/Images/Uploaded/Share/2011/01/17/tomrangme5-copy.jpg'),(25,9,'https://bizweb.dktcdn.net/100/227/495/files/coi-so-diep-nhat-an-song.jpeg?v=1499911791318'),(26,9,'http://fukurai.vn/wp-content/uploads/2018/01/So%CC%80%E2%82%AC-%C3%84%C2%90ie%CC%80%C2%A3%CC%80%E2%80%9Ap-Nha%CC%80%C2%A3%CC%80%E2%80%9At-so%CC%80%E2%80%9A%CC%80%C2%81t-bo%CC%80%E2%80%BA-to%CC%80%E2%80%B0i.jpg'),(27,9,'http://hieuhaisan.com/contents_hieuhaisan/uploads/images/coi-so-diep-nhat-hhs-2.jpg'),(28,10,'https://static.vietnammm.com/images/restaurants/vn/NQ3PQQ7/products/chan-cua-xao-ca-tim.png'),(29,10,'http://hieuhaisan.com/contents_hieuhaisan/uploads/images/cua-sot-tieu-den-hhs-1.jpg'),(30,10,'http://hieuhaisan.com/contents_hieuhaisan/uploads/images/cua-sot-ca-ri-1.jpg'),(31,11,'http://asahisushi.vn/mediacenter/media/images/products/1249/1170/s550_550/trung-ca-tuyet-nuong.jpg'),(32,11,'http://www.shinbashi.com.vn/images/products/trungcatuyetnuongthanhoa.png'),(33,11,'http://nhahangnhatlaocai.com/Portals/nhahangnhatlaocai_com/images/Th%E1%BB%B1c%20%C4%91%C6%A1n/Salad/15_%20Trung-ca-cay-nuong_245k.jpg'),(34,12,'https://beptruong.edu.vn/wp-content/uploads/2013/07/tom-chien-toi.jpg'),(35,12,'https://media.cooky.vn/recipe/g2/11251/s750x468/recipe11251-635624389658586472.jpg'),(36,12,'https://ameovat.com/wp-content/uploads/2016/05/cach-lam-tom-chien-xu-6-600x397.jpg'),(37,13,'http://bizweb.dktcdn.net/100/142/433/articles/tom-tam-bot-chien-xu1.png?v=1478864517120'),(38,13,'http://thegioiphunu.net/wp-content/uploads/2014/07/tom-chien-kieu-moi-vua-ngon-vua-la-1.jpg'),(39,13,'http://media.phunutoday.vn/files/upload_images/2015/09/26/tom-chien-xu-1.jpg'),(40,14,'http://sotaynauan.com/wp-content/uploads/2015/08/m%E1%BB%B1c-chi%C3%AAn-x%C3%B9.jpg'),(41,14,'https://i.ytimg.com/vi/cy_LZA3UvUE/hqdefault.jpg'),(42,14,'https://i.ytimg.com/vi/cy_LZA3UvUE/hqdefault.jpg'),(43,15,'https://gofood.vn/uploads/tong-hop-tin-tuc/san-pham/ca-saman-Nhat.jpg'),(44,15,'https://media.foody.vn/images/IMG_1330(1).jpg'),(45,15,'https://www.datviet.com/wp-content/uploads/2015/11/6277.jpg'),(46,16,'http://khanhlongfood.com/profiles/khanhlongfoodcom/uploads/attach/p1457600294_cadangnhat1.jpg'),(47,16,'http://fukurai.vn/wp-content/uploads/2018/01/C%C3%A1-%C4%90%E1%BA%AFng-Nh%E1%BA%ADt-B%E1%BA%A3n-n%C6%B0%E1%BB%9Bng-mu%E1%BB%91i.jpg'),(48,16,'http://khanhlongfood.com/profiles/khanhlongfoodcom/uploads/attach/p1457600294_cadangnhat1.jpg'),(49,17,'http://blognauanngon.com/images/688x359/anh-blognauanngon.com-brepkp429690000.jpg?1527416151388'),(50,17,'http://sv1.upsieutoc.com/2018/05/24/hau-sua-chien2.jpg'),(51,17,'http://fukurai.vn/wp-content/uploads/2018/01/Khoai-ta%CC%80%E2%80%9Ay-cuo%CC%80%C2%A3%CC%80%E2%80%9An-ha%CC%80%E2%82%ACu-su%CC%80%E2%80%BA%CC%80%C6%92a-Nha%CC%80%C2%A3%CC%80%E2%80%9At-chie%CC%80%E2%80%9An-gio%CC%80%E2%82%ACn.jpg'),(52,18,'http://asahisushi.nanoweb.vn/data/media/1249/images/c%C6%A1m%20l%C6%B0%C6%A1n%20nh%E1%BA%ADt%20n%C6%B0%E1%BB%9Bng.jpg'),(53,18,'http://binhvinhsaigon.com.vn/data/upload/1C.jpg'),(54,18,'http://dulichnhatban.travel/wp-content/uploads/2015/03/dulichnhatban.travel-luon-nuong-nhat-ban.jpg'),(55,19,'http://ngongquyettien.com/uploads/shops/2015_01/anh-gan-ngong.jpg'),(56,19,'https://vtv1.mediacdn.vn/zoom/700_438/2017/gan-ngong-1506733409123.jpg'),(57,19,'http://fukurai.vn/wp-content/uploads/2018/01/Gan-ngo%CC%80%E2%80%9A%CC%80%C6%92ng.jpg'),(58,20,'https://static.vietnammm.com/images/restaurants/vn/NQ3PQQ7/products/thit-cua-bo-lo.png'),(59,20,'https://static.vietnammm.com/images/restaurants/vn/NQ3PQQ7/products/thit-cua-nuong-voi-nam.png'),(60,21,'http://www.nikugatou.vn/uploads/images/mon-an-truyen-thong/catuyetnuong.jpg'),(61,21,'http://thucphamnhapkhau.vn/blog/BinaryImageShowBlogImage.aspx?ImageID=445'),(62,21,'http://www.nikugatou.vn/uploads/images/mon-an-truyen-thong/catuyetnuong.jpg'),(63,22,'http://fukurai.vn/wp-content/uploads/2018/01/C%C3%A1-h%E1%BB%93i-nigiri.jpg'),(64,22,'http://alosushi.vn/Upload/Product/SushiEp/Sushi-ca-hoi-ep-alo-sushi.jpg'),(65,22,'https://chin-meshi.com/wp-content/uploads/2017/06/salmon-sushi.png'),(66,23,'http://www.oishii.vn/upload/images/1465380516544_2663020.jpg'),(67,23,'http://ichibasushi.vn/en/upload/ni9-takonigiri-09-08.jpg'),(68,23,'http://phoharu.com.vn/image/cache/catalog/11-sushi-maki/sushi-bach-tuoc-1000x668.jpg'),(69,24,'http://www.nhahangamthuc.vn/Uploads/Image/tin-tuc/mon-nhat/sushi-tom-dat.jpg'),(70,24,'http://www.shinbashi.com.vn/images/products/13-Sushi-Tom.jpg'),(71,24,'http://sushikei.vn/wp-content/uploads/2015/04/67.-Sushi-to-su_47k-600x400.jpg'),(72,25,'http://cdn01.diadiemanuong.com/ddau/640x/undefined-tano-sushi-phan-xich-long-0-89e477d5636125757644111417.jpg'),(73,25,'http://cdn01.diadiemanuong.com/ddau/640x/quan-sushi-voi-he-thong-bang-chuyen-doc-dao-chua-dau-thay-nhieu-combo-khuyen-mai-den-38-f54becd0636246755153774823.jpg'),(74,25,'https://media.foody.vn/res/g5/45218/s570x570/foody-sushi%20c%C3%A1%20ng%E1%BB%AB-635918396885397512.jpg'),(75,26,'https://tea-2.lozi.vn/v1/images/resized/sushi-luon-nhat-0Rt3NyIOthmL9w1H-1833060-1486370207?w=480&type=o'),(76,26,'http://alosushi.vn/Upload/Product/SushiEp/Sushi-luon-ep-alo-sushi.jpg'),(77,26,'http://www.nhahangamthuc.vn/Uploads/Image/tin-tuc/mon-nhat/sushi-luon0-2.JPG'),(78,27,'http://sushikei.vn/wp-content/uploads/2015/04/57.-sushi-ca-cam-nhat_75k-600x400.jpg'),(79,27,'http://sushikei.vn/wp-content/uploads/2015/09/84.-Ca-Saba-ngam-dam-sushi_45k-600x400.jpg'),(80,27,'http://sushikei.vn/wp-content/uploads/2015/04/66.-sushi-ca-song_47k-600x400.jpg'),(81,28,'http://sushitokyo.vn/images/products/SAKE%20MAKI.JPG'),(82,28,'http://xspace.talaweb.com/takitaki/home/sanpham/sushi/sushi-cuon-ca-hoi-qua-bo.JPG'),(83,28,'http://sushitokyo.vn/images/products/SAKE%20MAKI.JPG'),(84,29,'http://fukurai.vn/wp-content/uploads/2018/01/So-%C3%84%E2%80%98ie%CC%80%C2%A3%CC%80%E2%80%9Ap-Nha%CC%80%C2%A3%CC%80%E2%80%9At-ba%CC%80%E2%80%B0n-Nigiri.jpg'),(85,29,'http://sushibar-vn.com/wp-content/uploads/2016/01/ikashiso1.jpg'),(86,29,'http://sushibar-vn.com/wp-content/uploads/2016/01/Hotate-kaibashira.jpg'),(87,30,'http://fukurai.vn/wp-content/uploads/2018/01/gan-ngo%CC%80%E2%80%9A%CC%80%C6%92ng-nigiri.jpg'),(88,30,'https://kenh14cdn.com/2018/3/11/img4783nologo-15207387782681625993363.jpg'),(89,30,'https://kenh14cdn.com/2018/3/11/img4779nologo-15207387782662004979534.jpg'),(90,31,'http://alosushi.vn/Upload/Product/SushiEp/Sushi-ca-ngu-ep-alo-sushi.jpg'),(91,31,'https://bizweb.dktcdn.net/100/220/355/products/sushi-ca-ngu.jpg?v=1497515168063'),(92,31,'https://www.restaurantsashimi.it/wp-content/uploads/2016/07/nigiri-tonno-2pz-600x523.jpg'),(93,32,'http://fukurai.vn/wp-content/uploads/2018/01/Co%CC%80%E2%80%BAm-ne%CC%80%C2%81n-ca%CC%80%C2%81-Ho%CC%80%E2%80%9A%CC%80%E2%82%ACi.jpg'),(94,32,'http://www.monngon.tv/uploads/images/images/sushi-ca-hoi-5.png'),(95,32,'http://www.monngon.tv/uploads/images/2017/05/25/a13da992486a1325a34fc7d47716c896-sushi-ca-hoi-sl.jpg'),(96,33,'https://agiadinh.net/wp-content/uploads/2014/11/cach-lam-sushi-ca-hoi-8.jpg'),(97,33,'https://i.ytimg.com/vi/Y0jg_-iiEGU/maxresdefault.jpg'),(98,33,'https://www.medguru.lt/uploads/img/catalog/1/thumb_4_1_10457123.jpg'),(99,34,'http://fukurai.vn/wp-content/uploads/2018/01/hau-nhat-sot-ponzu.jpg'),(100,34,'http://ichibasushi.vn/upload/sas22-kakisashimi-22-41.jpg'),(101,34,'http://ichibasushi.vn/upload/ni27-kakifresh-09-35.jpg'),(102,35,'https://i.ytimg.com/vi/7fwg6fhcEKw/maxresdefault.jpg'),(103,35,'https://product.hstatic.net/1000238872/product/img_1115.jpg'),(104,35,'https://cachlammonngon.vn/wp-content/uploads/2015/12/cach-lam-sashimi-ca-hoi.jpg'),(105,36,'http://fukurai.vn/wp-content/uploads/2018/01/bach-tuoc-nhat-sasimi.jpg'),(106,36,'http://nhahangnhatbankirin.vn/admin/img/Partner/20140418081518025484e6aacfa28d9d76f660be3405cf.jpg'),(107,36,'http://www.monngon.tv/uploads/images/2017/05/06/f4c7a8d3cec7da27adb21c1c02b5f505-sashimi-bach-tuoc-s.jpg'),(108,37,'http://fukurai.vn/wp-content/uploads/2018/01/so-lua-sashimi.jpg'),(109,37,'http://www.nikugatou.vn/uploads/images/mon-an-truyen-thong/sashimisolua.png'),(110,37,'http://ichibasushi.vn/upload/sas15-hokkigai-22-34.jpg'),(111,38,'http://ichibasushi.vn/en/upload/sas40-yariika-22-54.jpg'),(112,38,'http://fukurai.vn/wp-content/uploads/2018/01/muc-ep-trung.jpg'),(113,38,'https://media.foody.vn/BlogsContents/30442519_1065389793618217_3618661962952474624_n.jpg'),(114,39,'http://fukurai.vn/wp-content/uploads/2018/01/ca-trich-ep-trung.jpg'),(115,39,'ttp://hieuhaisan.com/contents_hieuhaisan/uploads/images/ca-trich-ep-trung.jpg'),(116,39,'http://ichibasushi.vn/upload/sas6-nishin-21-16.jpg'),(117,40,'http://fukurai.vn/wp-content/uploads/2018/01/bung-ca-ngu-nhat-sasimi-1.jpg'),(118,40,'http://znews-photo-td.zadn.vn/w1024/Uploaded/wyhktpu/2017_08_25/IMG_8478.JPG'),(119,40,'http://znews-photo-td.zadn.vn/w1024/Uploaded/wyhktpu/2017_08_25/IMG_8472.JPG'),(120,41,'http://fukurai.vn/wp-content/uploads/2018/01/ca-hoi-sashimi.jpg'),(121,41,'http://product.hstatic.net/1000187760/product/sashimi_ca_hoi.jpg'),(122,41,'https://cdn.store-assets.com/s/12992/i/1231382.jpeg'),(123,42,'http://fukurai.vn/wp-content/uploads/2018/01/so-diep-nhat-sashimi.jpg'),(124,42,'http://nhahangnhatlaocai.com/Portals/nhahangnhatlaocai_com/images/Th%E1%BB%B1c%20%C4%91%C6%A1n/sashimi/28_%20Sashimi-coi-so-diep-nhat_125k.jpg'),(125,42,'http://akuruhifood.com/Image/Picture/th%E1%BB%B1c%20ph%E1%BA%A9m%20%C4%91%C3%B4ng%20l%E1%BA%A1nh%20(1)/hotate%20sashimi%20170g-221k.jpg'),(126,43,'http://sushikei.vn/wp-content/uploads/2015/04/30.-Sashimi-bung-ca-kiem-viet-nam_295k-600x400.jpg'),(127,43,'http://ichibasushi.vn/upload/sas5-mekajiki-1--22-21.jpg'),(128,43,'https://cdn.pixabay.com/photo/2014/10/03/15/04/sashimi-471802_960_720.jpg'),(129,44,'http://fukurai.vn/wp-content/uploads/2018/01/nhim-bien-Nha%CC%80%C2%A3%CC%80%E2%80%9At-Ba%CC%80%E2%80%B0n-sashimi.jpg'),(130,44,'https://i.ytimg.com/vi/6t2icpk45fE/maxresdefault.jpg'),(131,44,'https://znews-photo-td.zadn.vn/w1024/Uploaded/Ohunoaa/2014_11_07/Sushi_com_nan1.jpg'),(132,45,'http://fukurai.vn/wp-content/uploads/2018/01/ca-kam-sashimi.jpg'),(133,45,'http://fukurai.vn/wp-content/uploads/2018/01/ca-kam-sashimi.jpg'),(134,45,'https://media-cdn.tripadvisor.com/media/photo-s/11/bd/8d/f6/sashimi-ca-cam-kanpachi.jpg'),(135,46,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-Udon_Soba-rau-na%CC%80%E2%80%9A%CC%80%C2%81m.jpg'),(136,46,'http://s1.media.amthucso.vn/files/content/2017/03/10/4cfc7ca140acec823209630e02bfb999.jpeg'),(137,46,'http://www.nihonminkaen.jp/wp-content/uploads/2013/10/soba_tororo.jpg'),(138,47,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-soba-rau-na%CC%80%E2%80%9A%CC%80%C2%81m.jpg'),(139,47,'https://www.bepgiadinh.com/wp-content/uploads/2013/07/25/mi_udon-600x370.jpg'),(140,47,'https://i2.wp.com/congthucmonngon.com/wp-content/uploads/2018/04/cach-lam-mon-mi-udon-nau-ga-nam-thom-phuc-tuyet-ngon-cho-bua-sang.png?ssl=1'),(141,48,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-Chasoba-la%CC%80%C2%A3nh.jpg'),(142,48,'http://gakutomo.com/wp-content/gallery/udon/dynamic/p1000047fb.jpg-nggid03435-ngg0dyn-810x9999-00f0w010c010r110f110r010t010.jpg'),(143,48,'http://soi.today/wp-content/images/2013/08/kishimen-udon-ok.jpg'),(144,49,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-Chasoba-la%CC%80%C2%A3nh.jpg'),(145,49,'https://kokotaru.com/wp-content/uploads/image2/IMG_8012.jpg?9d7bd4&9d7bd4'),(146,49,'http://ichibasushi.vn/en/upload/ud8-zarusoba-08-53.jpg'),(147,50,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-ramen-na%CC%80%E2%80%9A%CC%80%C2%81u-so%CC%80%E2%80%9A%CC%80%C2%81t-soyou.jpg'),(148,50,'http://cdnsg.kilala.vn/data/upload/article/2337/IMG_6954_web.jpg'),(149,50,'http://toinayangi.vn/wp-content/uploads/2015/11/huong-dan-nau-mi-ramen-trung-cua-nhat-ban-10.jpg'),(150,51,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-ramen-la%CC%80%C2%A3nh.jpg'),(151,51,'http://phunuvietnam.vn/media/news/419345a4c56c55ba30671ab8c25d2a73/mi-lanh.jpg'),(152,51,'http://asahisushi.vn/mediacenter/media/images/products/1249/1170/s550_550/mi-ramen-lanh.jpg'),(153,52,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-Udon-Tempura.jpg'),(154,52,'https://hd1.hotdeal.vn/images/uploads/2015/10/01/184906%20bs/184906-body-bs%20%281%29.jpg'),(155,53,'ttps://media.foody.vn/images/mi1.png'),(156,53,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-Udon-vo%CC%80%E2%80%BA%CC%80%C2%81i-bo%CC%80%E2%82%AC-My%CC%80%C6%92-va%CC%80%E2%82%AC-tru%CC%80%E2%80%BA%CC%80%C2%81ng.jpg'),(157,53,'http://xspace.talaweb.com/takitaki/home/sanpham/Mi/Mi-udon-thit-bo.jpg'),(158,54,'tp://xspace.talaweb.com/takitaki/home/sanpham/Mi/Mi-udon-nau-trung.JPG'),(159,54,'http://media.phunutoday.vn/files/upload_images/2016/03/16/den-nb-an-my1%20phunutoday_vn.jpg'),(160,54,'http://fukurai.vn/wp-content/uploads/2018/01/My%CC%80%E2%82%AC-Udon-vo%CC%80%E2%80%BA%CC%80%C2%81i-bo%CC%80%E2%82%AC-My%CC%80%C6%92-va%CC%80%E2%82%AC-tru%CC%80%E2%80%BA%CC%80%C2%81ng.jpg'),(161,55,'https://i.imgur.com/1Gc1Vr8.jpg'),(162,55,'http://sushibar-vn.com/wp-content/uploads/2016/01/SAKE-IKURA-DON.jpg'),(163,56,'https://baomoi-photo-1-td.zadn.vn/w1000_r1/17/08/09/315/22971071/4_31938.jpg'),(164,56,'https://media.laodong.vn/Uploaded/phamthuhien/2014_10_10/cam%20(9)_LDNN.jpg.ashx?width=660'),(165,56,'http://traicaysinhto.com/wp-content/uploads/2016/06/nuoc-cam-ep-giup-giai-doc-gan-hieu-qua.jpg'),(166,57,'http://sohanews.sohacdn.com/thumb_w/660/2018/2/1/photo1517478868721-1517478868721748641205.jpg'),(167,57,'https://www.youtube.com/watch?v=sPWMVJqbhos'),(168,57,'http://petrotimes.vn/stores/news_dataimages/ngocdung/022015/03/15/lemon_juice_diet_recipe.jpg'),(169,58,'http://ruoungoaitot.com/thumb.php?src=http://ruoungoaitot.com/upload/public/R%C6%B0%C6%A1u%20jinro/SOJU%20HOA%20QUA/ruou-soju-sochu-nho-1.png&w=405&h=0&f=products&s=1'),(170,58,'https://kmartvn.com/wp-content/uploads/2017/02/Ruou-soju-sochu-nho-1.jpg'),(171,59,'http://hstatic.net/966/1000090966/1/2016/8-6/gaotrangch_1024x1024.jpg'),(172,59,'http://hstatic.net/966/1000090966/1/2016/8-6/gaotrangch_1024x1024.jpg'),(173,60,'https://cdn.tgdd.vn/Products/Images/2563/76403/nuoc-khoang-la-vie-350ml-700x467-6.jpg'),(174,61,'http://sohanews.sohacdn.com/thumb_w/660/2013/1366676003010.jpg'),(175,61,'https://media.cooky.vn/recipe/g1/9564/s750x468/recipe9564-635713609095005011.jpg'),(176,61,'http://cafefcdn.com/thumb_w/650/2017/xcoverimage-15-1497514866-jpg-pagespeed-ic-bwwymyhsqw-1497793886892.jpg'),(177,62,'http://victoryplaza.vn/media/product/4136_sanpham245.png'),(178,63,'https://shipdoandemff.com/wp-content/uploads/2018/02/%E1%BB%94i-%C3%A9p-1.jpg'),(179,63,'http://canhbuom.vn/wp-content/uploads/2017/05/2-cong-thuc-ho-tro-giam-beo-bat-ngo-tu-qua-oi-4.jpg'),(180,64,'http://traicaysinhto.com/wp-content/uploads/2016/08/nuoc-ep-thom-600x600.jpg'),(181,64,'http://traicaysinhto.com/wp-content/uploads/2016/08/nuoc-ep-thom-600x600.jpg'),(182,65,'http://i1.topgia.vn/nch/images/2016/4/cach-lam-nuoc-ep-coc-bang-may-xay-sinh-to-0.jpg'),(183,65,'http://selimkobeauty.com/wp-content/uploads/2017/06/nuoc-ep-coc-e1498271851698.jpg'),(184,66,'https://i.ytimg.com/vi/jor-xWHq09Y/maxresdefault.jpg'),(185,66,'https://mebetin.com/wp-content/uploads/2016/05/cach-lam-nuoc-ep-chanh-day-giup-chi-em-giam-can-hieu-qua.jpg'),(186,67,'https://taldepot.com/media/catalog/product/cache/1/thumbnail/9df78eab33525d08d6e5fb8d27136e95/P/e/Pepsi_16oz_can_front.jpg');
/*!40000 ALTER TABLE `tbl_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_material`
--

DROP TABLE IF EXISTS `tbl_product_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_product_material` (
  `product_materialid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `materialid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_materialid`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_material`
--

LOCK TABLES `tbl_product_material` WRITE;
/*!40000 ALTER TABLE `tbl_product_material` DISABLE KEYS */;
INSERT INTO `tbl_product_material` VALUES (1,NULL,1,1),(2,NULL,2,1),(3,NULL,3,1),(4,NULL,4,2),(5,NULL,5,2),(6,NULL,6,3),(7,NULL,7,3),(8,NULL,8,3),(9,NULL,9,3),(10,NULL,11,4),(11,NULL,3,4),(12,NULL,10,4),(13,NULL,12,5),(14,NULL,14,5),(15,NULL,10,6),(16,NULL,15,6),(17,NULL,16,6),(18,NULL,17,7),(19,NULL,18,7),(20,NULL,19,8),(21,NULL,20,8),(22,NULL,22,9),(23,NULL,21,9),(24,NULL,10,9),(25,NULL,23,9),(26,NULL,24,10),(27,NULL,25,10),(28,NULL,26,11),(29,NULL,19,12),(30,NULL,9,12),(31,NULL,27,12),(32,NULL,19,13),(33,NULL,28,13),(34,NULL,29,13),(35,NULL,9,13),(36,NULL,30,13),(37,NULL,31,14),(38,NULL,9,14),(39,NULL,32,14),(40,NULL,30,14),(41,NULL,35,15),(42,NULL,18,15),(43,NULL,85,15),(44,NULL,37,15),(45,NULL,33,16),(46,NULL,34,16),(47,NULL,12,17),(48,NULL,38,17),(49,NULL,39,17),(50,NULL,32,17),(51,NULL,40,18),(52,NULL,41,18),(53,NULL,42,18),(54,NULL,43,19),(55,NULL,44,19),(56,NULL,22,19),(57,NULL,45,19),(58,NULL,47,20),(59,NULL,9,20),(60,NULL,46,20),(61,NULL,42,21),(62,NULL,48,21),(63,NULL,49,21),(64,NULL,50,21),(65,NULL,51,22),(66,NULL,52,22),(67,NULL,54,22),(68,NULL,59,23),(69,NULL,54,23),(70,NULL,53,23),(71,NULL,52,23),(72,NULL,19,24),(73,NULL,54,24),(74,NULL,53,24),(75,NULL,55,25),(76,NULL,53,25),(77,NULL,40,26),(78,NULL,53,26),(79,NULL,85,26),(80,NULL,52,26),(81,NULL,56,27),(82,NULL,54,27),(83,NULL,52,27),(84,NULL,51,28),(85,NULL,53,28),(86,NULL,54,28),(87,NULL,52,28),(88,NULL,57,29),(89,NULL,54,29),(90,NULL,52,29),(91,NULL,43,30),(92,NULL,54,30),(93,NULL,52,30),(94,NULL,58,31),(95,NULL,52,31),(96,NULL,51,32),(97,NULL,54,32),(98,NULL,52,32),(99,NULL,51,33),(100,NULL,54,33),(101,NULL,52,33),(102,NULL,9,33),(103,NULL,12,34),(104,NULL,85,34),(105,NULL,52,34),(106,NULL,59,35),(107,NULL,3,35),(108,NULL,52,35),(109,NULL,60,36),(110,NULL,52,36),(111,NULL,61,37),(112,NULL,52,37),(113,NULL,62,38),(114,NULL,52,38),(115,NULL,31,39),(116,NULL,63,39),(117,NULL,51,40),(118,NULL,52,40),(119,NULL,18,40),(120,NULL,57,41),(121,NULL,52,41),(122,NULL,18,41),(123,NULL,64,42),(124,NULL,52,42),(125,NULL,65,42),(126,NULL,66,43),(127,NULL,52,43),(128,NULL,65,43),(129,NULL,66,44),(130,NULL,52,44),(131,NULL,56,45),(132,NULL,85,45),(133,NULL,18,45),(134,NULL,52,45),(135,NULL,67,46),(136,'',68,46),(137,'',69,46),(138,NULL,70,46),(139,NULL,71,47),(140,NULL,68,47),(141,NULL,65,47),(142,NULL,72,47),(143,NULL,73,47),(144,NULL,71,48),(145,NULL,74,48),(146,NULL,74,48),(147,NULL,18,48),(148,NULL,76,49),(149,NULL,53,49),(150,NULL,77,49),(151,NULL,78,49),(152,NULL,79,50),(153,NULL,8,50),(154,NULL,9,50),(155,NULL,53,50),(156,NULL,53,51),(157,NULL,79,51),(158,NULL,80,51),(159,NULL,19,51),(160,NULL,22,51),(161,NULL,81,51),(162,NULL,71,52),(163,NULL,19,52),(164,NULL,30,52),(165,NULL,68,52),(166,NULL,53,52),(167,NULL,71,53),(168,NULL,82,53),(169,NULL,9,53),(170,NULL,68,53),(171,NULL,53,53),(172,NULL,67,54),(173,NULL,82,54),(174,NULL,9,54),(175,NULL,68,54),(176,NULL,53,54),(177,NULL,83,55),(178,NULL,19,55),(179,NULL,68,55),(180,NULL,84,56),(181,NULL,85,57),(182,NULL,86,58),(183,NULL,87,59),(184,NULL,94,60),(185,NULL,88,61),(186,NULL,84,62),(187,NULL,89,63),(188,NULL,90,64),(189,NULL,91,65),(190,NULL,92,66),(191,NULL,93,67);
/*!40000 ALTER TABLE `tbl_product_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_order`
--

DROP TABLE IF EXISTS `tbl_product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_product_order` (
  `product_orderid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_order`
--

LOCK TABLES `tbl_product_order` WRITE;
/*!40000 ALTER TABLE `tbl_product_order` DISABLE KEYS */;
INSERT INTO `tbl_product_order` VALUES (1,1,1,1,NULL),(2,1,5,1,NULL),(3,2,1,3,NULL),(4,3,3,1,NULL),(5,4,1,2,NULL),(6,5,7,1,NULL),(7,6,3,10,NULL);
/*!40000 ALTER TABLE `tbl_product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_status`
--

DROP TABLE IF EXISTS `tbl_product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_product_status` (
  `produc_statusid` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`produc_statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_status`
--

LOCK TABLES `tbl_product_status` WRITE;
/*!40000 ALTER TABLE `tbl_product_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES (1,'ROLE_ADMIN',''),(2,'ROLE_USER',NULL);
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_table`
--

DROP TABLE IF EXISTS `tbl_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_table` (
  `tableid` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_table`
--

LOCK TABLES `tbl_table` WRITE;
/*!40000 ALTER TABLE `tbl_table` DISABLE KEYS */;
INSERT INTO `tbl_table` VALUES (1,NULL,'Bàn 1'),(2,NULL,'Bàn 2'),(3,NULL,'Bàn 3'),(4,NULL,'Bàn 4'),(5,NULL,'Bàn 5'),(6,NULL,'Bàn 6'),(7,NULL,'Bàn 7'),(8,NULL,'Bàn 8'),(9,NULL,'Bàn 9'),(10,NULL,'Bàn 10'),(11,NULL,'Bàn 11'),(12,NULL,'Bàn 12');
/*!40000 ALTER TABLE `tbl_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_timeline`
--

DROP TABLE IF EXISTS `tbl_timeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_timeline` (
  `timelineid` int(11) NOT NULL AUTO_INCREMENT,
  `tableid` int(11) NOT NULL,
  `time_start` datetime DEFAULT NULL,
  PRIMARY KEY (`timelineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_timeline`
--

LOCK TABLES `tbl_timeline` WRITE;
/*!40000 ALTER TABLE `tbl_timeline` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_timeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordhashed` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `firstname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'tiep','$2a$10$TAiBEN8wM1uB5OyZ3cazdON5ObJ3mAJMLUeEJIyKmHkA3KekFvR32','tiepnguyenptit@gmail.com',NULL,0,'0',0,'2018-06-01','tiep','nguyen',NULL),(2,'a','$2a$10$WKzJGLiFDAFOr7otR8gTOetmNuBBoPPqUwWHg1HwDImA8sF/6gXhe','b@gmail.com',NULL,0,'0',0,'2018-06-01','tiep','nguyen',NULL),(3,'14','$2a$10$gUgCkCAPfa2HP1pNZBcM0uFqhs5.vAeWGMLONBjDTN6Wz2RmkIejS',NULL,NULL,0,'0',0,'2018-06-07',NULL,NULL,NULL),(4,'r1','$2a$10$0xPLf0QlvSio3pPQjpJXCuVYfOrbakHxrNvH7LD2DFxtCgs5tPJBq','212r@gmail.com',NULL,0,'0',0,'2018-06-07',NULL,NULL,NULL),(5,'r2214','$2a$10$05e7IsrMAyEr/mjPJOH3VezhkAmsgdN8tL/3dv6DYmvmgxFCu5FrW','t13@gmail.com',NULL,0,'0',0,'2018-06-07',NULL,NULL,'123'),(6,'tiep1','$2a$10$taqPxkdP9rmFdkOb4huOIuHZ7hmIvRzqFWiCJTtHaS9plNQM3O3aC','f1@gmail.com',NULL,0,'Khu đô thị Nam Cường Cổ Nhuế',0,'2018-06-07',NULL,NULL,'01645029618'),(7,'tiep2','$2a$10$6ZEbIBSr7T4Qa2ofSx.ND.OrEjQKXQaw7kFWAqodLrvWie1gTsA5a','tiep@gmail.com',NULL,0,'a',0,'2018-06-08',NULL,NULL,'123'),(8,'anonymousUser','$2a$10$f8q.0beTvkS4nzGRK/Sa3OqW.yb1uTWwWTjds4W0BXzRE6Xh.kfyu','5r@gmail.com',NULL,0,'1',0,'2018-06-11',NULL,NULL,'1'),(9,'nam','$2a$10$w0LHg71X.oEA8gLYBRK6NO2oSgwsWnl1.KN7daW0dUp14roLezF.e','nam@gmail.com','/link/1575611836-bai-tap-sql.jpg',NULL,'hưng yên',0,'2019-12-06','Nguyễn','Nam','123456');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_role`
--

DROP TABLE IF EXISTS `tbl_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_user_role` (
  `user_roleid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_role`
--

LOCK TABLES `tbl_user_role` WRITE;
/*!40000 ALTER TABLE `tbl_user_role` DISABLE KEYS */;
INSERT INTO `tbl_user_role` VALUES (1,1,1,1),(2,1,2,1),(3,2,2,1),(4,3,2,1),(5,4,2,1),(6,5,2,1),(7,6,2,1),(8,7,2,1),(9,8,2,1),(10,9,2,1);
/*!40000 ALTER TABLE `tbl_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-10 18:41:32
