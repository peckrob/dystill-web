-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: postfix
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(128) NOT NULL DEFAULT '',
  `access` varchar(128) NOT NULL DEFAULT '',
  `type` enum('recipient','sender','client') NOT NULL DEFAULT 'recipient',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES (1,'174.120.193.161','OK','client');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alias`
--

DROP TABLE IF EXISTS `alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `destination` varchar(128) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) NOT NULL,
  `goto` text NOT NULL,
  `domain` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alias`
--

LOCK TABLES `alias` WRITE;
/*!40000 ALTER TABLE `alias` DISABLE KEYS */;
INSERT INTO `alias` VALUES (1,'root','root@domain.com','0000-00-00 00:00:00','0000-00-00 00:00:00','','',''),(2,'postmaster','postmaster@domain.com','0000-00-00 00:00:00','0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `field` varchar(50) NOT NULL,
  `comparison` int(1) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
INSERT INTO `filters` VALUES (14,'rob@robpeck.com','From',2,'facebook.com',1),(24,'rob@robpeck.com','From',2,'myspace.com',1),(25,'rob@robpeck.com','From',2,'twitter.com',1),(26,'rob@robpeck.com','From',2,'facebookmail.com',1),(27,'rob@robpeck.com','From',2,'usaa.com',1),(28,'rob@robpeck.com','From',2,'amazon.com',1),(29,'rob@robpeck.com','From',2,'fanfiction.com',1),(30,'rob@robpeck.com','From',2,'aopa.org',1),(31,'rob@robpeck.com','From',2,'apple.com',1),(32,'rob@robpeck.com','From',2,'emailservices@dealnews.com',1),(33,'rob@robpeck.com','From',2,'tstickets.com',1),(34,'rob@robpeck.com','From',2,'wordpress@robpeck.com',1),(35,'rob@robpeck.com','From',2,'facebookappmail.com',1),(36,'rob@robpeck.com','X-Spam-Flag',3,'YES',1),(37,'rob@robpeck.com','From',2,'linkedin.com',1),(38,'kiran@kiranlightpaw.com','From',2,'twitter.com',1),(47,'kiran@kiranlightpaw.com','From',2,'livejournal.com',1),(48,'rob@robpeck.com','From',2,'vimeo.com',1),(49,'rob@robpeck.com','From',2,'mytransponder.com',1),(50,'rob@robpeck.com','From',2,'delta.com',1),(51,'rob@robpeck.com','From',2,'usps.com',1),(52,'rob@robpeck.com','From',2,'@aa.com',1),(53,'rob@robpeck.com','From',2,'bestwestern.com',1),(54,'rob@robpeck.com','From',2,'expedia.com',1),(55,'rob@robpeck.com','From',2,'advanceautoparts.com',1),(56,'rob@robpeck.com','From',2,'Cron Daemon',1),(57,'rob@robpeck.com','From',2,'digg.com',1),(58,'rob@robpeck.com','From',2,'about.me',1),(59,'rob@robpeck.com','From',2,'oknotify2.com',1),(60,'rob@robpeck.com','From',2,'hawaiianair.com',1),(61,'rob@robpeck.com','From',2,'hilton.com',1),(62,'rob@robpeck.com','From',2,'hiltonhhonors.com',1),(63,'rob@robpeck.com','From',2,'hsvairport.org',1),(64,'rob@robpeck.com','From',2,'orbitz.com',1),(65,'rob@robpeck.com','From',2,'hyatt.com',1),(66,'rob@robpeck.com','From',2,'kayak.com',1),(67,'rob@robpeck.com','From',2,'priceline.com',1),(68,'rob@robpeck.com','From',2,'email.travelzoo.com',1),(69,'rob@robpeck.com','From',2,'tripadvisor.com',1),(70,'rob@robpeck.com','From',2,'tripit.com',1),(71,'rob@robpeck.com','From',2,'usairways.com',1),(72,'rob@robpeck.com','From',2,'ebay.com',1),(73,'rob@robpeck.com','From',2,'paypal.com',1),(74,'rob@robpeck.com','From',2,'freemasonstore.com',1),(75,'rob@robpeck.com','From',2,'newegg.com',1),(76,'rob@robpeck.com','From',2,'classmates.com',1),(77,'rob@robpeck.com','From',2,'youtube.com',1),(79,'rob@robpeck.com','From',2,'flickr.com',1),(80,'rob@robpeck.com','From',2,'@enews.buy.com',1),(81,'rob@robpeck.com','From',2,'godaddy.com',1),(82,'rob@robpeck.com','From',2,'customercenter.net',1),(83,'rob@robpeck.com','To',2,'Phoebus72@yahoogroups.com',1),(84,'rob@robpeck.com','Subject',2,'[AtlantaPHP]',1),(85,'rob@robpeck.com','From',2,'hawaiianairlines.com',1),(86,'rob@robpeck.com','From',2,'macsales.com',1),(87,'rob@robpeck.com','From',2,'livingsocial.com',1),(88,'rob@robpeck.com','From',2,'groupon.com',1),(89,'rob@robpeck.com','From',2,'opentable.com',1),(90,'kiran@kiranlightpaw.com','From',2,'formspring.me',1),(91,'rob@robpeck.com','From',2,'woot.com',1),(92,'rob@robpeck.com','From',2,'itunes.com',1),(93,'rob@robpeck.com','From',2,'yelp.com',1),(94,'rob@robpeck.com','From',2,'att-mail.com',1),(95,'kiran@kiranlightpaw.com','From',2,'zazzle.com',1),(96,'kiran@kiranlightpaw.com','From',2,'dreamwidth.org',1),(97,'kiran@kiranlightpaw.com','From',2,'dailyburn.com',1),(98,'kiran@kiranlightpaw.com','From',2,'furaffinity.net',1),(99,'kiran@kiranlightpaw.com','From',2,'rabbitvalley.com',1),(100,'kiran@kiranlightpaw.com','From',2,'myspace.com',1),(101,'kiran@kiranlightpaw.com','From',2,'tumblr.com',1),(102,'rob@robpeck.com','From',2,'tripit.com',1),(103,'rob@robpeck.com','From',2,'trugreen.com',1),(104,'kiran@kiranlightpaw.com','From',2,'flickr.com',1),(105,'kiran@kiranlightpaw.com','From',2,'rabbitvalley.org',1),(106,'rob@robpeck.com','From',2,'bathandbodyworks.com',1),(107,'rob@robpeck.com','From',2,'email.aa.com',1),(108,'rob@robpeck.com','From',2,'bcbsal.org',1),(109,'rob@robpeck.com','From',2,'College of Liberal Arts',1),(110,'rob@robpeck.com','From',2,'driverside.com',1),(111,'rob@robpeck.com','From',2,'riptapparel.com',1),(112,'rob@robpeck.com','Return-Path',2,'delta-bounces@listserv3.auburn.edu',1),(113,'rob@robpeck.com','Return-Path',2,'deltasoc-bounces@listserv3.auburn.edu',1),(114,'kiran@kiranlightpaw.com','To',2,'fwa-coordinators@googlegroups.com',1),(115,'kiran@kiranlightpaw.com','To',2,'fwa-staff@googlegroups.com',1),(116,'kiran@kiranlightpaw.com','To',2,'fwa-execcom@googlegroups.com',1),(117,'kiran@kiranlightpaw.com','To',2,'dev@furryweekend.com',1),(118,'rob@robpeck.com','From',2,'bankofamerica.com',1),(119,'rob@robpeck.com','From',2,'naviblue.com',1),(120,'rob@robpeck.com','From',2,'tree-of-souls.com',1),(121,'rob@robpeck.com','From',2,'intuit.com',1),(122,'rob@robpeck.com','From',2,'turbotax.com',1),(123,'rob@robpeck.com','From',2,'ihg.com',1),(124,'rob@robpeck.com','From',2,'seeclickfix.com',1),(125,'rob@robpeck.com','From',2,'reddit.com',1),(126,'rob@robpeck.com','From',2,'ymcahuntsville.org',1),(127,'rob@robpeck.com','From',2,'avatarprime.net',1),(128,'rob@robpeck.com','From',2,'giganews.com',1),(129,'rob@robpeck.com','From',2,'betterbidding.com',1),(130,'rob@robpeck.com','From',2,'meetup.com',1),(131,'rob@robpeck.com','From',2,'netflix.com',1),(132,'rob@robpeck.com','From',2,'xmradio.com',1),(133,'rob@robpeck.com','From',2,'papajohns-specials.com',1),(134,'rob@robpeck.com','Return-Path',2,'meetup.com',1),(135,'rob@robpeck.com','From',2,'stmatthewsmadison.org',1),(136,'kiran@kiranlightpaw.com','To',2,'narfgroup@yahoogroups.com',1),(137,'kiran@kiranlightpaw.com','X-Spam-Flag',3,'YES',1),(138,'rob@robpeck.com','From',2,'dropbox.com',1),(139,'rob@robpeck.com','From',2,'hertz.com',1),(140,'rob@robpeck.com','From',2,'airfarewatchdog.com',1),(141,'rob@robpeck.com','From',2,'southwest.com',1),(142,'rob@robpeck.com','From',2,'ringcentral.com',1),(143,'rob@robpeck.com','From',2,'homedepot.com',1),(144,'rob@robpeck.com','From',2,'bestcontacts.com',1),(145,'rob@robpeck.com','From',2,'aopa@smartbrief.com',1),(147,'rob@robpeck.com','From',2,'plus.google.com',1),(148,'rob@robpeck.com','From',2,'dropboxmail.com',1),(149,'rob@robpeck.com','From',2,'aadvantageeshopping.com',1),(150,'rob@robpeck.com','From',2,'deals.revrocket.us',0),(151,'rob@robpeck.com','From',2,'marriott-email.com',1),(152,'rob@robpeck.com','From',2,'microtel.delivery.net',1),(153,'rob@robpeck.com','From',2,'promo.aa.com',1),(154,'rob@robpeck.com','From',2,'emails.super8.com',1),(155,'rob@robpeck.com','From',2,'trucare_mkt@mailca.rnmk.com',1),(156,'rob@robpeck.com','From',2,'wyndhamrewards.com',1),(157,'rob@robpeck.com','Return-Path',2,'e.lowes.com',1),(158,'rob@robpeck.com','From',2,'deals.revrocket.us',1),(159,'rob@robpeck.com','From',2,'xydo.com',1),(160,'rob@robpeck.com','From',2,'runkeeper.com',1),(161,'rob@robpeck.com','From',2,'harborfreight22.com',1),(162,'rob@robpeck.com','From',2,'giganews.com',1),(163,'rob@robpeck.com','From',2,'familycrossings.com',1),(164,'rob@robpeck.com','From',2,'maidenform.com',1),(165,'rob@robpeck.com','From',2,'thelimited.com',1),(166,'rob@robpeck.com','From',2,'victoriassecret.com',1),(167,'rob@robpeck.com','From',2,'bestbuy.com',1),(168,'rob@robpeck.com','From',2,'e.ae.com',1),(169,'rob@robpeck.com','From',2,'newport-news.com',1),(170,'kiran@kiranlightpaw.com','To',2,'rcfmstaff@yahoogroups.com',1),(171,'kiran@kiranlightpaw.com','From',2,'basecamp.com',1),(172,'kiran@kiranlightpaw.com','From',2,'foursquare.com',1),(173,'kiran@kiranlightpaw.com','Subject',2,'Furry Weekend Atlanta Staff Calendar',1),(174,'rob@robpeck.com','From',2,'discoverhomeloans.com',1),(175,'rob@robpeck.com','From',2,'onthecitymail.org',1),(176,'rob@robpeck.com','From',2,'loanadministration.com',1),(178,'rob@robpeck.com','From',2,'@ubt.com',1),(179,'rob@robpeck.com','From',2,'insurance-quote-solutions.com',1),(180,'rob@robpeck.com','From',2,'wyndhamhotelgroup.com',1),(181,'rob@robpeck.com','From',2,'collegesavings@reply.bronto.com',1),(182,'rob@robpeck.com','From',2,'tigerdirect.com',1),(183,'rob@robpeck.com','From',2,'shoppbs.org',1),(184,'rob@robpeck.com','From',2,'harborfreightemail.com',1),(185,'rob@robpeck.com','From',2,'angieslist.com',1),(186,'rob@robpeck.com','From',2,'notifications@disqus.net',1),(187,'rob@robpeck.com','From',2,'sportsauthority.com',1),(188,'rob@robpeck.com','From',2,'northerntoolemail.com',1),(189,'rob@robpeck.com','From',2,'nknews.org',1),(190,'rob@robpeck.com','From',2,'mint.com',1),(191,'rob@robpeck.com','From',2,'.hotels.com',1),(192,'rob@robpeck.com','From',2,'dividendmilesstorefront-email.com',1),(193,'rob@robpeck.com','From',2,'midwestsupplies.com',1),(194,'rob@robpeck.com','Subject',0,'SABnzbd',1),(195,'rob@robpeck.com','From',2,'novadevelopment.com',1);
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters_actions`
--

