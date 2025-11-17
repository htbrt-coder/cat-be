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
  PRIMARY KEY (`id`),
  KEY `kecerdasan_answer_FK` (`id_question`),
  CONSTRAINT `kecerdasan_answer_FK` FOREIGN KEY (`id_question`) REFERENCES `kecerdasan_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecerdasan_answer`
--

LOCK TABLES `kecerdasan_answer` WRITE;
/*!40000 ALTER TABLE `kecerdasan_answer` DISABLE KEYS */;
INSERT INTO `kecerdasan_answer` VALUES (1,1,'a9e9e79b-5d29-42fc-ae35-6139619ff2c5','6 Gram',1,'A'),(2,1,'af98ecb2-9d39-454f-b2b7-f29c0e0ea351','8 Gram',0,'B'),(3,1,'dacc262d-a01f-4d61-a017-e9eac49b18b4','12 Gram',0,'C'),(4,1,'efdb6751-d22b-4e7c-b156-ee2cf5f10f32','16 Gram',0,'D'),(379,45,'ffee10b3-51d5-4903-b2de-a6b1fe562d69','Jawaban no 1',0,'A'),(380,45,'d3793b54-eeff-4472-9916-6f623a6016cd','Jawaban no 2',0,'B'),(381,45,'2e9dc4f2-cebb-44c5-8a44-acdcf738f342','Jawaban no 3',0,'C'),(382,45,'5a22aadc-ec00-4b59-963c-3a47796e9b91','Jawaban no 4',100,'D'),(383,45,'5830ccff-c72e-4bd9-b0f7-da791c8cae3b','Jawaban no 5',0,'E'),(384,46,'cbbe04db-fa83-45b1-a251-19a8a5f0d786','Jawaban 1',0,'A'),(385,46,'1c2a68f5-52d7-4c26-8200-3d78a4821b59','Jawaban 2',0,'B'),(386,46,'d7435936-f8e0-4a99-86d6-fc257d0fcafe','Jawaban 3',100,'C'),(387,46,'45ddefc1-d00f-432d-8a60-bd88f2739c55','Jawaban 4',0,'D'),(388,46,'dcfb5445-7966-49d2-9709-f15e8b9bdc4e','Jawaban 5',0,'E'),(389,47,'61710faa-9b01-487d-90bf-beaa9b4219bb','Answer 1',0,'A'),(390,47,'53efbd01-5707-4041-986f-e53b9971b8d9','Answer 2',0,'B'),(391,47,'4dd88b03-2ba9-4a22-8c39-27ae1dbfebd4','Answer 3',0,'C'),(392,47,'8eb71e35-0f24-4987-946f-ca36377c975e','Answer 4',0,'D'),(393,47,'14915c9c-9b53-41a2-9836-9ba3d4bc8e60','Answer 5',0,'E');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecerdasan_group`
--

LOCK TABLES `kecerdasan_group` WRITE;
/*!40000 ALTER TABLE `kecerdasan_group` DISABLE KEYS */;
INSERT INTO `kecerdasan_group` VALUES (3,'2b54af84-6894-4d62-af1d-04c815667e40','Kecerdasan 3','Ini adalah contoh description',23,1);
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
  PRIMARY KEY (`id`),
  KEY `kecerdasan_question_FK` (`id_group`),
  CONSTRAINT `kecerdasan_question_FK` FOREIGN KEY (`id_group`) REFERENCES `kecerdasan_group` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecerdasan_question`
--

