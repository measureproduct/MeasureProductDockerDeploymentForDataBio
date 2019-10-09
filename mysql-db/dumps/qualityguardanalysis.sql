-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: qualityguardanalysis
-- ------------------------------------------------------
-- Server version	5.7.21-1ubuntu1

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
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('00000000000001','jhipster','config/liquibase/changelog/00000000000000_initial_schema.xml','2019-10-09 13:47:14',1,'EXECUTED','7:b10e7bd1b2793b69531cd807677d7f94','createTable tableName=jhi_user; createIndex indexName=idx_user_login, tableName=jhi_user; createIndex indexName=idx_user_email, tableName=jhi_user; createTable tableName=jhi_authority; createTable tableName=jhi_user_authority; addPrimaryKey tableN...','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150824-1','jhipster','config/liquibase/changelog/20180124150824_added_entity_QualityGuard.xml','2019-10-09 13:47:14',2,'EXECUTED','7:0afb3e50aaeb4073d3417f9818c9a9e0','createTable tableName=quality_guard','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150825-1','jhipster','config/liquibase/changelog/20180124150825_added_entity_GuardCondition.xml','2019-10-09 13:47:14',3,'EXECUTED','7:780912c7da22d2177e702e6b3dcee63e','createTable tableName=guard_condition','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150826-1','jhipster','config/liquibase/changelog/20180124150826_added_entity_Violation.xml','2019-10-09 13:47:14',4,'EXECUTED','7:a05ca7f6ae7562db3244c8918d659dc4','createTable tableName=violation','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150827-1','jhipster','config/liquibase/changelog/20180124150827_added_entity_ConditionViolation.xml','2019-10-09 13:47:15',5,'EXECUTED','7:be3d12f620fb793dd34c50474810c98e','createTable tableName=condition_violation','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150824-2','jhipster','config/liquibase/changelog/20180124150824_added_entity_constraints_QualityGuard.xml','2019-10-09 13:47:15',6,'EXECUTED','7:24564394d84a014fc79eab585a42613b','addForeignKeyConstraint baseTableName=quality_guard, constraintName=fk_quality_guard_violation_id, referencedTableName=violation','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150825-2','jhipster','config/liquibase/changelog/20180124150825_added_entity_constraints_GuardCondition.xml','2019-10-09 13:47:16',7,'EXECUTED','7:ad20473f42d6609aa659926863f24b7b','addForeignKeyConstraint baseTableName=guard_condition, constraintName=fk_guard_condition_quality_guard_id, referencedTableName=quality_guard','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150826-2','jhipster','config/liquibase/changelog/20180124150826_added_entity_constraints_Violation.xml','2019-10-09 13:47:16',8,'EXECUTED','7:a64f949f265cc51f47ee6297c8c6c594','addForeignKeyConstraint baseTableName=violation, constraintName=fk_violation_quality_guard_id, referencedTableName=quality_guard','',NULL,'3.5.3',NULL,NULL,'0621629569'),('20180124150827-2','jhipster','config/liquibase/changelog/20180124150827_added_entity_constraints_ConditionViolation.xml','2019-10-09 13:47:18',9,'EXECUTED','7:495e10db48c79fa3dd9e9f7765fe5d30','addForeignKeyConstraint baseTableName=condition_violation, constraintName=fk_condition_violation_guard_condition_id, referencedTableName=guard_condition; addForeignKeyConstraint baseTableName=condition_violation, constraintName=fk_condition_violat...','',NULL,'3.5.3',NULL,NULL,'0621629569'),('1519905976469-1','aboudeffa (generated)','classpath:config/liquibase/master.xml','2019-10-09 13:47:18',10,'EXECUTED','7:b576f1d92c655446ede580a03097684b','addColumn tableName=condition_violation','',NULL,'3.5.3',NULL,NULL,'0621629569'),('1519905976469-2','aboudeffa (generated)','classpath:config/liquibase/master.xml','2019-10-09 13:47:18',11,'EXECUTED','7:3129105fe6d3aaf414343b249e94b339','addColumn tableName=condition_violation','',NULL,'3.5.3',NULL,NULL,'0621629569'),('1519905976469-3','aboudeffa (generated)','classpath:config/liquibase/master.xml','2019-10-09 13:47:18',12,'EXECUTED','7:91a3d8f0d3731f8b14053f4cb975a8f9','dropForeignKeyConstraint baseTableName=condition_violation, constraintName=fk_condition_violation_guard_condition_id','',NULL,'3.5.3',NULL,NULL,'0621629569'),('1519905976469-4','aboudeffa (generated)','classpath:config/liquibase/master.xml','2019-10-09 13:47:19',13,'EXECUTED','7:ebb81a56856adc12d91536cbdf2703fc','dropColumn columnName=guard_condition_id, tableName=condition_violation','',NULL,'3.5.3',NULL,NULL,'0621629569'),('1520332025483-1','aboudeffa (generated)','classpath:config/liquibase/master.xml','2019-10-09 13:47:19',14,'EXECUTED','7:0dea6b744f5d6257671a3f9d5ec51445','addColumn tableName=guard_condition','',NULL,'3.5.3',NULL,NULL,'0621629569');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,'\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_violation`
--

