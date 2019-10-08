-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: measureplatform
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
  `LABELS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES ('00000000000001','softeam','classpath:config/liquibase/schema/initial_schema.xml','2019-10-03 16:11:48',1,'EXECUTED','7:d4b811c59317522e05a387bcf57240b5','createTable, createIndex (x2), createTable (x2), addPrimaryKey, createTable, addPrimaryKey, createTable, addPrimaryKey, createTable, addForeignKeyConstraint (x3), loadData, dropDefaultValue, loadData (x2), createTable (x2), addPrimaryKey, createIn...','',NULL,'3.4.2',NULL,NULL),('20180131133433-1','softeam','classpath:config/liquibase/schema/entity_AnalysisCard.xml','2019-10-03 16:11:48',2,'EXECUTED','7:8d0e728d6c830be8499dd8f58a5c6538','createTable','',NULL,'3.4.2',NULL,NULL),('20171219133433-8','softeam','classpath:config/liquibase/schema/entity_ProjectAnalysis.xml','2019-10-03 16:11:49',3,'EXECUTED','7:dd448355fde35d6c5677001f227e8883','createTable','',NULL,'3.4.2',NULL,NULL),('20161109133431-1','softeam','classpath:config/liquibase/schema/entity_Project.xml','2019-10-03 16:11:49',4,'EXECUTED','7:b11ff7f0e4e9c0448fb34a790cd41e69','createTable, dropDefaultValue','',NULL,'3.4.2',NULL,NULL),('20161109133433-1','softeam','classpath:config/liquibase/schema/entity_Dashboard.xml','2019-10-03 16:11:50',5,'EXECUTED','7:128183c0b06fbc0a76ced8ff33252698','createTable (x2), addPrimaryKey','',NULL,'3.4.2',NULL,NULL),('20161109133434-1','softeam','classpath:config/liquibase/schema/entity_MeasureInstance.xml','2019-10-03 16:11:50',6,'EXECUTED','7:9c469e747e821b96f55957258460dace','createTable','',NULL,'3.4.2',NULL,NULL),('20161109133435-1','softeam','classpath:config/liquibase/schema/entity_MeasureProperty.xml','2019-10-03 16:11:51',7,'EXECUTED','7:2be060496c216931760cc7e5dbe9588a','createTable','',NULL,'3.4.2',NULL,NULL),('20161109133436-1','softeam','classpath:config/liquibase/schema/entity_MeasureView.xml','2019-10-03 16:11:51',8,'EXECUTED','7:c6129c55e9f41e199c6d27b423fcdc9f','createTable','',NULL,'3.4.2',NULL,NULL),('20161212133434-1','softeam','classpath:config/liquibase/schema/entity_MeasureReference.xml','2019-10-03 16:11:51',9,'EXECUTED','7:05bf49fefea6f863d304525965f41678','createTable','',NULL,'3.4.2',NULL,NULL),('20170619133432-1','softeam','classpath:config/liquibase/schema/entity_Notification.xml','2019-10-03 16:11:51',10,'EXECUTED','7:c89001a261246786fbe6b99ae3e6b136','createTable','',NULL,'3.4.2',NULL,NULL),('20190110165152','softeam','classpath:config/liquibase/schema/entity_Application.xml','2019-10-03 16:11:51',11,'EXECUTED','7:f81ddee41d14bd318632707d1ff383a1','createTable','',NULL,'3.4.2',NULL,NULL),('20171219133433-7','softeam','classpath:config/liquibase/schema/entity_AlertEvent.xml','2019-10-03 16:11:52',12,'EXECUTED','7:1f9dfec67d017d375285aaa6d5bc2f19','createTable','',NULL,'3.4.2',NULL,NULL),('20171219133433-6','softeam','classpath:config/liquibase/schema/entity_AlertEventProperty.xml','2019-10-03 16:11:52',13,'EXECUTED','7:5509b5307594653ce55550f8d87b6d87','createTable','',NULL,'3.4.2',NULL,NULL),('20161109133433-2','softeam','classpath:config/liquibase/schema/entity_Dashboard_constraints.xml','2019-10-03 16:11:54',14,'EXECUTED','7:3dc31e142f110221724308b53ae20b8b','addForeignKeyConstraint (x3)','',NULL,'3.4.2',NULL,NULL),('20161109133434-2','softeam','classpath:config/liquibase/schema/entity_MeasureInstance_constraints.xml','2019-10-03 16:11:55',15,'EXECUTED','7:56e5dad8b9b974f797be5852dc09e120','addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),('20161109133435-2','softeam','classpath:config/liquibase/schema/entity_MeasureProperty_constraints.xml','2019-10-03 16:11:55',16,'EXECUTED','7:eaf7791f9f0e4d99b9aee3d2551acf09','addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),('20161109133436-2','softeam','classpath:config/liquibase/schema/entity_MeasureView_constraints.xml','2019-10-03 16:11:58',17,'EXECUTED','7:22f41e0537aa571b89acedb0b4175c39','addForeignKeyConstraint (x5)','',NULL,'3.4.2',NULL,NULL),('20161212133434-2','softeam','classpath:config/liquibase/schema/entity_MeasureReference_constraints.xml','2019-10-03 16:11:59',18,'EXECUTED','7:a54ce4a010f9b119d22e113750ca0f13','addForeignKeyConstraint (x2)','',NULL,'3.4.2',NULL,NULL),('20170619133432-2','softeam','classpath:config/liquibase/schema/entity_Notification_constraints.xml','2019-10-03 16:12:00',19,'EXECUTED','7:ed119c1865f235f33fd1f66bcdc8e967','addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),('20171219133433-5','softeam','classpath:config/liquibase/schema/entity_ProjectAnalysis_constraints.xml','2019-10-03 16:12:00',20,'EXECUTED','7:4d6183834d0211d65e3ab3afb16ab56f','addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),('20180131133433-2','softeam','classpath:config/liquibase/schema/entity_AnalysisCard_constraints.xml','2019-10-03 16:12:01',21,'EXECUTED','7:7fc57d8fccabb943200f72f1f68b56eb','addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),('20190110165153','softeam','classpath:config/liquibase/schema/entity_Application_constraints.xml','2019-10-03 16:12:01',22,'EXECUTED','7:fdc6e4716651eb802181c08207fd2dd5','addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),('20171219133433-4','softeam','classpath:config/liquibase/schema/entity_AlertEvent_constraints.xml','2019-10-03 16:12:02',23,'EXECUTED','7:6e6bc84819c62602e6d2ea8121f0fe21','addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL),('20171219133433-3','softeam','classpath:config/liquibase/schema/entity_AlertEventProperty_constraints.xml','2019-10-03 16:12:02',24,'EXECUTED','7:557e7558513fb38f712bd7244c2f0a6f','addForeignKeyConstraint','',NULL,'3.4.2',NULL,NULL);
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
-- Table structure for table `alert_event`
--

DROP TABLE IF EXISTS `alert_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(255) NOT NULL,
  `analysis_tool` varchar(255) NOT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alert_event_project_id` (`project_id`),
  CONSTRAINT `fk_alert_event_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert_event`
--

LOCK TABLES `alert_event` WRITE;
/*!40000 ALTER TABLE `alert_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alert_event_property`
--

DROP TABLE IF EXISTS `alert_event_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alert_event_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `alertevent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alert_event_property_alert_event_id` (`alertevent_id`),
  CONSTRAINT `fk_alert_event_property_alert_event_id` FOREIGN KEY (`alertevent_id`) REFERENCES `alert_event` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert_event_property`
--

LOCK TABLES `alert_event_property` WRITE;
/*!40000 ALTER TABLE `alert_event_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert_event_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analysiscard`
--

DROP TABLE IF EXISTS `analysiscard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analysiscard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `prefered_width` int(11) NOT NULL,
  `prefered_height` int(11) NOT NULL,
  `card_label` varchar(255) NOT NULL,
  `card_url` varchar(255) NOT NULL,
  `projectanalysis_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`,`prefered_width`,`prefered_height`),
  KEY `fk_analysiscard_project_analysis_id` (`projectanalysis_id`),
  CONSTRAINT `fk_analysiscard_project_analysis_id` FOREIGN KEY (`projectanalysis_id`) REFERENCES `project_analysis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analysiscard`
