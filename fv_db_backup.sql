-- MySQL dump 10.10
--
-- Host: localhost    Database: fv_db
-- ------------------------------------------------------
-- Server version	5.0.16

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group`
--


/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
LOCK TABLES `auth_group` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `permission_id_refs_id_5886d21f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_group_permissions`
--


/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
LOCK TABLES `auth_group_permissions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `auth_message_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_message`
--


/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
LOCK TABLES `auth_message` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--


/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
LOCK TABLES `auth_permission` WRITE;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add company',9,'add_company'),(26,'Can change company',9,'change_company'),(27,'Can delete company',9,'delete_company'),(28,'Can add genre',10,'add_genre'),(29,'Can change genre',10,'change_genre'),(30,'Can delete genre',10,'delete_genre'),(31,'Can add venue',11,'add_venue'),(32,'Can change venue',11,'change_venue'),(33,'Can delete venue',11,'delete_venue'),(34,'Can add show',12,'add_show'),(35,'Can change show',12,'change_show'),(36,'Can delete show',12,'delete_show'),(37,'Can add author',13,'add_author'),(38,'Can change author',13,'change_author'),(39,'Can delete author',13,'delete_author'),(40,'Can add short',14,'add_short'),(41,'Can change short',14,'change_short'),(42,'Can delete short',14,'delete_short');
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--


/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
LOCK TABLES `auth_user` WRITE;
INSERT INTO `auth_user` VALUES (1,'admin','','','admin@fringevine.com','sha1$5f97b$9f09680308a59e39faf4498919a3e46a4d9648af',1,1,1,'2008-07-28 12:49:17','2008-07-28 12:48:51');
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `group_id_refs_id_f116770` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_groups`
--


/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
LOCK TABLES `auth_user_groups` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `permission_id_refs_id_67e79cb` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user_user_permissions`
--


/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
LOCK TABLES `auth_user_user_permissions` WRITE;
UNLOCK TABLES;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_user_id` (`user_id`),
  KEY `django_admin_log_content_type_id` (`content_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--


/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
LOCK TABLES `django_admin_log` WRITE;
INSERT INTO `django_admin_log` VALUES (1,'2008-07-28 12:49:47',1,13,'1','Fringevine',1,''),(2,'2008-07-28 12:50:04',1,9,'1','Fringevine Dummy Company',1,''),(3,'2008-07-28 12:50:12',1,10,'1','Comedy',1,''),(4,'2008-07-28 12:50:29',1,11,'1','Fringevine Dummy Venue',1,''),(5,'2008-07-28 12:50:47',1,12,'1','Fringevine Dummy Show',1,''),(6,'2008-07-28 12:50:57',1,10,'2','Theatre',1,''),(7,'2008-07-28 12:51:01',1,10,'3','Dance',1,''),(8,'2008-07-28 12:51:14',1,10,'4','Music',1,''),(9,'2008-07-28 12:51:16',1,10,'5','Musicals & Opera',1,''),(10,'2008-07-28 12:51:23',1,10,'6','Children\'s',1,''),(11,'2008-07-28 12:51:37',1,10,'7','Events',1,''),(12,'2008-07-28 12:51:38',1,10,'8','Exhibitions',1,'');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--


/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
LOCK TABLES `django_content_type` WRITE;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'company','shorts','company'),(10,'genre','shorts','genre'),(11,'venue','shorts','venue'),(12,'show','shorts','show'),(13,'author','shorts','author'),(14,'short','shorts','short');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--


/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
LOCK TABLES `django_session` WRITE;
INSERT INTO `django_session` VALUES ('4340c74e0bee16fd8bdeb7fc1a0a1434','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k\ncy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEEigEBdS45ZGJkNjhmNzdiNWY4MzE1Yjlm\nNTZhNTU1MmQ2ODc2NA==\n','2008-08-11 12:49:17');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--


/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
LOCK TABLES `django_site` WRITE;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
UNLOCK TABLES;
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;

--
-- Table structure for table `shorts_author`
--

DROP TABLE IF EXISTS `shorts_author`;
CREATE TABLE `shorts_author` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `IP` char(15) default NULL,
  `login` varchar(50) default NULL,
  `pass_hash` varchar(50) default NULL,
  `source` varchar(50) default NULL,
  `url` varchar(255) default NULL,
  `sms` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shorts_author`
--


/*!40000 ALTER TABLE `shorts_author` DISABLE KEYS */;
LOCK TABLES `shorts_author` WRITE;
INSERT INTO `shorts_author` VALUES (1,'Fringevine','127.0.0.1','fringevine','','','http://www.fringevine.com',NULL);
UNLOCK TABLES;
/*!40000 ALTER TABLE `shorts_author` ENABLE KEYS */;

--
-- Table structure for table `shorts_company`
--

DROP TABLE IF EXISTS `shorts_company`;
CREATE TABLE `shorts_company` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shorts_company`
--