LOCK TABLES `kecerdasan_question` WRITE;
/*!40000 ALTER TABLE `kecerdasan_question` DISABLE KEYS */;
INSERT INTO `kecerdasan_question` VALUES (1,'Pertanyaan Testing','a9e9e79b-5d29-42fc-ae35-6139619ff2c5',3),(45,'Pertanyaan nomor 1','80bbb0d8-6f76-4f81-9b62-6878becfbaae',NULL),(46,'Saafe and sound bracket','008e5b7a-1b94-4195-9ecd-ee56bafa2cce',3),(47,'Goal','160a13fc-f61e-44a3-9db7-574731c49846',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_answer`
--

LOCK TABLES `kecermatan_answer` WRITE;
/*!40000 ALTER TABLE `kecermatan_answer` DISABLE KEYS */;
INSERT INTO `kecermatan_answer` VALUES (41,17,'85f48f0f-6b16-4237-928d-297b07cc98aa',69,'A'),(42,17,'c8c3c02a-913f-46e2-8522-fc2825342505',2,'B'),(43,17,'0a72635a-a1f3-4298-8736-13f0728903b9',2,'C'),(44,17,'5778ceea-511f-455a-a4d2-81e2baecd083',2,'D'),(45,17,'7d10e3bd-37db-415f-98ae-6ecaa587b61c',9999,'E'),(91,18,'06703785-9bce-4c90-8142-01b570af9cdd',69,'A'),(92,18,'95dc2870-e875-4693-921e-3ba581c08bf3',2,'B'),(93,18,'d5d34fdb-64b7-470a-97e4-2129c2d94991',2,'C'),(94,18,'97bc97ae-92c4-4bf8-bd35-f6adb6b52dc4',2,'D'),(95,18,'1915090a-26d4-4162-9ff4-ab16a7f56b9f',9999,'E'),(121,19,'afbb8d43-894c-4c53-a057-1241019888c0',69,'A'),(122,19,'349ca4f9-7a49-44be-97b8-ee417e0bcd16',2,'B'),(123,19,'12fcc451-af42-42f0-ba63-714bcf6e2031',2,'C'),(124,19,'c9a92d26-de9f-43a1-9d9f-64744ec17370',2,'D'),(125,19,'279823ea-b975-49b9-ab1d-024a57548952',9999,'E'),(126,19,'1358b5d0-821a-45f2-83d8-071ef95c45d8',69,'A'),(127,19,'a578e08e-417b-43c1-9e38-0e71a0f049e1',2,'B'),(128,19,'a1a789e8-d99a-43de-82d8-75f8966834b9',2,'C'),(129,19,'d4d6e8b7-ac45-4310-ad50-34d68caf5c49',2,'D'),(130,19,'4298f9a8-645f-42bd-863f-384a0b57b6dc',9999,'E'),(131,19,'fdf5fa2c-5e82-4760-ae0e-67cc67b1ee98',69,'A'),(132,19,'21960177-643f-4f98-a770-5211cdbdb5de',2,'B'),(133,19,'a99ef14f-631b-414b-992c-e5586c0ab6d0',2,'C'),(134,19,'698371e0-d81a-4b80-b688-5a471d7d7375',2,'D'),(135,19,'4b7f1d33-811d-47de-ad1c-03d4ff11c443',9999,'E'),(156,20,'41aea6c0-ef8e-4767-910a-c67fb323d63e',0,'A'),(157,20,'a76a407d-c476-4e42-b50d-5cb003a63bef',0,'B'),(158,20,'53b5b46e-5539-4c9b-9439-d73a904f741c',0,'C'),(159,20,'658c9ea9-bc7a-467e-9f81-cb3661551201',0,'D'),(160,20,'1e70385c-87c3-46db-a26c-70000155c397',2,'E'),(161,21,'48dc9d91-9e5a-4468-a8d2-dac21178b2fa',1,'A'),(162,21,'ff38b9c2-ff73-48c3-aa4d-462feae84019',1,'B'),(163,21,'2f3207c3-b553-45da-9cde-a0a1ebda282f',1,'C'),(164,21,'7e1f4458-6a98-4a86-be49-ba04394cb4b0',1,'D'),(165,21,'3bc2dc38-2b93-4669-9f7c-a953d9bf80af',1,'E'),(166,22,'64b44843-b955-4001-b5b6-2a1722174ec0',0,'A'),(167,22,'51239773-90f1-4352-abee-965389b3310b',0,'B'),(168,22,'a21cb1ad-f7df-4871-8b18-0ca304d7b801',0,'C'),(169,22,'7b0456a9-2f9b-4c29-87e0-947de3407db9',0,'D'),(170,22,'1e3f43e0-b9a8-4b57-ba6a-4397d2251922',0,'E'),(171,23,'450a2597-381c-4e34-9673-2c8ba75d4d6c',0,'A'),(172,23,'fc8b6b5f-e1f5-494a-bf3f-0f9b4e2586f9',0,'B'),(173,23,'fd9292be-bcab-45e0-a520-5ce9b0b4d1c7',0,'C'),(174,23,'a3e48bc6-d30e-4bae-80d6-b6b683b90a10',0,'D'),(175,23,'1db459f4-dd58-4f71-b63b-9ed53a07dd5a',0,'E'),(181,25,'9dffc82f-b6d1-4afd-9073-f89cd2613f7e',0,'A'),(182,25,'8b16266c-f465-4803-94a0-dc79f8390f6d',0,'B'),(183,25,'9cf79ed6-55ac-411f-a3c0-733351aee7b9',0,'C'),(184,25,'e286ccf4-ed79-4dd6-bab3-921046109c05',0,'D'),(185,25,'59f07aa7-dac9-4c6f-bc53-27df8689f5e8',0,'E'),(216,32,'6c64466a-d932-40c7-bdae-bc772f7e7e04',0,'A'),(217,32,'9681b11a-f869-4c1f-bc27-98702eb86f4f',0,'B'),(218,32,'722070bc-82ec-4a7f-aafc-5166645e70dc',0,'C'),(219,32,'065ce7ab-c37d-4ce4-9d1f-4098f06a5297',0,'D'),(220,32,'3780d33d-b715-425e-9a29-5b224742d90a',0,'E');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_group`
--

LOCK TABLES `kecermatan_group` WRITE;
/*!40000 ALTER TABLE `kecermatan_group` DISABLE KEYS */;
INSERT INTO `kecermatan_group` VALUES (3,'65e39eef-29b3-4d41-9ce1-9ccdb40fbcff','Kecermatan Baru 44','Ini adalah contoh description 44',23,0),(14,'700394cf-14c6-4379-bebe-bb2eff17fda6','Baru 123','Baru 123',5,0),(17,'b0071e89-2d7a-4a59-ab53-8b30c4b7a122','Good','Good Soal',1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_question`
--

LOCK TABLES `kecermatan_question` WRITE;
/*!40000 ALTER TABLE `kecermatan_question` DISABLE KEYS */;
INSERT INTO `kecermatan_question` VALUES (17,16,'69, 1, 1, 3','862996c1-9ac9-459f-9891-15ad5b7e2021'),(18,16,'10, 1, 1, 3','7da85b50-94d8-4d47-aaf4-3c8c827f4e1c'),(19,16,'10, 1, 1, 3','894eecf5-fddd-4d7b-8be4-297ac0feebc8'),(20,17,'2, 3, 4, 5','a1efb83a-e581-4d8d-bac6-9c5094fb2531'),(21,18,'1, 2, 3, 4','102beed1-9bf3-4348-bcdb-bb13756cc41a'),(22,22,'0, 0, 0, 0','36b748ff-1876-491a-9615-d1f6fe4a1de5'),(23,23,'0, 0, 0, 0','547c72a0-ecc6-43b5-a15c-775250a31ad5'),(25,26,'0, 0, 0, 0','8e508a31-fdeb-449a-ae93-d2d422caec20'),(32,26,'0, 0, 0, 0','82aa2b05-9bf1-4532-ad0e-7c40866ee5d3');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kecermatan_section`
--

LOCK TABLES `kecermatan_section` WRITE;
/*!40000 ALTER TABLE `kecermatan_section` DISABLE KEYS */;
INSERT INTO `kecermatan_section` VALUES (15,'Section 3','Kolom Acuan Soal','A, B, C, D, E','6, 6, 6, 6, 2',NULL,'a9e9e79b-5d29-42fc-ae35-6139619ff2d3'),(16,'Section 5','Kolom Update Dari Postman','A, B, C, D, E','1, 2, 3, 4, 5',NULL,'23bc3968-32a9-4b14-a44a-30c4a48b3377'),(17,NULL,'Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',3,'db8b10cc-a073-4147-9832-afaf76ba9dce'),(18,'BARU BARU','Kolom Acuan Soal','A, B, C, D, E','1, 2, 3, 4, 5',NULL,'ec38a087-39fb-49c9-90c7-d93de314ffd5'),(19,'123123','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'861d85a1-bd75-459b-ad73-0294dde36758'),(20,NULL,'Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'7cefe9f5-37bf-4a3c-8eb6-6e32847954a1'),(21,NULL,'Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'e5e3e2f1-82b5-4bfc-a8b9-d2705a48a58e'),(22,'Bebebe','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'78a05893-4b32-4725-bb22-0175c0f91c39'),(23,'Heart Break','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'ee3f0153-eeb3-44a5-bdc3-9567da9b557c'),(24,'Heart Break 3','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',NULL,'ce7d34ff-abcf-4b3c-9f2a-855733484894'),(26,'BABABABA2','Kolom Acuan Soal','A, B, C, D, E','0, 0, 0, 0, 0',14,'33d01260-4aae-4659-bee5-b441fee8b7aa');
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
INSERT INTO `kejiwaan_answer` VALUES (1,'6c38d768-69de-418e-a266-078b3afe09fd','99 Gram',2,'A',1),(2,'4b676c35-49cc-49e4-a953-a353d962d9f6','20 Gram',2,'B',1),(11,'1d45409e-bd97-4b07-8db2-d0a3cd4a8331','Janji Jiwa 3',10,'A',4),(12,'9887e44e-d0c6-4922-8d65-2bfcb0808f23','Janji Jiwa 2',2,'B',4),(13,'0c934e38-9e45-47bb-879f-22c487c45cd8','Captain Answer 1',0,'A',5),(14,'91fe8315-8050-4057-b7be-0244384d395a','Captain Answer 2',10,'B',5),(19,'7058055b-837a-4fa3-aa53-60eb155723fa','Captain Shopee Food Answer 5',0,'A',7),(20,'2890f3f2-aa59-4682-8f71-60f47d9cfebe','Captain Shopee Food Answer 5',0,'B',7),(21,'8603ad34-c687-4ce7-9e62-2c7c7359ed23','Answer 2',0,'A',8),(22,'93c82d1f-e2d5-4e0d-9fc1-17c17ba578d2','Answer 3',0,'B',8);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kejiwaan_group`
--

LOCK TABLES `kejiwaan_group` WRITE;
/*!40000 ALTER TABLE `kejiwaan_group` DISABLE KEYS */;
INSERT INTO `kejiwaan_group` VALUES (1,'9c49b888-cabe-4867-8c29-b61ff89b370e','Kejiwaan Terakhir','Ini adalah contoh description',50,1),(5,'6edc07dd-7ff1-4bc0-ae70-39730b0d7eb2','Kejiwaan 2','Kejiwaan 2 Desc',96,1);
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
INSERT INTO `kejiwaan_question` VALUES (1,'Testing Create Question\'s','c19e0ab2-ddd0-4897-92da-b0576fda9650',1),(4,'    question: {\n        secureId: string;\n        question: string;\n    };','ecac9f24-fc4e-408a-8f81-ba9a50358e11',5),(5,'Captain Question 1','caf53352-6768-4df8-b0f7-456c7f86725e',5),(7,'Captain Shopee Food Question 5','48735c80-a9ba-4583-8fd7-cd59e043bd41',5),(8,'Testing 2','1dc640f9-f104-42f4-97f5-620e9e0b8691',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kepribadian_answer`
--

LOCK TABLES `kepribadian_answer` WRITE;
/*!40000 ALTER TABLE `kepribadian_answer` DISABLE KEYS */;
INSERT INTO `kepribadian_answer` VALUES (11,'26a734f7-76c6-4a20-b5be-16d717d8807d','99 Gram',2,'A',2),(12,'da16ec07-7894-4719-810d-0179fa82fb6c','20 Gram',2,'B',2),(13,'4e7c6f0c-cc65-421c-a871-6576b19f92bb','11 Gram',9,'C',2),(14,'f4f56e85-1c85-42cc-abfc-acc9521ecfa4','87 Gram',7,'D',2),(15,'add31814-07ff-4406-a86f-722ca08127ea','1 Gram',0,'E',2);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kepribadian_group`
--

LOCK TABLES `kepribadian_group` WRITE;
/*!40000 ALTER TABLE `kepribadian_group` DISABLE KEYS */;
INSERT INTO `kepribadian_group` VALUES (2,'28ecd257-8acd-475f-b3df-98c699af46ff','Kepribadian 3','Ini adalah contoh description 1',50,1,'4'),(5,'645ee4d9-2376-4564-9ed2-7ebb6f102383','Kepribadian 4','Kepribadian 4',10,0,'5');
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
  PRIMARY KEY (`id`),
  KEY `kepribadian_question_FK` (`id_group`),
  CONSTRAINT `kepribadian_question_FK` FOREIGN KEY (`id_group`) REFERENCES `kepribadian_group` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kepribadian_question`
--

LOCK TABLES `kepribadian_question` WRITE;
/*!40000 ALTER TABLE `kepribadian_question` DISABLE KEYS */;
INSERT INTO `kepribadian_question` VALUES (2,'Testing Create Question\'s','f1082d94-adce-4b1b-9f5c-5f6a8ce334fa',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'7d6ea2a9-d396-43c9-aa5d-f3f394a168f6','admin','admin','admin',1,'admin'),(2,'6e4bb067-3f52-4bc6-bcd9-b4964d61ef79','ageng','qweqwe','Ageng Setyo Nugroho',1,'user'),(28,'f49bfa4e-6a6c-4990-b1b1-96f82cfe782c','Golank','123456','Good thing\'s',0,'user');
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

-- Dump completed on 2021-11-26  4:42:13
