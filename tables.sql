-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: dmir
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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

--
-- Table structure for table `DMIR_T_article`
--

DROP TABLE IF EXISTS `DMIR_T_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DMIR_T_article` (
  `id_a` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_m` int(11) NOT NULL,
  `article_a` longtext NOT NULL,
  `create_at_a` datetime NOT NULL,
  PRIMARY KEY (`id_a`),
  KEY `fk_m_p` (`f_id_m`),
  CONSTRAINT `fk_m_p` FOREIGN KEY (`f_id_m`) REFERENCES `DMIR_T_member` (`id_m`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DMIR_T_article`
--

LOCK TABLES `DMIR_T_article` WRITE;
/*!40000 ALTER TABLE `DMIR_T_article` DISABLE KEYS */;
INSERT INTO `DMIR_T_article` VALUES (1,2,'{\"title\": \"title1\", \"content\": \"content\"}','2019-11-30 00:00:00'),(2,2,'{\"title\": \"title2\", \"content\": \"content\"}','2019-11-30 00:00:00');
/*!40000 ALTER TABLE `DMIR_T_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DMIR_T_ipr`
--

DROP TABLE IF EXISTS `DMIR_T_ipr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DMIR_T_ipr` (
  `id_i` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_p` int(11) NOT NULL,
  `desc_i` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id_i`),
  KEY `fk_p_idp` (`f_id_p`),
  CONSTRAINT `fk_p_idp` FOREIGN KEY (`f_id_p`) REFERENCES `DMIR_T_project` (`id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DMIR_T_ipr`
--

LOCK TABLES `DMIR_T_ipr` WRITE;
/*!40000 ALTER TABLE `DMIR_T_ipr` DISABLE KEYS */;
INSERT INTO `DMIR_T_ipr` VALUES (1,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00'),(2,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00'),(3,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00'),(4,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00'),(5,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00'),(6,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00'),(7,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00'),(8,1,'A pseudo-Latin text used in web design, layout, and printing in place of English to emphasise design elements.','2019-10-01 00:00:00');
/*!40000 ALTER TABLE `DMIR_T_ipr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DMIR_T_member`
--

DROP TABLE IF EXISTS `DMIR_T_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DMIR_T_member` (
  `id_m` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_r` int(11) NOT NULL,
  `email_m` varchar(50) NOT NULL,
  `photo` text NOT NULL,
  `name_m` varchar(100) NOT NULL,
  `password_m` varchar(256) NOT NULL,
  `skill_m` text NOT NULL COMMENT 'kemampuan member yang ingin ditampilkan',
  `intro_m` text NOT NULL COMMENT 'pengenalan diri',
  `sosmed_m` longtext NOT NULL COMMENT 'sosial media',
  `join_at` datetime NOT NULL,
  PRIMARY KEY (`id_m`),
  KEY `fk_r_m` (`f_id_r`),
  CONSTRAINT `fk_r_m` FOREIGN KEY (`f_id_r`) REFERENCES `DMIR_T_roles` (`id_r`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DMIR_T_member`
--

LOCK TABLES `DMIR_T_member` WRITE;
/*!40000 ALTER TABLE `DMIR_T_member` DISABLE KEYS */;
INSERT INTO `DMIR_T_member` VALUES (1,1,'taufik.abidin|@|unsyiah.ac.id','member/tfa.jpg','Prof. Dr. Taufik Fuadi Abidin, S.Si., M.Tech','dmir-admin','Ph.D, Computer Science, North Dakota State University, USA, 2006\nM.Tech., Computer Science, RMIT Univ, Melbourne, Australia, 2000\nB.S., Mathematics (Informatics Stream), ITS, Indonesia, 1993','I am a member of IEEE. I completed my Ph.D in Computer Science from NDSU, USA, in 2006 and completed Master degree in Computer Science from RMIT University, Australia, in 2000. Research interests include big data analysis, data mining, information retrieval, and information extraction','{\"globe\": \"informatika.unsyiah.ac.id/tfa\"}','2008-01-01 00:00:00'),(2,2,'muammar.zikri.aksana@gmail.com','member/mza.jpg','Muammar Zikri Aksana','1','Android, Web Developer, Web Service, Data Mining','I am a student of Informatics Department of Syiah Kuala University. I am a young man who likes programming and also likes challenges.','{\"globe\": \"cs.unsyiah.ac.id/~mksana\", \"facebook\": \"facebook.com/muammar.clasic\", \"instagram\": \"instagram.com/mzaksana\"}','2019-06-01 00:00:00');
/*!40000 ALTER TABLE `DMIR_T_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DMIR_T_project`
--

DROP TABLE IF EXISTS `DMIR_T_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DMIR_T_project` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_t` int(11) NOT NULL,
  `name_p` text NOT NULL,
  `img` text NOT NULL,
  `desc_p` text NOT NULL,
  `intro_p` text NOT NULL,
  `content_p` longtext NOT NULL,
  `created_at_p` datetime NOT NULL,
  PRIMARY KEY (`id_p`),
  KEY `fk_t_p` (`f_id_t`),
  CONSTRAINT `fk_t_p` FOREIGN KEY (`f_id_t`) REFERENCES `DMIR_T_team` (`id_t`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DMIR_T_project`
--

LOCK TABLES `DMIR_T_project` WRITE;
/*!40000 ALTER TABLE `DMIR_T_project` DISABLE KEYS */;
INSERT INTO `DMIR_T_project` VALUES (1,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00'),(2,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00'),(3,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00'),(4,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00'),(5,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00'),(6,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00'),(7,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00'),(8,1,'IndoAcro','content/indoacro_dark.png','IndoAcro is a repository of Indonesian Acronyms and Expansions. The acronyms and their expansions are extracted and collected automatically using a machine learning algorithm combined with big data technology in preprocessing side.','\"\"','\"\"','2019-08-26 00:00:00');
/*!40000 ALTER TABLE `DMIR_T_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DMIR_T_roles`
--

DROP TABLE IF EXISTS `DMIR_T_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DMIR_T_roles` (
  `id_r` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id_r`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DMIR_T_roles`
--

LOCK TABLES `DMIR_T_roles` WRITE;
/*!40000 ALTER TABLE `DMIR_T_roles` DISABLE KEYS */;
INSERT INTO `DMIR_T_roles` VALUES (1,'admin'),(2,'member');
/*!40000 ALTER TABLE `DMIR_T_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DMIR_T_team`
--

DROP TABLE IF EXISTS `DMIR_T_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DMIR_T_team` (
  `id_t` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_mg` int(11) NOT NULL,
  `name_t` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id_t`),
  KEY `fk_m_tm` (`f_id_mg`),
  CONSTRAINT `fk_m_tm` FOREIGN KEY (`f_id_mg`) REFERENCES `DMIR_T_member` (`id_m`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DMIR_T_team`
--

LOCK TABLES `DMIR_T_team` WRITE;
/*!40000 ALTER TABLE `DMIR_T_team` DISABLE KEYS */;
INSERT INTO `DMIR_T_team` VALUES (1,1,'IndoAcro 2','2019-08-26 00:00:00');
/*!40000 ALTER TABLE `DMIR_T_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DMIR_T_team_member`
--

DROP TABLE IF EXISTS `DMIR_T_team_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DMIR_T_team_member` (
  `id_tm` int(11) NOT NULL AUTO_INCREMENT,
  `f_id_t` int(11) NOT NULL,
  `f_id_m` int(11) NOT NULL,
  `invited_at_tm` datetime NOT NULL,
  PRIMARY KEY (`id_tm`),
  KEY `fk_t_ttm` (`f_id_t`),
  KEY `fk_m_tmm` (`f_id_m`),
  CONSTRAINT `fk_m_tmm` FOREIGN KEY (`f_id_m`) REFERENCES `DMIR_T_member` (`id_m`),
  CONSTRAINT `fk_t_ttm` FOREIGN KEY (`f_id_t`) REFERENCES `DMIR_T_team` (`id_t`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DMIR_T_team_member`
--

LOCK TABLES `DMIR_T_team_member` WRITE;
/*!40000 ALTER TABLE `DMIR_T_team_member` DISABLE KEYS */;
INSERT INTO `DMIR_T_team_member` VALUES (1,1,1,'2019-08-26 00:00:00'),(2,1,2,'2019-08-26 00:00:00');
/*!40000 ALTER TABLE `DMIR_T_team_member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-22  2:17:29
