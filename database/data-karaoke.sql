-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: dbtn2
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tblbangcong`
--

DROP TABLE IF EXISTS `tblbangcong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbangcong` (
  `id` int NOT NULL,
  `idNhanVien` int DEFAULT NULL,
  `tuanLam` varchar(255) DEFAULT NULL,
  `tongGioLam` float DEFAULT NULL,
  `donGiaLam` float DEFAULT NULL,
  `tong` float DEFAULT NULL,
  `tienCong` float DEFAULT NULL,
  `trangThaiThanhToan` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idNhanVien` (`idNhanVien`),
  CONSTRAINT `tblbangcong_ibfk_1` FOREIGN KEY (`idNhanVien`) REFERENCES `tblnhanvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbangcong`
--

LOCK TABLES `tblbangcong` WRITE;
/*!40000 ALTER TABLE `tblbangcong` DISABLE KEYS */;
INSERT INTO `tblbangcong` VALUES (1,4,'Tuần 1',32,30000,240000,960000,0),(2,2,'Tuần 1',0,30000,0,0,0),(3,3,'Tuần 1',0,30000,0,0,0);
/*!40000 ALTER TABLE `tblbangcong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldiachi`
--

DROP TABLE IF EXISTS `tbldiachi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldiachi` (
  `id` int NOT NULL,
  `xaphuong` varchar(45) DEFAULT NULL,
  `quanhuyen` varchar(45) DEFAULT NULL,
  `tinhthanhpho` varchar(45) DEFAULT NULL,
  `sonha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldiachi`
--

LOCK TABLES `tbldiachi` WRITE;
/*!40000 ALTER TABLE `tbldiachi` DISABLE KEYS */;
INSERT INTO `tbldiachi` VALUES (1,'Phương mai','Đống Đa','Hà Nội','12'),(2,'Hà Đông','Hà Đông','Hà Nội','22');
/*!40000 ALTER TABLE `tbldiachi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhoten`
--

DROP TABLE IF EXISTS `tblhoten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhoten` (
  `id` int NOT NULL,
  `hodem` varchar(45) DEFAULT NULL,
  `ten` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhoten`
--

LOCK TABLES `tblhoten` WRITE;
/*!40000 ALTER TABLE `tblhoten` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblhoten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblkhachhang`
--

DROP TABLE IF EXISTS `tblkhachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblkhachhang` (
  `id` int NOT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `diaChi` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblkhachhang`
--

LOCK TABLES `tblkhachhang` WRITE;
/*!40000 ALTER TABLE `tblkhachhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblkhachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllichlam`
--

DROP TABLE IF EXISTS `tbllichlam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbllichlam` (
  `id` int NOT NULL,
  `idBangCong` int DEFAULT NULL,
  `ngayLam` date DEFAULT NULL,
  `soGioLam` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idBangCong` (`idBangCong`),
  CONSTRAINT `tbllichlam_ibfk_1` FOREIGN KEY (`idBangCong`) REFERENCES `tblbangcong` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllichlam`
--

LOCK TABLES `tbllichlam` WRITE;
/*!40000 ALTER TABLE `tbllichlam` DISABLE KEYS */;
INSERT INTO `tbllichlam` VALUES (1,1,'2022-09-02',8),(2,1,'2022-09-03',8),(3,1,'2022-09-04',8),(4,1,'2022-09-05',8);
/*!40000 ALTER TABLE `tbllichlam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnhanvien`
--

DROP TABLE IF EXISTS `tblnhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnhanvien` (
  `id` int NOT NULL,
  `idThanhVien` int DEFAULT NULL,
  `maNhanVien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idThanhVien` (`idThanhVien`),
  CONSTRAINT `tblnhanvien_ibfk_1` FOREIGN KEY (`idThanhVien`) REFERENCES `tblthanhvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnhanvien`
--

LOCK TABLES `tblnhanvien` WRITE;
/*!40000 ALTER TABLE `tblnhanvien` DISABLE KEYS */;
INSERT INTO `tblnhanvien` VALUES (2,2,'NV222'),(3,3,'NV112'),(4,4,'NV123');
/*!40000 ALTER TABLE `tblnhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnhanvienlichlam`
--

DROP TABLE IF EXISTS `tblnhanvienlichlam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnhanvienlichlam` (
  `id` int NOT NULL,
  `idlichlam` int DEFAULT NULL,
  `idnhanvien` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idlichlam` (`idlichlam`),
  KEY `idnhanvien` (`idnhanvien`),
  CONSTRAINT `tblnhanvienlichlam_ibfk_1` FOREIGN KEY (`idlichlam`) REFERENCES `tbllichlam` (`id`),
  CONSTRAINT `tblnhanvienlichlam_ibfk_2` FOREIGN KEY (`idnhanvien`) REFERENCES `tblnhanvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnhanvienlichlam`
--

LOCK TABLES `tblnhanvienlichlam` WRITE;
/*!40000 ALTER TABLE `tblnhanvienlichlam` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnhanvienlichlam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnhanvienphonghat`
--

DROP TABLE IF EXISTS `tblnhanvienphonghat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnhanvienphonghat` (
  `id` int NOT NULL,
  `idphonghat` int DEFAULT NULL,
  `idnhanvien` int DEFAULT NULL,
  `soGioPhucVu` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idphonghat` (`idphonghat`),
  KEY `idnhanvien` (`idnhanvien`),
  CONSTRAINT `tblnhanvienphonghat_ibfk_1` FOREIGN KEY (`idphonghat`) REFERENCES `tblphonghat` (`id`),
  CONSTRAINT `tblnhanvienphonghat_ibfk_2` FOREIGN KEY (`idnhanvien`) REFERENCES `tblnhanvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnhanvienphonghat`
--

LOCK TABLES `tblnhanvienphonghat` WRITE;
/*!40000 ALTER TABLE `tblnhanvienphonghat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnhanvienphonghat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblphonghat`
--

DROP TABLE IF EXISTS `tblphonghat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblphonghat` (
  `id` int NOT NULL,
  `tenPhong` varchar(255) DEFAULT NULL,
  `loai` varchar(255) DEFAULT NULL,
  `donGiaTheoGio` float DEFAULT NULL,
  `soNguoiToiDa` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblphonghat`
--

LOCK TABLES `tblphonghat` WRITE;
/*!40000 ALTER TABLE `tblphonghat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblphonghat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblphonghatkhachhang`
--

DROP TABLE IF EXISTS `tblphonghatkhachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblphonghatkhachhang` (
  `id` int NOT NULL,
  `idphonghat` int DEFAULT NULL,
  `idkhachhang` int DEFAULT NULL,
  `thoigian` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idphonghat` (`idphonghat`),
  KEY `idkhachhang` (`idkhachhang`),
  CONSTRAINT `tblphonghatkhachhang_ibfk_1` FOREIGN KEY (`idphonghat`) REFERENCES `tblphonghat` (`id`),
  CONSTRAINT `tblphonghatkhachhang_ibfk_2` FOREIGN KEY (`idkhachhang`) REFERENCES `tblkhachhang` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblphonghatkhachhang`
--

LOCK TABLES `tblphonghatkhachhang` WRITE;
/*!40000 ALTER TABLE `tblphonghatkhachhang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblphonghatkhachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquanly`
--

DROP TABLE IF EXISTS `tblquanly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblquanly` (
  `id` int NOT NULL,
  `idThanhVien` int DEFAULT NULL,
  `maQuanLy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idThanhVien` (`idThanhVien`),
  CONSTRAINT `tblquanly_ibfk_1` FOREIGN KEY (`idThanhVien`) REFERENCES `tblthanhvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquanly`
--

LOCK TABLES `tblquanly` WRITE;
/*!40000 ALTER TABLE `tblquanly` DISABLE KEYS */;
INSERT INTO `tblquanly` VALUES (1,1,'B18DCCN082');
/*!40000 ALTER TABLE `tblquanly` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblquanlyphonghat`
--

DROP TABLE IF EXISTS `tblquanlyphonghat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblquanlyphonghat` (
  `id` int NOT NULL,
  `idphonghat` int DEFAULT NULL,
  `idquanly` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idphonghat` (`idphonghat`),
  KEY `idquanly` (`idquanly`),
  CONSTRAINT `tblquanlyphonghat_ibfk_1` FOREIGN KEY (`idphonghat`) REFERENCES `tblphonghat` (`id`),
  CONSTRAINT `tblquanlyphonghat_ibfk_2` FOREIGN KEY (`idquanly`) REFERENCES `tblquanly` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblquanlyphonghat`
--

LOCK TABLES `tblquanlyphonghat` WRITE;
/*!40000 ALTER TABLE `tblquanlyphonghat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblquanlyphonghat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblthanhvien`
--

DROP TABLE IF EXISTS `tblthanhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblthanhvien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hodem` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `dt` varchar(255) NOT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `vaitro` varchar(255) NOT NULL,
  `tblDiaChiId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_thanhvien_diachi` (`tblDiaChiId`),
  CONSTRAINT `fk_thanhvien_diachi` FOREIGN KEY (`tblDiaChiId`) REFERENCES `tbldiachi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblthanhvien`
--

LOCK TABLES `tblthanhvien` WRITE;
/*!40000 ALTER TABLE `tblthanhvien` DISABLE KEYS */;
INSERT INTO `tblthanhvien` VALUES (1,'chinh147','123','Chu Đức','Chính','2000-10-21','chinh147@gmail.com','012439924',NULL,'quản lý',2),(2,'giangvien','123','Nguyễn Mạnh','Hùng','1970-10-21','xhihi@gmail.com','012434555',NULL,'nhân viên',1),(3,'nv1','123','Nguyễn','CHính','2000-07-14','chinh@gmail.com','099999999',NULL,'nhân viên',1),(4,'nv2','123','Chu','Chi','2000-07-12','nv2@gmail.com','091233212',NULL,'nhân viên',1);
/*!40000 ALTER TABLE `tblthanhvien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-10 10:56:05