DROP TABLE IF EXISTS `condition_violation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condition_violation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `condition_value` varchar(255) DEFAULT NULL,
  `condition_status` varchar(255) DEFAULT NULL,
  `violation_id` bigint(20) DEFAULT NULL,
  `measure_field` varchar(255) DEFAULT NULL,
  `measure_instance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_condition_violation_violation_id` (`violation_id`),
  CONSTRAINT `fk_condition_violation_violation_id` FOREIGN KEY (`violation_id`) REFERENCES `violation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_violation`
--

LOCK TABLES `condition_violation` WRITE;
/*!40000 ALTER TABLE `condition_violation` DISABLE KEYS */;
/*!40000 ALTER TABLE `condition_violation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guard_condition`
--

DROP TABLE IF EXISTS `guard_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guard_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `measure_instance` varchar(255) DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `error_value` float DEFAULT NULL,
  `warning_value` float DEFAULT NULL,
  `measure_field` varchar(255) DEFAULT NULL,
  `interval_agregation` varchar(255) DEFAULT NULL,
  `quality_guard_id` bigint(20) DEFAULT NULL,
  `measure_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_guard_condition_quality_guard_id` (`quality_guard_id`),
  CONSTRAINT `fk_guard_condition_quality_guard_id` FOREIGN KEY (`quality_guard_id`) REFERENCES `quality_guard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guard_condition`
--

LOCK TABLES `guard_condition` WRITE;
/*!40000 ALTER TABLE `guard_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `guard_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_authority`
--

DROP TABLE IF EXISTS `jhi_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_authority`
--

LOCK TABLES `jhi_authority` WRITE;
/*!40000 ALTER TABLE `jhi_authority` DISABLE KEYS */;
INSERT INTO `jhi_authority` VALUES ('ROLE_ADMIN'),('ROLE_USER');
/*!40000 ALTER TABLE `jhi_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_persistent_audit_event`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) NOT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `idx_persistent_audit_event` (`principal`,`event_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_persistent_audit_event`
--

LOCK TABLES `jhi_persistent_audit_event` WRITE;
/*!40000 ALTER TABLE `jhi_persistent_audit_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhi_persistent_audit_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_persistent_audit_evt_data`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`name`),
  KEY `idx_persistent_audit_evt_data` (`event_id`),
  CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_persistent_audit_evt_data`
--

LOCK TABLES `jhi_persistent_audit_evt_data` WRITE;
/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhi_persistent_audit_evt_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_user`
--

DROP TABLE IF EXISTS `jhi_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(6) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_user_login` (`login`),
  UNIQUE KEY `idx_user_login` (`login`),
  UNIQUE KEY `ux_user_email` (`email`),
  UNIQUE KEY `idx_user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_user`
--

LOCK TABLES `jhi_user` WRITE;
/*!40000 ALTER TABLE `jhi_user` DISABLE KEYS */;
INSERT INTO `jhi_user` VALUES (1,'system','$2a$10$mE.qmcV0mFU5NcKh73TZx.z4ueI/.bDWbj0T1BYyqP481kGGarKLG','System','System','system@localhost','','','en',NULL,NULL,'system','2019-10-09 11:47:12',NULL,'system',NULL),(2,'anonymoususer','$2a$10$j8S5d7Sr7.8VTOYNviDPOeWX8KcYILUVJBsYV83Y5NtECayypx9lO','Anonymous','User','anonymous@localhost','','','en',NULL,NULL,'system','2019-10-09 11:47:12',NULL,'system',NULL),(3,'admin','$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC','Administrator','Administrator','admin@localhost','','','en',NULL,NULL,'system','2019-10-09 11:47:12',NULL,'system',NULL),(4,'user','$2a$10$VEjxo0jq2YG9Rbk2HmX9S.k1uZBGYUHdUcid3g/vfiEl7lwWgOH/K','User','User','user@localhost','','','en',NULL,NULL,'system','2019-10-09 11:47:12',NULL,'system',NULL);
/*!40000 ALTER TABLE `jhi_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jhi_user_authority`
--

DROP TABLE IF EXISTS `jhi_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`authority_name`),
  KEY `fk_authority_name` (`authority_name`),
  CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_user_authority`
--

LOCK TABLES `jhi_user_authority` WRITE;
/*!40000 ALTER TABLE `jhi_user_authority` DISABLE KEYS */;
INSERT INTO `jhi_user_authority` VALUES (1,'ROLE_ADMIN'),(3,'ROLE_ADMIN'),(1,'ROLE_USER'),(3,'ROLE_USER'),(4,'ROLE_USER');
/*!40000 ALTER TABLE `jhi_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quality_guard`
--

DROP TABLE IF EXISTS `quality_guard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quality_guard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quality_guard_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `combination_mode` varchar(255) DEFAULT NULL,
  `measure_project_id` int(11) DEFAULT NULL,
  `is_schedule` bit(1) DEFAULT NULL,
  `violation_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `violation_id` (`violation_id`),
  CONSTRAINT `fk_quality_guard_violation_id` FOREIGN KEY (`violation_id`) REFERENCES `violation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quality_guard`
--

LOCK TABLES `quality_guard` WRITE;
/*!40000 ALTER TABLE `quality_guard` DISABLE KEYS */;
/*!40000 ALTER TABLE `quality_guard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `violation`
--

DROP TABLE IF EXISTS `violation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `violation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `incident_start_date` varchar(255) DEFAULT NULL,
  `incident_end_date` varchar(255) DEFAULT NULL,
  `violation_status` varchar(255) DEFAULT NULL,
  `quality_guard_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_violation_quality_guard_id` (`quality_guard_id`),
  CONSTRAINT `fk_violation_quality_guard_id` FOREIGN KEY (`quality_guard_id`) REFERENCES `quality_guard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `violation`
--

LOCK TABLES `violation` WRITE;
/*!40000 ALTER TABLE `violation` DISABLE KEYS */;
/*!40000 ALTER TABLE `violation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-09 13:48:04