/*!40000 ALTER TABLE `shorts_company` DISABLE KEYS */;
LOCK TABLES `shorts_company` WRITE;
INSERT INTO `shorts_company` VALUES (1,'Fringevine Dummy Company');
UNLOCK TABLES;
/*!40000 ALTER TABLE `shorts_company` ENABLE KEYS */;

--
-- Table structure for table `shorts_genre`
--

DROP TABLE IF EXISTS `shorts_genre`;
CREATE TABLE `shorts_genre` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shorts_genre`
--


/*!40000 ALTER TABLE `shorts_genre` DISABLE KEYS */;
LOCK TABLES `shorts_genre` WRITE;
INSERT INTO `shorts_genre` VALUES (1,'Comedy'),(2,'Theatre'),(3,'Dance'),(4,'Music'),(5,'Musicals & Opera'),(6,'Children\'s'),(7,'Events'),(8,'Exhibitions');
UNLOCK TABLES;
/*!40000 ALTER TABLE `shorts_genre` ENABLE KEYS */;

--
-- Table structure for table `shorts_short`
--

DROP TABLE IF EXISTS `shorts_short`;
CREATE TABLE `shorts_short` (
  `id` int(11) NOT NULL auto_increment,
  `author_id` int(11) NOT NULL,
  `text` varchar(200) NOT NULL,
  `show_id` int(11) NOT NULL,
  `source` varchar(255) default NULL,
  `date` datetime NOT NULL,
  `thumbsup` decimal(5,3) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `shorts_short_author_id` (`author_id`),
  KEY `shorts_short_show_id` (`show_id`),
  FULLTEXT KEY `shorts_short_ft` (`text`,`source`),
  FULLTEXT KEY `in_shorts_short` (`text`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shorts_short`
--


/*!40000 ALTER TABLE `shorts_short` DISABLE KEYS */;
LOCK TABLES `shorts_short` WRITE;
INSERT INTO `shorts_short` VALUES (1,1,'Soccer Moms: better than expected, really incisive humour',1,NULL,'2008-07-28 12:52:05','0.000'),(2,1,'hamlet quite funny, juggling was out of place and very amateurish',1,NULL,'2008-07-28 12:52:38','0.000'),(3,1,'Kids loved Jabberwocky. A must see! A++',1,NULL,'2008-07-28 12:52:54','0.000'),(4,1,'reduced fringe really good, worth seeing, but on at a bad time',1,NULL,'2008-07-28 12:53:49','0.000'),(5,1,'japanese trad comedy just didnt work... waste of 8 quid',1,NULL,'2008-07-28 12:54:16','0.000');
UNLOCK TABLES;
/*!40000 ALTER TABLE `shorts_short` ENABLE KEYS */;

--
-- Table structure for table `shorts_show`
--

DROP TABLE IF EXISTS `shorts_show`;
CREATE TABLE `shorts_show` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `desc` longtext,
  `date_from` datetime default NULL,
  `date_to` datetime default NULL,
  `edfringe_id` int(11) NOT NULL,
  `thumbsup` decimal(5,3) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `shorts_show_company_id` (`company_id`),
  KEY `shorts_show_genre_id` (`genre_id`),
  KEY `shorts_show_venue_id` (`venue_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shorts_show`
--


/*!40000 ALTER TABLE `shorts_show` DISABLE KEYS */;
LOCK TABLES `shorts_show` WRITE;
INSERT INTO `shorts_show` VALUES (1,'Fringevine Dummy Show',1,1,1,'Fringevine placeholder show for later reconciliation.',NULL,NULL,0,'0.000');
UNLOCK TABLES;
/*!40000 ALTER TABLE `shorts_show` ENABLE KEYS */;

--
-- Table structure for table `shorts_venue`
--

DROP TABLE IF EXISTS `shorts_venue`;
CREATE TABLE `shorts_venue` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) default NULL,
  `gridref` varchar(10) default NULL,
  `phone` int(11) default NULL,
  `edfringe_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shorts_venue`
--


/*!40000 ALTER TABLE `shorts_venue` DISABLE KEYS */;
LOCK TABLES `shorts_venue` WRITE;
INSERT INTO `shorts_venue` VALUES (1,'Fringevine Dummy Venue','Fringevine HQ','A1',NULL,0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `shorts_venue` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