--

LOCK TABLES `analysiscard` WRITE;
/*!40000 ALTER TABLE `analysiscard` DISABLE KEYS */;
/*!40000 ALTER TABLE `analysiscard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `application_type` varchar(255) NOT NULL,
  `application_name` varchar(255) NOT NULL,
  `application_description` varchar(1024) NOT NULL,
  `enable` bit(1) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_application_project_id` (`project_id`),
  CONSTRAINT `fk_application_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dashboard_name` varchar(255) NOT NULL,
  `dashboard_description` varchar(1024) DEFAULT NULL,
  `mode` varchar(128) DEFAULT NULL,
  `kibana_id` varchar(128) DEFAULT NULL,
  `dashboard_content` varchar(1024) DEFAULT NULL,
  `auto` bit(1) DEFAULT NULL,
  `editable` bit(1) DEFAULT NULL,
  `time_periode` varchar(1024) DEFAULT NULL,
  `size` varchar(128) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_dashboard_project_id` (`project_id`),
  KEY `fk_measure_instance_dashboardn_id` (`application_id`),
  KEY `fk_dashboard_manager_id` (`manager_id`),
  CONSTRAINT `fk_dashboard_manager_id` FOREIGN KEY (`manager_id`) REFERENCES `jhi_user` (`id`),
  CONSTRAINT `fk_dashboard_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `fk_measure_instance_dashboardn_id` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
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
-- Table structure for table `jhi_persistent_token`
--

DROP TABLE IF EXISTS `jhi_persistent_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jhi_persistent_token` (
  `series` varchar(76) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `token_value` varchar(76) NOT NULL,
  `token_date` date DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`series`),
  KEY `fk_user_persistent_token` (`user_id`),
  CONSTRAINT `fk_user_persistent_token` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_persistent_token`
--

LOCK TABLES `jhi_persistent_token` WRITE;
/*!40000 ALTER TABLE `jhi_persistent_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `jhi_persistent_token` ENABLE KEYS */;
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
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(5) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NOT NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `idx_user_login` (`login`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `idx_user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jhi_user`
--

LOCK TABLES `jhi_user` WRITE;
/*!40000 ALTER TABLE `jhi_user` DISABLE KEYS */;
INSERT INTO `jhi_user` VALUES (1,'admin','$2a$10$gSAhZrxMllrbgj/kkK9UceBPpChGWJA7SYIb1Mqo.n5aNLq1/oRrC','Administrator','Administrator','admin@localhost','','en',NULL,NULL,'admin','2019-10-03 14:11:46',NULL,'admin',NULL);
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
INSERT INTO `jhi_user_authority` VALUES (1,'ROLE_ADMIN'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `jhi_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_instance`
--

DROP TABLE IF EXISTS `measure_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_instance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(255) NOT NULL,
  `instance_description` varchar(1024) DEFAULT NULL,
  `measure_name` varchar(255) NOT NULL,
  `measure_version` varchar(255) NOT NULL,
  `is_shedule` bit(1) DEFAULT NULL,
  `sheduling_expression` varchar(255) DEFAULT NULL,
  `scheduling_unit` varchar(255) DEFAULT NULL,
  `measure_type` varchar(255) DEFAULT NULL,
  `manage_last_measurement` bit(1) DEFAULT NULL,
  `is_remote` bit(1) DEFAULT NULL,
  `remote_adress` varchar(255) DEFAULT NULL,
  `remote_label` varchar(255) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `application_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_measure_instance_project_id` (`project_id`),
  KEY `fk_measure_instance_application_id` (`application_id`),
  CONSTRAINT `fk_measure_instance_application_id` FOREIGN KEY (`application_id`) REFERENCES `application` (`id`),
  CONSTRAINT `fk_measure_instance_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_instance`
--

LOCK TABLES `measure_instance` WRITE;
/*!40000 ALTER TABLE `measure_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `measure_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_property`
--

DROP TABLE IF EXISTS `measure_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_property` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_name` varchar(255) NOT NULL,
  `property_value` varchar(1024) DEFAULT NULL,
  `property_type` varchar(255) NOT NULL,
  `measure_instance_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_measure_property_measure_instance_id` (`measure_instance_id`),
  CONSTRAINT `fk_measure_property_measure_instance_id` FOREIGN KEY (`measure_instance_id`) REFERENCES `measure_instance` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_property`
--

LOCK TABLES `measure_property` WRITE;
/*!40000 ALTER TABLE `measure_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `measure_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_reference`
--

DROP TABLE IF EXISTS `measure_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_reference` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number_ref` bigint(20) DEFAULT NULL,
  `filter_expression` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `owner_instance_id` bigint(20) DEFAULT NULL,
  `referenced_instance_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_measure_reference_owner_instance_id` (`owner_instance_id`),
  KEY `fk_measure_reference_referenced_instance_id` (`referenced_instance_id`),
  CONSTRAINT `fk_measure_reference_owner_instance_id` FOREIGN KEY (`owner_instance_id`) REFERENCES `measure_instance` (`id`),
  CONSTRAINT `fk_measure_reference_referenced_instance_id` FOREIGN KEY (`referenced_instance_id`) REFERENCES `measure_instance` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_reference`
--

LOCK TABLES `measure_reference` WRITE;
/*!40000 ALTER TABLE `measure_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `measure_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measure_view`
--

DROP TABLE IF EXISTS `measure_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measure_view` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mode` varchar(20) DEFAULT NULL,
  `viewauto` bit(1) DEFAULT NULL,
  `default_view` bit(1) DEFAULT NULL,
  `viewname` varchar(1024) DEFAULT NULL,
  `viewdescription` varchar(1024) DEFAULT NULL,
  `width` varchar(1024) DEFAULT NULL,
  `height` varchar(1024) DEFAULT NULL,
  `font_size` varchar(1024) DEFAULT NULL,
  `viewtype` varchar(1024) DEFAULT NULL,
  `time_periode` varchar(1024) DEFAULT NULL,
  `time_agregation` varchar(1024) DEFAULT NULL,
  `view_data` varchar(2048) DEFAULT NULL,
  `kibana_name` varchar(2048) DEFAULT NULL,
  `visualised_property` varchar(2048) DEFAULT NULL,
  `date_index` varchar(2048) DEFAULT NULL,
  `color` varchar(2048) DEFAULT NULL,
  `projectoverview_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `dashboard_id` bigint(20) DEFAULT NULL,
  `measureinstance_id` bigint(20) DEFAULT NULL,
  `analysiscard_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_measure_view_projectoverview_id` (`projectoverview_id`),
  KEY `fk_measure_view_project_id` (`project_id`),
  KEY `fk_measure_view_dashboard_id` (`dashboard_id`),
  KEY `fk_measure_view_measureinstance_id` (`measureinstance_id`),
  KEY `fk_measure_view_analysiscard_id` (`analysiscard_id`),
  CONSTRAINT `fk_measure_view_analysiscard_id` FOREIGN KEY (`analysiscard_id`) REFERENCES `analysiscard` (`id`),
  CONSTRAINT `fk_measure_view_dashboard_id` FOREIGN KEY (`dashboard_id`) REFERENCES `dashboard` (`id`),
  CONSTRAINT `fk_measure_view_measureinstance_id` FOREIGN KEY (`measureinstance_id`) REFERENCES `measure_instance` (`id`),
  CONSTRAINT `fk_measure_view_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`),
  CONSTRAINT `fk_measure_view_projectoverview_id` FOREIGN KEY (`projectoverview_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measure_view`
--

LOCK TABLES `measure_view` WRITE;
/*!40000 ALTER TABLE `measure_view` DISABLE KEYS */;
/*!40000 ALTER TABLE `measure_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notification_title` varchar(255) NOT NULL,
  `notification_content` varchar(1024) DEFAULT NULL,
  `notification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `notification_type` varchar(255) NOT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `is_validated` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_notification_project_id` (`project_id`),
  CONSTRAINT `fk_notification_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `project_description` varchar(1024) DEFAULT NULL,
  `creation_date` timestamp NULL,
  `project_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_analysis`
--

DROP TABLE IF EXISTS `project_analysis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_analysis` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `analysis_tool_id` varchar(255) NOT NULL,
  `analysis_tool_description` varchar(1024) DEFAULT NULL,
  `dashboard_name` varchar(255) DEFAULT NULL,
  `configuration_url` varchar(512) DEFAULT NULL,
  `view_url` varchar(512) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_analysis_project_id` (`project_id`),
  CONSTRAINT `fk_project_analysis_project_id` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_analysis`
--

LOCK TABLES `project_analysis` WRITE;
/*!40000 ALTER TABLE `project_analysis` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_analysis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invited_project`
--

DROP TABLE IF EXISTS `user_invited_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_invited_project` (
  `user_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invited_project`
--

LOCK TABLES `user_invited_project` WRITE;
/*!40000 ALTER TABLE `user_invited_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invited_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_managed_project`
--

DROP TABLE IF EXISTS `user_managed_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_managed_project` (
  `user_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_managed_project`
--

LOCK TABLES `user_managed_project` WRITE;
/*!40000 ALTER TABLE `user_managed_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_managed_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_viewed_dashboard`
--

DROP TABLE IF EXISTS `user_viewed_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_viewed_dashboard` (
  `user_id` bigint(20) NOT NULL,
  `dashboard_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`dashboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_viewed_dashboard`
--

LOCK TABLES `user_viewed_dashboard` WRITE;
/*!40000 ALTER TABLE `user_viewed_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_viewed_dashboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-08 18:03:21