DROP TABLE IF EXISTS `filters_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters_actions` (
  `filter_id` int(11) DEFAULT NULL,
  `action` varchar(10) NOT NULL,
  `argument` varchar(255) NOT NULL,
  KEY `filter_id` (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters_actions`
--

LOCK TABLES `filters_actions` WRITE;
/*!40000 ALTER TABLE `filters_actions` DISABLE KEYS */;
INSERT INTO `filters_actions` VALUES (24,'to','Social/Myspace'),(25,'to','Social/Twitter'),(26,'to','Social/Facebook'),(27,'to','Banking/USAA'),(28,'to','Shopping/Amazon'),(29,'to','Social/FanFiction'),(30,'to','Flying/AOPA'),(31,'to','Shopping/Apple'),(33,'to','Shopping/Monaco Pictures'),(34,'to','Social/Blog Comments'),(35,'to','Social/Facebook'),(32,'to','Shopping/dealnews'),(36,'to','Spam'),(36,'markasread',''),(14,'to','Social/Facebook'),(37,'to','Social/LinkedIn'),(38,'to','Social/Twitter'),(47,'to','Social/LiveJournal'),(48,'to','Social/Vimeo'),(49,'to','Social/MyTransponder'),(50,'to','Travel/Delta'),(51,'to','Shopping/USPS'),(52,'to','Travel/American Airlines'),(53,'to','Travel/Best Western'),(54,'to','Travel/Expedia'),(55,'to','Shopping/Advance Auto Parts'),(56,'to','Network/Cron'),(57,'to','Social/Digg'),(58,'to','Social/AboutMe'),(59,'to','Social/OkCupid'),(60,'to','Travel/Hawaiian Airlines'),(61,'to','Travel/Hilton'),(62,'to','Travel/Hilton'),(63,'to','Travel/Huntsville Airport'),(64,'to','Travel/Orbitz'),(65,'to','Travel/Hyatt'),(66,'to','Travel/Kayak'),(67,'to','Travel/Priceline'),(69,'to','Travel/TripAdvisor'),(70,'to','Travel/TripIt'),(71,'to','Travel/USAirways'),(72,'to','Shopping/eBay'),(73,'to','Shopping/PayPal'),(74,'to','Shopping/FreeMasonStore'),(75,'to','Shopping/Newegg'),(76,'to','Social/Classmates'),(77,'to','Social/Youtube'),(79,'to','Social/Flickr'),(81,'to','Shopping/GoDaddy'),(82,'to','Banking/USAA'),(83,'to','Mailing Lists/Helion Lodge'),(85,'to','Travel/Hawaiian Airlines'),(86,'to','Shopping/OWC'),(87,'to','Shopping/LivingSocial'),(88,'to','Shopping/Groupon'),(89,'to','Shopping/OpenTable'),(90,'to','Social/Formspring'),(91,'to','Shopping/Woot'),(92,'to','Shopping/Apple'),(93,'to','Social/Yelp'),(95,'to','Shopping/Zazzle'),(96,'to','Social/Dreamwidth'),(97,'to','Social/DailyBurn'),(98,'to','Social/Furaffinity'),(99,'to','Shopping/Rabbit Valley'),(100,'to','Social/Myspace'),(101,'to','Social/Tumblr'),(102,'to','Social/TripIt'),(94,'to','Services/ATT'),(103,'to','Services/Trugreen'),(104,'to','Social/Flickr'),(105,'to','Shopping/Rabbit Valley'),(106,'to','Shopping/BathBodyWorks'),(107,'to','Travel/American Airlines'),(108,'to','Services/BCBS'),(109,'to','Mailing Lists/AU COLA'),(110,'to','Shopping/Advance Auto Parts'),(111,'to','Shopping/RIPT'),(114,'to','Conventions/FWA/Coordinators'),(115,'to','Conventions/FWA/Staff'),(116,'to','Conventions/FWA/ExecCom'),(117,'to','Conventions/FWA/Development'),(118,'to','Banking/Bank of America'),(119,'to','Social/Message Boards/NaviBlue'),(120,'to','Social/Message Boards/Tree of Souls'),(121,'to','Services/Turbotax'),(122,'to','Services/Turbotax'),(123,'to','Travel/Holiday Inn'),(124,'to','Services/SeeClickFix'),(125,'to','Social/Reddit'),(126,'to','Services/YMCA'),(127,'to','Social/Message Boards/AvatarPrime'),(128,'to','Services/Giganews'),(129,'to','Social/Message Boards/BetterBidding'),(130,'to','Social/Meetup'),(131,'to','Services/Netflix'),(132,'to','Services/SiriusXM'),(133,'to','Shopping/Papa Johns'),(134,'to','Social/Meetup'),(135,'to','Social/St Matthews'),(136,'to','Mailing Lists/NARF'),(137,'to','Spam'),(137,'markasread',''),(138,'to','Services/Dropbox'),(139,'to','Travel/Hertz'),(140,'to','Travel/Airfare Watchdog'),(141,'to','Travel/Southwest'),(142,'to','Services/RingCentral'),(143,'to','Shopping/Home Depot'),(80,'to','Shopping/Buy'),(145,'to','Flying/AOPA'),(144,'to','Shopping/Americas Best Contacts'),(147,'to','Social/Google+'),(148,'to','Services/Dropbox'),(149,'to','Travel/American Airlines'),(150,'to','Shopping/Rocket City Deals'),(151,'to','Travel/Marriott'),(152,'to','Travel/Wyndham'),(153,'to','Travel/American Airlines'),(154,'to','Travel/Wyndham'),(155,'to','Services/Trugreen'),(156,'to','Travel/Wyndham'),(158,'to','Shopping/Rocket City Deals'),(159,'to','Social/XYDO'),(160,'to','Social/RunKeeper'),(161,'to','Shopping/Harbor Freight'),(162,'to','Services/Giganews'),(163,'to','Social/FamilyCrossing'),(157,'to','Shopping/Lowes'),(164,'to','Shopping/Maidenform'),(165,'to','Shopping/The Limited'),(166,'to','Shopping/Victorias Secret'),(167,'to','Shopping/Best Buy'),(84,'to','Mailing Lists/Atlanta PHP'),(168,'to','Shopping/American Eagle'),(169,'to','Shopping/Newport News'),(170,'to','Conventions/RCFM/Staff'),(171,'to','Conventions/FWA/Basecamp'),(172,'to','Social/Foursquare'),(173,'forward','peckrob@gmail.com'),(112,'to','Mailing Lists/Delta (Brothers-Only)'),(113,'to','Mailing Lists/Delta (All)'),(175,'to','Social/The City'),(176,'to','Banking/Franklin American'),(178,'to','Banking/CollegeCounts 529'),(174,'forward','spam@uce.gov'),(174,'blocknote',''),(179,'forward','spam@uce.gov'),(179,'blocknote',''),(183,'to','Shopping/PBS'),(182,'to','Shopping/TigerDirect'),(181,'to','Banking/CollegeCounts 529'),(180,'to','Travel/Wyndham'),(184,'to','Shopping/Harbor Freight'),(185,'to','Services/Angie\'s List'),(186,'to','Social/Blog Comments'),(187,'to','Shopping/Sports Authority'),(188,'to','Shopping/Northern Tool'),(189,'to','Services/North Korea News'),(190,'to','Banking/Mint'),(191,'to','Travel/HotelsCom'),(192,'to','Travel/USAirways'),(68,'to','Travel/TravelZoo'),(193,'to','Shopping/Midwest Supplies'),(194,'to','Network/SABnzbd'),(195,'forward','spam@uce.gov'),(195,'blocknote','This address does not wish to receive spam from you, and has repeatedly attempted to unsubscribe. You are not honoring those unsubscribe requests. This message has been forward to the FTC\'s spam reporting system. Please do not attempt any futher contact w');
/*!40000 ALTER TABLE `filters_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relocated`
--

DROP TABLE IF EXISTS `relocated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relocated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `destination` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relocated`
--

LOCK TABLES `relocated` WRITE;
/*!40000 ALTER TABLE `relocated` DISABLE KEYS */;
INSERT INTO `relocated` VALUES (1,'rob@hirerobpeck.com','rob@robpeck.com');
/*!40000 ALTER TABLE `relocated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(128) NOT NULL DEFAULT '',
  `destination` varchar(128) NOT NULL DEFAULT 'virtual:',
  `active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
INSERT INTO `transport` VALUES (1,'epsilonthree.com','virtual:',1),(2,'kiranlightpaw.com','virtual:',1),(3,'robpeck.com','virtual:',1),(4,'hirerobpeck.com','virtual:',1),(5,'robandsarah.org','virtual:',1),(6,'taronyu.net','virtual:',1),(7,'bamafurs.org','virtual:',1),(8,'tsaheylu.com','virtual:',1),(9,'frobaus.com','virtual:',1),(11,'fishconatlanta.com','virtual:',1),(12,'thepeckfamily.org','virtual:',1),(13,'sarahsbeadshop.com','virtual:',1),(14,'robpeckconsulting.com','virtual:',1),(15,'mufarchive.com','virtual:',1);
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `clear` varchar(128) NOT NULL DEFAULT '',
  `name` tinytext NOT NULL,
  `uid` int(4) NOT NULL DEFAULT '5000',
  `gid` int(4) NOT NULL DEFAULT '5000',
  `homedir` varchar(50) NOT NULL DEFAULT '/var/mail/boxes',
  `maildir` tinytext NOT NULL,
  `quota` tinytext NOT NULL,
  `postfix` enum('n','y') NOT NULL DEFAULT 'y',
  `su` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'kiran@kiranlightpaw.com','hNaCdTPl9xOkQGdcCPiU','Kiran Lightpaw',5000,5000,'/var/mail/boxes','kiran@kiranlightpaw.com/','','y',1),(4,'rob@robpeck.com','m3CyGt1Ed68o1DJRlYQj','Rob Peck',5000,5000,'/var/mail/boxes','rob@robpeck.com/','','y',1),(5,'rpeck@frobaus.com','aeVcyVhOXs0FQPH7Hix9','Rob Peck',5000,5000,'/var/mail/boxes','rpeck@frobaus.com/','','y',0),(6,'scarlett.rose@thepeckfamily.org','hiph9vimy4zo5jy','Scarlett Rose Peck',5000,5000,'/var/mail/boxes','scarlett.rose@thepeckfamily.org/','','y',0),(7,'sarah@sarahsbeadshop.com','spe4fila8je5zih','Sarah Peck',5000,5000,'/var/mail/boxes','sarah@sarahsbeadshop.com','','y',0),(8,'rob@robpeckconsulting.com','iSyXfnjdPGjy4k1AdfvL','Rob Peck',5000,5000,'/var/mail/boxes','rob@robpeckconsulting.com','','y',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtual`
--

DROP TABLE IF EXISTS `virtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL DEFAULT '',
  `destination` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtual`
--

LOCK TABLES `virtual` WRITE;
/*!40000 ALTER TABLE `virtual` DISABLE KEYS */;
INSERT INTO `virtual` VALUES (1,'rob@hirerobpeck.com','rob@robpeck.com'),(2,'rob@robandsarah.org','rob@robpeck.com'),(3,'sarah@robandsarah.org','sbuschma@gmail.com'),(4,'admin@bamafurs.org','kiran@kiranlightpaw.com'),(5,'ikran@tsaheylu.com','rob@robpeck.com'),(6,'airplanemode@frobaus.com','rpeck@frobaus.com'),(7,'apple@frobaus.com','rpeck@frobaus.com'),(8,'feedback@frobaus.com','rpeck@frobaus.com'),(9,'twitter@frobaus.com','rpeck@frobaus.com'),(10,'us@robandsarah.org','rob@robpeck.com'),(11,'us@robandsarah.org','sbuschma@gmail.com'),(12,'bodega@frobaus.com','rpeck@frobaus.com'),(14,'info@fishconatlanta.com','blucey@gmail.com'),(15,'webmaster@bamafurs.org','kiran@kiranlightpaw.com'),(16,'maintainer@mufarchive.com','kiran@kiranlightpaw.com');
/*!40000 ALTER TABLE `virtual` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-12 15:07:23
