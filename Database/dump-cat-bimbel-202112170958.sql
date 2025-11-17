-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: cat-bimbel
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `daftar_nilai`
--

DROP TABLE IF EXISTS `daftar_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daftar_nilai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type_nilai` enum('kecerdasan','kejiwaan','kepribadian') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `paket_soal` varchar(100) DEFAULT NULL,
  `nilai` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `daftar_nilai_FK` (`id_user`),
  CONSTRAINT `daftar_nilai_FK` FOREIGN KEY (`id_user`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_nilai`
--

LOCK TABLES `daftar_nilai` WRITE;
/*!40000 ALTER TABLE `daftar_nilai` DISABLE KEYS */;
INSERT INTO `daftar_nilai` VALUES (1,'e61565ed-84b1-42cb-99c4-f61acbc286a2','kecerdasan','Kecerdasan 1',10,2,'2021-11-24 06:13:39'),(2,'e61565ed-84b1-42cb-99c4-f61acbc286a3','kejiwaan','Kejiwaan 1',10,2,'2021-11-24 06:13:39'),(3,'e61565ed-84b1-42cb-99c4-f61acbc286a4','kepribadian','Kepribadian 1',10,2,'2021-11-24 06:13:39'),(4,'e61565ed-84b1-42cb-99c4-f61acbc286a5','kecerdasan','Kecerdasan 3',10,2,'2021-11-24 06:13:39'),(5,'e61565ed-84b1-42cb-99c4-f61acbc286a2','kecerdasan','kecerdasan 2',10,2,'2021-11-27 19:21:58'),(6,'2021225b-00ac-401b-a382-8141631ce4dd','kecerdasan','Kejiwaan 1',10,NULL,'2021-11-27 19:47:23'),(11,'c8ea70ff-f01d-4fd8-b61c-d8d5418654f6','kecerdasan','Kejiwaan 1',10,2,'2021-11-27 20:29:14'),(17,'eb938140-4500-4ebc-854e-1b2056c3831c','kecerdasan','Kecerdasan 5',100,2,'2021-11-27 21:05:34'),(18,'9cc59e01-9092-4f9b-9e78-8c8aed716bd1','kecerdasan','Kejiwaan 2',10,2,'2021-11-27 22:28:10'),(19,'ebeb979f-0f02-45f8-b17d-8095989de52b','kejiwaan','Kejiwaan Terakhir',2,2,'2021-11-27 22:29:22'),(20,'b07328cf-a281-44c7-b9c1-8e4be0465c7b','kecerdasan','Kecerdasan 3',1,28,'2021-11-27 23:05:59'),(21,'afd9966c-98fd-45ed-baf5-3919febc944f','kejiwaan','Kejiwaan 2',10,28,'2021-11-27 23:06:31'),(22,'c199aa21-8822-4d93-b297-e49fe45c0beb','kecerdasan','Kecerdasan 3',0,28,'2021-11-27 23:08:30'),(23,'9154ae84-66ae-4857-8fa8-d81c6848a722','kecerdasan','Kecerdasan 3',101,28,'2021-11-27 23:09:39'),(24,'b38a7cc0-92c5-46be-bfa5-e7e7a260e3d1','kepribadian','Kepribadian 3',2,28,'2021-11-27 23:25:10'),(25,'a7081d29-53ff-4c26-97d6-3cd99f916c96','kecerdasan','Kecerdasan 5',100,28,'2021-11-27 23:27:52'),(26,'0a975746-4a89-4c62-8650-9b7146b6bfb5','kecerdasan','Kecerdasan 3',1,2,'2021-11-28 02:04:38'),(27,'82f4d6f8-d7a1-4c78-bf89-4d28427322e6','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 02:05:41'),(28,'199180ba-1b05-4e10-9da3-0101891b33d2','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 02:06:40'),(29,'a63cb06b-bb9d-451f-aaa6-3ef9e1b755dd','kecerdasan','Kecerdasan 3',1,2,'2021-11-28 02:08:03'),(30,'70442638-2527-4a71-84a7-779ca3584741','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 02:09:08'),(31,'718caa21-6743-4f90-b76b-9a4d7931917c','kecerdasan','Kecerdasan 3',1,2,'2021-11-28 02:10:32'),(32,'6fe618bc-55d2-477f-ab5d-65798bcb99cc','kecerdasan','Kecerdasan 3',1,2,'2021-11-28 02:13:35'),(33,'a11cbe02-7681-4205-a208-20d63400da33','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:14:41'),(34,'b4e7b646-f84c-499e-adac-9cbd303d3d6b','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:15:02'),(35,'41d7d3a6-f208-4e46-864d-3d2fb25b22aa','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:16:33'),(36,'12072541-7fbb-4562-ba6e-1df93e4c6192','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:17:35'),(37,'b9348990-1736-4d32-b4a4-4829db865b69','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:18:08'),(38,'601d991b-55f2-44d0-8a3b-7a5ed47351ec','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:19:45'),(39,'871432d2-b369-4976-a93a-5c9555b8f3e1','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:20:06'),(40,'c910da84-ba34-4a7e-ad96-ba49cd934028','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 02:20:43'),(41,'bbea1353-ca47-4053-a728-057072e5f4b8','kejiwaan','Kejiwaan 2',0,2,'2021-11-28 02:26:08'),(42,'abf6cb44-b878-43af-9613-148241e92cce','kejiwaan','Kejiwaan 2',0,2,'2021-11-28 02:26:33'),(43,'53c45522-a029-4d18-9258-600e2eaa5417','kejiwaan','Kejiwaan Terakhir',2,2,'2021-11-28 02:26:59'),(44,'3c748c3c-377b-4a2e-8c2a-66bb1f44efbe','kepribadian','Kepribadian 3',2,2,'2021-11-28 02:33:37'),(45,'725f840a-5ea0-4e14-9e56-685aa2ebfcf7','kepribadian','Kepribadian 3',0,2,'2021-11-28 02:35:00'),(46,'3d47ef71-efaf-4458-85b9-452cd69ba1be','kepribadian','Kepribadian 3',0,2,'2021-11-28 02:35:34'),(47,'efa4f2e4-3448-4701-9cce-1034171151cb','kejiwaan','Kejiwaan 2',10,2,'2021-11-28 02:36:02'),(48,'1d2f13c4-1871-4f1a-b53c-bad9c8d04708','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:45:28'),(49,'5d389c02-1b39-45e0-ac0a-876cbff6fcd1','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 02:54:50'),(50,'280ea9a7-5959-4993-9b7d-b37e5ba58a87','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 03:32:50'),(51,'49699a12-d1a8-4cee-909d-966464a1c2ea','kejiwaan','Kejiwaan 2',20,28,'2021-11-28 04:20:01'),(52,'76ff4141-239d-4eda-8302-23e8cf8ad591','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 18:57:06'),(53,'61c8c25b-ff5c-4efb-b1e7-de1fecd21917','kecerdasan','Kecerdasan 5',100,2,'2021-11-28 19:26:49'),(54,'fe418676-4aa4-4023-af8e-1b9fd1d92f29','kecerdasan','Kecerdasan 5',100,2,'2021-11-28 19:28:51'),(55,'59f6ecfc-95c6-497e-afaa-6256c91a2754','kecerdasan','Kecerdasan 5',100,2,'2021-11-28 19:30:20'),(56,'ec1edf7f-ff49-4f80-bbd1-756042f30571','kepribadian','Kepribadian 3',2,2,'2021-11-28 21:22:51'),(57,'c414b2ab-b6b3-4b77-bd93-378844e519cb','kejiwaan','Kejiwaan 2',10,2,'2021-11-28 21:24:01'),(58,'0bcf53b6-852e-4542-9b58-fe414416c84f','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 21:27:23'),(59,'3c33d6fb-799e-44d7-865d-5d2c5d987a5b','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 21:31:42'),(60,'aaa567fc-d720-42c7-b0e4-59b501f05704','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 21:32:47'),(61,'251bcd43-0008-413d-9067-5a8a1752b4a8','kecerdasan','Kecerdasan 5',100,2,'2021-11-28 21:33:16'),(62,'5b95e3aa-26a8-4168-b776-7974a4624baf','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 21:35:26'),(63,'05313c74-9b07-45c2-a744-fb4f7f81fd18','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 21:35:54'),(64,'a785debc-4342-493d-97fc-91e793ceb71f','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 21:36:39'),(65,'203cb063-2dca-4202-9591-91616f6735a9','kepribadian','Kepribadian 3',2,2,'2021-11-28 21:37:20'),(66,'f2e6cae4-2c64-440b-922e-482a1ab668b5','kepribadian','Kepribadian 3',0,2,'2021-11-28 21:37:42'),(67,'702112f4-1ba7-4e71-9141-6e05b4a3752f','kejiwaan','Kejiwaan 2',10,2,'2021-11-28 21:38:23'),(68,'795041db-bd22-45be-ad0d-fb4474db9ff0','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 22:35:06'),(69,'5086efd1-f353-4b9b-b690-cdca56b03d63','kecerdasan','Kecerdasan 5',0,2,'2021-11-28 22:36:49'),(70,'51b3093f-110d-47b5-be7a-3e06cf39b2ca','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 23:01:20'),(71,'23966a78-acc5-43f9-b598-71734546f955','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 23:02:15'),(72,'10880e40-cd23-4033-ba02-53fc5d9e7522','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 23:06:04'),(73,'bba9e409-317a-44ad-b5b2-7aafb08795ab','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 23:10:32'),(74,'5a47b048-9a7c-486c-a5b5-b4236bde27d2','kepribadian','Kepribadian 4',1,2,'2021-11-28 23:15:01'),(75,'3550ffd3-2710-42bc-b436-8737c3f3c994','kejiwaan','Kejiwaan 2',10,2,'2021-11-28 23:17:07'),(76,'5219945d-9df4-4daa-85ef-b8208cf32e74','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 23:20:48'),(77,'560e57cd-61ef-481b-a958-884b0ba8c00d','kecerdasan','Kecerdasan 3',0,2,'2021-11-28 23:23:51'),(78,'0bcc149c-4422-4f10-95b4-df3978d20a3b','kecerdasan','Kecerdasan 3',0,2,'2021-11-29 08:21:14'),(79,'6ef5862e-7da7-485a-845c-80d37389441c','kepribadian','Kepribadian 4',0,2,'2021-11-29 08:25:01'),(80,'8bea364e-45a8-4e9d-85ed-c74df1d4dbe1','kejiwaan','Kejiwaan 2',0,2,'2021-11-29 08:29:14'),(81,'7926a238-3352-48e7-b0dd-e8c3c3dfc6a0','kejiwaan','Kejiwaan 2',0,2,'2021-11-29 08:30:48'),(82,'814477a7-e7b7-482e-80e5-fb47f4b5b8c4','kejiwaan','Kejiwaan 2',0,2,'2021-11-29 08:42:13'),(83,'905b5bc1-2568-4589-981c-82ed6006ed11','kejiwaan','Kejiwaan 2',0,2,'2021-11-29 08:44:02'),(84,'b06f60e3-141a-4e66-a7f9-5f4dd7132ab4','kejiwaan',NULL,0,2,'2021-11-29 08:45:08'),(85,'189a0b0b-a502-475c-ac12-856e735bbab2','kejiwaan',NULL,NULL,2,'2021-11-29 08:45:31'),(86,'fdd4f05b-beb4-43fc-913c-b5607fa79922','kejiwaan',NULL,0,2,'2021-11-29 08:45:32'),(87,'9b39e265-c052-42a2-b8c8-7dd3f23c20fa','kecerdasan','Kecerdasan 3',0,2,'2021-11-29 08:47:29'),(88,'921a8379-b801-4756-8cb4-caf2ccd2f2ef','kecerdasan','Kecerdasan 3',101,2,'2021-11-29 08:48:21'),(89,'e73347a3-91e8-4499-bb01-fc094a6aec72','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 12:20:21'),(90,'ca4e862a-dd12-44ba-9335-66ec04291b4f','kecerdasan','Kecerdasan 5',0,2,'2021-12-16 12:34:18'),(91,'b9aa7c9c-7f98-44ad-b2af-359c121826af','kecerdasan','Kecerdasan 5',0,2,'2021-12-16 12:49:37'),(92,'ba26c853-41c5-46be-9bd8-a204be118f49','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 15:41:04'),(93,'625c6c3a-ec7e-47a9-a2e2-33004a03e735','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 15:41:26'),(94,'108b7cc4-cd60-4c72-bfef-552ec6f77bb6','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 15:42:00'),(95,'4f432e73-415e-412d-a4e6-3540a7de9860','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 15:42:28'),(96,'136868f9-9b97-4ee5-9f39-cb043ed2d44b','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 15:42:44'),(97,'f9ee5d25-b403-46d8-9ab8-773b092bfe38','kecerdasan','Kecerdasan 3',2,2,'2021-12-16 15:47:05'),(98,'edf1e2ff-ad3d-4087-b539-32403bec4e49','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 15:54:25'),(99,'f19de871-c41c-47c8-88a0-47b2e6d47d3a','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 15:59:16'),(100,'47baf263-5891-4524-8080-e1f26110f792','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 16:03:05'),(101,'5a158ff7-04e2-43f9-8904-c901b9931717','kecerdasan','Kecerdasan 3',73,2,'2021-12-16 16:05:22'),(102,'b1a65d44-4813-43d7-bc7a-6f29e5ecd831','kecerdasan','Kecerdasan 3',2,2,'2021-12-16 16:09:38'),(103,'743da7af-0319-4e1c-a525-d6796a21c7c0','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 16:10:02'),(104,'7fc84875-84f1-4beb-a438-b18da3f153a5','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 16:10:50'),(105,'861ae70c-289f-49a5-9d99-84684cb0836a','kecerdasan','Kecerdasan 3',NULL,2,'2021-12-16 16:15:17'),(106,'75bdcd75-9286-4206-89a5-a1aa7a7b39d5','kecerdasan','Kecerdasan 3',NULL,2,'2021-12-16 16:15:38'),(107,'07e8d567-0df9-4b12-ba5f-71d1c6b0d4dd','kepribadian','Kepribadian 3',0,2,'2021-12-16 16:18:56'),(108,'a0d9a7be-9689-4674-abab-ea8c631bf2f8','kejiwaan','Kejiwaan 2',10,2,'2021-12-16 16:19:28'),(109,'60dd4566-a7d2-408d-9929-8bab94dfac81','kecerdasan','Kecerdasan 3',0,2,'2021-12-16 16:21:07'),(110,'254d149e-902d-49c5-9ec6-41c3c176bac2','kecerdasan','Kecerdasan 3',1,2,'2021-12-16 16:56:23'),(111,'6cd1ed84-e6a4-4f85-b97e-ee1a7e2acb92','kecerdasan','Kecerdasan 3',1,2,'2021-12-16 16:57:05');
/*!40000 ALTER TABLE `daftar_nilai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftar_nilai_kecermatan`
--

DROP TABLE IF EXISTS `daftar_nilai_kecermatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daftar_nilai_kecermatan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) DEFAULT NULL,
  `paket_soal` varchar(100) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `benar` int DEFAULT NULL,
  `salah` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `tidak_dijawab` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `daftar_nilai_kecermatan_FK` (`id_user`),
  CONSTRAINT `daftar_nilai_kecermatan_FK` FOREIGN KEY (`id_user`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftar_nilai_kecermatan`
--

LOCK TABLES `daftar_nilai_kecermatan` WRITE;
/*!40000 ALTER TABLE `daftar_nilai_kecermatan` DISABLE KEYS */;
INSERT INTO `daftar_nilai_kecermatan` VALUES (1,'ce30f8f1-15a0-44dc-9d75-d20e09e52b24','Tes Kecermatan 1','section 1',10,2,2,12,'2021-11-28 15:57:26',NULL),(2,'ce30f8f1-15a0-44dc-9d75-d20e09e52b24','Tes Kecermatan 1','section 2',10,2,2,20,'2021-11-28 15:57:26',NULL),(3,'ce30f8f1-15a0-44dc-9d75-d20e09e52b24','Tes Kecermatan 1','section 3',10,2,2,10,'2021-11-28 15:57:26',NULL),(4,'465c60ad-ea1f-4311-82a1-9916ff0afa68','Tes Kecermatan 2','section 1',10,2,2,20,'2021-11-29 15:57:26',NULL),(5,'465c60ad-ea1f-4311-82a1-9916ff0afa68','Tes Kecermatan 2','section 2',10,2,2,14,'2021-11-29 15:57:26',NULL),(6,'465c60ad-ea1f-4311-82a1-9916ff0afa68','Tes Kecermatan 2','section 3',10,2,2,20,'2021-11-29 15:57:26',NULL),(20,'25eea39b-49ae-4ce1-bb4f-20008d13fc73','Baru 123','BABABABA2',2,0,2,6,'2021-11-28 18:09:22',NULL),(21,'25eea39b-49ae-4ce1-bb4f-20008d13fc73','Baru 123','Section 2',2,0,2,102,'2021-11-28 18:09:22',NULL),(22,'25eea39b-49ae-4ce1-bb4f-20008d13fc73','Baru 123','Section 3',1,0,2,2,'2021-11-28 18:09:22',NULL),(23,'002f564d-cd54-453f-bfd3-cd973dd68409','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 18:51:38',NULL),(24,'002f564d-cd54-453f-bfd3-cd973dd68409','Baru 123','Section 2',0,2,2,0,'2021-11-28 18:51:38',NULL),(25,'002f564d-cd54-453f-bfd3-cd973dd68409','Baru 123','Section 3',0,1,2,0,'2021-11-28 18:51:38',NULL),(26,'37e1cd40-04b9-4f6e-bce2-deed8da60675','Baru 123','BABABABA2',1,1,2,5,'2021-11-28 18:53:21',NULL),(27,'37e1cd40-04b9-4f6e-bce2-deed8da60675','Baru 123','Section 2',0,2,2,0,'2021-11-28 18:53:21',NULL),(28,'37e1cd40-04b9-4f6e-bce2-deed8da60675','Baru 123','Section 3',0,1,2,0,'2021-11-28 18:53:21',NULL),(29,'1f81ac4a-cfd1-4f80-9b81-1dd16b78333e','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 18:55:17',NULL),(30,'1f81ac4a-cfd1-4f80-9b81-1dd16b78333e','Baru 123','Section 2',0,2,2,0,'2021-11-28 18:55:17',NULL),(31,'1f81ac4a-cfd1-4f80-9b81-1dd16b78333e','Baru 123','Section 3',0,1,2,0,'2021-11-28 18:55:17',NULL),(32,'49dc9149-ad26-4f51-b66c-3f4100294a41','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 18:56:35',NULL),(33,'49dc9149-ad26-4f51-b66c-3f4100294a41','Baru 123','Section 2',0,2,2,0,'2021-11-28 18:56:35',NULL),(34,'49dc9149-ad26-4f51-b66c-3f4100294a41','Baru 123','Section 3',0,1,2,0,'2021-11-28 18:56:35',NULL),(35,'58cfd7eb-4adc-4046-9f5b-00c029d92a74','Baru 123','BABABABA2',1,1,2,4,'2021-11-28 19:12:26',NULL),(36,'58cfd7eb-4adc-4046-9f5b-00c029d92a74','Baru 123','Section 2',1,1,2,3,'2021-11-28 19:12:26',NULL),(37,'58cfd7eb-4adc-4046-9f5b-00c029d92a74','Baru 123','Section 3',1,0,2,2,'2021-11-28 19:12:26',NULL),(38,'1213e8c7-76bc-4272-b655-984eca2b7aa0','Baru 123','BABABABA2',2,0,2,5,'2021-11-28 19:23:05',NULL),(39,'1213e8c7-76bc-4272-b655-984eca2b7aa0','Baru 123','Section 2',0,2,2,0,'2021-11-28 19:23:05',NULL),(40,'1213e8c7-76bc-4272-b655-984eca2b7aa0','Baru 123','Section 3',1,0,2,2,'2021-11-28 19:23:05',NULL),(41,'427de2c1-b48b-4de9-afdf-17bc887aa005',NULL,NULL,0,1,2,0,'2021-11-28 19:24:12',NULL),(42,'a6385647-c4dd-4478-acef-d6a0e5348fd8',NULL,NULL,0,1,2,0,'2021-11-28 19:24:24',NULL),(43,'f688e8ea-af0b-45f0-8ee2-9bd2c529cec5','Baru 123','BABABABA2',1,1,2,3,'2021-11-28 19:24:47',NULL),(44,'f688e8ea-af0b-45f0-8ee2-9bd2c529cec5','Baru 123','Section 2',1,1,2,3,'2021-11-28 19:24:47',NULL),(45,'f688e8ea-af0b-45f0-8ee2-9bd2c529cec5','Baru 123','Section 3',1,0,2,2,'2021-11-28 19:24:47',NULL),(46,'4ef1fd56-0e72-4b3b-ad04-44d6ba3c2e1d',NULL,NULL,0,1,2,0,'2021-11-28 19:25:17',NULL),(47,'28c42bf4-713f-4de0-a190-d620a8c88059','Baru 123','BABABABA2',2,0,2,2,'2021-11-28 19:25:41',NULL),(48,'28c42bf4-713f-4de0-a190-d620a8c88059','Baru 123','Section 2',1,1,2,1,'2021-11-28 19:25:41',NULL),(49,'28c42bf4-713f-4de0-a190-d620a8c88059','Baru 123','Section 3',1,0,2,2,'2021-11-28 19:25:41',NULL),(50,'13516011-5390-435f-a518-d768f26c61d3','Baru 123','BABABABA2',2,0,2,2,'2021-11-28 20:56:28',NULL),(51,'13516011-5390-435f-a518-d768f26c61d3','Baru 123','Section 2',1,1,2,2,'2021-11-28 20:56:28',NULL),(52,'13516011-5390-435f-a518-d768f26c61d3','Baru 123','Section 3',1,0,2,2,'2021-11-28 20:56:28',NULL),(53,'2da35132-4f30-4d31-b2fd-afe5eb643ce1','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 20:57:40',NULL),(54,'2da35132-4f30-4d31-b2fd-afe5eb643ce1','Baru 123','Section 2',0,2,2,0,'2021-11-28 20:57:40',NULL),(55,'2da35132-4f30-4d31-b2fd-afe5eb643ce1','Baru 123','Section 3',0,1,2,0,'2021-11-28 20:57:40',NULL),(56,'54bb29e0-7d68-403a-8e55-a37526626f70','Baru 123','BABABABA2',1,1,2,2,'2021-11-28 21:00:29',NULL),(57,'54bb29e0-7d68-403a-8e55-a37526626f70','Baru 123','Section 2',0,2,2,0,'2021-11-28 21:00:29',NULL),(58,'54bb29e0-7d68-403a-8e55-a37526626f70','Baru 123','Section 3',0,1,2,0,'2021-11-28 21:00:29',NULL),(59,'875004d1-4be5-4c92-b71b-85422cd22c5c','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 21:03:36',NULL),(60,'875004d1-4be5-4c92-b71b-85422cd22c5c','Baru 123','Section 2',0,2,2,0,'2021-11-28 21:03:36',NULL),(61,'875004d1-4be5-4c92-b71b-85422cd22c5c','Baru 123','Section 3',0,1,2,0,'2021-11-28 21:03:36',NULL),(62,'c4c606ca-0374-45fc-abd5-a606f58f9aa0','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 21:22:02',NULL),(63,'c4c606ca-0374-45fc-abd5-a606f58f9aa0','Baru 123','Section 2',0,2,2,0,'2021-11-28 21:22:02',NULL),(64,'c4c606ca-0374-45fc-abd5-a606f58f9aa0','Baru 123','Section 3',0,1,2,0,'2021-11-28 21:22:02',NULL),(65,'9c569c83-10fe-484f-9123-98412ed29e4d','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 21:24:34',NULL),(66,'9c569c83-10fe-484f-9123-98412ed29e4d','Baru 123','Section 2',0,2,2,0,'2021-11-28 21:24:34',NULL),(67,'9c569c83-10fe-484f-9123-98412ed29e4d','Baru 123','Section 3',0,1,2,0,'2021-11-28 21:24:34',NULL),(68,'1d54195d-5898-4c66-a326-9731f3703546','Baru 123','BABABABA2',2,0,2,3,'2021-11-28 21:29:24',NULL),(69,'1d54195d-5898-4c66-a326-9731f3703546','Baru 123','Section 2',1,1,2,1,'2021-11-28 21:29:24',NULL),(70,'1d54195d-5898-4c66-a326-9731f3703546','Baru 123','Section 3',1,0,2,2,'2021-11-28 21:29:24',NULL),(71,'de8a0fc1-d937-4401-9981-b0b31fffa0ef','Baru 123','BABABABA2',0,2,2,0,'2021-11-28 21:30:21',NULL),(72,'de8a0fc1-d937-4401-9981-b0b31fffa0ef','Baru 123','Section 2',0,2,2,0,'2021-11-28 21:30:21',NULL),(73,'de8a0fc1-d937-4401-9981-b0b31fffa0ef','Baru 123','Section 3',0,1,2,0,'2021-11-28 21:30:21',NULL),(74,'6e34eb54-14a8-40ab-801a-2978f1ef8030','Baru 123','BABABABA2',2,0,2,3,'2021-11-28 22:10:37',NULL),(75,'6e34eb54-14a8-40ab-801a-2978f1ef8030','Baru 123','Section 2',0,2,2,0,'2021-11-28 22:10:37',NULL),(76,'6e34eb54-14a8-40ab-801a-2978f1ef8030','Baru 123','Section 3',0,1,2,0,'2021-11-28 22:10:37',NULL),(77,'c91ff293-006c-4af2-a562-5b5f15ed4f00','Baru 123','BABABABA2',0,2,2,0,'2021-11-29 09:25:13',NULL),(78,'c91ff293-006c-4af2-a562-5b5f15ed4f00','Baru 123','Section 2',0,2,2,0,'2021-11-29 09:25:13',NULL),(79,'c91ff293-006c-4af2-a562-5b5f15ed4f00','Baru 123','Section 3',1,0,2,2,'2021-11-29 09:25:13',NULL),(80,'8817b47d-d024-4f81-aac3-f258682b4924','Baru 123','BABABABA2',0,2,2,0,'2021-11-29 09:27:11',NULL),(81,'8817b47d-d024-4f81-aac3-f258682b4924','Baru 123','Section 2',0,2,2,0,'2021-11-29 09:27:11',NULL),(82,'8817b47d-d024-4f81-aac3-f258682b4924','Baru 123','Section 3',0,1,2,0,'2021-11-29 09:27:11',NULL),(83,'d09824be-1ed7-4357-9213-f8c6ded75252','Baru 444','BABABABA2',0,2,2,0,'2021-11-29 09:28:48',NULL),(84,'d09824be-1ed7-4357-9213-f8c6ded75252','Baru 444','Section 2',0,2,2,0,'2021-11-29 09:28:48',NULL),(85,'d09824be-1ed7-4357-9213-f8c6ded75252','Baru 444','Section 3',0,1,2,0,'2021-11-29 09:28:48',NULL),(86,'6c544fac-d98d-481e-ab05-82c5d97567b5','Baru 555','Section 1',1,2,2,3,'2021-11-29 09:29:37',NULL),(87,'6c544fac-d98d-481e-ab05-82c5d97567b5','Baru 555','Section 2',1,2,2,3,'2021-11-29 09:29:37',NULL),(88,'6c544fac-d98d-481e-ab05-82c5d97567b5','Baru 555','Section 3',1,2,2,3,'2021-11-29 09:29:37',NULL),(89,'9da19a5a-4577-426a-82ff-3ee14f8b97d2','Baru 123','BABABABA2',2,0,2,2,'2021-11-29 09:30:54',NULL),(90,'9da19a5a-4577-426a-82ff-3ee14f8b97d2','Baru 123','Section 2',1,1,2,3,'2021-11-29 09:30:54',NULL),(91,'9da19a5a-4577-426a-82ff-3ee14f8b97d2','Baru 123','Section 3',1,0,2,2,'2021-11-29 09:30:54',NULL),(92,'78e08e36-4942-4602-980f-a1f24a946ed2','Baru 123','BABABABA2',0,4,2,0,'2021-12-16 15:43:44',NULL),(93,'78e08e36-4942-4602-980f-a1f24a946ed2','Baru 123','Section 2',0,4,2,0,'2021-12-16 15:43:44',NULL),(94,'78e08e36-4942-4602-980f-a1f24a946ed2','Baru 123','Section 3',0,3,2,0,'2021-12-16 15:43:44',NULL),(95,'57176eee-7816-43fa-aed9-c1eab8d6e335','Baru 123','BABABABA2',0,4,2,0,'2021-12-16 15:43:53',NULL),(96,'57176eee-7816-43fa-aed9-c1eab8d6e335','Baru 123','Section 2',0,4,2,0,'2021-12-16 15:43:53',NULL),(97,'57176eee-7816-43fa-aed9-c1eab8d6e335','Baru 123','Section 3',0,3,2,0,'2021-12-16 15:43:53',NULL),(98,'2c105bb0-fc74-4f47-9763-549f22485459','Baru 123','BABABABA2',1,3,2,1,'2021-12-16 15:46:13',NULL),(99,'2c105bb0-fc74-4f47-9763-549f22485459','Baru 123','Section 2',1,3,2,2,'2021-12-16 15:46:13',NULL),(100,'2c105bb0-fc74-4f47-9763-549f22485459','Baru 123','Section 3',1,2,2,2,'2021-12-16 15:46:13',NULL),(101,'21132708-5a39-472d-927d-1ca18c442ac4',NULL,NULL,0,1,2,0,'2021-12-16 15:46:23',NULL),(102,'71c892d3-1c8d-4af1-a1c6-cce8faa6ec01','Baru 123','BABABABA2',1,3,2,1,'2021-12-16 16:33:57',NULL),(103,'71c892d3-1c8d-4af1-a1c6-cce8faa6ec01','Baru 123','Section 2',1,3,2,3,'2021-12-16 16:33:57',NULL),(104,'71c892d3-1c8d-4af1-a1c6-cce8faa6ec01','Baru 123','Section 3',0,3,2,0,'2021-12-16 16:33:57',NULL),(105,'30bc593d-5e29-46af-ae2b-189b96e73dfb','Baru 123','BABABABA2',1,3,2,4,'2021-12-16 16:34:45',NULL),(106,'30bc593d-5e29-46af-ae2b-189b96e73dfb','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:34:45',NULL),(107,'30bc593d-5e29-46af-ae2b-189b96e73dfb','Baru 123','Section 3',0,3,2,0,'2021-12-16 16:34:45',NULL),(108,'66871b43-bcd5-479a-bf7c-72046ef9cabb','Baru 123','BABABABA2',0,4,2,0,'2021-12-16 16:36:17',NULL),(109,'66871b43-bcd5-479a-bf7c-72046ef9cabb','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:36:17',NULL),(110,'66871b43-bcd5-479a-bf7c-72046ef9cabb','Baru 123','Section 3',0,3,2,0,'2021-12-16 16:36:17',NULL),(111,'bb05f4bc-e149-4a83-9058-19b6b87041ce','Baru 123','BABABABA2',0,4,2,0,'2021-12-16 16:37:18',NULL),(112,'bb05f4bc-e149-4a83-9058-19b6b87041ce','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:37:18',NULL),(113,'bb05f4bc-e149-4a83-9058-19b6b87041ce','Baru 123','Section 3',0,3,2,0,'2021-12-16 16:37:18',NULL),(114,'a011889e-22bc-41ca-9ddd-b9ce9c842dd8','Baru 123','BABABABA2',0,4,2,0,'2021-12-16 16:38:05',NULL),(115,'a011889e-22bc-41ca-9ddd-b9ce9c842dd8','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:38:05',NULL),(116,'a011889e-22bc-41ca-9ddd-b9ce9c842dd8','Baru 123','Section 3',0,3,2,0,'2021-12-16 16:38:05',NULL),(117,'3a839e56-544f-4624-9fd2-fbc5b2cf14ee',NULL,NULL,0,1,2,0,'2021-12-16 16:45:14',NULL),(118,'0cc93dc4-8f06-4a19-9e4f-82bc03842c5b','Baru 123','BABABABA2',0,4,2,0,'2021-12-16 16:47:15',NULL),(119,'0cc93dc4-8f06-4a19-9e4f-82bc03842c5b','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:47:15',NULL),(120,'0cc93dc4-8f06-4a19-9e4f-82bc03842c5b','Baru 123','Section 3',1,2,2,2,'2021-12-16 16:47:15',NULL),(121,'b664c693-c2fe-4982-ab96-29670f2350de','Baru 123','BABABABA2',0,4,2,0,'2021-12-16 16:48:29',NULL),(122,'b664c693-c2fe-4982-ab96-29670f2350de','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:48:29',NULL),(123,'b664c693-c2fe-4982-ab96-29670f2350de','Baru 123','Section 3',1,2,2,2,'2021-12-16 16:48:29',NULL),(124,'7cb9ab9f-81f2-4c3f-8c74-f3a0e0c110a5','Baru 123','BABABABA2',1,3,2,3,'2021-12-16 16:54:05',NULL),(125,'7cb9ab9f-81f2-4c3f-8c74-f3a0e0c110a5','Baru 123','Section 2',1,3,2,3,'2021-12-16 16:54:05',NULL),(126,'7cb9ab9f-81f2-4c3f-8c74-f3a0e0c110a5','Baru 123','Section 3',1,2,2,2,'2021-12-16 16:54:05',NULL),(127,'7cb9ab9f-81f2-4c3f-8c74-f3a0e0c110a5','Baru 123','Section Baru',0,1,2,0,'2021-12-16 16:54:05',NULL),(128,'7cb9ab9f-81f2-4c3f-8c74-f3a0e0c110a5','Baru 123','Section Baru 2',0,1,2,0,'2021-12-16 16:54:05',NULL),(129,'7cb9ab9f-81f2-4c3f-8c74-f3a0e0c110a5','Baru 123','Section Baru 3',0,1,2,0,'2021-12-16 16:54:05',NULL),(130,'5c9f4415-f022-4d5b-b208-4446ee7252af','Baru 123','BABABABA2',1,3,2,3,'2021-12-16 16:55:06',NULL),(131,'5c9f4415-f022-4d5b-b208-4446ee7252af','Baru 123','Section 2',1,3,2,3,'2021-12-16 16:55:06',NULL),(132,'5c9f4415-f022-4d5b-b208-4446ee7252af','Baru 123','Section 3',1,2,2,2,'2021-12-16 16:55:06',NULL),(133,'5c9f4415-f022-4d5b-b208-4446ee7252af','Baru 123','Section Baru',0,1,2,0,'2021-12-16 16:55:06',NULL),(134,'5c9f4415-f022-4d5b-b208-4446ee7252af','Baru 123','Section Baru 2',0,1,2,0,'2021-12-16 16:55:06',NULL),(135,'5c9f4415-f022-4d5b-b208-4446ee7252af','Baru 123','Section Baru 3',0,1,2,0,'2021-12-16 16:55:06',NULL),(136,'2a930ce0-99cd-4519-b4cf-d33e4ed864dd','Baru 123','BABABABA2',1,3,2,1,'2021-12-16 16:57:54',NULL),(137,'2a930ce0-99cd-4519-b4cf-d33e4ed864dd','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:57:54',NULL),(138,'2a930ce0-99cd-4519-b4cf-d33e4ed864dd','Baru 123','Section 3',0,3,2,0,'2021-12-16 16:57:54',NULL),(139,'2a930ce0-99cd-4519-b4cf-d33e4ed864dd','Baru 123','Section Baru',0,1,2,0,'2021-12-16 16:57:54',NULL),(140,'2a930ce0-99cd-4519-b4cf-d33e4ed864dd','Baru 123','Section Baru 2',0,1,2,0,'2021-12-16 16:57:54',NULL),(141,'2a930ce0-99cd-4519-b4cf-d33e4ed864dd','Baru 123','Section Baru 3',0,1,2,0,'2021-12-16 16:57:54',NULL),(142,'fec6085a-1b88-482c-a2a7-dbbc52ff8cd0','Baru 123','BABABABA2',1,3,2,1,'2021-12-16 16:58:53',NULL),(143,'fec6085a-1b88-482c-a2a7-dbbc52ff8cd0','Baru 123','Section 2',0,4,2,0,'2021-12-16 16:58:53',NULL),(144,'fec6085a-1b88-482c-a2a7-dbbc52ff8cd0','Baru 123','Section 3',0,3,2,0,'2021-12-16 16:58:53',NULL),(145,'fec6085a-1b88-482c-a2a7-dbbc52ff8cd0','Baru 123','Section Baru',0,1,2,0,'2021-12-16 16:58:53',NULL),(146,'fec6085a-1b88-482c-a2a7-dbbc52ff8cd0','Baru 123','Section Baru 2',0,1,2,0,'2021-12-16 16:58:53',NULL),(147,'fec6085a-1b88-482c-a2a7-dbbc52ff8cd0','Baru 123','Section Baru 3',0,1,2,0,'2021-12-16 16:58:53',NULL),(148,'0278a1ec-99fa-4660-b203-066feff0e78a','Baru 123','BABABABA2',1,2,2,1,'2021-12-16 17:05:49',NULL),(149,'0278a1ec-99fa-4660-b203-066feff0e78a','Baru 123','Section 2',0,0,2,0,'2021-12-16 17:05:49',NULL),(150,'0278a1ec-99fa-4660-b203-066feff0e78a','Baru 123','Section 3',0,1,2,0,'2021-12-16 17:05:49',NULL),(151,'0278a1ec-99fa-4660-b203-066feff0e78a','Baru 123','Section Baru',0,1,2,0,'2021-12-16 17:05:49',NULL),(152,'0278a1ec-99fa-4660-b203-066feff0e78a','Baru 123','Section Baru 2',0,0,2,0,'2021-12-16 17:05:49',NULL),(153,'0278a1ec-99fa-4660-b203-066feff0e78a','Baru 123','Section Baru 3',0,1,2,0,'2021-12-16 17:05:49',NULL),(154,'8f63ac11-2ac4-4378-ac6f-3caece9699a2','Baru 123','BABABABA2',0,3,2,0,'2021-12-16 17:06:24',NULL),(155,'8f63ac11-2ac4-4378-ac6f-3caece9699a2','Baru 123','Section 2',1,2,2,99,'2021-12-16 17:06:24',NULL),(156,'8f63ac11-2ac4-4378-ac6f-3caece9699a2','Baru 123','Section 3',0,0,2,0,'2021-12-16 17:06:24',NULL),(157,'8f63ac11-2ac4-4378-ac6f-3caece9699a2','Baru 123','Section Baru',0,0,2,0,'2021-12-16 17:06:24',NULL),(158,'8f63ac11-2ac4-4378-ac6f-3caece9699a2','Baru 123','Section Baru 2',0,0,2,0,'2021-12-16 17:06:24',NULL),(159,'8f63ac11-2ac4-4378-ac6f-3caece9699a2','Baru 123','Section Baru 3',0,0,2,0,'2021-12-16 17:06:24',NULL),(160,'5eaceb79-ed42-4d51-a858-5d7ee9c58133','Baru 123','BABABABA2',1,2,2,3,'2021-12-16 17:06:59',NULL),(161,'5eaceb79-ed42-4d51-a858-5d7ee9c58133','Baru 123','Section 2',0,2,2,0,'2021-12-16 17:06:59',NULL),(162,'5eaceb79-ed42-4d51-a858-5d7ee9c58133','Baru 123','Section 3',0,0,2,0,'2021-12-16 17:06:59',NULL),(163,'5eaceb79-ed42-4d51-a858-5d7ee9c58133','Baru 123','Section Baru',0,0,2,0,'2021-12-16 17:06:59',NULL),(164,'5eaceb79-ed42-4d51-a858-5d7ee9c58133','Baru 123','Section Baru 2',0,0,2,0,'2021-12-16 17:06:59',NULL),(165,'5eaceb79-ed42-4d51-a858-5d7ee9c58133','Baru 123','Section Baru 3',0,0,2,0,'2021-12-16 17:06:59',NULL),(166,'565ebb5b-77ce-48b7-893a-03f2a9ca0364','Baru 123','BABABABA2',1,2,2,1,'2021-12-16 17:16:38',1),(167,'565ebb5b-77ce-48b7-893a-03f2a9ca0364','Baru 123','Section 2',0,0,2,0,'2021-12-16 17:16:38',4),(168,'565ebb5b-77ce-48b7-893a-03f2a9ca0364','Baru 123','Section 3',0,0,2,0,'2021-12-16 17:16:38',3),(169,'565ebb5b-77ce-48b7-893a-03f2a9ca0364','Baru 123','Section Baru',0,0,2,0,'2021-12-16 17:16:38',1),(170,'565ebb5b-77ce-48b7-893a-03f2a9ca0364','Baru 123','Section Baru 2',0,0,2,0,'2021-12-16 17:16:38',1),(171,'565ebb5b-77ce-48b7-893a-03f2a9ca0364','Baru 123','Section Baru 3',0,0,2,0,'2021-12-16 17:16:38',1),(172,'f472bc93-46c8-4ecb-81ea-0c5c3ef6312a','Baru 123','BABABABA2',0,0,2,0,'2021-12-16 18:40:29',4),(173,'f472bc93-46c8-4ecb-81ea-0c5c3ef6312a','Baru 123','Section 2',0,0,2,0,'2021-12-16 18:40:29',4),(174,'f472bc93-46c8-4ecb-81ea-0c5c3ef6312a','Baru 123','Section 3',1,2,2,2,'2021-12-16 18:40:29',0),(175,'f472bc93-46c8-4ecb-81ea-0c5c3ef6312a','Baru 123','Section Baru',0,1,2,0,'2021-12-16 18:40:29',0),(176,'f472bc93-46c8-4ecb-81ea-0c5c3ef6312a','Baru 123','Section Baru 2',0,0,2,0,'2021-12-16 18:40:29',1),(177,'f472bc93-46c8-4ecb-81ea-0c5c3ef6312a','Baru 123','Section Baru 3',0,1,2,0,'2021-12-16 18:40:29',0),(178,'3ec7a1b8-c4fe-43cd-9722-154334d97986','Baru 123','BABABABA2',1,3,2,1,'2021-12-16 19:02:45',0),(179,'3ec7a1b8-c4fe-43cd-9722-154334d97986','Baru 123','Section 2',0,0,2,0,'2021-12-16 19:02:45',4),(180,'3ec7a1b8-c4fe-43cd-9722-154334d97986','Baru 123','Section 3',0,0,2,0,'2021-12-16 19:02:45',3),(181,'3ec7a1b8-c4fe-43cd-9722-154334d97986','Baru 123','Section Baru',0,0,2,0,'2021-12-16 19:02:45',1),(182,'3ec7a1b8-c4fe-43cd-9722-154334d97986','Baru 123','Section Baru 2',0,0,2,0,'2021-12-16 19:02:45',1),(183,'3ec7a1b8-c4fe-43cd-9722-154334d97986','Baru 123','Section Baru 3',0,0,2,0,'2021-12-16 19:02:45',1),(184,'f01727a7-4c0a-4e5a-9f14-adbd240d2e3f','Baru 123','BABABABA2',2,2,2,4,'2021-12-17 08:07:42',0),(185,'f01727a7-4c0a-4e5a-9f14-adbd240d2e3f','Baru 123','Section 2',0,0,2,0,'2021-12-17 08:07:42',4),(186,'f01727a7-4c0a-4e5a-9f14-adbd240d2e3f','Baru 123','Section 3',0,0,2,0,'2021-12-17 08:07:42',3),(187,'f01727a7-4c0a-4e5a-9f14-adbd240d2e3f','Baru 123','Section Baru',0,0,2,0,'2021-12-17 08:07:42',1),(188,'f01727a7-4c0a-4e5a-9f14-adbd240d2e3f','Baru 123','Section Baru 2',0,0,2,0,'2021-12-17 08:07:42',1),(189,'f01727a7-4c0a-4e5a-9f14-adbd240d2e3f','Baru 123','Section Baru 3',0,0,2,0,'2021-12-17 08:07:42',1);
/*!40000 ALTER TABLE `daftar_nilai_kecermatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecerdasan_answer`
--

DROP TABLE IF EXISTS `kecerdasan_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kecerdasan_answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_question` int NOT NULL,
  `secureId` varchar(36) NOT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `symbol` varchar(100) NOT NULL,
  `type` enum('text','image') NOT NULL DEFAULT 'text',
  PRIMARY KEY (`id`),
  KEY `kecerdasan_answer_FK` (`id_question`),
  CONSTRAINT `kecerdasan_answer_FK` FOREIGN KEY (`id_question`) REFERENCES `kecerdasan_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=627 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecerdasan_answer`
--

LOCK TABLES `kecerdasan_answer` WRITE;
/*!40000 ALTER TABLE `kecerdasan_answer` DISABLE KEYS */;
INSERT INTO `kecerdasan_answer` VALUES (379,45,'ffee10b3-51d5-4903-b2de-a6b1fe562d69','Jawaban no 1',0,'A','text'),(380,45,'d3793b54-eeff-4472-9916-6f623a6016cd','Jawaban no 2',0,'B','text'),(381,45,'2e9dc4f2-cebb-44c5-8a44-acdcf738f342','Jawaban no 3',0,'C','text'),(382,45,'5a22aadc-ec00-4b59-963c-3a47796e9b91','Jawaban no 4',100,'D','text'),(383,45,'5830ccff-c72e-4bd9-b0f7-da791c8cae3b','Jawaban no 5',0,'E','text'),(384,46,'cbbe04db-fa83-45b1-a251-19a8a5f0d786','Jawaban 1',0,'A','text'),(385,46,'1c2a68f5-52d7-4c26-8200-3d78a4821b59','Jawaban 2',0,'B','text'),(386,46,'d7435936-f8e0-4a99-86d6-fc257d0fcafe','Jawaban 3',100,'C','text'),(387,46,'45ddefc1-d00f-432d-8a60-bd88f2739c55','Jawaban 4',0,'D','text'),(388,46,'dcfb5445-7966-49d2-9709-f15e8b9bdc4e','Jawaban 5',0,'E','text'),(389,47,'61710faa-9b01-487d-90bf-beaa9b4219bb','Answer 1',0,'A','text'),(390,47,'53efbd01-5707-4041-986f-e53b9971b8d9','Answer 2',0,'B','text'),(391,47,'4dd88b03-2ba9-4a22-8c39-27ae1dbfebd4','Answer 3',0,'C','text'),(392,47,'8eb71e35-0f24-4987-946f-ca36377c975e','Answer 4',0,'D','text'),(393,47,'14915c9c-9b53-41a2-9836-9ba3d4bc8e60','Answer 5',0,'E','text'),(413,1,'45aa88f9-cb95-4910-af75-c97150228a35','6 Gram',1,'A','text'),(414,1,'305eb89d-b0cc-4e56-b632-f2104fd0e83c','8 Gram',0,'B','text'),(415,1,'0ed430a1-f73f-444e-9ce8-ebfbb7f85fc8','12 Gram',0,'C','text'),(416,1,'443e6ee3-5747-481f-9bbd-5c6dfafcb305','16 Gram',0,'D','text'),(417,51,'91e4eb3e-5f95-497c-907e-c09ba1c0e46a','4',0,'A','text'),(418,51,'2704f85d-8363-440f-8fe9-08642eef4e5b','4',0,'B','text'),(419,51,'8d868da3-9469-4afe-86ec-4403d7f4e0c6','4',0,'C','text'),(420,51,'16c87fa2-93c1-4488-b676-ecca883e046c','4',0,'D','text'),(421,51,'5c186961-0375-4d7e-8d8a-7742b0548c24','4',0,'E','text'),(432,54,'9491a2a1-f1c8-4ab6-bb5e-6113af96132d',NULL,0,'A','text'),(433,54,'21f8bd40-de01-49b2-b7f6-470f5b0e68f0',NULL,0,'B','text'),(434,54,'136069af-e033-4f2f-82ae-6f843cf0d873',NULL,0,'C','text'),(435,54,'ca31b694-6248-4615-bc83-ef06fa815494',NULL,0,'D','text'),(436,54,'27839a90-47e1-4a38-9b69-1c728649677c',NULL,0,'E','text'),(437,55,'6aa05b7d-327a-40b0-a487-d095e2bc6118',NULL,0,'A','text'),(438,55,'9a6518d2-e017-4d21-8f1c-49cc863b793d',NULL,0,'B','text'),(439,55,'bb1995a2-924e-4500-b22d-fa56ee625f0a',NULL,0,'C','text'),(440,55,'4c487804-3e89-4b3d-9746-cc326ea2207f',NULL,0,'D','text'),(441,55,'ab7ba875-3054-4fb1-8f62-3ae1dad84124',NULL,0,'E','text'),(442,56,'402dbb0a-b518-4b51-a8a1-4de5207f7256',NULL,0,'A','text'),(443,56,'2f7eb675-3db0-40f6-9596-393142331c56',NULL,0,'B','text'),(444,56,'e0a28a8f-0956-4fa7-bf00-9f7320b6d5fa',NULL,0,'C','text'),(445,56,'b33c50b9-1620-4d0a-a670-2c2a43576094',NULL,0,'D','text'),(446,56,'7fe4b124-6912-49e5-8870-91d402043d92',NULL,0,'E','text'),(457,57,'3f106e1c-d581-418c-b92e-5e8ba9f6ba49',NULL,0,'A','text'),(458,57,'c0b9eb9d-9e9a-4429-acef-024e344d2bad',NULL,0,'B','text'),(459,57,'a1e4056c-7156-41a6-bcd1-152a48d8ccf7',NULL,0,'C','text'),(460,57,'b29d3589-361b-4d66-b16e-f430ad5335e2',NULL,0,'D','text'),(461,57,'261484e2-4495-4c2a-8b5d-c6493edc303f',NULL,0,'E','text'),(462,58,'b376ce54-f160-48c9-ac86-c753da7d5011','Benar',0,'A','text'),(463,58,'34a040e0-dca4-4723-8afd-95877a856dcd','Benar',0,'B','text'),(464,58,'3415935c-c9d9-40b6-9f87-027a4644ba95','Benar',0,'C','text'),(465,58,'9159591d-5fc3-41ad-bc35-9df1d20fdadc','Benar',0,'D','text'),(466,58,'163584dc-47f3-4c4e-9ecb-f79054de815b','Salah',1,'E','text'),(467,59,'00beeff6-adeb-4f17-8723-3fd0bf37686b','Benar',0,'A','text'),(468,59,'8cbd7f4a-e07c-43bd-b6b8-8bd2cd7f2dfd','Benar',0,'B','text'),(469,59,'6f2dbb6b-98ed-43d0-b303-74f5255cff63','Benar',0,'C','text'),(470,59,'3d2e0ce5-0b11-4b2c-a488-b2773b5b5c04','Benar',0,'D','text'),(471,59,'b898650b-846c-475c-b694-ccad0b2033d3','Salah',100,'E','text'),(472,60,'c044792a-91b2-432d-bae5-42f535a84ae7','Benar',0,'A','text'),(473,60,'22c2cd8c-1bc8-4c6c-88a6-c65485b4aa29','Benar',0,'B','text'),(474,60,'412ae706-dd22-4fb1-9396-165a511b80ed','Benar',0,'C','text'),(475,60,'59962444-e451-4659-9b68-0c54ae1033b9','Benar',0,'D','text'),(476,60,'36832fc6-6880-4afb-a5e8-5fd3d3cfaac3','Salah',1,'E','text'),(477,61,'1eeb58ab-1746-4964-9e35-f3f6e6a3a5d7','Benar',0,'A','text'),(478,61,'b9fd30df-43e0-45eb-9263-9632b8a3604d','Benar',0,'B','text'),(479,61,'5600adb9-6675-493b-bc6c-76a7cf82c274','Benar',0,'C','text'),(480,61,'e129560a-9580-414c-8536-552f55ad277f','Benar',0,'D','text'),(481,61,'ab472494-fcd2-4afc-a6ce-5d8be0ab995f','Salah',10,'E','text'),(482,62,'711e2e37-25df-40b5-84c0-8e1d83cc2bcc','57718aaa-9952-415c-8292-038c314c7461',0,'A','text'),(483,62,'4a8798f1-bb62-45b7-a84c-1da430e20ae1','57718aaa-9952-415c-8292-038c314c7461',0,'B','text'),(484,62,'35542852-b3a8-435f-ae3b-4ac0b858b956','57718aaa-9952-415c-8292-038c314c7461',0,'C','text'),(485,62,'872121c9-8a42-4af8-ae48-4e2da1f23126','57718aaa-9952-415c-8292-038c314c7461',0,'D','text'),(486,62,'11cc48c8-6a31-464b-b0d1-76a08b42b190','57718aaa-9952-415c-8292-038c314c7461',10,'E','text'),(497,63,'7325539b-6418-4cc2-abaf-bf0701e2d398','Benar',0,'A','text'),(498,63,'51f5fee0-7504-45ed-89b1-bafd11311ee9','Benar',0,'B','text'),(499,63,'84d4ff29-b3fc-467e-8038-15c4f9a34c79','Benar',0,'C','text'),(500,63,'3458a2e1-402c-4b99-895f-f1698661b8c9','Benar',0,'D','text'),(501,63,'26b0840a-1e58-49a6-86bb-2015ad269119','Salah',100,'E','text'),(622,78,'fd881c8a-05b3-4c22-938f-30bcbace01bc','69 Gram',100,'A','text'),(623,78,'be65cf4d-87bd-4383-9444-6ab79150d540','2 Gram',2,'B','text'),(624,78,'27c24a83-6f0f-4801-8402-3d5f1d174f77','30 Gram',73,'C','text'),(625,78,'498cb526-baee-4785-afdc-673ef56895cc','99 Gram',23,'D','text'),(626,78,'2de0a1c1-ab00-44d9-b737-bfd3593f7447','60 Gram',2,'E','text');
/*!40000 ALTER TABLE `kecerdasan_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecerdasan_group`
--

DROP TABLE IF EXISTS `kecerdasan_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kecerdasan_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `time` int DEFAULT NULL,
  `is_active` tinyint NOT NULL DEFAULT '0',
  `is_random` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecerdasan_group`
--

LOCK TABLES `kecerdasan_group` WRITE;
/*!40000 ALTER TABLE `kecerdasan_group` DISABLE KEYS */;
INSERT INTO `kecerdasan_group` VALUES (3,'2b54af84-6894-4d62-af1d-04c815667e40','Kecerdasan 3','Ini adalah contoh description',1,1,0),(39,'57718aaa-9952-415c-8292-038c314c7461','Kecerdasan 5','Kecerdasan 5 Group',90,1,0),(40,'91c92985-149e-4f83-90ca-eaf795333e29','Kecerdasan Baru Edit','Ini adalah contoh description',23,0,0);
/*!40000 ALTER TABLE `kecerdasan_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecerdasan_question`
--

DROP TABLE IF EXISTS `kecerdasan_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kecerdasan_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text,
  `secureId` varchar(36) NOT NULL,
  `id_group` int DEFAULT NULL,
  `type` enum('text','image') NOT NULL DEFAULT 'text',
  PRIMARY KEY (`id`),
  KEY `kecerdasan_question_FK` (`id_group`),
  CONSTRAINT `kecerdasan_question_FK` FOREIGN KEY (`id_group`) REFERENCES `kecerdasan_group` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecerdasan_question`
--

LOCK TABLES `kecerdasan_question` WRITE;
/*!40000 ALTER TABLE `kecerdasan_question` DISABLE KEYS */;
INSERT INTO `kecerdasan_question` VALUES (1,'Pertanyaan Testing','a9e9e79b-5d29-42fc-ae35-6139619ff2c5',3,'text'),(45,'Pertanyaan nomor 1','80bbb0d8-6f76-4f81-9b62-6878becfbaae',NULL,'text'),(46,'Saafe and sound bracket','008e5b7a-1b94-4195-9ecd-ee56bafa2cce',3,'text'),(47,'Goal','160a13fc-f61e-44a3-9db7-574731c49846',3,'text'),(51,'','2e0db066-6a7a-40f3-bcd7-60e6b2f8e8d5',3,'text'),(54,'qweqwe','82306564-f5d7-4cd7-9a06-02d5316789e4',3,'text'),(55,'123123','c5624c64-fb6b-4066-a5cf-a7e9466ec781',3,'text'),(56,'222','dce7d760-4f87-4a71-bc89-0edbfcd5f1d3',3,'text'),(57,'123123','c3493360-77ff-470b-93cd-ed20fc4e2855',3,'text'),(58,'Pertanyaan ini jawabannya E','652eae12-8f55-4bfe-8ae9-709cf2cdbcd0',NULL,'text'),(59,'Pertanyaan ini jawabannya E','0f505693-ce45-4fb0-8278-7738756c410d',NULL,'text'),(60,'Pertanyaan ini jwabannya E','97398abf-7cd5-452b-9f29-7daeca74d7f4',NULL,'text'),(61,'Pertanyaan ini jawabannya E','476948aa-9253-4675-8d09-418f2d2a1ee0',NULL,'text'),(62,'57718aaa-9952-415c-8292-038c314c7461','b420b704-ceea-4853-bf54-c05d2fe3963a',NULL,'text'),(63,'Pertanyaan ini jawabannya E','96baa213-c5f1-415f-a868-9a26d6b41a82',39,'text'),(78,'SAFE AND SOUND','455f0296-03c4-444e-b5e3-08cda378bf12',3,'text');
/*!40000 ALTER TABLE `kecerdasan_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecermatan_answer`
--

DROP TABLE IF EXISTS `kecermatan_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kecermatan_answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_question` int NOT NULL,
  `secureId` varchar(36) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kecermatan_answer_FK` (`id_question`),
  CONSTRAINT `kecermatan_answer_FK` FOREIGN KEY (`id_question`) REFERENCES `kecermatan_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_answer`
--

LOCK TABLES `kecermatan_answer` WRITE;
/*!40000 ALTER TABLE `kecermatan_answer` DISABLE KEYS */;
INSERT INTO `kecermatan_answer` VALUES (41,17,'85f48f0f-6b16-4237-928d-297b07cc98aa',69,'A'),(42,17,'c8c3c02a-913f-46e2-8522-fc2825342505',2,'B'),(43,17,'0a72635a-a1f3-4298-8736-13f0728903b9',2,'C'),(44,17,'5778ceea-511f-455a-a4d2-81e2baecd083',2,'D'),(45,17,'7d10e3bd-37db-415f-98ae-6ecaa587b61c',9999,'E'),(91,18,'06703785-9bce-4c90-8142-01b570af9cdd',69,'A'),(92,18,'95dc2870-e875-4693-921e-3ba581c08bf3',2,'B'),(93,18,'d5d34fdb-64b7-470a-97e4-2129c2d94991',2,'C'),(94,18,'97bc97ae-92c4-4bf8-bd35-f6adb6b52dc4',2,'D'),(95,18,'1915090a-26d4-4162-9ff4-ab16a7f56b9f',9999,'E'),(121,19,'afbb8d43-894c-4c53-a057-1241019888c0',69,'A'),(122,19,'349ca4f9-7a49-44be-97b8-ee417e0bcd16',2,'B'),(123,19,'12fcc451-af42-42f0-ba63-714bcf6e2031',2,'C'),(124,19,'c9a92d26-de9f-43a1-9d9f-64744ec17370',2,'D'),(125,19,'279823ea-b975-49b9-ab1d-024a57548952',9999,'E'),(126,19,'1358b5d0-821a-45f2-83d8-071ef95c45d8',69,'A'),(127,19,'a578e08e-417b-43c1-9e38-0e71a0f049e1',2,'B'),(128,19,'a1a789e8-d99a-43de-82d8-75f8966834b9',2,'C'),(129,19,'d4d6e8b7-ac45-4310-ad50-34d68caf5c49',2,'D'),(130,19,'4298f9a8-645f-42bd-863f-384a0b57b6dc',9999,'E'),(131,19,'fdf5fa2c-5e82-4760-ae0e-67cc67b1ee98',69,'A'),(132,19,'21960177-643f-4f98-a770-5211cdbdb5de',2,'B'),(133,19,'a99ef14f-631b-414b-992c-e5586c0ab6d0',2,'C'),(134,19,'698371e0-d81a-4b80-b688-5a471d7d7375',2,'D'),(135,19,'4b7f1d33-811d-47de-ad1c-03d4ff11c443',9999,'E'),(156,20,'41aea6c0-ef8e-4767-910a-c67fb323d63e',0,'A'),(157,20,'a76a407d-c476-4e42-b50d-5cb003a63bef',0,'B'),(158,20,'53b5b46e-5539-4c9b-9439-d73a904f741c',0,'C'),(159,20,'658c9ea9-bc7a-467e-9f81-cb3661551201',0,'D'),(160,20,'1e70385c-87c3-46db-a26c-70000155c397',2,'E'),(161,21,'48dc9d91-9e5a-4468-a8d2-dac21178b2fa',1,'A'),(162,21,'ff38b9c2-ff73-48c3-aa4d-462feae84019',1,'B'),(163,21,'2f3207c3-b553-45da-9cde-a0a1ebda282f',1,'C'),(164,21,'7e1f4458-6a98-4a86-be49-ba04394cb4b0',1,'D'),(165,21,'3bc2dc38-2b93-4669-9f7c-a953d9bf80af',1,'E'),(166,22,'64b44843-b955-4001-b5b6-2a1722174ec0',0,'A'),(167,22,'51239773-90f1-4352-abee-965389b3310b',0,'B'),(168,22,'a21cb1ad-f7df-4871-8b18-0ca304d7b801',0,'C'),(169,22,'7b0456a9-2f9b-4c29-87e0-947de3407db9',0,'D'),(170,22,'1e3f43e0-b9a8-4b57-ba6a-4397d2251922',0,'E'),(171,23,'450a2597-381c-4e34-9673-2c8ba75d4d6c',0,'A'),(172,23,'fc8b6b5f-e1f5-494a-bf3f-0f9b4e2586f9',0,'B'),(173,23,'fd9292be-bcab-45e0-a520-5ce9b0b4d1c7',0,'C'),(174,23,'a3e48bc6-d30e-4bae-80d6-b6b683b90a10',0,'D'),(175,23,'1db459f4-dd58-4f71-b63b-9ed53a07dd5a',0,'E'),(226,34,'e1b19cc8-ed1f-4ec7-a30b-3faf5b092057',0,'A'),(227,34,'6b80ee56-2b87-4724-9268-7b081ebdf69d',0,'B'),(228,34,'9d329291-9444-490d-9925-493372d50d57',0,'C'),(229,34,'1b053214-e342-4faa-a85f-b055754847d5',0,'D'),(230,34,'a6c77485-2ca6-471f-8a9c-9e5df307bc4e',0,'E'),(231,25,'c8a1719d-3f60-438d-a0ce-70db2f42e0c6',1,'A'),(232,25,'720df527-25cd-47a5-9f30-e90cb0004f93',0,'B'),(233,25,'97c8f72c-4e72-494d-b8c4-ef8fb7945d61',0,'C'),(234,25,'49f8039d-a98f-4124-82a9-2f455b81c013',0,'D'),(235,25,'9d82b444-652d-4030-a59f-6dca11ef4f98',0,'E'),(236,32,'232b3192-94c5-44ec-9c32-ddebb9034b42',1,'A'),(237,32,'ea6b1091-93f5-49be-9028-3ed0abe5f5c3',2,'B'),(238,32,'ca25810a-1173-439d-8a86-de10ea940662',3,'C'),(239,32,'8c7b0c21-b8d1-4694-a774-18feeba35d72',4,'D'),(240,32,'ef17ffb6-2070-4b4c-b1d8-5a8ced5bb61a',5,'E'),(241,35,'24b429f2-02ae-47fa-8e39-b5e412f81c11',0,'A'),(242,35,'ee5df067-8e00-4141-a759-d6a6d938340f',0,'B'),(243,35,'67b414c4-6017-43cb-a600-d654243c6fdc',0,'C'),(244,35,'7405dfb1-ea55-4992-85f6-670a48d8a1c0',0,'D'),(245,35,'2aba576e-9271-42be-879d-240d527aa712',99,'E'),(246,36,'7ef91d80-7828-4306-a0ff-8c18b4e6578a',1,'A'),(247,36,'ef452167-b702-4a41-843b-6ad3c31b54b0',2,'B'),(248,36,'584484da-d52d-423b-bc2e-8037d7fcff28',3,'C'),(249,36,'da191322-8744-4afe-a9b8-d7bad30886b8',3,'D'),(250,36,'5581bacd-7add-4c95-87d4-b5107a5b5144',3,'E'),(251,37,'26e0b772-9179-4af5-9fc8-b1127b9c2e5b',2,'A'),(252,37,'19929cae-1f65-49bc-b5ea-6116306c2a3f',2,'B'),(253,37,'8fe75c49-1f72-4e12-b2d6-66545180028a',2,'C'),(254,37,'0f5317c0-43b1-459b-99d2-e165b85aaca0',2,'D'),(255,37,'14690c90-9538-4131-a9bd-65e983f8153a',2,'E'),(256,38,'c01882d8-3a95-47ca-aae9-3ef45086dad2',0,'A'),(257,38,'5d15f7df-8677-4a11-a3f4-c78590783737',0,'B'),(258,38,'1ad34a2a-88cd-48be-80c7-12afa52acaf0',0,'C'),(259,38,'3269de07-d120-46b2-b5ac-e25df107041e',0,'D'),(260,38,'dac6d561-70ca-4482-97e9-9123a4ddc196',0,'E'),(261,39,'d57203f6-ccfe-447d-b109-519f2d5a3e6c',0,'A'),(262,39,'124c55af-f1aa-46b2-bf63-2f0d77a122cb',0,'B'),(263,39,'7ba88e6b-3dd0-4583-a256-d97d83999689',0,'C'),(264,39,'c6fa002a-48ea-44f8-adac-11a8adaf2e6f',1,'D'),(265,39,'0a75aad7-424e-40fc-a43a-522d89353374',0,'E'),(266,40,'e9952e5e-8a48-4ce1-8a43-0cf25f942484',0,'A'),(267,40,'98106d74-3b0e-45d2-b8d3-69bff8acad86',0,'B'),(268,40,'103689a4-666e-4d09-890f-835757bc214e',0,'C'),(269,40,'ab6be229-d94e-414b-a9aa-076ef278f1df',0,'D'),(270,40,'06fea02a-1c4c-411e-82e0-968284784c77',0,'E'),(271,41,'733ded56-42dc-416b-be98-11b3b9cc447d',0,'A'),(272,41,'72702dd7-b25f-456b-a363-e1c8e1459e47',0,'B'),(273,41,'7b6e038a-fb4e-4dfa-a7b7-89571cf555e9',0,'C'),(274,41,'e94eb95d-d695-4c03-b993-0bd26451816c',0,'D'),(275,41,'59711705-4eb6-4a07-95d0-86cc729f2423',0,'E'),(276,42,'07fd70ec-941f-4ab4-8c10-d9dca0b9abea',0,'A'),(277,42,'0558b7a3-fd0a-4cdf-bbe5-a7219ae6b41d',0,'B'),(278,42,'440101ef-b08a-4da2-aa09-ab09b7374d6d',0,'C'),(279,42,'c57f34f9-72c2-42ea-bc1d-d4bae059db1f',0,'D'),(280,42,'5f571453-3483-4a4d-b4d1-4473e7a1bb2c',0,'E'),(281,43,'6ca0f2cc-7bc3-41a6-abec-9403044be9d7',0,'A'),(282,43,'389deb24-9dea-415a-a6d8-8898850bce7c',0,'B'),(283,43,'b8d6c371-7d18-49d3-9534-ffc6bef54f4b',0,'C'),(284,43,'49d62c1b-42b7-4eed-869c-6604ddc73245',0,'D'),(285,43,'7b761fa9-5849-4c4b-a8c0-3727ee056f36',0,'E'),(286,44,'e80591e8-65e8-4cfe-b5b8-03f96993f0f4',0,'A'),(287,44,'1ae95a8e-5d2e-4db8-a8c9-0943b2def968',0,'B'),(288,44,'f569e9e2-63d6-483c-b1b1-9096bda2c8a0',0,'C'),(289,44,'5ec72143-0061-477a-9cb1-fa595c967e81',0,'D'),(290,44,'a955e868-ced5-48bd-91f9-db92077881a0',0,'E'),(291,45,'a5aff983-0606-4728-ab58-821c08556976',0,'A'),(292,45,'8da9e0b6-3815-45c6-898a-2b986d94b80b',0,'B'),(293,45,'d2e5f90c-759c-4fd5-a0cf-a92513753527',0,'C'),(294,45,'cd5f773c-745f-42dd-afbf-53dc4e59d14c',0,'D'),(295,45,'891f5873-8948-4fe8-adc8-afd7f759f2c0',0,'E'),(296,46,'922592d4-e5aa-4d9a-81ec-b15a62581bdc',0,'A'),(297,46,'b70dbf47-3e08-4e66-9cfc-bb94ab903c06',0,'B'),(298,46,'a4dbc4dd-f1b3-45ed-842a-5609b9fac451',0,'C'),(299,46,'cc97b95b-eb9b-4176-a823-4eaae44d80bc',0,'D'),(300,46,'e7691723-61a8-4d8e-8741-e53534925e81',0,'E'),(301,47,'f3990336-8920-40e3-9795-323310d718d5',0,'A'),(302,47,'27c71a86-84bc-422b-8866-b0f033dac567',0,'B'),(303,47,'dd78534c-07fb-4c91-b23a-2fc63e10a011',0,'C'),(304,47,'075fefd6-2145-46db-8283-7830d9e30036',0,'D'),(305,47,'4e5f8496-a7a0-49b0-9ba0-d5bade119e78',0,'E');
/*!40000 ALTER TABLE `kecermatan_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecermatan_group`
--

DROP TABLE IF EXISTS `kecermatan_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kecermatan_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` int DEFAULT NULL,
  `is_active` tinyint NOT NULL DEFAULT '0',
  `is_random` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_group`
--

LOCK TABLES `kecermatan_group` WRITE;
/*!40000 ALTER TABLE `kecermatan_group` DISABLE KEYS */;
INSERT INTO `kecermatan_group` VALUES (3,'65e39eef-29b3-4d41-9ce1-9ccdb40fbcff','Kecermatan Baru 44','Ini adalah contoh description 44',23,0,1),(14,'700394cf-14c6-4379-bebe-bb2eff17fda6','Baru 123','Baru 123',100,1,1),(21,'4b2f71f6-9f5a-4291-9b57-75b210bcc2e4','Detik','Detik Desc',80,0,0);
/*!40000 ALTER TABLE `kecermatan_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecermatan_question`
--

DROP TABLE IF EXISTS `kecermatan_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kecermatan_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_section` int NOT NULL,
  `question` varchar(100) DEFAULT NULL,
  `secureId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kecermatan_question_FK` (`id_section`),
  CONSTRAINT `kecermatan_question_FK` FOREIGN KEY (`id_section`) REFERENCES `kecermatan_section` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_question`
--

LOCK TABLES `kecermatan_question` WRITE;
/*!40000 ALTER TABLE `kecermatan_question` DISABLE KEYS */;
INSERT INTO `kecermatan_question` VALUES (17,16,'69, 1, 1, 3','862996c1-9ac9-459f-9891-15ad5b7e2021'),(18,16,'10, 1, 1, 3','7da85b50-94d8-4d47-aaf4-3c8c827f4e1c'),(19,16,'10, 1, 1, 3','894eecf5-fddd-4d7b-8be4-297ac0feebc8'),(20,17,'2, 3, 4, 5','a1efb83a-e581-4d8d-bac6-9c5094fb2531'),(21,18,'1, 2, 3, 4','102beed1-9bf3-4348-bcdb-bb13756cc41a'),(22,22,'0, 0, 0, 0','36b748ff-1876-491a-9615-d1f6fe4a1de5'),(23,23,'0, 0, 0, 0','547c72a0-ecc6-43b5-a15c-775250a31ad5'),(25,26,'5, 4, 3, 2','8e508a31-fdeb-449a-ae93-d2d422caec20'),(32,26,'1, 2, 3, 4','82aa2b05-9bf1-4532-ad0e-7c40866ee5d3'),(34,29,'0, 0, 0, 0','c00f9e71-a11c-466a-ae7e-5b9e499b8e9d'),(35,30,'9, 9, 9, 1','565ea7b3-ee4e-43da-9a71-e332175140db'),(36,30,'1, 2, 3, 4','eb70b46b-c4b3-4424-8ab9-737ec38009f3'),(37,31,'2, 2, 2, 2','a8a1df48-a869-439d-bdea-bc39fb75f5dd'),(38,26,'0, 0, 0, 0','6bd86a8c-5b95-448a-9205-82db998acea1'),(39,30,'0, 0, 0, 0','e59a9ee4-733a-47e3-84be-498239486694'),(40,30,'0, 0, 1, 0','7ba5175d-b32a-4d34-aecc-7581b6d49921'),(41,26,'0, 0, 0, 0','32573007-6849-418d-8fbd-dbd702e4eea0'),(42,31,'0, 0, 0, 0','8b85cec4-ad2e-44b5-adb3-0e088cebbbff'),(43,31,'0, 0, 0, 0','9d92269d-0197-4c0a-a0bd-139dbad9f857'),(44,32,'0, 0, 0, 0','db092e93-1187-4e1e-bc49-7e3e60a6a359'),(45,33,'0, 0, 0, 0','be99a003-2bc9-412d-bdb0-d647bc72b614'),(46,34,'0, 0, 0, 0','07e249d7-1f5c-4a1e-a3b9-1fbf85f21788'),(47,35,'0, 0, 0, 0','a2369128-6c4a-429f-96e3-095d3d504892');
/*!40000 ALTER TABLE `kecermatan_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kecermatan_section`
--

DROP TABLE IF EXISTS `kecermatan_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kecermatan_section` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `table_name` varchar(100) DEFAULT NULL,
  `first_row` varchar(100) DEFAULT NULL,
  `second_row` varchar(100) DEFAULT NULL,
  `id_group` int DEFAULT NULL,
  `secureId` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kecermatan_section_FK` (`id_group`),
  CONSTRAINT `kecermatan_section_FK` FOREIGN KEY (`id_group`) REFERENCES `kecermatan_group` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_section`
--

LOCK TABLES `kecermatan_section` WRITE;
/*!40000 ALTER TABLE `kecermatan_section` DISABLE KEYS */;
INSERT INTO `kecermatan_section` VALUES (15,'Section 3','Kolom Acuan Soal','A, B, C, D, E','6, 6, 6, 6, 2',NULL,'a9e9e79b-5d29-42fc-ae35-6139619ff2d3'),(16,'Section 5','Kolom Update Dari Postman','A, B, C, D, E','1, 2, 3, 4, 5',NULL,'23bc3968-32a9-4b14-a44a-30c4a48b3377'),(17,NULL,'Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',3,'db8b10cc-a073-4147-9832-afaf76ba9dce'),(18,'BARU BARU','Kolom Acuan Soal','A, B, C, D, E','1, 2, 3, 4, 5',NULL,'ec38a087-39fb-49c9-90c7-d93de314ffd5'),(19,'123123','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'861d85a1-bd75-459b-ad73-0294dde36758'),(20,NULL,'Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'7cefe9f5-37bf-4a3c-8eb6-6e32847954a1'),(21,NULL,'Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'e5e3e2f1-82b5-4bfc-a8b9-d2705a48a58e'),(22,'Bebebe','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'78a05893-4b32-4725-bb22-0175c0f91c39'),(23,'Heart Break','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'ee3f0153-eeb3-44a5-bdc3-9567da9b557c'),(24,'Heart Break 3','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'ce7d34ff-abcf-4b3c-9f2a-855733484894'),(26,'BABABABA2','Kolom Acuan Soal','A, B, C, D, E','1, 2, 3, 4, 5',14,'33d01260-4aae-4659-bee5-b441fee8b7aa'),(28,'Perasaan','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'de2dbd0f-a7be-4444-8ac9-1e4f210f2b13'),(29,'Good','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'b465a8d9-ddc0-4fe5-a12d-1eb1807b2e11'),(30,'Section 2','Kolom Acuan Soal','A, B, C, D, E','1, 2, 3, 4, 5',14,'c10c7621-fd57-402f-b366-1ada8bceae2b'),(31,'Section 3','Kolom Acuan Soal','A, B, C, D, E','8, 8, 8, 8, 8',14,'96a12ce2-a335-4671-9bca-ca01e24f9b0e'),(32,'Section Baru','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',14,'b293d440-ed8c-436b-94aa-f45e3fcb2e07'),(33,'Section Baru 2','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',14,'5574978a-af25-45cf-a1d2-f5a68f8e8d29'),(34,'Section Baru 3','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',14,'0c46da3d-670b-4d5c-9a22-50fd3e5a6d36'),(35,'Soal 1','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',21,'5a5a0e30-c9e3-4dd7-8e0b-529619ef226c');
/*!40000 ALTER TABLE `kecermatan_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kejiwaan_answer`
--

DROP TABLE IF EXISTS `kejiwaan_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kejiwaan_answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `answer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` int DEFAULT NULL,
  `symbol` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_question` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kepribadian_answer_FK` (`id_question`) USING BTREE,
  CONSTRAINT `kejiwaan_answer_FK` FOREIGN KEY (`id_question`) REFERENCES `kejiwaan_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kejiwaan_answer`
--

LOCK TABLES `kejiwaan_answer` WRITE;
/*!40000 ALTER TABLE `kejiwaan_answer` DISABLE KEYS */;
INSERT INTO `kejiwaan_answer` VALUES (1,'6c38d768-69de-418e-a266-078b3afe09fd','99 Gram',2,'A',1),(2,'4b676c35-49cc-49e4-a953-a353d962d9f6','20 Gram',2,'B',1),(11,'1d45409e-bd97-4b07-8db2-d0a3cd4a8331','Janji Jiwa 3',10,'A',4),(12,'9887e44e-d0c6-4922-8d65-2bfcb0808f23','Janji Jiwa 2',2,'B',4),(13,'0c934e38-9e45-47bb-879f-22c487c45cd8','Captain Answer 1',0,'A',5),(14,'91fe8315-8050-4057-b7be-0244384d395a','Captain Answer 2',10,'B',5),(21,'8603ad34-c687-4ce7-9e62-2c7c7359ed23','Answer 2',0,'A',8),(22,'93c82d1f-e2d5-4e0d-9fc1-17c17ba578d2','Answer 3',0,'B',8);
/*!40000 ALTER TABLE `kejiwaan_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kejiwaan_group`
--

DROP TABLE IF EXISTS `kejiwaan_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kejiwaan_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` int DEFAULT NULL,
  `is_active` tinyint NOT NULL DEFAULT '0',
  `is_random` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kejiwaan_group`
--

LOCK TABLES `kejiwaan_group` WRITE;
/*!40000 ALTER TABLE `kejiwaan_group` DISABLE KEYS */;
INSERT INTO `kejiwaan_group` VALUES (1,'9c49b888-cabe-4867-8c29-b61ff89b370e','Kejiwaan Terakhir','Ini adalah contoh description',50,1,1),(5,'6edc07dd-7ff1-4bc0-ae70-39730b0d7eb2','Kejiwaan 2','Kejiwaan 2 Desc',1,1,0),(6,'f80ae7bb-8fd9-4f85-87c9-700015d308d3','Kejiwaan Kedua','Ini adalah contoh description',100,0,1),(7,'8709dd4f-abe5-47cf-88bf-8e94ec34f6f5','Ashuw','Ashuw Desc',1,1,0);
/*!40000 ALTER TABLE `kejiwaan_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kejiwaan_question`
--

DROP TABLE IF EXISTS `kejiwaan_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kejiwaan_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_group` int DEFAULT NULL,
  `randomized` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kepribadian_question_FK` (`id_group`) USING BTREE,
  CONSTRAINT `kejiwaan_question_FK` FOREIGN KEY (`id_group`) REFERENCES `kejiwaan_group` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kejiwaan_question`
--

LOCK TABLES `kejiwaan_question` WRITE;
/*!40000 ALTER TABLE `kejiwaan_question` DISABLE KEYS */;
INSERT INTO `kejiwaan_question` VALUES (1,'Testing Create Question\'s','c19e0ab2-ddd0-4897-92da-b0576fda9650',1,0),(4,'    question: {\n        secureId: string;\n        question: string;\n    };','ecac9f24-fc4e-408a-8f81-ba9a50358e11',5,0),(5,'Captain Question 1','caf53352-6768-4df8-b0f7-456c7f86725e',5,0),(8,'Testing 2','1dc640f9-f104-42f4-97f5-620e9e0b8691',1,0);
/*!40000 ALTER TABLE `kejiwaan_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kepribadian_answer`
--

DROP TABLE IF EXISTS `kepribadian_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kepribadian_answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `answer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` int DEFAULT NULL,
  `symbol` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_question` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kepribadian_answer_FK` (`id_question`),
  CONSTRAINT `kepribadian_answer_FK` FOREIGN KEY (`id_question`) REFERENCES `kepribadian_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kepribadian_answer`
--

LOCK TABLES `kepribadian_answer` WRITE;
/*!40000 ALTER TABLE `kepribadian_answer` DISABLE KEYS */;
INSERT INTO `kepribadian_answer` VALUES (11,'26a734f7-76c6-4a20-b5be-16d717d8807d','99 Gram',2,'A',2),(12,'da16ec07-7894-4719-810d-0179fa82fb6c','20 Gram',2,'B',2),(13,'4e7c6f0c-cc65-421c-a871-6576b19f92bb','11 Gram',9,'C',2),(14,'f4f56e85-1c85-42cc-abfc-acc9521ecfa4','87 Gram',7,'D',2),(15,'add31814-07ff-4406-a86f-722ca08127ea','1 Gram',0,'E',2),(26,'81621d61-a1a3-40ca-8b7f-5ed2c58cc394','asdas',1,'A',5),(27,'d5cfb1e2-5ba7-4f89-957a-64d2e5da5c3f','dasdasd',2,'B',5),(28,'97e0d25f-9e26-40bc-9558-f9ac4f7363f1','asdasdasd',3,'C',5),(29,'fe72681f-85e8-4825-8406-2917f146891f','asdasdasd',4,'D',5),(30,'5d8bad82-57f0-4e2e-b2bb-f86531f2d634','asdas',1,'A',6),(31,'7c5bf4fa-0920-4b0e-838c-08f6efe9d9c9','dasdasd',2,'B',6),(32,'a7d015cc-265a-46e9-9fe8-61845d9b09cc','asdasdasd',3,'C',6),(33,'e2de4b95-0f8c-4b2f-9228-a5759acb7db8','asdasdasd',4,'D',6),(34,'2e4af3ca-976a-4d0c-8d99-63add71b47d9','123123',0,'A',7),(35,'94f82df5-7325-484b-88d2-7c8a9ef63c40','123123',0,'B',7),(36,'930e00e1-ed33-4a69-b23d-3d6392240359','123123as',0,'C',7),(37,'b047bbf4-a0bb-41be-866e-dd449499f5d7','dasdasda',0,'D',7),(38,'0cca73df-760b-4e53-94de-afc937eec42d','szxczxczxc',0,'E',7),(39,'ef64e8b7-76f2-489b-812c-e81862a1d7f1','123123',0,'A',8),(40,'0ca38ee1-e643-4541-a3f2-07a4a056eb5f','123123',0,'B',8),(41,'eda082bd-14d5-4ed7-8003-56e787ce9117','123123as',0,'C',8),(42,'ea5259b7-c733-4647-b811-cf3662c71262','dasdasda',0,'D',8),(43,'dc5f2c39-7636-4ac5-8ca3-32bb81bdbf70','szxczxczxc',0,'E',8),(68,'80c85e3d-74d7-4167-aee3-0e66c7bd27f9','1234',0,'A',15),(69,'62e05ebd-d71b-4ae6-a4a8-a7098290ab49','qwer',0,'B',15),(70,'58db6828-9ed4-4e2d-8389-30b444ed2bd2','asdf',0,'C',15),(71,'37ff56e7-761c-4000-93da-a41cd2206eb1','zxcv',0,'D',15),(72,'34cf8eb9-72ea-436c-b064-f90f5a253fea','tyui',0,'A',16),(73,'1c69e6d4-332e-48d5-beb2-ac44f6661ede','asdf',0,'B',16),(74,'da82415d-3d0d-4e48-b0c6-4b9d3817e421','zxczxc',0,'C',16),(75,'2520c496-367b-4aee-b220-7cdcb861bca9','vqweqwe',0,'D',16),(76,'cb74031b-4a76-4b4f-8720-fa28c5c7e535','zxc',0,'A',17),(77,'ebdd30dd-200e-410c-8c1b-e45fa69d2e5f','asd',0,'B',17),(78,'650b5a12-f555-4280-8509-dfbc9915a8c1','qwe',0,'C',17),(79,'c7738e60-43a1-4699-a755-11132621991f','tyui',0,'D',17),(80,'22c95878-32e9-456f-bbab-a54b02c6b037','qwe',0,'A',18),(81,'969bad31-3925-4678-9794-04d1b3aaba48','qwe',0,'B',18),(82,'193b05dc-7ac9-431a-a224-910bce41969c','asd',0,'C',18),(83,'afaac896-ba2e-4b7d-94f7-170ae03e2cbb','zxc',0,'D',18),(84,'087a1b5e-e045-4d1f-923d-f5b8ffee21da','qwe',0,'E',18),(85,'fecdc68d-6508-465e-a2f8-600f3159ce66','Ba',0,'A',19),(86,'6cb6b444-da48-4382-aa30-e7197759c39a','Ba',0,'B',19),(87,'806ab743-7376-493e-9528-2756f5c85c1b','Ba',0,'C',19),(88,'51d6d176-4cd4-4e39-8d3d-2426deb10322','Ba',0,'D',19);
/*!40000 ALTER TABLE `kepribadian_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kepribadian_group`
--

DROP TABLE IF EXISTS `kepribadian_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kepribadian_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` int DEFAULT NULL,
  `is_active` tinyint NOT NULL DEFAULT '0',
  `type` enum('4','5') DEFAULT NULL,
  `is_random` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kepribadian_group`
--

LOCK TABLES `kepribadian_group` WRITE;
/*!40000 ALTER TABLE `kepribadian_group` DISABLE KEYS */;
INSERT INTO `kepribadian_group` VALUES (2,'28ecd257-8acd-475f-b3df-98c699af46ff','Kepribadian 3','Ini adalah contoh description 1',222,1,'4',1),(5,'645ee4d9-2376-4564-9ed2-7ebb6f102383','Kepribadian 4','Kepribadian 4',1,1,'5',0),(7,'62ff6d6d-1ae6-4569-8b23-09c386474f6c','123','123123',4,0,'5',0),(8,'8f79c462-a46b-4abf-ad08-5716da95fd24','Kepribadian Terakhir','Ini adalah contoh description',50,0,'4',0),(9,'3c1e3239-f462-4ab3-950a-f248ed3a08ea','12345','12345 Desc',1,0,'4',1);
/*!40000 ALTER TABLE `kepribadian_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kepribadian_question`
--

DROP TABLE IF EXISTS `kepribadian_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kepribadian_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_group` int DEFAULT NULL,
  `randomized` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `kepribadian_question_FK` (`id_group`),
  CONSTRAINT `kepribadian_question_FK` FOREIGN KEY (`id_group`) REFERENCES `kepribadian_group` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kepribadian_question`
--

LOCK TABLES `kepribadian_question` WRITE;
/*!40000 ALTER TABLE `kepribadian_question` DISABLE KEYS */;
INSERT INTO `kepribadian_question` VALUES (2,'Testing Create Question\'s','f1082d94-adce-4b1b-9f5c-5f6a8ce334fa',2,0),(5,'Good','b264985e-96b9-47fa-a50a-30170fe6e9ee',5,0),(6,'1231231231123','7ed62491-430d-420a-b23b-75759bc40593',5,0),(7,'12312j3123','fb182384-c893-4ced-abe2-f132ec3b1984',2,0),(8,NULL,'e300dc2e-8ca0-43ff-8ce6-bf199bb3cbe9',2,0),(15,'Pleeer','a288111f-1a5c-4ed4-991f-e9c4ac25e055',2,0),(16,'1234','d0af3936-6ff3-41ba-a7d8-087188291772',2,0),(17,'qwe','8e5598e3-a46d-481f-8362-541cdc74e971',5,0),(18,'qwe','0eaa3267-36df-4036-be71-7c9012b1c9d0',5,0),(19,'Ba','74b8ae2e-112b-4298-9c7c-e3d89bab3a11',5,0);
/*!40000 ALTER TABLE `kepribadian_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peraturan`
--

DROP TABLE IF EXISTS `peraturan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peraturan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` enum('soal','siswa') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'soal',
  `description` text,
  `rule_type` enum('kepribadian','kecermatan','kecerdasan','kejiwaan') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peraturan`
--

LOCK TABLES `peraturan` WRITE;
/*!40000 ALTER TABLE `peraturan` DISABLE KEYS */;
INSERT INTO `peraturan` VALUES (2,'059a4f36-615e-4aa7-9543-358f75826a12','soal','12345','kepribadian'),(3,'d7cae921-317b-4407-a45f-4ac4d72a7e62','siswa','12345 bandar','kepribadian'),(4,'c3b8af45-5720-4bef-a492-f674b75a35a9','soal','Kecermatan Soal','kecermatan'),(5,'74f18182-a222-4168-ade7-3247a11756cd','siswa','Kecermatan Siswa','kecermatan'),(6,'33bd5c52-6f1b-4362-b480-b4f381c8ac6c','siswa','<ul>\n<li>\nUlala\n</li>\n</ul>','kecerdasan'),(7,'7c2482c1-6eb5-4235-90e0-4382ceadc7d1','soal','BANG AYOM <br />\n<p class=\"text-h5\"> HA HA HA </p>','kecerdasan'),(8,'4e3e7828-545f-4bd1-b35f-06342786af25','soal','12345 bandar','kejiwaan'),(9,'88e29819-7657-4c27-9623-82602b4cf6e8','siswa','12345 bandar','kejiwaan');
/*!40000 ALTER TABLE `peraturan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secureId` varchar(36) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT '0',
  `type` enum('admin','user') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'7d6ea2a9-d396-43c9-aa5d-f3f394a168f6','admin','admin','admin',0,'admin'),(2,'6e4bb067-3f52-4bc6-bcd9-b4964d61ef79','ageng','123456Aa','Ageng Setyo Nugroho',0,'user'),(28,'f49bfa4e-6a6c-4990-b1b1-96f82cfe782c','Golank','123456','Good thing\'s',0,'user');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cat-bimbel'
--

--
-- Dumping routines for database 'cat-bimbel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-17  9:58:10
