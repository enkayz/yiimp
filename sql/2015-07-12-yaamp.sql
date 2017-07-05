-- MySQL dump 10.15  Distrib 10.0.20-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: yaamp
-- ------------------------------------------------------
-- Server version	10.0.20-MariaDB

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `coinid` int(11) DEFAULT NULL,
  `last_login` int(10) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT '0',
  `no_fees` tinyint(1) DEFAULT NULL,
  `logtraffic` tinyint(1) DEFAULT NULL,
  `balance` double DEFAULT '0',
  `username` varchar(40) NOT NULL,
  `coinsymbol` varchar(16) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `hostaddr` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `coin` (`coinid`),
  KEY `balance` (`balance`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `algos`
--

DROP TABLE IF EXISTS `algos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `algos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `factor` double DEFAULT NULL,
  `overflow` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `algos`
--

LOCK TABLES `algos` WRITE;
/*!40000 ALTER TABLE `algos` DISABLE KEYS */;
INSERT INTO `algos` VALUES (1,'scrypt',0.0000000000000047781462708817,10.286870953541,1,1);
INSERT INTO `algos` VALUES (2,'scryptn',0,0,0.5,1);
INSERT INTO `algos` VALUES (3,'neoscrypt',1.021920748486e-17,9.9206082779562,0.3,1);
INSERT INTO `algos` VALUES (4,'quark',0.0000025852519869382,0.0002870346651188,5,1);
INSERT INTO `algos` VALUES (5,'lyra2',4.2254517143592e-16,0.85535576643654,1.3,1);
INSERT INTO `algos` VALUES (6,'x11',0.00000059716679736125,0.24430426567022,5.5,1);
INSERT INTO `algos` VALUES (7,'x13',1.1263935650842e-19,0.41134095795034,3.9,1);
INSERT INTO `algos` VALUES (8,'x14',0.11377155649139,0.11718470318613,3.7,0);
INSERT INTO `algos` VALUES (9,'x15',0.00000000077072981447531,1.6983678546818,3.5,1);
INSERT INTO `algos` VALUES (10,'fresh',0.0026231955438411,0.0027018914101563,5,0);
INSERT INTO `algos` VALUES (11,'sha256',0.0000000000000038401443649061,0.026617361475995,1,1);
INSERT INTO `algos` VALUES (12,'qubit',1.6248506135822e-16,0.24927194209571,5,1);
INSERT INTO `algos` VALUES (13,'skein',0.00000000034832094328204,0.16845160459277,90,1);
INSERT INTO `algos` VALUES (14,'groestl',0,0,5,0);
INSERT INTO `algos` VALUES (15,'blake',0.00031848765805978,0.00032804228780157,300,0);
INSERT INTO `algos` VALUES (16,'keccak',0.0016597457290427,0.001709538100914,160,0);
INSERT INTO `algos` VALUES (17,'nist5',0.18308742021568,0.2268296498337,16,1);
INSERT INTO `algos` VALUES (18,'zr5',0.0012435138961056,0.0015683197257684,5.5,1);
INSERT INTO `algos` VALUES (19,'c11',0.00000000000020740040409138,1.2950923499056,5.5,0);
INSERT INTO `algos` VALUES (20,'drop',2.5713261892185e-21,32.540632674103,1.5,0);
INSERT INTO `algos` VALUES (21,'skein2',0.18866526313675,0.30578556299299,300,0);
INSERT INTO `algos` VALUES (22,'bmw',0.00000000000009119158510914,0.000072523406145041,100,1);
/*!40000 ALTER TABLE `algos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balances`
--

DROP TABLE IF EXISTS `balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `onsell` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
INSERT INTO `balances` VALUES (1,'bittrex',0,NULL);
INSERT INTO `balances` VALUES (2,'poloniex',0,NULL);
INSERT INTO `balances` VALUES (3,'cryptsy',0,NULL);
INSERT INTO `balances` VALUES (4,'bleutrade',0,NULL);
INSERT INTO `balances` VALUES (5,'yobit',0,NULL);
INSERT INTO `balances` VALUES (6,'c-cex',0,NULL);
INSERT INTO `balances` VALUES (7,'alcurex',0,NULL);
INSERT INTO `balances` VALUES (8,'cryptopia',0,NULL);
/*!40000 ALTER TABLE `balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balanceuser`
--

DROP TABLE IF EXISTS `balanceuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balanceuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `pending` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=11421 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balanceuser`
--

LOCK TABLES `balanceuser` WRITE;
/*!40000 ALTER TABLE `balanceuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `balanceuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coin_id` int(11) DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `confirmations` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `difficulty_user` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt',
  `blockhash` varchar(128) DEFAULT NULL,
  `txhash` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `algo1` (`algo`),
  KEY `coin` (`coin_id`),
  KEY `category` (`category`),
  KEY `user1` (`userid`),
  KEY `height1` (`height`)
) ENGINE=InnoDB AUTO_INCREMENT=7323 DEFAULT CHARSET=utf8 COMMENT='Discovered blocks persisted from Litecoin Service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coins`
--

DROP TABLE IF EXISTS `coins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `symbol` varchar(16) DEFAULT NULL,
  `symbol2` varchar(16) DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  `version` varchar(32) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `market` varchar(64) DEFAULT NULL,
  `marketid` int(11) DEFAULT NULL,
  `master_wallet` varchar(1024) DEFAULT NULL,
  `charity_address` varchar(1024) DEFAULT NULL,
  `charity_amount` double DEFAULT NULL,
  `charity_percent` double DEFAULT NULL,
  `deposit_address` varchar(1024) DEFAULT NULL,
  `deposit_minimum` double DEFAULT '1',
  `sellonbid` tinyint(1) DEFAULT NULL,
  `dontsell` tinyint(1) DEFAULT '1',
  `block_explorer` varchar(1024) DEFAULT NULL,
  `index_avg` double DEFAULT NULL,
  `connections` int(11) DEFAULT NULL,
  `errors` varchar(1024) DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `mint` double DEFAULT NULL,
  `txfee` double DEFAULT NULL,
  `difficulty` double DEFAULT '1',
  `difficulty_pos` double DEFAULT NULL,
  `block_height` int(11) DEFAULT NULL,
  `target_height` int(11) DEFAULT NULL,
  `network_hash` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `reward` double DEFAULT '1',
  `reward_mul` double DEFAULT '1',
  `enable` tinyint(1) DEFAULT '0',
  `auto_ready` tinyint(1) DEFAULT '0',
  `visible` tinyint(1) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `conf_folder` varchar(128) DEFAULT NULL,
  `program` varchar(128) DEFAULT NULL,
  `rpcuser` varchar(128) DEFAULT NULL,
  `rpcpasswd` varchar(128) DEFAULT NULL,
  `rpchost` varchar(128) DEFAULT NULL,
  `rpcport` int(11) DEFAULT NULL,
  `rpcencoding` varchar(16) DEFAULT NULL,
  `hassubmitblock` tinyint(1) DEFAULT NULL,
  `usememorypool` tinyint(1) DEFAULT NULL,
  `txmessage` tinyint(1) DEFAULT NULL,
  `auxpow` tinyint(1) DEFAULT NULL,
  `lastblock` varchar(128) DEFAULT NULL,
  `network_ttf` int(11) DEFAULT NULL,
  `actual_ttf` int(11) DEFAULT NULL,
  `pool_ttf` int(11) DEFAULT NULL,
  `last_network_found` int(11) DEFAULT NULL,
  `installed` tinyint(1) DEFAULT NULL,
  `link_exchange` varchar(1024) DEFAULT NULL,
  `link_bitcointalk` varchar(1024) DEFAULT NULL,
  `link_github` varchar(1024) DEFAULT NULL,
  `link_explorer` varchar(1024) DEFAULT NULL,
  `specifications` blob,
  PRIMARY KEY (`id`),
  KEY `auto_ready` (`auto_ready`),
  KEY `enable` (`enable`),
  KEY `algo` (`algo`),
  KEY `symbol` (`symbol`),
  KEY `index_avg` (`index_avg`)
) ENGINE=InnoDB AUTO_INCREMENT=1266 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coins`
--

LOCK TABLES `coins` WRITE;
/*!40000 ALTER TABLE `coins` DISABLE KEYS */;
INSERT INTO `coins` VALUES (6,'Bitcoin','BTC','','sha256','109900','/images/coin-6.png','',0,NULL,NULL,NULL,NULL,NULL,0.005,0,1,'',0.0000049361618444422,5,'This is a pre-release test build - use at your own risk - do not use for mining or merchant applications',0,NULL,0,51076366303.482,NULL,364900,349481,80.81,1,1,25.21212105,1,1,0,0,NULL,NULL,'','',NULL,NULL,'yaamp1',10301,'POW',1,NULL,1,0,'00000000000000000da2a64a9a8e32623575ba19c3125077d1715c1ba2d3b90c',2147483647,596,2147483647,1436648004,1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (77,'UroCoin','URO','','x11','1000204','/images/coin-77.png','bittrex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.11906304821704,8,'',0,NULL,0,22.464980818286,NULL,198891,NULL,2027335785,0.00044579151572707,0.00045867861107593,0.6,1,1,1,1,NULL,NULL,'.Uro','Urod',NULL,NULL,'yaamp2',7700,'POW',1,NULL,1,0,'0000000000cb3c30a62d81fbb5d3c8b677fcf850424626289de485ef278bab2d',47,187,54592,1436648004,1,'','https://bitcointalk.org/index.php?topic=600639.0','https://github.com/urocoin/uro','',NULL);
INSERT INTO `coins` VALUES (104,'CannabisCoin','CANN','','x11','80603','/images/coin-104.png','cryptsy',300,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.049772594392464,0,'',0,NULL,0,10.058901402506,NULL,768149,NULL,9603692753,0.000018667824026608,0.000019239584365976,3.28125,1,0,0,1,NULL,NULL,'','',NULL,NULL,'yaamp2',1040,'POW',1,NULL,1,0,'0000000013d1d83820efe250d85e9981f071544be6c77f13046e14d8930b19b2',4,42,5,1434809263,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (142,'Potcoin','POT','','scrypt','80604','/images/coin-POT.png','cryptsy',173,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.15901476683261,0,'',0,NULL,0,19.64510621755,NULL,852263,NULL,7268462171,0.0000047334000002007,0.0000048499920774144,52.5,1,0,0,0,NULL,NULL,'.potcoin','potcoind',NULL,NULL,'yaamp3',1420,'POW',1,NULL,1,0,'afcac989737f234d3750de45e09d6a9dae2dce32e8df309cb1f37ee7ded9fbf2',11,68,77,1434809095,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (145,'Tagcoin','TAG','','scrypt','v1.1.0','/images/coin-145.png','cryptsy',117,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.12220784834201,0,'',0,NULL,0.001,630.82394688914,NULL,212977,NULL,NULL,0,0,28.054995,100,0,0,1,NULL,NULL,'.TagCoin','tagcoind',NULL,NULL,'yaamp2',1450,'POS',1,NULL,1,0,'00000000006cdf26ffe113390f4df25ebf7dfb3cf8e5981647b45602df734b9a',NULL,213,1614,1434809095,0,'','https://bitcointalk.org/index.php?topic=317408.0','https://github.com/tagcoin/tagcoin.git','',NULL);
INSERT INTO `coins` VALUES (146,'Dogecoin','DOGE','','scrypt','1080200','/images/coin-DOGE.png','cryptsy',132,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.0047783768459481,0,'',0,NULL,0,16287.075312856,NULL,757676,278106,1393789598124,0.00000068600000019942,0.00000070500000020414,10010.005,1,0,0,1,NULL,NULL,'.dogecoin','dogecoind',NULL,NULL,'yaamp2',1460,'POW',1,NULL,1,1,'db758562008edaab7f6a9bcdb8b1289ea77e6013c156e491ae79a8efd5374ced',50,64,36094,1434809263,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (153,'Rubycoin','RBY',NULL,'scrypt','80602','http://whatmine.com/images/smalllogo_coin_237.png','bittrex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.11496466133736,0,'',0,NULL,0,11.09036451,NULL,136036,NULL,852814807,0.0000051,NULL,25,1,0,0,1,NULL,NULL,'.rubycoin','rubycoind',NULL,NULL,'yaamp2',10546,'POW',1,NULL,1,NULL,'746633ca8ad79093d38049bd431de6371707c3a571b2a9aecd53813c22e5d347',55,437,32,1414658859,0,'','https://bitcointalk.org/index.php?topic=459622.0','https://github.com/rubycoinorg/rubycoin.git','',NULL);
INSERT INTO `coins` VALUES (154,'Dnotes','NOTE',NULL,'scrypt','1010000','http://whatmine.com/images/logo_coin_256.png','c-cex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.12399596331488,0,'',0,NULL,0,24.85030091,NULL,387865,257053,1772944014,0.000012325348,NULL,25,1,0,0,1,NULL,NULL,'.DNotes','DNotesd',NULL,NULL,'yaamp2',10548,'POW',0,NULL,1,NULL,'2cfbe8a5ac612884ea725fb8b55ec979dd0d7ab23c83fae3a66327252b5f7048',60,62,72,1415970638,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (155,'Litecoin','LTC','','scrypt','100202','/images/coin-LTC.png','cryptsy',3,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.15171290682319,0,'',0,NULL,0,37795.256432821,NULL,801487,623311,1601025169698,0.020277576824097,0.020814137099131,50.004,1,0,0,0,NULL,NULL,'.litecoin','litecoind',NULL,NULL,'yaamp2',1550,'POW',1,NULL,1,0,'3cc70477beb50adcebc1970295bc9ded2aaae9f4506df3f59f13b1919b0653b0',101,128,95328,1434809263,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (161,'NimbusCoin','NMB',NULL,'x15','v1.0.0.0','https://pbs.twimg.com/profile_images/491974901025079298/3ED7Pxf-.png','bittrex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.12228398604242,0,'',0,NULL,0.00001,8.18099763,NULL,140984,NULL,NULL,0.000001000405,NULL,100,1,0,0,1,NULL,NULL,'.Nimbus','Nimbusd',NULL,NULL,'yaamp2',10562,'POS',1,NULL,1,NULL,'00000000124f0f667f230f5ca973335db2cdedc06781d0c48c2c31692f409cd1',NULL,63,4076,1415804077,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (187,'Novacoin','NVC',NULL,'scrypt','v0.4.4.6-nvc-update2-90-g45802ef','http://www.coinwarz.com/content/images/Novacoin-64x64.png','cryptsy',13,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0,0,'',0,NULL,0.001,1768.8680180112,0.89812112,155248,121559,NULL,0.0023334279,NULL,7.19,100,0,0,1,NULL,NULL,'.novacoin','novacoind',NULL,NULL,'yaamp2',10614,'POS',1,NULL,1,0,'0000000000084bec3b22dfba21eb1e064e44dfd8b3ec375e091af8199487a06c',NULL,394,6863,1423315998,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (190,'StartCoin','START','','x11','2000000','/images/coin-190.png','bittrex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.16734717277652,0,'',0,NULL,0,635.841363204,NULL,359375,NULL,13951126171,0.00041254858069092,0.00042342978904575,40,1,0,0,1,NULL,NULL,'','',NULL,NULL,'yaamp2',1900,'POW',1,NULL,1,0,'000000000061eb9a0d7dc022b7378b53c8dea296ce17674070dcfb5808009915',195,61,683,1434809263,1,'https://bittrex.com/Market/?MarketName=BTC-START','https://bitcointalk.org/index.php?topic=651307.0','https://github.com/startcoin-project','http://explorer.startcoin.org/',NULL);
INSERT INTO `coins` VALUES (191,'42','42',NULL,'scrypt','70000','/images/coin-42.png','cryptsy',141,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.21523602575888,0,'',0,NULL,0.00000001,19.04135833,NULL,348299,349193,1734089855,4.5354999421,NULL,0.000042,1,0,0,1,NULL,NULL,'.42','42',NULL,NULL,'yaamp1',10622,'POW',0,NULL,1,NULL,NULL,47,991,55,1410569352,0,'','https://cryptocointalk.com/forum/604-42/','http://www.github.com/fourtytwo42/42','',NULL);
INSERT INTO `coins` VALUES (192,'CoinmarketsCoin','JBS',NULL,'scrypt',NULL,'http://whatmine.com/images/smalllogo_coin_940.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.27260367097213,NULL,'',0,NULL,NULL,367.75,NULL,NULL,NULL,NULL,0.0000401,NULL,250,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,1071,NULL,NULL,'','https://bitcointalk.org/index.php?topic=765082.0;all','https://github.com/jyap808/coinmarketscoin','',NULL);
INSERT INTO `coins` VALUES (193,'Lightspeed','LSD',NULL,'nist5','v1.0.0.0','http://icdn8.digitaltrends.com/image/quarkcoin-350x210.png','bittrex',NULL,NULL,NULL,NULL,NULL,NULL,0.1,0,1,'',0.00036006866644837,0,'',0,NULL,0.00001,0.61633594,NULL,90116,NULL,NULL,0.00000909,NULL,0.0024414,1,0,0,1,NULL,NULL,'.lightspeed','lightspeedd',NULL,NULL,'yaamp1',10626,'POS',1,NULL,1,NULL,NULL,NULL,151,201,1415542445,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (196,'Joincoin','J',NULL,'x13','1030000','https://ip.bitcointalk.org/?u=http%3A%2F%2Fi.imgur.com%2FF4kbBIc.png&t=544&c=IYD8vIoHJLm0wQ','bittrex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.0059811926066731,0,'',0,NULL,0,4.11289213,NULL,22084,NULL,NULL,0.00000082,NULL,3,1,0,0,1,NULL,NULL,'.joincoin','joincoind',NULL,NULL,'yaamp2',10632,'POW',1,NULL,1,NULL,NULL,NULL,701,36,1412132077,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-J','https://bitcointalk.org/index.php?topic=737405.0','https://github.com/joincoin/joincoin','http://joincoin.kicks-ass.net/block_crawler.php',NULL);
INSERT INTO `coins` VALUES (200,'SterlingCoin','SLG',NULL,'x13','v1.0.0.0: Release','https://ip.bitcointalk.org/?u=http%3A%2F%2Fi.imgur.com%2FYWE9Jvl.png&t=546&c=4mUGG9xeVtn9kw','bittrex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.18285482859104,0,'No more PoW blocks',0,NULL,0.0001,105.84899589,0.09018264,131469,NULL,NULL,0.00003871,NULL,50,1,0,0,1,NULL,NULL,'.sterlingcoin','sterlingcoind',NULL,NULL,'yaamp1',10640,'POS',1,NULL,1,0,NULL,NULL,138,2323,1420314388,0,'https://bittrex.com/Market/Index?MarketName=BTC-SLG','https://bitcointalk.org/index.php?topic=721936.0','https://bitbucket.org/Sterlingcoin/sterlingcoin-linux-source','',NULL);
INSERT INTO `coins` VALUES (235,'InkwayCoin','LKNX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (240,'EtherCoin','ETC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'pos only',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,11,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (241,'VikingCoin','VIK',NULL,'sha256',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://github.com/larvikdelta/VikingCoin','',NULL);
INSERT INTO `coins` VALUES (243,'Ronpaulcoin','RPC',NULL,'scrypt','80602','http://whatmine.com/images/logo_coin_48.png','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.094029160232482,0,'',0,NULL,0,27.72157734,NULL,197432,188785,947459622,0.0002606376,NULL,1.0001,1,0,0,1,NULL,NULL,'.ronpaulcoin','ronpaulcoind',NULL,NULL,'yaamp2',10726,'POW',1,NULL,1,0,NULL,125,38,80,1416960816,0,'','https://bitcointalk.org/index.php?topic=389070.0','https://github.com/ronpaulcoin/ronpaulcoin.git','',NULL);
INSERT INTO `coins` VALUES (244,'XG','XG',NULL,'xg',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=770837.0','https://github.com/XGCoin/XG','',NULL);
INSERT INTO `coins` VALUES (245,'DigitalPrice','DP','','x11','90202','/images/coin-245.png','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.45645867476244,0,'',0,NULL,0,0.66500588545683,NULL,59151,NULL,1368804019,0.0000002037,0.000000225,149,1,0,0,1,NULL,NULL,'.DigitalPrice','DigitalPriced',NULL,NULL,'yaamp1',10730,'POW',1,NULL,1,0,'0000000027a442d09954879ee76fecfd780df458d011aee77f00ca3719c2af40',2,315,0,1431688364,0,'https://c-cex.com/?p=dgr-btc','https://bitcointalk.org/index.php?topic=789847.0','https://github.com/7vpo/DigitalPrice','',NULL);
INSERT INTO `coins` VALUES (247,'MaryJane','MARYJ',NULL,'x15',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=maryj-btc','https://bitcointalk.org/index.php?topic=793704.0','','',NULL);
INSERT INTO `coins` VALUES (251,'Magicoin','XMG',NULL,'m7',NULL,'/images/coin-XMG.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xmg-btc','https://bitcointalk.org/index.php?topic=735170.0','https://github.com/magi-project/magi/','',NULL);
INSERT INTO `coins` VALUES (253,'Ruble','RUBLE',NULL,'x15',NULL,'https://pbs.twimg.com/profile_images/516776168742076416/PtyBWGv2_400x400.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,498,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-RUBLE','https://bitcointalk.org/index.php?topic=765513.0','https://github.com/rublecodeworld/ruble','',NULL);
INSERT INTO `coins` VALUES (255,'XCloudCoin','XCLD',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XCLD','https://bitcointalk.org/index.php?topic=722328','','',NULL);
INSERT INTO `coins` VALUES (257,'BitSwift','SWIFT',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SWIFT','https://bitcointalk.org/index.php?topic=807557.0','','',NULL);
INSERT INTO `coins` VALUES (260,'ArchCoin','ARCH',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ARCH','https://bitcointalk.org/index.php?topic=754055.0','','',NULL);
INSERT INTO `coins` VALUES (265,'GAIACoin','GAIA',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GAIA','https://bitcointalk.org/index.php?topic=807698','','',NULL);
INSERT INTO `coins` VALUES (266,'WorldWideCoin','WWC',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=wwc-btc','','','http://www.worldwidecoin.tk',NULL);
INSERT INTO `coins` VALUES (268,'Ripple','XRP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (270,'LemurCoin','LMR',NULL,'x11','90300','https://ip.bitcointalk.org/?u=http%3A%2F%2Flemurcoin.org%2Fwp-content%2Fuploads%2F2014%2F08%2Flemurcoin.png&t=545&c=cgXJTXlGqUEuHg','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.077467421795399,0,'',0,NULL,0,15.24382731,NULL,35429,NULL,129773043,0.000059045,NULL,2,1,0,0,1,NULL,NULL,'.lemurcoin','lemurcoind',NULL,NULL,'yaamp2',10780,'POW',1,NULL,1,0,NULL,504,384,8,1419521830,0,'','https://bitcointalk.org/index.php?topic=739681.0','https://github.com/lemurcoin/lemurcoin','',NULL);
INSERT INTO `coins` VALUES (273,'Munne','MNE',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,8,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MNE','https://bitcointalk.org/index.php?topic=797828.0','','http://munnecoin.com',NULL);
INSERT INTO `coins` VALUES (274,'unknown','CRW',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=crw-btc','','','',NULL);
INSERT INTO `coins` VALUES (283,'PeleStock','PLCS',NULL,'',NULL,'https://c-cex.com/i/l/plcs.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=plcs-btc','','','',NULL);
INSERT INTO `coins` VALUES (285,'unknown','MCL',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=mcl-btc','','','',NULL);
INSERT INTO `coins` VALUES (288,'unknown','DOGEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=dogeb-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (290,'VidioShare','VDO',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-VDO','https://bitcointalk.org/index.php?topic=779552','','',NULL);
INSERT INTO `coins` VALUES (292,'unknown','NOPE',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,'https://c-cex.com/?p=nope-btc','https://bitcointalk.org/index.php?topic=827192.0','','',NULL);
INSERT INTO `coins` VALUES (295,'WorldTradeFunds','XWT',NULL,'x15','v1.1.2.0','https://c-cex.com/i/l/xwt.png','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',2.3299631901267,0,'',0,NULL,0,0.32487458,NULL,73362,73289,NULL,0.0000587804,NULL,1,1,0,0,1,NULL,NULL,'.wtfcoin','wtfcoind',NULL,NULL,'yaamp1',10830,'POS',1,NULL,1,0,NULL,NULL,294,161,1418121418,0,'https://c-cex.com/?p=wtf-btc','https://bitcointalk.org/index.php?topic=828967.0','https://github.com/wtfteam/wtfcoin','',NULL);
INSERT INTO `coins` VALUES (299,'MonetaryUnit','MUE','','quark','1000002','/images/coin-MUE.png','bleutrade',NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,'',0.066339427786678,7,'',0,NULL,0,1.7727014525684,NULL,818873,NULL,NULL,0.000000294,0.00000032,40,1000,1,0,0,NULL,NULL,'.monetaryunit','monetaryunitd',NULL,NULL,'yaamp5',2990,'POW',1,NULL,0,0,'00000000c73fb2ec36f0d59d55786fdd4a05c5f80aa603168a934a8772bec8c7',NULL,54,12447,1436648206,1,'https://bleutrade.com/exchange/MUE/BTC','https://bitcointalk.org/index.php?topic=778322.0','https://github.com/MonetaryUnit/MUE-Src','http://www.MonetaryUnit.org',NULL);
INSERT INTO `coins` VALUES (301,'DayTraderCoin','DTC',NULL,'scryptjane',NULL,'https://c-cex.com/i/l/dtc.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=dtc-btc','https://bitcointalk.org/index.php?topic=476295.0','','http://destinycoin.org',NULL);
INSERT INTO `coins` VALUES (304,'Securecoin','SRC','','quark','80300','/images/coin-304.png','cryptsy',88,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0,7,'',0,NULL,0,50.734421589321,NULL,940207,596493,NULL,0,0,5,1000,1,0,1,NULL,NULL,'.securecoin','securecoind',NULL,NULL,'yaamp5',3040,'POW',1,NULL,0,0,'0000000003097ed51352c15af918145663e0199861f8016310dd9ad9a939b326',NULL,173,607662,1436648071,1,'https://www.cryptsy.com/markets/view/88','https://bitcointalk.org/index.php?topic=270852.0','https://github.com/baritus/securecoin','http://securecoin.org/',NULL);
INSERT INTO `coins` VALUES (305,'Quarkcoin','QRK',NULL,'quark','90204','/images/coin-305.png','cryptsy',71,NULL,NULL,NULL,NULL,NULL,1,0,1,'',0.14968567620068,0,'',0,NULL,0,1.1758531596512,NULL,2160561,1385238,NULL,0.000015593096942016,0.000016099654447018,1,1000,0,0,1,NULL,0,'.quarkcoin','quarkd',NULL,NULL,'yaamp5',3050,'POW',1,NULL,0,0,'0000000020796035fe77ffb5780677fff6ad263e90e443b4cbfb9d1dd5192d22',NULL,31,5881,1436311380,1,'https://www.cryptsy.com/markets/view/QRK_BTC','https://cryptocointalk.com/topic/865-quark-qrk-information/','http://github.com/MaxGuevara/quark','http://altexplorer.info/chains/QRK/block_crawler.php',NULL);
INSERT INTO `coins` VALUES (306,'Sembro Token','SMBR',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SMBR','https://bitcointalk.org/index.php?topic=819427','http://www73.zippyshare.com/v/81360104/file.html','sembrodevelopment.com',NULL);
INSERT INTO `coins` VALUES (307,'Phoenixcoin','PXC','','neoscrypt','60600','/images/coin-PXC.png','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',3.9440451359152,0,'',0,NULL,0,0.20596378858973,NULL,701537,470107,13090044,0,0,50.1,1,0,0,1,NULL,NULL,'.phoenixcoin','phoenixcoind',NULL,NULL,'yaamp3',3070,'POW',0,NULL,1,0,'ad4c33a25d2546f47b2c392395e8a54d636668c5602d7c75e87c83d43b717fa9',67,135,18,1434809264,1,'','https://bitcointalk.org/index.php?topic=330956.0','https://github.com/ghostlander/Phoenixcoin','',NULL);
INSERT INTO `coins` VALUES (308,'Feathercoin','FTC','','neoscrypt','80701','/images/coin-FTC.png','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',4.8348638469338,16,'',0,NULL,0,7.5315141894658,NULL,788102,429802,2162377512,0.000045517307084146,0.000046884410723589,80,1,1,1,1,NULL,NULL,'.feathercoin','feathercoind',NULL,NULL,'yaamp3',3080,'POW',1,NULL,1,0,'fe6d6f8f80415fd80663fe9d80e8f19591865abce0d7c56610f836b148d93dd5',14,64,652291,1436648206,1,'','https://bitcointalk.org/index.php?topic=178286.0','https://github.com/FeatherCoin/Feathercoin','',NULL);
INSERT INTO `coins` VALUES (309,'CleverHash','CHASH',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'ICO',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CHASH','https://bitcointalk.org/index.php?topic=826541.0','','',NULL);
INSERT INTO `coins` VALUES (312,'HyperStake','HYP',NULL,'',NULL,'/images/coin-HYP.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (313,'WoodCoin','LOG','','skein2','1010000','/images/coin-LOG.png','c-cex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.14902630181601,7,'',0,NULL,0,3.4279444441607,NULL,177447,NULL,NULL,0.000009065,0.00000955,5.63545376,1,1,1,0,1435948395,NULL,'.woodcoin','woodcoind',NULL,NULL,'yaamp2',5036,'POW',1,NULL,0,0,'a5acd8c457c594fc1bf318743f06bd92f5a296b0d4cbe5ea83ba0f7ac434aecc',NULL,156,65,1436648004,1,'https://c-cex.com/?p=log-btc','https://bitcointalk.org/?topic=831003.msg9285652','https://github.com/funkshelper/woodcoin','http://woodcoin.org',NULL);
INSERT INTO `coins` VALUES (314,'unknown','QBK',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=qbk-btc','','','',NULL);
INSERT INTO `coins` VALUES (319,'Pennies','CENT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (320,'BlockNet','BLOCK',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'ICO',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BLOCK','https://bitcointalk.org/index.php?topic=829576.0','','',NULL);
INSERT INTO `coins` VALUES (321,'CataloniaCoin','CATC',NULL,'x11','v1.1.2.0','https://c-cex.com/i/l/catc.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,1.5063245794249,0,'',0,NULL,0,0.04131466,0.00025256,35688,NULL,NULL,0.00000221382,NULL,2.38059999,1,0,0,1,NULL,NULL,'','',NULL,NULL,'yaamp4',3210,'POS',1,NULL,1,0,NULL,NULL,133,0,1421289029,0,'https://c-cex.com/?p=catc-btc','https://bitcointalk.org/index.php?topic=840542.0','https://github.com/cataloniacurrency','',NULL);
INSERT INTO `coins` VALUES (322,'unknown','VOCAL',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=vocal-btc','','','',NULL);
INSERT INTO `coins` VALUES (323,'SecurityCoin','SCSY',NULL,'hefty1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=scsy-btc','https://bitcointalk.org/index.php?topic=802430.0','','http://www.i-m.mx/francis85/securitysyscoin/',NULL);
INSERT INTO `coins` VALUES (326,'Guncoin','GUN','','neoscrypt','1010000','/images/coin-GUN.png','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',3.1985086940733,0,'',0,0,0,0.049023091383351,NULL,245688,121000,9561661,0.00000011639937522688,0.000000144999919616,200.001,1,0,0,1,NULL,NULL,'.guncoin','guncoind',NULL,NULL,'yaamp1',10892,'POW',1,NULL,1,0,'d3ea97de57d3815679a13a5d1c2ca5413487180d4e0678456925920db45d9956',22,172,42,1431865504,0,'https://bleutrade.com/exchange/GUN/BTC','https://bitcointalk.org/index.php?topic=498671.0','','',NULL);
INSERT INTO `coins` VALUES (327,'AppleBytes','ABY',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'no source code',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ABY','','','',NULL);
INSERT INTO `coins` VALUES (328,'Snowballs','BALLS',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=balls-btc','https://bitcointalk.org/index.php?topic=843495','','',NULL);
INSERT INTO `coins` VALUES (330,'Quicksilver','QSLV',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-QSLV','https://bitcointalk.org/index.php?topic=842240.0','','',NULL);
INSERT INTO `coins` VALUES (333,'UCoin','U',NULL,'x15','v2.0.0.0','https://c-cex.com/i/l/u.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,5.1949122847333,0,'',0,NULL,0.00001,0.070580594994362,0.00093608,149452,74003,NULL,0.000000842445,NULL,12,1,0,0,1,NULL,NULL,'','',NULL,NULL,'yaamp4',3330,'POS',1,NULL,1,0,NULL,NULL,52,1,1422975370,0,'https://c-cex.com/?p=u-btc','https://bitcointalk.org/index.php?topic=845110','https://github.com/UCoinTeam/X15CPU','',NULL);
INSERT INTO `coins` VALUES (335,'ByteCent','BYC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'CF',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BYC','http://coinblab.com/forums/topic/24/-/view/post_id/84','','',NULL);
INSERT INTO `coins` VALUES (336,'BunnyCoin','BUN',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'NO BID',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,'https://bleutrade.com/exchange/BUN/BTC','','https://github.com/bunnycoin/bunnycoin','',NULL);
INSERT INTO `coins` VALUES (338,'UFOCoin','UFO','','neoscrypt','80801','/images/coin-338.png','',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,'',4.0037314030671,0,'',0,NULL,0,0.17795899081896,NULL,469951,274651,71813276,0.0000000294,0.000000035,2500,1,0,0,1,NULL,NULL,'.ufo','ufod',NULL,NULL,'yaamp2',3380,'POW',1,NULL,1,0,'77f42f0569e2c968f8fab1b3ba867b29131e0fe24878182724618dfba462cdd5',10,101,16,1434809264,1,'https://bittrex.com/Market/Index?MarketName=BTC-UFO','https://bitcointalk.org/index.php?topic=658117.0','https://github.com/Bushstar/UFO-Project','www.ufocoin.co',NULL);
INSERT INTO `coins` VALUES (339,'ZeroVert','ZER',NULL,'scryptn',NULL,'https://c-cex.com/i/l/zer.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,140,NULL,NULL,'https://c-cex.com/?p=zer-btc','https://bitcointalk.org/index.php?topic=846471.0','https://github.com/Zerovert/Zerovert/releases','',NULL);
INSERT INTO `coins` VALUES (343,'OcupyCoin','OCUPY',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POW over',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=ocupy-btc','','','',NULL);
INSERT INTO `coins` VALUES (344,'unknown','ZNY',NULL,'yescrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=zny-btc','','','',NULL);
INSERT INTO `coins` VALUES (346,'VertCoin','VTC','','lyra2','90002','/images/coin-346.png','poloniex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.42015705961618,8,'',0,NULL,0,373.219434063,NULL,330211,NULL,7949694266,0.00031362156001505,0.00032500756559942,50,1,1,0,0,NULL,NULL,'.vertcoin','vertcoind',NULL,NULL,'yaamp2',5888,'POW',1,NULL,1,0,'072cf92dcedb930e4dd4a18e7362908efd1761e3869fc347197242516fa3dc23',201,134,7773433,1436647924,1,'','https://bitcointalk.org/index.php?topic=404364.0','https://github.com/vertcoin/vertcoin','',NULL);
INSERT INTO `coins` VALUES (347,'MurrayCoin','MRY','','scryptn','90200','/images/coin-MRY.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.43664113527124,0,'',0,NULL,0,1.1487694572991,NULL,359426,222056,30690275,0,0,60,1,0,0,1,NULL,NULL,'.murraycoin','murraycoind',NULL,NULL,'yaamp2',3470,'POW',1,NULL,1,0,'458c75c83e7bba6a38fecaadf21294279222d9fa6957c7ac00899985881ca70c',160,241,95488,1434802017,0,'','','','',NULL);
INSERT INTO `coins` VALUES (348,'HellasCoin','HLC',NULL,'scrypt','80702','https://c-cex.com/i/l/hlc.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.033636575354042,0,'',0,NULL,0,268.45713188,NULL,22371,19539,723448542,0.000001259325,NULL,500,1,0,0,1,1415661982,NULL,'.hellascoin','hellascoind',NULL,NULL,'yaamp1',10936,'POW',1,NULL,1,0,NULL,1593,1880,871,1420238724,0,'https://c-cex.com/?p=hlc-btc','','https://github.com/hellascrypto/hellascoin','',NULL);
INSERT INTO `coins` VALUES (349,'CryptCoin','CRYPT',NULL,'x11',NULL,'https://i.imgur.com/PF5BK52.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1415672067,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,'','https://bitcointalk.org/index.php?topic=618377.0','https://github.com/ccryptcoin/cryptcoin','',NULL);
INSERT INTO `coins` VALUES (351,'unknown','ACHK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1415744001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=achk-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (353,'unknown','BRXv2',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'ICO',0,NULL,NULL,1,NULL,1430967779,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1415751273,NULL,'','brxv2',NULL,NULL,'',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=board-btc','https://bitcointalk.org/index.php?topic=855040','','',NULL);
INSERT INTO `coins` VALUES (354,'GlowShares','GSX',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1415850483,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GSX','https://bitcointalk.org/index.php?topic=854038.0','','',NULL);
INSERT INTO `coins` VALUES (355,'ProfitCoin','PFC',NULL,'x13',NULL,'https://c-cex.com/i/l/pfc.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1415883130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,8,NULL,NULL,'https://c-cex.com/?p=pfc-btc','https://bitcointalk.org/index.php?topic=854975.0','https://github.com/profitcoinproject/profitcoin','',NULL);
INSERT INTO `coins` VALUES (356,'Execoin','EXE','','scryptn','80603','/images/coin-356.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,681.91239374396,0,'execoin is not connected!',0,NULL,0,0.00024414,NULL,0,550000,NULL,0.0000018423999987958,0.0000019349999993856,8.89565011,1,0,0,1,1415906446,NULL,'','',NULL,NULL,'yaamp3',3560,'POW',1,NULL,1,0,'de2b9d541b4a7c7be2c244c09c1063e462e8533cff8bb5c209b10444fa3f5a20',NULL,183,1,1434085723,0,'','https://bitcointalk.org/index.php?topic=491058.0','https://github.com/execoin/execoin','',NULL);
INSERT INTO `coins` VALUES (359,'Consolidated Mining','MN',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1416058622,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (361,'VPNCoin','VPN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1416163843,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-VPN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (363,'ViorCoin','VIOR','','scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,0,1416273195,NULL,'.coin','xxxx',NULL,NULL,'yaamp-db',3630,NULL,0,NULL,1,0,NULL,NULL,NULL,1,NULL,0,'https://bittrex.com/Market/Index?MarketName=BTC-VIOR','http://viorcoin.com/forum/index.php/4-viorcoin-specifications','','',NULL);
INSERT INTO `coins` VALUES (364,'BitBay','BAY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1416335068,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BAY',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (365,'HawaiiCoin','HIC',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1416353312,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-HIC','https://bitcointalk.org/index.php?topic=508506.0','','',NULL);
INSERT INTO `coins` VALUES (369,'DeafDollars','DEAF',NULL,'scrypt',NULL,'/images/coin-DEAF.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1416603271,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,2,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DEAF','https://bitcointalk.org/index.php?topic=624682.msg6931799#msg6931799','https://github.com/DeafDollars/DeafDollars','',NULL);
INSERT INTO `coins` VALUES (371,'BitSharesX','BTS',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'??',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1416817228,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BTS','','','',NULL);
INSERT INTO `coins` VALUES (373,'CheckCoin','CKC',NULL,'x11','1000000','/images/coin-373.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.069013660116841,0,'',0,0,0,0.97990400574171,NULL,287230,NULL,1188072631,0.00000053900000000013,0.00000057000000000007,10.001,1,0,0,1,1416953252,NULL,'.checkcoin','checkcoind',NULL,NULL,'yaamp2',10986,'POW',1,NULL,1,0,'00000000bd0290be0f156c2cfda5df4885e07ae768c9f53f92b9cf79237032b3',3,74,6,1431865519,0,'','https://bitcointalk.org/index.php?topic=715563.0','https://github.com/Checkcoin/checkcoin','http://cryptobe.com/chain/CheckCoin',NULL);
INSERT INTO `coins` VALUES (374,'Viacoin','VIA','','scrypt','100701','/images/coin-374.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00061905409687668,0,'',0,NULL,0.001,3840.4875876536,NULL,1188658,568444,8100769788,0.000039385505052526,0.000041081167418411,5,1,0,0,1,1416960292,NULL,'.viacoin','viacoind',NULL,NULL,'yaamp3',3740,'POW',1,NULL,1,1,'45d212b4d8ab972802fa242de300a1f9759a156bf8abe2dbcebcdb98ebb70f23',2036,19,9897,1434809264,0,'','https://bitcointalk.org/index.php?topic=699278.0','https://github.com/viacoin/viacoin','',NULL);
INSERT INTO `coins` VALUES (378,'unknown','ERM',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1417476797,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=erm-btc','','','',NULL);
INSERT INTO `coins` VALUES (380,'unknown','FUD',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1417715902,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=fud-btc','','','',NULL);
INSERT INTO `coins` VALUES (382,'AeroME','AM',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'crowdfund campaign',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1417760040,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-AM','','','https://bittrex.zendesk.com/hc/en-us/articles/203710160-AeroME-Crowdfunding-Campaign',NULL);
INSERT INTO `coins` VALUES (383,'unknown','FIND',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1417771078,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=find-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (384,'unknown','CBR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1417774692,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=cbr-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (385,'SpreadCoin','SPR',NULL,'spread',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1417987570,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=spr-btc','','','',NULL);
INSERT INTO `coins` VALUES (386,'PesetaCoin','PTC',NULL,'scrypt','80604','https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p160x160/1625670_767378699958720_154064606_n.png?oh=0fd1b41c9511afcf0cc3d1504e93b6d0&oe=54FC36F8&__gda__=1426374974_4e25c0b05aa925044b14548e27f3e0ba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0010020377110636,0,'',0,NULL,0,1391.3131997,NULL,555891,478312,411978503648,0.0000010036,NULL,83.193,1,0,0,1,1418045272,NULL,'.pesetacoin','pesetacoind',NULL,NULL,'yaamp2',11012,'POW',1,NULL,1,1,NULL,14,82,6162,1422388320,0,'','https://bitcointalk.org/index.php?topic=403378.0','https://github.com/mp2apps/pesetacoin-master','',NULL);
INSERT INTO `coins` VALUES (387,'MetalCoin','METAL',NULL,'x11','v1.0.0.0','https://c-cex.com/i/l/metal.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.035662155175436,0,'No more PoW blocks',0,NULL,0.00001,12.61513775,0.27603215,50372,NULL,NULL,0.00000006755,NULL,666,1,0,0,1,1418067622,NULL,'.MetalCoin','MetalCoind',NULL,NULL,'yaamp1',11014,'POS',1,NULL,1,0,NULL,NULL,138,6,1420852545,0,'https://c-cex.com/?p=metal-btc','https://bitcointalk.org/index.php?topic=874659.0','https://github.com/MetalCoinTeam/MetalCoin','',NULL);
INSERT INTO `coins` VALUES (388,'CheckOutCoin','CXC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418096786,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CXC','https://bitcointalk.org/index.php?topic=840437','','',NULL);
INSERT INTO `coins` VALUES (389,'Umbrella-LTC','ULTC',NULL,'scrypt','5030205','/images/coin-389.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00011963756610815,0,'',0,NULL,0,10159.100017977,NULL,64607,NULL,NULL,0.0000159225,NULL,5,1,0,0,1,1418138310,NULL,'','',NULL,NULL,'yaamp4',3890,'POW',1,NULL,1,1,'fced56ec248b5b809fda9e0bb705330d7a4de1dfe5296feaba367a2f6207e65e',NULL,334,38005,1424471458,0,'','https://bitcointalk.org/index.php?topic=687265.0','https://github.com/UmbrellaHoldings/ULTC','',NULL);
INSERT INTO `coins` VALUES (390,'Syscoin','SYS',NULL,'scrypt','80604','/images/coin-390.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00018881013869761,0,'',0,NULL,0,5032.4884261836,NULL,266644,162957,413890931409,0.00000105185,NULL,96.03647036,1,0,0,1,1418146127,NULL,'','',NULL,NULL,'yaamp4',3900,'POW',1,NULL,1,1,'0276e3eea6bb0764a712b0096ebb376ea637a42c51dc8b8eb0a8aa13bf34b314',52,68,20379,1424471458,0,'','https://bitcointalk.org/index.php?topic=587080.0','https://github.com/syscoin/syscoin','',NULL);
INSERT INTO `coins` VALUES (391,'BitcoinFast','BCF',NULL,'scrypt','v1.0.0.0','/images/coin-BCF.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,1.3407316990921,0,'',0,NULL,0.01,0.82196162046908,NULL,53598,NULL,NULL,0.0000110203,NULL,10,100,0,0,1,1418151527,NULL,'.BitcoinFast','bitcoinfastd',NULL,NULL,'yaamp2',11022,'POS',1,NULL,1,0,'000000002e8fe999a77cd92148dfce80221dfd57142316079a8104b966d1e670',NULL,104,3,1428326048,0,'https://bittrex.com/Market/Index?MarketName=BTC-BCF','https://bitcointalk.org/index.php?topic=881774.0','https://github.com/BitCoinFastTeam','',NULL);
INSERT INTO `coins` VALUES (392,'DigitalCoin','DGC',NULL,'sha256','2000000','/images/coin-392.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.11560625579365,0,'digitalcoin is downloading blocks...',0,NULL,0,7.89654499,NULL,741779,1290228,NULL,0.00001787255656,0.000019333716782215,5,1,0,0,1,1418168434,NULL,'','',NULL,NULL,'yaamp6',3920,'POW',1,NULL,1,0,'',NULL,0,0,1429438083,0,'','https://bitcointalk.org/index.php?topic=785601','https://github.com/DGCFoundation/DGCV3.0','',NULL);
INSERT INTO `coins` VALUES (393,'Monacoin','MONA','','scrypt','80701','/images/coin-393.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.15236913796459,0,'',0,NULL,0,1994.9869916441,NULL,411249,297467,23215209025,0.00061852956219991,0.00063211368646088,50.001,1,0,1,1,1418175220,NULL,'','',NULL,NULL,'yaamp2',3930,'POW',1,NULL,1,0,'4d152f8d48f9b50e7cbcbb97868f2cf33f0c5e79e2c77bc9009e8ecdb4cf2d9b',369,135,6135,1434808940,0,'','https://bitcointalk.org/index.php?topic=392436.0','https://github.com/monacoinproject/monacoin','http://whatmine.com/coin/441/MonaCoin-MONA-Scrypt-Profitability',NULL);
INSERT INTO `coins` VALUES (394,'Megacoin','MEC','','scrypt','179600','/images/coin-MEC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.086821711762006,0,'',0,0,0,124.51080946691,NULL,368458,NULL,3929750681,0,0,25,1,0,0,1,1418222520,1,'.megacoind','megacoind',NULL,NULL,'yaamp4',3940,'POW',1,NULL,1,0,'b42760dbcc645dab266645ff33730d2e49667756918665c4456e53b0926bdf0c',136,167,308,1424871144,0,'','https://bitcointalk.org/index.php?topic=240861.0','https://github.com/megacoin/megacoin','',NULL);
INSERT INTO `coins` VALUES (396,'Anoncoin','ANC','','scrypt','v0.8.5.1-132-g73a4219-beta','/images/coin-396.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.17037700630867,0,'This is a pre-release test build - use at your own risk - do not use for mining or merchant applications',0,NULL,0,144.22364733594,NULL,373928,NULL,8306820858,0,0,2.624,1,0,0,1,1418226209,NULL,'','',NULL,NULL,'yaamp3',3960,'POW',1,NULL,1,0,'a36738a68b66ef45f679e8c68ba69a7420a2164412f156f7e67be3d1ad468d9e',74,400,416,1434809265,0,'','https://bitcointalk.org/index.php?topic=227287.0','https://github.com/Anoncoin/anoncoin','',NULL);
INSERT INTO `coins` VALUES (397,'unknown','RMS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418228535,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=rms-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (398,'Bitmark','BTM',NULL,'scrypt','90300','https://ip.bitcointalk.org/?u=https%3A%2F%2Fraw.githubusercontent.com%2Fproject-bitmark%2Fart-of-bitmark%2Fmaster%2Fbranding%2F128%2Fbitmark-purple.png&t=547&c=jDVdtoRDL7t-Tw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.05975538713427,0,'',0,NULL,0,1953.30771918,NULL,46390,NULL,395433206,0.00050124995,NULL,20.01,1,0,0,1,1418239123,NULL,'','',NULL,NULL,'yaamp4',3980,'POW',1,NULL,1,0,NULL,21215,27105,3301,1420027203,0,'','https://bitcointalk.org/index.php?topic=660544.0','https://github.com/project-bitmark/bitmark','',NULL);
INSERT INTO `coins` VALUES (399,'Worldcoin','WDC','','scrypt','80602','/images/coin-399.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.1752768057151,0,'',0,NULL,0,110.21376673543,NULL,1978609,1599668,5382272788,0.000046485651038645,0.000048237169242868,31.98957013,1,0,0,1,1418248771,NULL,'','',NULL,NULL,'yaamp2',3990,'POW',1,NULL,1,0,'a07697450cf51fd95c8f09d0182b84262e0887175b2984e7e8b9a2377273b31d',87,70,331,1434809265,0,'','https://bitcointalk.org/index.php?topic=204894.0','https://github.com/worldcoinproject/worldcoin-v0.8','',NULL);
INSERT INTO `coins` VALUES (400,'Catcoin','CAT',NULL,'scrypt','90101','https://pbs.twimg.com/profile_images/446815962407251968/DcjxVK4I.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.022866013189558,0,'',0,NULL,0,249.36399174,NULL,33993,NULL,51233585,0.0000082418,NULL,50,1,0,0,1,1418250586,NULL,'','',NULL,NULL,'yaamp4',4000,'POW',1,NULL,1,0,NULL,20904,9114,681,1419437337,0,'','https://bitcointalk.org/index.php?topic=441402','https://github.com/CatcoinOfficial/CatcoinRelease','',NULL);
INSERT INTO `coins` VALUES (401,'Huntercoin','HUC',NULL,'scrypt','1010000','https://ip.bitcointalk.org/?u=http%3A%2F%2Fi43.tinypic.com%2F2vl4qs4.png&t=547&c=RTOWq70e2o-UAQ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00000086950627699785,8,'Huntercoin is downloading blocks...',0,NULL,0,115234.41174103,NULL,24334,481907,NULL,0.000010019704433498,NULL,1,1,0,0,0,1418253973,NULL,'','',NULL,NULL,'yaamp4',4010,'POW',0,NULL,1,1,NULL,NULL,0,436203,1418423254,0,'','https://bitcointalk.org/index.php?topic=435170.0','https://github.com/chronokings/huntercoin','',NULL);
INSERT INTO `coins` VALUES (402,'EventToken','EVENT',NULL,'scrypt','v1.1.2.0-g','https://c-cex.com/i/l/event.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.12195848341889,0,'No more PoW blocks',0,NULL,0.0001,27.76272634,0.00145949,50310,NULL,NULL,0.0000067718,NULL,50,1,0,0,1,1418306504,NULL,'.EventToken','EventTokend',NULL,NULL,'yaamp1',11044,'POS',1,NULL,1,0,NULL,NULL,232,92,1420250926,0,'https://c-cex.com/?p=event-btc','https://bitcointalk.org/index.php?topic=836232.0','https://github.com/eventtoken/eventtoken-project','',NULL);
INSERT INTO `coins` VALUES (404,'FairCoin','FAIR',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418415803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-FAIR',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (405,'DarkSwift','DS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418508414,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DS',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (406,'Digibyte','DGB','','qubit','3000301','/images/coin-DGB.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.097653159603745,8,'',0,NULL,0,56.927206159296,NULL,1011721,NULL,NULL,0.000000245,0.000000255,2269.02920362,1,1,0,0,1418567676,NULL,'.digibyte','digibyted',NULL,NULL,'yaamp2',14022,'POW',1,NULL,1,0,'6e7d638fc3a45a5fac975d4da7af2a266bce56988af735f3827dc10a0942c7ab',NULL,39,250801,1436648206,1,'','https://bitcointalk.org/index.php?topic=408268.0','https://github.com/digibyte/digibyte','',NULL);
INSERT INTO `coins` VALUES (407,'unknown','BCENT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418592834,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=bcent-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (408,'SmileyCoin','SMLY',NULL,'scrypt',NULL,'https://c-cex.com/i/l/smly.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no order',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418662374,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=smly-btc','https://bitcointalk.org/index.php?topic=845761.0','https://github.com/tutor-web/smileyCoin','',NULL);
INSERT INTO `coins` VALUES (409,'PayCoin','XPY',NULL,'sha256','v0.1.2.25-ge3c013c','https://c-cex.com/i/l/xpy.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.018529379266303,0,'Paycoin is currently on pure PoS state',0,NULL,0.001,20097.90293824,NULL,17739,NULL,NULL,0.00216739965,NULL,1,1,0,0,1,1418673212,NULL,'','',NULL,NULL,'yaamp4',4090,'POS',1,NULL,1,0,NULL,NULL,77,NULL,1420030011,0,'https://c-cex.com/?p=xpy-btc','https://bitcointalk.org/index.php?topic=895061.0','https://github.com/GAWMiners/paycoin','',NULL);
INSERT INTO `coins` VALUES (410,'NooCoin','NOO',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418694043,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-NOO','https://bitcointalk.org/index.php?topic=895226.0','','',NULL);
INSERT INTO `coins` VALUES (411,'SuperCoin','SUPER',NULL,'x11',NULL,'https://ip.bitcointalk.org/?u=http%3A%2F%2Fi57.tinypic.com%2F2rr181x.png&t=547&c=r7-LBM1axpPZMw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418793788,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=875651.0','https://github.com/Greg-Griffith/SuperCoin','',NULL);
INSERT INTO `coins` VALUES (412,'vTorrent','VTR',NULL,'scrypt','v0.7.1.0-g','https://c-cex.com/i/l/vtr.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.10491374123549,0,'',0,NULL,0,99.8182954,0.00028163,9639,NULL,NULL,0,NULL,200,1,0,0,NULL,1418825245,NULL,'.vTorrent','vTorrentd',NULL,NULL,'yaamp2',11064,'POS',1,NULL,1,0,NULL,NULL,31,229,1418954371,0,'https://c-cex.com/?p=vtr-btc','https://bitcointalk.org/index.php?topic=889481.0','https://github.com/vtorrent/vTorrent-Client','',NULL);
INSERT INTO `coins` VALUES (413,'Clams','CLAM',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POC POP',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1418953561,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (414,'TittieCoin','TTC',NULL,'scrypt','1040000','/images/coin-TTC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.089857030765952,0,'',0,NULL,0,47.75760474,NULL,133357,NULL,NULL,0.00000003852,NULL,8008,1,0,0,1,1418953563,NULL,'','',NULL,NULL,'yaamp4',4140,'POW',0,NULL,1,0,NULL,NULL,977,211,1422253922,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=437695.0','https://github.com/tittiecoin/tittiecoin','',NULL);
INSERT INTO `coins` VALUES (415,'Sapience','XAI',NULL,'PoS','v1.6.2.21-g','/images/coin-XAI.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,17126.680547293,0,'no more pow blocks',0,5.77193805,0.00001,0.00006724,0.00012599,311009,NULL,NULL,0.0001080254,0.00012022318903989,1,1,0,0,0,1419023221,NULL,'.sapience','sapienced',NULL,NULL,'yaamp1',30897,'POS',0,NULL,0,0,'b382000dfdee4a88f0e00dcb3981f93943fecf02ce29289e3cbf521059215389',NULL,88,NULL,1436559552,1,'https://bittrex.com/Market/Index?MarketName=BTC-XAI','https://bitcointalk.org/index.php?topic=864895.0','https://github.com/CedricProfit/Sapience',NULL,NULL);
INSERT INTO `coins` VALUES (416,'NakomotoDark','NKT',NULL,NULL,NULL,'/images/coin-NKT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419023223,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-NKT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (417,'Florincoin','FLO',NULL,'scrypt','80703','https://i.imgur.com/Ykgy5P8.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0056164994963704,3,'Florincoin is downloading blocks...',0,NULL,0,6.78498185,NULL,781361,NULL,NULL,NULL,NULL,100,1,0,0,0,1419047316,NULL,'','',NULL,NULL,'yaamp4',4170,'POW',1,NULL,1,0,NULL,NULL,198,13,1419051797,0,'','https://bitcointalk.org/index.php?topic=236742.0','https://github.com/florincoin/florincoin','',NULL);
INSERT INTO `coins` VALUES (418,'ReddCoin','RDD',NULL,'scrypt',NULL,'/images/coin-RDD.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-RDD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (419,'NXT','NXT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-NXT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (420,'BlackCoin','BC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (421,'MyriadCoin','MYR-qubit','MYR','qubit','90215','/images/coin-421.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.097000870640314,0,'',0,NULL,0,12.242283519324,NULL,1234433,NULL,NULL,0.00000025480012543486,0.00000026503212801442,500,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4210,'POW',1,NULL,1,0,'2e3bf470571223bc59fcdc6a88cf60a7ece7d3da567b0977d0c0f46b6ea7d4d7',NULL,57,2027,1434809265,0,'https://bittrex.com/Market/Index?MarketName=BTC-MYR','','https://github.com/myriadcoin/myriadcoin.git','',NULL);
INSERT INTO `coins` VALUES (422,'UltraCoin','UTC',NULL,'scryptjane',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt Jane',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-UTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (423,'OctoCoin','888',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-888',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (424,'ElectronicGulden','EFL',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-EFL',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (425,'DimeCoin','DIME',NULL,'quark','80313','/images/coin-425.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.32805429223453,0,'dimecoin is not connected!',0,0,0,2.1091572239063,NULL,846132,NULL,NULL,0.000000000365682073984,0.00000000041469101173443,158208,1000,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4250,'POW',1,NULL,0,0,'000000002a962e16e3e63e76c117b506adfc1a4c42fe28816a4e65d3eb45f2bb',NULL,106,4,1432642365,0,'https://bittrex.com/Market/Index?MarketName=BTC-DIME','https://bitcointalk.org/index.php?topic=382164.0','https://github.com/dimecoinproject/dimecoin','',NULL);
INSERT INTO `coins` VALUES (426,'SolarCoin','SLR',NULL,'scrypt','1050000','https://ip.bitcointalk.org/?u=http%3A%2F%2Fsolarcoinorg.fatcow.com%2Fwp-content%2Fuploads%2F2013%2F10%2F1MWhD15aR02cP01ZL-Tyler2c-150x150.png&t=547&c=JO2UPMNCvmBXsw',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.074880207413422,0,'',0,NULL,0,2.03223776,NULL,446912,NULL,NULL,0.0000151116,NULL,1,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp4',4260,'POW',1,NULL,1,0,NULL,NULL,75,94,1419859784,0,'https://bittrex.com/Market/Index?MarketName=BTC-SLR','https://bitcointalk.org/index.php?topic=785257.0','https://github.com/solarcoin/solarcoin/tree/reward-reduction','http://blockexplorer.solarcoin.org/block/c572407ff1848b81f86c42343faff2d6a9d1a4919a9f2b6f51806c700eff9832',NULL);
INSERT INTO `coins` VALUES (427,'CleanWaterCoin ','WATER',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-WATER',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (428,'GuldenCoin','NLG','','scrypt','1040000','/images/coin-428.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.13562750671414,0,'',0,NULL,0,211.73138811414,NULL,225848,NULL,NULL,0.0000033414081005555,0.0000034547618453504,1000,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4280,'POW',1,NULL,1,0,'dbbc313f87a94756cf1e8d609b8972ece04c47049d9220ebf77863e2455ddae0',NULL,312,1026,1434808940,0,'https://bittrex.com/Market/Index?MarketName=BTC-NLG','https://bitcointalk.org/index.php?topic=554412.0','https://github.com/nlgcoin/Guldencoin','',NULL);
INSERT INTO `coins` VALUES (429,'GiveCoin','GIVE',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GIVE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (430,'WhiteCoin','WC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-WC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (431,'NobleCoin','NOBL',NULL,'scrypt','1010003','/images/coin-431.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.48483991093813,0,'',0,NULL,0,11.036602373497,NULL,538414,NULL,NULL,0.0000000772,NULL,5000,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4310,'POW',1,NULL,0,0,'8ed626d654f0aca9ebe8980cef76790fb7244823a07da6f36bb1778a22963ac9',NULL,59,44,1425732969,0,'https://bittrex.com/Market/Index?MarketName=BTC-NOBL','https://bitcointalk.org/index.php?topic=402667.0','https://github.com/jlcurby/NobleCoin','',NULL);
INSERT INTO `coins` VALUES (432,'BitStarCoin','BITS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BITS',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (433,'BlueCoin','BLU',NULL,'x11','v1.2.1.0','/images/coin-433.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.081804199282824,0,'',0,NULL,0.0001,1.6515044604607,NULL,645837,482241,NULL,0.0000002895,NULL,50,100,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4330,'POS',1,NULL,1,0,'000000007c74f7d41dbf76f7a705d4f2fcfa513d901fc8d0b68a95c3959a4b65',NULL,27,0,1426864197,0,'https://bittrex.com/Market/Index?MarketName=BTC-BLU','https://bitcointalk.org/index.php?topic=580639.0','https://github.com/bluecoiner/bluecoin','',NULL);
INSERT INTO `coins` VALUES (434,'OrangeCoin','OC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-OC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (435,'HempCoin','THC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-THC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (436,'EnergyCoin','ENRG',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ENRG',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (437,'ShibeCoin','SHIBE',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SHIBE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (438,'SaffronCoin','SFR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Other',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SFR',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (439,'NautilusCoin','NAUT',NULL,'scrypt',NULL,'/images/coin-NAUT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-NAUT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (440,'VeriCoin','VRC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-VRC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (441,'CureCoin','CURE',NULL,'sha256',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'SHA-256',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CURE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (442,'SyncCoin','SYNC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SYNC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (443,'BlakeCoin','BLC','','blake','80904','/images/coin-443.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00015832107355864,0,'',0,NULL,0,14710.482049034,NULL,257384,NULL,NULL,0.00000931225,0.0000098,25.00984521,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp6',4430,'POW',1,NULL,1,0,'',NULL,276,299041,1431226011,0,'https://bittrex.com/Market/Index?MarketName=BTC-BLC','https://bitcointalk.org/index.php?topic=306894.0','https://github.com/BlueDragon747/Blakecoin','',NULL);
INSERT INTO `coins` VALUES (444,'StabilitySharesXSI','XSI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XSI',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (445,'XCurrency','XC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (446,'Dirac','XDQ',NULL,'blake','80901','https://ip.bitcointalk.org/?u=http%3A%2F%2Fi58.tinypic.com%2F29osrnk.jpg&t=547&c=71zM9OaAePyC1A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00013858160724549,0,'',0,NULL,0,10914.2008818,NULL,97493,NULL,NULL,0.0001210006,NULL,1.25,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp4',4460,'POW',1,NULL,1,1,NULL,NULL,208,147903237,1419516549,0,'https://bittrex.com/Market/Index?MarketName=BTC-XDQ','https://bitcointalk.org/index.php?topic=616288.0','https://github.com/bryceweiner/Dirac','',NULL);
INSERT INTO `coins` VALUES (448,'Maieuticoin','MMXIV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MMXIV',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (449,'CAIx','CAIX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CAIX',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (450,'Boolberry','BBR',NULL,'CryptoNight',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BBR','','','',NULL);
INSERT INTO `coins` VALUES (451,'Hyper','HYPER',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-HYPER',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (452,'CannaCoin','CCN',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CCN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (453,'KryptKoin','KTK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Pure PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-KTK',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (454,'Mugatu','MUGA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MUGA',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (455,'VootCoin','VOOT',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-VOOT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (456,'BankNote','BN',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (457,'Monero','XMR',NULL,'CryptoNight',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XMR','','','',NULL);
INSERT INTO `coins` VALUES (458,'CloakCoin','CLOAK',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CLOAK',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (459,'CHCCoin','CHCC',NULL,'scryptjane',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt Jane',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CHCC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (460,'BurnerCoin','BURN',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BURN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (461,'KoreCoin','KORE',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-KORE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (462,'Razor','RZR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-RZR',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (463,'DarkNote','XDN',NULL,'cryptonight',NULL,'https://pbs.twimg.com/profile_images/517393193411674112/-_0zfX6I.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XDN','https://bitcointalk.org/index.php?topic=788916.0','https://github.com/ducknote/darknote','',NULL);
INSERT INTO `coins` VALUES (464,'Minerals','MIN',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MIN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (465,'TechCoin','TECH',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-TECH',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (466,'GameLeagueCoin','GML',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GML',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (467,'TruckCoin','TRK',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-TRK',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (468,'WankCoin','WKC','','sha256','80701','/images/coin-468.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000081197602840733,0,'',0,2000.0014,0,417059.83786367,NULL,82211,NULL,NULL,0.000006755,0.000007145,50.0002,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4680,'POW',1,NULL,1,0,'0000000000001cf2c0af8ba1a38460969153062808450d45efb18edaa330fee9',NULL,1667,264,1430791481,0,'https://bittrex.com/Market/Index?MarketName=BTC-WKC','','','',NULL);
INSERT INTO `coins` VALUES (469,'Quatloo','QTL',NULL,'scrypt','10102','/images/coin-QTL.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.028691590987062,0,'',0,0,0,94.603360775911,NULL,192407,178136,NULL,0.000014266781608806,0.0000151630624256,17.011,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp2',4690,'POW',1,NULL,1,0,'2a9a4e49491123ad90cf32352a4720ba161965b535770f9adcd13a02d339119d',NULL,201,329,1431861954,0,'https://bittrex.com/Market/Index?MarketName=BTC-QTL',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (470,'XXXCoin','XXX',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XXX',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (471,'AeroCoin','AERO',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-AERO',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (472,'TrustPlus','TRUST',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-TRUST',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (473,'BritCoin','BRIT',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BRIT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (474,'JudgeCoin','JUDGE',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-JUDGE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (475,'NavajoCoin','NAV',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-NAV',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (476,'StealthCoin','XST',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XST',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (477,'ApexCoin','APEX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-APEX',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (478,'ZetaCoin','ZET','','sha256','90206','/images/coin-478.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000034251734042815,0,'',0,NULL,0,61788.257229176,NULL,3110924,NULL,NULL,0,0,1,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4780,'POW',1,NULL,1,0,'0000000000011ba84578a1391b21e536fe3707e489f2070beb47e6e2817c0e36',NULL,23,86,1434809265,0,'https://bittrex.com/Market/Index?MarketName=BTC-ZET','https://bitcointalk.org/index.php?topic=267545.0','http://github.com/zetacoin/zetacoin','',NULL);
INSERT INTO `coins` VALUES (479,'BitcoinDark','BTCD',NULL,'sha256','v1.0.0.0-g32a928e','/images/coin-BTCD.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,150307.20897845,0,'BitcoinDark is not connected!',0,NULL,0.0001,0.00024414,0.00024414,0,NULL,NULL,0.00361343285,NULL,1,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp4',4790,'POS',1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,'https://bittrex.com/Market/Index?MarketName=BTC-BTCD','https://bitcointalk.org/index.php?topic=684090.0','https://github.com/laowais/bitcoindark','',NULL);
INSERT INTO `coins` VALUES (480,'KeyCoin','KEY',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-KEY',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (481,'NewUniversalDollar','NUD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-NUD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (482,'Triangles','TRI',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-TRI',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (483,'Pesa','PES',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW/PoStr',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-PES',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (484,'IncognitoCoin','ICG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ICG',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (485,'Unobtanium','UNO','','sha256','100000','/images/coin-UNO.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000000023281083972171,0,'',0,NULL,0,63121255.609936,NULL,620808,NULL,NULL,0.0093149253822765,0.009752507950141,0.015625,1,0,1,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',4850,'POW',1,NULL,1,1,'324611d672129ea00daa2835c4a9df742644c2781f35c07476652aae10106e27',NULL,129,85290,1434809023,0,'https://bittrex.com/Market/Index?MarketName=BTC-UNO','','https://github.com/unobtanium-official/Unobtanium.git','',NULL);
INSERT INTO `coins` VALUES (486,'EsportsCoin','ESC',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ESC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (487,'PinkCoin','PINK',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-PINK',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (488,'IOCoin','IOC',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-IOC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (489,'ShadowCash','SDC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SDC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (490,'RawCoin','RAW',NULL,'x15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X15 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-RAW',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (491,'MaxCoin','MAX','','keccak','90301','/images/coin-491.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00081462655359285,0,'',0,NULL,0,3402.15030323,NULL,956223,935270,NULL,0.000017321762352032,0.000018415006400016,16,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp6',4910,'POW',1,NULL,1,0,'',NULL,68,1883327,1430798845,0,'https://bittrex.com/Market/Index?MarketName=BTC-MAX','','','',NULL);
INSERT INTO `coins` VALUES (492,'LibrexCoin','LXC',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-LXC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (493,'BoomCoin','BOOM',NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X13 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BOOM',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (494,'DobbsCoin','BOB',NULL,NULL,NULL,'/images/coin-BOB.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BOB',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (495,'Unattainium','UNAT','','qubit','90401','/images/coin-495.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,285.48456262874,0,'',0,4.7501,0,0.00024413713253701,NULL,683649,NULL,NULL,0.00002787885,0.000033188307987195,0.25,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp6',4950,'POW',1,NULL,1,0,'8f2e4ddb79c4ea7c057ec17d1e9642e2edde1f9fe5345fda414979b938631a79',NULL,77,0,1430741159,0,'https://bittrex.com/Market/Index?MarketName=BTC-UNAT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (496,'MultiWalletCoin','MWC',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11 PoW+PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MWC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (497,'VaultCoin','VAULT',NULL,'nist5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'NIST5',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-VAULT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (498,'Fuel2Coin','FC2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-FC2',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (499,'SonicCoin','SSD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SSD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (500,'Halcyon','HAL',NULL,'neoscrypt','v1.1.0.2-hal-1-gdf6edad','/images/coin-500.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,2.5762014135665,0,'',0,NULL,0.00001,0.15156035355988,0.15801428,284826,NULL,NULL,0.000008869727521661,0.0000095160083225843,5,1,0,0,1,1419057802,NULL,'.halcyon','halcyond',NULL,NULL,'yaamp2',5000,'POS',1,NULL,1,0,'da492a2ce34cd47e05feb686db50c319bad4cb4cb06d588fee3aaae594e3ba87',NULL,141,11,1434808716,1,'https://bittrex.com/Market/Index?MarketName=BTC-HAL','https://bitcointalk.org/?topic=895829.0','https://github.com/ghostlander/Halcyon','http://atlas.phoenixcoin.org:2080/',NULL);
INSERT INTO `coins` VALUES (501,'BigBullion','BIG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BIG',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (502,'NeosCoin','NEOS','','sha256','1020001','/images/coin-502.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000052602319920411,0,'',0,NULL,0,2030708.9147708,NULL,99771,NULL,NULL,0.00002141301568,0.000021855523200002,50,1,0,0,0,1419057802,NULL,'','',NULL,NULL,'yaamp3',15004,'POW',1,NULL,1,0,'00000000000001566bd7dcefe7c701ec33baf7864803928fdd38c5f44549d5b1',NULL,326,1634434,1436569631,1,'https://bittrex.com/Market/Index?MarketName=BTC-NEOS','https://bitcointalk.org/index.php?topic=835131.0','https://github.com/bellacoin/neoscoin','',NULL);
INSERT INTO `coins` VALUES (503,'GreenBacks','GB',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GB','','','',NULL);
INSERT INTO `coins` VALUES (504,'RootCoin','ROOT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ROOT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (505,'Axron','AXR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-AXR',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (506,'RipoffCoin','RIPO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-RIPO',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (507,'Fibre','FIBRE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-FIBRE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (508,'ShadeCoin','SHADE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SHADE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (509,'FlexibleCoin','FLEX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-FLEX',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (510,'SocialXBot','XBOT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XBOT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (511,'XCash','XCASH',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XCASH','','','',NULL);
INSERT INTO `coins` VALUES (512,'BURST','BURST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BURST',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (513,'LitecoinDark','LTCD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-LTCD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (514,'CraigsCoin','CRAIG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CRAIG',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (515,'TitCoin','TIT','','sha256','1000000','/images/coin-TIT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000003920338318239,0,'',0,NULL,0,245914.01726752,NULL,401053,NULL,NULL,0.00000144648,0.000001543,69,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp2',5150,'POW',1,NULL,1,0,'000000000000122c9bf4f701e482fbaadff1a4ae125af04aee5f208db923bdbf',NULL,81,304,1434809265,0,'https://bittrex.com/Market/Index?MarketName=BTC-TIT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (516,'GlobalBoost-Y','BSTY',NULL,NULL,NULL,'/images/coin-BSTY.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BSTY',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (517,'Gnosis','GNS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GNS',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (518,'DeepCoin','DCN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DCN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (519,'Prime-XI','PXI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-PXI',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (520,'MozzShare','MLS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MLS',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (521,'RosCoin','ROS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ROS',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (522,'SativaCoin','STV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-STV',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (523,'OpalCoin','OPAL',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-OPAL','https://bitcointalk.org/index.php?topic=778720.0','','',NULL);
INSERT INTO `coins` VALUES (524,'ExclusiveCoin','EXCL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-EXCL',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (525,'UtilityCoin','UTIL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-UTIL',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (526,'PyramidsCoin','PYRA',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-PYRA',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (527,'GhostCoin','GHOST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GHOST',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (528,'NetCoin','NET',NULL,'scrypt','v2.3.1.0','/images/coin-528.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.029859299688766,14,'',0,NULL,0,113.30348278866,8.12638774,532599,573454,NULL,0.00000155365,NULL,200.91,1,0,0,1,1419057802,NULL,'','',NULL,NULL,'yaamp3',5280,'POW',1,NULL,0,0,'8d894e407520bcc542327d2ea063ca33869ce0c319f512ba186f447be3b8ca5a',NULL,99,485,1425661663,0,'https://bittrex.com/Market/Index?MarketName=BTC-NET','https://bitcointalk.org/index.php?topic=295616.0','https://github.com/netcoinfoundation/netcoin','',NULL);
INSERT INTO `coins` VALUES (529,'SeedCoin','SEED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SEED',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (530,'PandaCoin','PND',NULL,'scrypt',NULL,'/images/coin-PND.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-PND',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (531,'WhistleCoin','WSTL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-WSTL',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (532,'GamerholicCoin','GHC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GHC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (533,'DopeCoin','DOPE',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DOPE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (534,'SparkCoin','SPARK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SPARK',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (535,'GlowCoin','GLOW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GLOW',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (536,'ScatterCoin','XSTC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XSTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (537,'CannabisDarkcoin','CND',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CND',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (538,'DarkShibe','DSB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DSB',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (539,'DarkKush','DANK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DANK',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (540,'GanjaCoin','GANJA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GANJA',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (541,'X-Children','CHILD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CHILD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (542,'1Coin','ONE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ONE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (543,'RektCoin','REKT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-REKT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (544,'CamorraCoin','CAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CAM',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (545,'EthereumDark','ETD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ETD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (546,'UroDark','UROD',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-UROD','https://bitcointalk.org/index.php?topic=838281.0','https://github.com/urodarkcoin/urodark/tree/master','',NULL);
INSERT INTO `coins` VALUES (547,'Quotient','XQN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XQN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (548,'OptimumCoin','OPTI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-OPTI',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (549,'Diode','DIO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DIO',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (550,'MalibuCoin','MAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MAL',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (551,'MewnCoin','MEWN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MEWN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (552,'Bladecoin','BLA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/BLA/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (553,'Bleutrade Share','BLEU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/BLEU/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (554,'BeaverCoin','BVC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/BVC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (555,'Cagecoin','CAGE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/CAGE/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (556,'Canada eCoin','CDN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/CDN/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (557,'CryptoEscudo','CESC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/CESC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (558,'CoffeeCoin2.0','CFC2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/CFC2/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (559,'CopperLark','CLR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'SHA-3',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/CLR/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (560,'CzechCrownCoin','CZC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://crown-ex.com','https://cryptocointalk.com/topic/14708-czechcrowncoin-czc-information/','https://github.com/CzechCrownCoin','http://czc-explorer.bitcoinnews.cz',NULL);
INSERT INTO `coins` VALUES (561,'DogecoinDark','DOGED','','scrypt','v1.2.0.0-beta','/images/coin-DOGED.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.029638970340127,0,'',0,NULL,0.1,400.66295703675,NULL,186904,NULL,NULL,0.000000049,0.000000055,25000.5,100,0,0,1,1419057803,NULL,'','',NULL,NULL,'yaamp2',5610,'POS',1,NULL,1,0,'0000000003322491352efb9417814fc345be32b64bba1c006f9aa50ab49fa9fd',NULL,312,551,1434808355,0,'https://bleutrade.com/exchange/DOGED/BTC','https://bitcointalk.org/index.php?topic=817937.0','https://github.com/doged/dogedsource','',NULL);
INSERT INTO `coins` VALUES (562,'Donationcoin','DON',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt PoW',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/DON/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (563,'FujiCoin','FJC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/FJC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (564,'Freicoin','FRC',NULL,'sha256','80600','/images/coin-564.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000005913752246547,0,'',0,NULL,0,1280834.0552712,NULL,108972,NULL,NULL,0.0000050566,NULL,146.98987545,1,0,0,1,1419057803,NULL,'','',NULL,NULL,'yaamp3',5640,'POW',1,NULL,0,0,'',NULL,9673,643,1429184401,0,'https://bleutrade.com/exchange/FRC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (565,'GCoin','GCN',NULL,NULL,NULL,'/images/coin-GCN.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/GCN/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (566,'Granitecoin','GRN',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/GRN/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (567,'Guarany','GUA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/GUA/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (568,'HamRadioCoin','HAM',NULL,'sha256','1010000','/images/coin-HAM.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000036034939734409,0,'',0,0,0,135639.0455457,NULL,121815,NULL,NULL,0.000011436299975168,0.0000126350015872,12.5,1,0,0,1,1419057803,NULL,'','',NULL,NULL,'yaamp6',5680,'POW',1,NULL,1,0,'0000000000004df4378729c87d68fcc6f43840bc5f26b5c7bfb0d17843935fa2',NULL,158,217,1431865423,0,'https://bleutrade.com/exchange/HAM/BTC','https://bitcointalk.org/index.php?topic=856464','https://github.com/hamradiocoin','http://blockexperts.com/ham',NULL);
INSERT INTO `coins` VALUES (569,'HeisenbergHex','HEX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/HEX/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (570,'HTML5','HTML5','','x15','v1.0.0.0','/images/coin-HTML5.png','alcurex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.82770905869165,0,'',0,NULL,0.00001,0.29952969244903,0.00024414,549692,151547,NULL,0.0000000065579590146044,0.0000000068944357633854,5000,1,0,1,1,1419057803,NULL,'.HTML5','Htmld',NULL,NULL,'yaamp3',5700,'POS',1,NULL,1,0,'0000000302768fe417777a419bbf66db92dae046bc60672b5d77828b1ae1e2cc',NULL,50,30,1436550825,1,'https://bleutrade.com/exchange/HTML5/BTC','https://bitcointalk.org/index.php?topic=801489.0','https://github.com/HTMLCOIN/HTML5','',NULL);
INSERT INTO `coins` VALUES (571,'Infinitecoin','IFC','','scrypt','1080800','/images/coin-571.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0012025642495673,7,'infinitecoin is downloading blocks...',0,NULL,10,0.98116569,NULL,531502,NULL,NULL,0.0000001179914781696,0.00000012539973376,1,1,0,0,1,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,5710,'POW',0,NULL,1,0,'',NULL,12,NULL,1432606663,0,'https://bleutrade.com/exchange/IFC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (572,'IrishCoin','IRL',NULL,NULL,NULL,'/images/coin-IRL.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/IRL/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (573,'Karma','KARM',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/KARM/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (574,'Mintcoin','MINT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Pure PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/MINT/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (575,'Mooncoin','MOON',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/MOON/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (576,'MetalMusicCoin','MTLMC',NULL,NULL,NULL,'/images/coin-MTLMC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/MTLMC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (577,'Namecoin','NMC','','sha256','38000','/images/coin-577.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00000002150150758075,0,'',0,0,0.005,14809292723.487,NULL,229332,NULL,NULL,0.0013789216380103,0.0014295284120817,25.18,1,0,0,1,1419057803,NULL,'','',NULL,NULL,'yaamp6',5770,'POW',0,1,1,1,'',NULL,1157,10323457,1430807824,0,'https://bleutrade.com/exchange/NMC/BTC','http://namecoin.info/?p=download','https://github.com/namecoin/namecoin','',NULL);
INSERT INTO `coins` VALUES (578,'NewYorkCoin','NYC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/NYC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (579,'OrbitCoin','ORB','','neoscrypt','v1.5.0.0-orb-1-gd20dc7f','/images/coin-ORB.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,3.2607735072876,0,'',0,0,0.001,0.10669247625529,0.14859904,1241221,NULL,NULL,0.00003724980050176,0.00003884500025856,1,100,0,0,1,1419057803,NULL,'','',NULL,NULL,'yaamp6',5790,'POS',1,NULL,1,0,'',NULL,60,50,1431862090,0,'https://bleutrade.com/exchange/ORB/BTC','https://cryptocointalk.com/topic/929-orbitcoin-orb-information/','https://github.com/ghostlander/Orbitcoin','',NULL);
INSERT INTO `coins` VALUES (580,'Paccoin','PAC',NULL,NULL,NULL,'/images/coin-PAC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/PAC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (581,'PolishCoin','PCC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/PCC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (582,'PHCoin','PHC',NULL,'x11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'X11',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/PHC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (583,'PimpCash','PIMP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/PIMP/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (584,'POWcoin','POW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/POW/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (585,'Peercoin','PPC','','sha256','v0.4.0ppc-16-gd50b306-beta','/images/coin-585.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000050720496699098,0,'',0,0,0.01,167263399.69501,NULL,170219,170187,NULL,0.0013401686809116,0.0013851327647486,87.92,100,0,0,1,1419057803,NULL,'','',NULL,NULL,'yaamp6',5850,'POS',1,NULL,1,0,'',NULL,287,84770,1429645992,0,'https://bleutrade.com/exchange/PPC/BTC','','https://github.com/super3/Peercoin.net','',NULL);
INSERT INTO `coins` VALUES (586,'RussiaCoin','RC',NULL,NULL,NULL,'/images/coin-RC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/RC/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (587,'Sexcoin','SXC',NULL,'scrypt',NULL,'/images/coin-SXC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no source',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/SXC/BTC','https://bitcointalk.org/index.php?topic=252896.msg2689850','','',NULL);
INSERT INTO `coins` VALUES (588,'TrollCoin','TRL',NULL,'scrypt',NULL,'/images/coin-TRL.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/TRL/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (589,'US Dollar','USD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/USD/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (590,'VirtaCoin','VTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/VTA/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (591,'Primecoin','XPM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Prime PoW',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057803,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bleutrade.com/exchange/XPM/BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (592,'unknown','ABC2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=abc2-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (593,'unknown','AID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=aid-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (594,'BitQuark','BTQ','','quark','80319','/images/coin-594.png','c-cex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,6,'',0,NULL,0,0.1213238152716,NULL,1324632,829764,NULL,0,0,2.5,1000,1,0,1,1419057851,NULL,'.bitquark','bitquarkd',NULL,NULL,'yaamp5',5940,'POW',1,NULL,0,0,'00000000d70f9f3cd7559846a2e639da17e36d6897e2d11ac2356193999b10da',NULL,36,3701,1436648206,1,'https://c-cex.com/?p=btq-btc','https://bitcointalk.org/index.php?topic=468018.0','https://github.com/bitquarkcoin/BitQuark-0.8.3r18','',NULL);
INSERT INTO `coins` VALUES (595,'unknown','CCI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=cci-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (596,'Einsteinium','EMC2',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=emc2-btc','https://bitcointalk.org/index.php?topic=494708.0','https://github.com/einsteinium/einsteinium','',NULL);
INSERT INTO `coins` VALUES (597,'unknown','EUPH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=euph-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (598,'unknown','FICE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=fice-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (599,'unknown','FOOD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=food-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (600,'Gimpcoin','GIMP',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=gimp-btc','','','',NULL);
INSERT INTO `coins` VALUES (601,'GridCoin','GRC',NULL,NULL,NULL,'/images/coin-GRC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=grc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (602,'unknown','ICNX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=icnx-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (603,'unknown','IMAC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=imac-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (604,'Kryptonite','KRYP',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=kryp-btc','https://bitcointalk.org/index.php?topic=606682.0','','',NULL);
INSERT INTO `coins` VALUES (605,'unknown','MIC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=mic-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (606,'unknown','MOTO',NULL,NULL,NULL,'/images/coin-MOTO.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=moto-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (607,'unknown','MSC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=msc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (608,'unknown','NIC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=nic-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (609,'unknown','NWO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=nwo-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (610,'unknown','PLCN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=plcn-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (611,'unknown','PROZ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=proz-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (612,'SongCoin','SONG',NULL,'scrypt','80701','/images/coin-SONG.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.084383703478683,0,'',0,NULL,0,146.75565741478,NULL,66480,NULL,NULL,0.000009291024,NULL,100,1,0,0,1,1419057851,NULL,'','',NULL,NULL,'yaamp4',6120,'POW',1,NULL,1,0,NULL,NULL,2111,515,1422793222,0,'https://c-cex.com/?p=song-btc','https://bitcointalk.org/index.php?topic=804527.0','https://github.com/Songcoin/Songcoin/','',NULL);
INSERT INTO `coins` VALUES (613,'unknown','SPUDS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=spuds-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (614,'unknown','SQC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=sqc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (615,'unknown','VOXP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=voxp-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (616,'Vortex','VTX',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=vtx-btc','https://bitcointalk.org/index.php?topic=777508.0','','',NULL);
INSERT INTO `coins` VALUES (617,'unknown','XRC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xrc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (618,'ServX','XSX',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419057851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xsx-btc','https://bitcointalk.org/index.php?topic=750752.0','https://github.com/ServX/servx','',NULL);
INSERT INTO `coins` VALUES (619,'AsiaCoin','AC',NULL,NULL,NULL,'/images/coin-AC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (620,'Acoin','ACOIN','','sha256','90202','/images/coin-620.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000010249858982867,0,'',0,NULL,0,87772.863565765,NULL,960835,NULL,NULL,0,0,0.25,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp3',6200,'POW',1,NULL,1,0,'000000000003055f89e4b6deef77b10505831c2021d8102d2a1ad38ad45891ad',NULL,51,41,1434809266,0,'https://www.cryptsy.com/markets/view/','https://cryptocointalk.com/topic/14814-acoin-acoin-information/','https://github.com/acoin-project/acoin','',NULL);
INSERT INTO `coins` VALUES (621,'Aegis','AGS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (622,'AlphaCoin','ALF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (623,'AlienCoin','ALN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (624,'AmericanCoin','AMC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (625,'Argentum','ARG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (626,'AuroraCoin','AUR','','scrypt','1030000','/images/coin-626.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.14289227312407,0,'',0,NULL,0,128.79199164773,NULL,133879,NULL,NULL,0,0,12.5,1,0,0,0,1419059858,NULL,'','',NULL,NULL,'yaamp2',6260,'POW',0,NULL,1,0,'634f8f5881a76318f0e8e1fd7f5e6ea38bd1092128101a1190aae1bc63c18be1',NULL,156,343,1434809266,0,'https://www.cryptsy.com/markets/view/','','https://github.com/baldurodinsson/auroracoin-project.git','',NULL);
INSERT INTO `coins` VALUES (627,'BattleCoin','BCX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (628,'Benjamins','BEN',NULL,'sha256',NULL,'https://www.cryptsy.com/img/coinlogos/curr_116.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,1,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'',6280,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,'https://www.cryptsy.com/markets/view/','','https://github.com/benjaminsSource/Benjamins.git','',NULL);
INSERT INTO `coins` VALUES (629,'Betacoin','BET',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (630,'BancorCoin','BNCR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (631,'BoostCoin','BOST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (632,'BBQCoin','BQC','','scrypt','60300','/images/coin-632.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.066775024827764,0,'',0,NULL,0,8.6791400610754,NULL,994204,987698,NULL,0.0000013413500000317,0.0000014485866671276,42,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp6',6320,'POW',1,1,1,0,'',NULL,57,10,1430421308,0,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (633,'BitBar','BTB',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=193519.0','','',NULL);
INSERT INTO `coins` VALUES (634,'ByteCoin','BTE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (635,'BitGem','BTG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (636,'CryptoBuck','BUK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (637,'CACHeCoin','CACH',NULL,'scryptjane',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (638,'BottleCaps','CAP',NULL,'scrypt','v2.2.0.0-ge1d17f0-Caps2.0','http://www.coinwarz.com/content/images/Bottlecaps-64x64.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00076217105727139,0,'',0,NULL,0.001,13.484177734055,NULL,885183,NULL,NULL,0.00001012113,NULL,0.1,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp3',6380,'POS',1,NULL,1,0,NULL,NULL,50,43,1423399106,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=241445.0','https://github.com/bottlecaps-foundation/bottlecaps','',NULL);
INSERT INTO `coins` VALUES (639,'CashCoin','CASH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (640,'CryptogenicBullion','CGB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (641,'CinniCoin','CINNI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (642,'Cosmoscoin','CMC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (643,'China Coin','CNC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (644,'ConcealCoin','CNL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (645,'CommunityCoin','COMM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (646,'CoolCoin','COOL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (647,'CrackCoin','CRACK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (648,'CraftCoin','CRC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (649,'CasinoCoin','CSC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (650,'eMark','DEM',NULL,NULL,NULL,'/images/coin-DEM.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (651,'Diamond','DMD',NULL,'groestl','v2.0.5.5','/images/coin-DMD.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.012835237914639,0,'',0,NULL,0.001,79.111974573953,NULL,905517,884343,NULL,0.00048353381693027,0.00050481089953549,0.21,100,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp3',6510,'POS',1,NULL,1,0,'',NULL,72,152826,1430316339,0,'https://www.cryptsy.com/markets/view/','','https://github.com/DMDcoin/Diamond','',NULL);
INSERT INTO `coins` VALUES (652,'DarkCash','DRKC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (653,'DarkToken','DT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (654,'DevCoin','DVC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (655,'EarthCoin','EAC','','scrypt','1040000','/images/coin-655.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,0,'This is a pre-release test build - use at your own risk - do not use for mining or merchant applications',0,NULL,0,60.996480614293,NULL,696991,NULL,NULL,0,0,5887.5,1,0,0,1,1419059858,NULL,NULL,NULL,NULL,NULL,'yaamp2',6550,'POW',1,NULL,0,0,'abf3a132a30c8e5b588f99498e42e27e5661fad80ce481e6a23af8cfdb0dd5d4',NULL,65,121,1434809266,0,'https://www.cryptsy.com/markets/view/','','https://github.com/earthcoinproject/earthcoin.git','',NULL);
INSERT INTO `coins` VALUES (656,'ElaCoin','ELC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (657,'Emerald','EMD','','scrypt','80501','/images/coin-657.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0095057642950698,0,'',0,NULL,0,12.112672598957,NULL,2487336,2484624,NULL,0.0000029014850151301,0.0000032019622727937,5.1,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp6',6570,'POW',0,NULL,1,0,'e63b8775d2b05cd13436b37536c7a19d4ee45b007db6e2a48d5aefbd6ef437fe',NULL,20,34,1429566710,0,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (658,'EZCoin','EZC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (659,'FireflyCoin','FFC',NULL,'sha256',NULL,'http://www.coinwarz.com/content/images/Fireflycoin-64x64.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,1,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'',6590,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=318589.0','https://github.com/FireFlyCoin/FireFlyCoin','',NULL);
INSERT INTO `coins` VALUES (660,'FlutterCoin','FLT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (661,'FractalCoin','FRAC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (662,'Franko','FRK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (663,'FastCoin','FST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (664,'GrandCoin','GDC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (665,'Globalcoin','GLC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (666,'GoldCoin','GLD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (667,'Galaxycoin','GLX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (668,'GlyphCoin','GLYPH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (669,'GuerillaCoin','GUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (670,'HoboNickels','HBN',NULL,NULL,NULL,'/images/coin-HBN.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (671,'HeavyCoin','HVC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (672,'IcebergCoin','ICB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (673,'IXCoin','IXC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (674,'JunkCoin','JKC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (675,'KlondikeCoin','KDC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (676,'KrugerCoin','KGC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (677,'CoinworksCoin','LAB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (678,'LegendaryCoin','LGD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (679,'Lucky7Coin','LK7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (680,'LuckyCoin','LKY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (681,'LiteBar','LTB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (682,'LiteCoinX','LTCX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (683,'LycanCoin','LYC',NULL,'scrypt','1010107','/images/coin-683.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.061294742400457,0,'',0,NULL,0,29.782766535715,NULL,213517,NULL,NULL,0.0000000579,NULL,2970,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp3',6830,'POW',0,NULL,1,0,'1cb94abd19a55fbabe2ca83e8fe7b34fb58fe17e4ca91aca811ae9f01c8ac504',NULL,1121,56,1425417973,0,'https://www.cryptsy.com/markets/view/','','https://github.com/lycancoin/lycancoin-release.git','',NULL);
INSERT INTO `coins` VALUES (684,'Mediterraneancoin','MED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (685,'MinCoin','MNC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (686,'MazaCoin','MZC','','sha256','90001','/images/coin-686.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000036027488949602,0,'',0,NULL,0,1804737.5617955,NULL,338074,NULL,NULL,0.0000005880000050176,0.00000060500000512001,1000,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp2',6860,'POW',1,NULL,1,0,'00000000000001aec593598b44733edf3757efd39926686bb7c8578e2dd975d3',NULL,135,1943,1434809266,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=508849.0','https://github.com/mazacoin/mazacoin','',NULL);
INSERT INTO `coins` VALUES (687,'NanoToken','NAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (688,'Nibble','NBL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (689,'NeoCoin','NEC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (690,'NoirBits','NRB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (691,'NoirShares','NRS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (692,'NyanCoin','NYAN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (693,'OpenSourceCoin','OSC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (694,'PhilosopherStone','PHS',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=263744.0','https://github.com/philosopherstonecoin/philosopherstone','',NULL);
INSERT INTO `coins` VALUES (695,'CryptsyPoints','Points',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (696,'PseudoCoin','PSEUD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (697,'Bitshares PTS','PTS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (698,'PYC','PYC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (699,'RotoCoin','RT2',NULL,'scryptn',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=516138.0','https://github.com/rotocoin/rotocoin/','',NULL);
INSERT INTO `coins` VALUES (700,'RoyalCoin','RYC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (701,'SaturnCoinV2','SAT2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (702,'StableCoin','SBC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (703,'ShieldCoin','SHLD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (704,'SilkCoin','SILK',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=599438.0','','',NULL);
INSERT INTO `coins` VALUES (705,'SmartCoin','SMC','','x11','90100','/images/coin-705.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.1017648252389,6,'',0,0,0,3.5992003950827,NULL,444702,418249,NULL,0.0000022891999950336,0.00000242999999744,16,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp3',7050,'POW',1,NULL,1,0,'a248b059ce4b5416c48b8264096019af1b59ed0e6a79f2fc4ce3078b51eb17cb',NULL,160,5,1433593740,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=555426','','',NULL);
INSERT INTO `coins` VALUES (706,'SoleCoin','SOLE',NULL,'x14e ??',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Pow has Ended',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=730077.0','','',NULL);
INSERT INTO `coins` VALUES (707,'SpainCoin','SPA',NULL,'scryptn','90001','/images/coin-707.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.1641550153501,0,'',0,NULL,0,3.9057350677505,NULL,205356,166916,NULL,0.00000109045,NULL,44,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp4',7070,'POW',1,NULL,1,0,'e13e59173e0404e97eb4a8c1d985f6c8427f046af28a162cff4664e20745cea8',NULL,163,2221,1424871148,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=500511.0','https://github.com/SpainCoinProject/spaincoin','',NULL);
INSERT INTO `coins` VALUES (708,'Spots','SPT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059858,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (709,'SSVCoin','SSV',NULL,'x13','v1.2.2.0','/images/coin-709.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.004724037160296,0,'',0,NULL,0.0001,0.50455784303158,NULL,436509,NULL,NULL,0.00000078165,0.00000082999999994266,0.26,1,0,0,1,1419059858,NULL,'','',NULL,NULL,'yaamp6',7090,'POS',1,NULL,1,0,'',NULL,70,0,1429526014,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=661043.0','https://github.com/SSVCoin/SSVCoin-master','',NULL);
INSERT INTO `coins` VALUES (710,'StarCoin','STR',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=259012.0','','',NULL);
INSERT INTO `coins` VALUES (711,'TakCoin','TAK','','sha256','90103','/images/coin-711.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,1605.6361104284,0,'takeicoin is not connected!',0,0,0,0.00024414,NULL,0,NULL,NULL,0.0000000392,0.000000045,1000,1,0,0,1,1419059859,NULL,'','',NULL,NULL,'yaamp3',7110,'POW',1,NULL,1,0,'0000000000006062498b7f78f4808e06cc34ea0ad612d99c2ea0fa4bb0ccdc8d',NULL,107,130,1432556978,0,'https://www.cryptsy.com/markets/view/','','https://github.com/takeicoin/takeicoin.git','',NULL);
INSERT INTO `coins` VALUES (712,'TekCoin','TEK',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (713,'TeslaCoin','TES',NULL,'',NULL,'/images/coin-TES.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (714,'TigerCoin','TGC',NULL,'sha256','1010000','/images/coin-714.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000012376313936673,0,'',0,0,0,192574.90236521,NULL,367891,NULL,NULL,0.00000097,0.0000010148003200059,32.0001,1,0,0,1,1419059859,NULL,'','',NULL,NULL,'yaamp6',7140,'POW',1,NULL,1,0,'00000000000024a539fc67c7a0c9f69b3feeeaa020ca7ddece479a7acabe96ff',NULL,5618,156,1431860596,0,'https://www.cryptsy.com/markets/view/','','https://bitcointalk.org/index.php?topic=289312.0','',NULL);
INSERT INTO `coins` VALUES (715,'TorCoin','TOR',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=677434.0','','',NULL);
INSERT INTO `coins` VALUES (716,'TerraCoin','TRC','','sha256','80005','/images/coin-716.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000042657709890941,0,'This is a pre-release test build - use at your own risk - do not use for mining or merchant applications',0,NULL,0,1655018.289671,NULL,567287,NULL,NULL,0,0,20.0005,1,0,1,1,1419059859,NULL,'','',NULL,NULL,'yaamp3',7160,'POW',1,NULL,1,0,'00000000000005cc68297c5592ecdc114ca9ef989663be314e07562a7e50b634',NULL,1228,2430,1434808143,0,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (717,'UnbreakableCoin','UNB','','sha256','80600','/images/coin-717.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000011710733973203,0,'',0,NULL,0,24965256.25122,NULL,44739,NULL,NULL,0.000058472177961818,0.000062540717803783,50.0001,1,0,0,1,1419059859,NULL,'','',NULL,NULL,'yaamp3',7170,'POW',1,NULL,1,0,'00000000000000262e5b2611db89c91295d44d5e2dbd309f4e4639c9950c5458',NULL,17083,24491,1430482767,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=539945.0','https://github.com/jimblasko/UnbreakableCoin-master','',NULL);
INSERT INTO `coins` VALUES (718,'USDe','USDe','','scrypt','1000400','/images/coin-718.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.10158677523446,0,'',0,0,0,2.5138217823918,NULL,736883,NULL,NULL,0.0000002134,0.000000225,125,1,0,0,1,1419059859,NULL,'','',NULL,NULL,'yaamp2',7180,'POW',0,NULL,1,0,'5b34091aaa47547d9e187e1b0250ef61646688793a37009b77121b254de74071',NULL,67,5,1432823491,0,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=410254.0','https://github.com/usde-project/usde','',NULL);
INSERT INTO `coins` VALUES (719,'Crypti','XCR',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (720,'JouleCoin','XJO','','sha256','90204','/images/coin-720.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000042991896542743,0,'',0,NULL,0,67128.817755549,NULL,1264180,1126337,NULL,0,0,16,1,0,0,0,1419059859,NULL,'','',NULL,NULL,'yaamp2',7200,'POW',1,NULL,0,0,'000000000000691074b434404dcf938c8ef2a99f67f2d307462363ab2da6345e',NULL,163,62,1434809192,0,'https://www.cryptsy.com/markets/view/','','https://github.com/joulecoin/joulecoin','',NULL);
INSERT INTO `coins` VALUES (721,'LibertyCoin','XLB',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=600322.0','https://github.com/liberty-project/LibertyCoin','',NULL);
INSERT INTO `coins` VALUES (722,'YaCoin','YAC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/pocopoco/yacoin','',NULL);
INSERT INTO `coins` VALUES (723,'YBCoin','YBC',NULL,'scrypt',NULL,'https://www.cryptsy.com/img/coinlogos/curr_57.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/ybcoin/ybcoin.git','',NULL);
INSERT INTO `coins` VALUES (724,'ZcCoin','ZCC',NULL,'scrypt-chacha',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=268575.0','','',NULL);
INSERT INTO `coins` VALUES (725,'ZedCoin','ZED',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=432261.0','','',NULL);
INSERT INTO `coins` VALUES (726,'AndroidsTokensV2','ADT',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/CryptoRepairCrew/Android-Token-V2','',NULL);
INSERT INTO `coins` VALUES (727,'AsicCoin','ASC',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=292501.0','','',NULL);
INSERT INTO `coins` VALUES (728,'BatCoin','BAT',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=400753.0','','',NULL);
INSERT INTO `coins` VALUES (729,'ColossusCoin','COL',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=279601.0','','',NULL);
INSERT INTO `coins` VALUES (730,'CopperBars','CPR',NULL,'scrypt-jane',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=272170.0','','',NULL);
INSERT INTO `coins` VALUES (731,'Continuumcoin','CTM',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (732,'Doubloons','DBL',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=206361.0','https://github.com/razorlove/doubloons.git','',NULL);
INSERT INTO `coins` VALUES (733,'DamaCoin','DMC',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'soon POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=497079.0','','',NULL);
INSERT INTO `coins` VALUES (734,'ElephantCoin','ELP',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','https://bitcointalk.org/index.php?topic=256501.0','https://github.com/elephantcoin/elephantcoin','',NULL);
INSERT INTO `coins` VALUES (735,'FlappyCoin','FLAP',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/flappycoin-project/flappycoin','',NULL);
INSERT INTO `coins` VALUES (736,'GameCoin','GME',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/gamecoin/gamecoin.git','',NULL);
INSERT INTO `coins` VALUES (737,'LeafCoin','LEAF',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','http://leafco.in/github-source','',NULL);
INSERT INTO `coins` VALUES (738,'LottoCoin','LOT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (739,'MemeCoin','MEM',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/muddafudda/Memecoin-v2.0.0.0-Beta-Release','',NULL);
INSERT INTO `coins` VALUES (740,'KittehCoin','MEOW',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/kittehcoin/kittehcoin','',NULL);
INSERT INTO `coins` VALUES (741,'MasterCoin (Hydro)','MST',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/mastercoin/MasterCoin-Source','',NULL);
INSERT INTO `coins` VALUES (742,'RabbitCoin','RBBT',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://bitbucket.org/rabbitcoin/rabbitcoin','',NULL);
INSERT INTO `coins` VALUES (743,'RedCoin','RED',NULL,'scrypt',NULL,'/images/coin-RED.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/redcoinproject/redcoin','',NULL);
INSERT INTO `coins` VALUES (744,'FedoraCoin','TIPS',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/fedoracoin/fedoracoin','',NULL);
INSERT INTO `coins` VALUES (745,'Tickets','TIX',NULL,'scrypt-jane',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/LotteryTickets/LotteryTickets','',NULL);
INSERT INTO `coins` VALUES (746,'XenCoin','XNC',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','https://github.com/xencoin/Xencoin','',NULL);
INSERT INTO `coins` VALUES (747,'ZeitCoin','ZEIT',NULL,'',NULL,'/images/coin-ZEIT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419059859,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/','','','',NULL);
INSERT INTO `coins` VALUES (748,'EquinoxCoin ','EQX',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419090753,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-EQX','','','',NULL);
INSERT INTO `coins` VALUES (750,'Unicoin','UCI',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419345300,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=uci-btc','https://bitcointalk.org/index.php?topic=842862.0','','',NULL);
INSERT INTO `coins` VALUES (751,'zyrmaedj','ggggg',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419399414,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (752,'VirtualMiningCoin','VMC',NULL,'scryptn','80602','/images/coin-752.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,1.7439410426509,0,'',0,NULL,0,0.037893024121785,NULL,446665,NULL,NULL,0.00000004825,NULL,171.19999999,1,0,0,1,1419407496,NULL,'','',NULL,NULL,'yaamp4',7520,'POW',1,NULL,0,0,'2524d9b52503edd6fd31f22fd022421621d4bcadf2e26082fa2b39ff9107ad58',NULL,44,79,1426548004,0,'https://bittrex.com/Market/Index?MarketName=BTC-VMC','https://bitcointalk.org/index.php?topic=582873.0','https://github.com/VMCoin/VMC','',NULL);
INSERT INTO `coins` VALUES (753,'GameCredits','GMC',NULL,'scrypt','80905','/images/coin-753.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.072981004217116,0,'',0,0,0,5.0355569335645,NULL,1095826,1070717,NULL,0.0000020384000000011,0.0000021049999557274,25,1,0,0,1,1419407501,NULL,'','',NULL,NULL,'yaamp6',7530,'POW',1,NULL,1,0,'054a5baf26f3ac58f6d1655290b46b6c6bd9f5882c310bf6dce7584c78b23e8d',NULL,121,131,1431865527,0,'https://bittrex.com/Market/Index?MarketName=BTC-GMC','https://bitcointalk.org/index.php?topic=263600.0','https://github.com/Petr1fied/gamecoin','',NULL);
INSERT INTO `coins` VALUES (756,'Twenty15','2015',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419719366,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=2015-btc','https://bitcointalk.org/index.php?topic=901192.0','','',NULL);
INSERT INTO `coins` VALUES (757,'unknown','HGC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1419872340,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=hgc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (758,'Unitus','UIS',NULL,'x11','90300','/images/coin-758.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00010291010527754,0,'',0,0,0,2129.0389511505,NULL,157829,NULL,NULL,0.0000003921542912,0.0000004051970903145,86.02583546,1,0,0,1,1419872341,NULL,'.unitus','unitusd',NULL,NULL,'yaamp2',11756,'POW',1,NULL,0,1,'492e88a794520ca9d9c03f612190c777f638639c1b6424b44ece7b92b02d1c5b',NULL,96,6549,1431865527,0,'https://c-cex.com/?p=uis-btc','https://bitcointalk.org/index.php?topic=901069.0','https://github.com/unitusdev/unitus','',NULL);
INSERT INTO `coins` VALUES (759,'SquareBit','SBIT',NULL,'x11','v1.0.0.0','https://pbs.twimg.com/profile_images/548950807731634177/zv7yuWka.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.11918895371794,0,'No more PoW blocks',0,NULL,0.00001,226.2143358,0.00053292,10276,NULL,NULL,0.0000431396,NULL,62.5,1,0,0,1,1419919532,NULL,'.SquareBit','SquareBitd',NULL,NULL,'yaamp2',11758,'POS',1,NULL,1,0,NULL,NULL,69,94,1420073537,0,'https://bittrex.com/Market/Index?MarketName=BTC-SBIT','https://bitcointalk.org/index.php?topic=906354.0','https://github.com/Squarebitdata/Sbit','',NULL);
INSERT INTO `coins` VALUES (760,'BlackCoin','BLK',NULL,'scrypt',NULL,'https://www.cryptsy.com/img/coinlogos/curr_133.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'PoS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1420274152,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BLK','','','',NULL);
INSERT INTO `coins` VALUES (761,'BitCredits','BCR',NULL,'momentum',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1420407381,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BCR','https://bitcointalk.org/index.php?topic=896133.0','https://github.com/bitcreditscc/bicreditsnew','',NULL);
INSERT INTO `coins` VALUES (762,'PoolStamp','XSP',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1420411294,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XSP','https://bitcointalk.org/index.php?topic=890984.0','','',NULL);
INSERT INTO `coins` VALUES (763,'IncaKoin','INCA',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1420665720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=inca-btc','','','',NULL);
INSERT INTO `coins` VALUES (764,'unknown','NKA',NULL,'sha256',NULL,'/images/coin-NKA.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1420732183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=nka-btc','','','',NULL);
INSERT INTO `coins` VALUES (765,'Paycon','CON',NULL,'x13','v1.2.0.0','/images/coin-CON.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,1.1144247649826,0,'',0,NULL,0.0001,2.3340808475668,0,51235,51455,NULL,0.0000026055,NULL,50,1,0,0,1,1420743424,NULL,'.PayCon','PayCond',NULL,NULL,'yaamp1',11770,'POS',1,NULL,1,0,NULL,NULL,696,36,1423388061,0,'https://c-cex.com/?p=con-btc','https://bitcointalk.org/index.php?topic=912034.0','https://github.com/muddafudda/PayCon','',NULL);
INSERT INTO `coins` VALUES (766,'EagsCurrency','EAGS',NULL,'sha256','v1.0.0.0: Initial','https://c-cex.com/i/l/eags.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000000060784363986755,0,'No more PoW blocks',0,NULL,0.00002,1065265.7320575,0.01450252,62042,NULL,NULL,0.00000723213,NULL,1,1,0,0,1,1420743424,NULL,NULL,NULL,NULL,NULL,'yaamp3',7660,'POS',1,NULL,1,0,NULL,NULL,8808,NULL,1423419134,0,'https://c-cex.com/?p=eags-btc','https://bitcointalk.org/index.php?topic=914583.0','https://github.com/EAGSDev/EagsCurrency','',NULL);
INSERT INTO `coins` VALUES (767,'GoldPieces','GP',NULL,'x11','v1.0.0.0','https://c-cex.com/i/l/gp.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.12025647925601,0,'No more PoW blocks',0,NULL,0.00001,366.79769999,0.00080044,25866,NULL,NULL,0.0000520674,NULL,100,1,0,0,0,1420847374,NULL,'.GoldPieces','GoldPiecesd',NULL,NULL,'yaamp1',11774,'POS',1,NULL,1,0,NULL,NULL,76,273,1422389400,0,'https://c-cex.com/?p=gp-btc','https://bitcointalk.org/index.php?topic=915899.0','https://github.com/GoldPieces/GoldPieces','',NULL);
INSERT INTO `coins` VALUES (768,'Tether','USDT',NULL,'',NULL,'https://c-cex.com/i/l/usdt.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1420847374,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=usdt-btc','','','',NULL);
INSERT INTO `coins` VALUES (769,'BitStake','XBS',NULL,'x11','v1.0.0.0','https://pbs.twimg.com/profile_images/553698795033075713/jpF-wuDr_400x400.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.073829849823835,0,'No more PoW blocks',0,NULL,0.0001,294.21907334,0.00049011,14900,NULL,NULL,0.0000868886,NULL,25,1,0,0,1,1421196312,NULL,'.Bitstake','Bitstaked',NULL,NULL,'yaamp2',11778,'POS',1,NULL,1,0,NULL,NULL,101,111,1421445060,0,'https://bittrex.com/Market/Index?MarketName=BTC-XBS','https://bitcointalk.org/index.php?topic=920272.0','https://github.com/Bitstake','',NULL);
INSERT INTO `coins` VALUES (770,'AriCoin','ARI',NULL,'scrypt','1020000','/images/coin-ARI.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.048472635526674,0,'',0,NULL,0,66.521387448256,NULL,174941,158685,NULL,0.0000004632,NULL,300,1,0,0,1,1421345261,NULL,'','',NULL,NULL,'96.22.137.23',7700,'POW',1,NULL,1,0,'ef46bef28b6f3ed6c723362c3eff694339273e1df0d4d3bad4b11b4fe80342e8',NULL,167,290,1424870258,0,'https://bittrex.com/Market/Index?MarketName=BTC-ARI','https://bitcointalk.org/index.php?topic=759423.0','https://github.com/aricoin/aricoin','',NULL);
INSERT INTO `coins` VALUES (771,'DarkGold','DGD',NULL,'x13',NULL,'/images/coin-DGD.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POW over damit',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1421378326,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-DGD','https://bitcointalk.org/index.php?topic=868354.0','https://github.com/darkgoldcoin/darkgoldcoin','',NULL);
INSERT INTO `coins` VALUES (772,'PorkCoin','XPC',NULL,'x11','v0.9.1.33-porkcoin-1.0.1','/images/coin-772.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,0,'',0,NULL,0.00001,0.015150713009408,NULL,51547,NULL,NULL,0,NULL,1,100,0,0,1,1421451431,NULL,'.PorkCoin','porkcoind',NULL,NULL,'yaamp2',11784,'POS',1,NULL,1,0,'00000001e07eb35d11ecaef9fef5da2bd014acbaaec33c2ccca152040844cf52',NULL,766,0,1425415071,0,'https://bittrex.com/Market/Index?MarketName=BTC-XPC','https://bitcointalk.org/index.php?topic=909934.0','https://github.com/porkcoin/porkcoin','',NULL);
INSERT INTO `coins` VALUES (773,'unknown','XDE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1421608783,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xde-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (774,'CoinShield','CSD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1421896189,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CSD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (775,'RibbitCoin','RBR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1421955183,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-RBR',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (776,'FriendshipCoin2','FSC2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1421955187,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-FSC2',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (777,'WhiteCoin','XWC',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Scrypt',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1421958851,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XWC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (778,'unknown','1CR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_1CR',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (779,'unknown','ACH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_ACH',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (780,'unknown','ADN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_ADN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (781,'Bytecoin','BCN',NULL,'CryptoNight',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_BCN','https://bitcointalk.org/index.php?topic=512747.0','https://github.com/amjuarez/bytecoin','',NULL);
INSERT INTO `coins` VALUES (782,'unknown','BELA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_BELA',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (783,'unknown','C2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_C2',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (784,'unknown','CGA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_CGA',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (785,'unknown','CHA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_CHA',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (786,'unknown','CNMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_CNMT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (788,'unknown','CYC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_CYC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (789,'unknown','DIEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_DIEM',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (790,'Dashcoin','DSH',NULL,'CryptoNight',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_DSH','','','',NULL);
INSERT INTO `coins` VALUES (791,'FoldingCoin','FLDC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_FLDC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (792,'unknown','GAP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_GAP',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (793,'unknown','GDN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_GDN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (794,'Gemz','GEMZ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_GEMZ',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (795,'unknown','GOLD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_GOLD',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (796,'Groestlcoin','GRS',NULL,'groestl','2010006','/images/coin-796.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.03227986729816,0,'',0,NULL,0,5.9851727755863,NULL,570690,552938,NULL,0.000001166877994071,0.000001279599995392,16.55705086,1,0,0,1,1422144149,NULL,'','',NULL,NULL,'yaamp3',7960,'POW',1,NULL,1,0,'',NULL,6126,23343,1430316349,0,'https://poloniex.com/exchange/btc_GRS','https://bitcointalk.org/index.php?topic=525926.0','https://github.com/GroestlCoin/GroestlCoin','',NULL);
INSERT INTO `coins` VALUES (797,'unknown','HIRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_HIRO',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (798,'Horizon','HZ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_HZ',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (799,'unknown','JLH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_JLH',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (800,'unknown','LTBC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_LTBC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (801,'MaidSafe','MAID',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_MAID','https://bitcointalk.org/index.php?topic=579797.0','','',NULL);
INSERT INTO `coins` VALUES (802,'MonetaVerde','MCN',NULL,'CryptoNight',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_MCN','','','',NULL);
INSERT INTO `coins` VALUES (803,'Millionaire Coin','MIL',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_MIL','','','',NULL);
INSERT INTO `coins` VALUES (804,'MemoryCoin','MMC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_MMC','','','',NULL);
INSERT INTO `coins` VALUES (805,'unknown','MMNXT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_MMNXT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (806,'Moneta','MNTA',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_MNTA','','','',NULL);
INSERT INTO `coins` VALUES (807,'unknown','MRS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_MRS',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (808,'Nubits','NBT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_NBT',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (809,'NobleNXT','NOXT',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_NOXT','https://bitcointalk.org/index.php?topic=841741.0','','',NULL);
INSERT INTO `coins` VALUES (810,'unknown','NXTI',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_NXTI','https://bitcointalk.org/index.php?topic=587007.0','','',NULL);
INSERT INTO `coins` VALUES (811,'Piggycoin','PIGGY',NULL,'X11',NULL,'/images/coin-PIGGY.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_PIGGY','https://bitcointalk.org/index.php?topic=487017.0','','',NULL);
INSERT INTO `coins` VALUES (812,'Prosper Coin','PRC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_PRC','https://bitcointalk.org/index.php?topic=438433.0','','',NULL);
INSERT INTO `coins` VALUES (813,'riecoin','RIC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_RIC','https://bitcointalk.org/index.php?topic=446703.0','','',NULL);
INSERT INTO `coins` VALUES (814,'Storjcoin','SJCX',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_SJCX','https://bitcointalk.org/index.php?topic=702602.0','','',NULL);
INSERT INTO `coins` VALUES (815,'Squall','SQL',NULL,'x11',NULL,'/images/coin-SQL.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_SQL','https://bitcointalk.org/index.php?topic=763406.0','','',NULL);
INSERT INTO `coins` VALUES (816,'SourceCoin','SRCC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_SRCC','https://bitcointalk.org/index.php?topic=688494.0','','',NULL);
INSERT INTO `coins` VALUES (817,'unknown','SWARM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_SWARM',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (818,'unknown','UNITY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_UNITY',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (819,'unknown','WOLF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144149,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_WOLF',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (820,'XAP','XAP',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XAP','https://bitcointalk.org/index.php?topic=650221.0','','',NULL);
INSERT INTO `coins` VALUES (821,'BitcoinPlus','XBC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XBC','https://bitcointalk.org/index.php?topic=549485.0','','',NULL);
INSERT INTO `coins` VALUES (822,'ClearingHouse','XCH',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XCH','https://bitcointalk.org/index.php?topic=734674.0','','',NULL);
INSERT INTO `coins` VALUES (823,'cryptonite','XCN',NULL,'m7',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XCN','https://bitcointalk.org/index.php?topic=713538.0','','',NULL);
INSERT INTO `coins` VALUES (824,'CounterParty','XCP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XCP',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (825,'Dogeparty','XDP',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XDP','https://bitcointalk.org/index.php?topic=706739.0','','',NULL);
INSERT INTO `coins` VALUES (826,'CoinoUSD','XUSD',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XUSD','https://bitcointalk.org/index.php?topic=775733.0','','',NULL);
INSERT INTO `coins` VALUES (827,'YACCoin','YACC',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422144150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_YACC','https://bitcointalk.org/index.php?topic=514739.0','','',NULL);
INSERT INTO `coins` VALUES (828,'GigaCoin','GIG',NULL,'fresh','1040000','/images/coin-828.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00082981664039027,0,'',0,NULL,0,74.229409552463,NULL,108971,NULL,NULL,0.000000060795,NULL,101.31885723,1,0,0,1,1422190236,NULL,'','',NULL,NULL,'yaamp4',8280,'POW',1,NULL,1,0,'00000000017ac94a07a1480cbb5ad259b422830a1828c47a988e61bf8c1cef68',NULL,11325,173975,1424321033,0,'https://c-cex.com/?p=gig-btc','https://bitcointalk.org/index.php?topic=851249.0','https://github.com/gigame/gigacoin','http://coinmine.tk/index.php?blockexplorer=GIG',NULL);
INSERT INTO `coins` VALUES (830,'SoonCoin','SOON',NULL,'',NULL,'/images/coin-SOON.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422248337,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SOON','','','',NULL);
INSERT INTO `coins` VALUES (831,'Obscurebay','OBS',NULL,'x11','v0.9.1.1-beta','https://c-cex.com/i/l/obs.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.10812924588434,0,'No more PoW blocks',0,NULL,0.00001,4.0368357,0.00360015,9759,NULL,NULL,0.00000029682,NULL,100,1,0,0,1,1422274657,NULL,'.obscurebay','obscurebayd',NULL,NULL,'yaamp2',11902,'POS',1,NULL,1,0,NULL,NULL,122,1,1422883664,0,'https://c-cex.com/?p=obs-btc','https://bitcointalk.org/index.php?topic=930885.0','https://github.com/donotforgetnever/obscurebay','',NULL);
INSERT INTO `coins` VALUES (832,'FBcoin V2','XFB',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422282163,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xfb-btc','https://bitcointalk.org/index.php?topic=641386.0','','',NULL);
INSERT INTO `coins` VALUES (833,'Chococoin','CCC',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422366722,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=ccc-btc','','','',NULL);
INSERT INTO `coins` VALUES (835,'OmegaCoin','OMA',NULL,'x15','v1.0.0.0','https://c-cex.com/i/l/oma.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.11202866713801,0,'No more PoW blocks',0,NULL,0.00001,1.67386085,0.00024414,10112,NULL,NULL,0.00000347454,NULL,4,1,0,0,1,1422374120,NULL,'.Omega','Omegad',NULL,NULL,'yaamp2',11910,'POS',1,NULL,1,0,NULL,NULL,1048,275,1423087922,0,'https://c-cex.com/?p=oma-btc','https://bitcointalk.org/index.php?topic=936629.0','https://github.com/omegadevteam/omegacoin','',NULL);
INSERT INTO `coins` VALUES (836,'Cetuscoin','CETI',NULL,'scrypt',NULL,'/images/coin-CETI.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422515151,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-CETI','https://bitcointalk.org/index.php?topic=790782.0','','',NULL);
INSERT INTO `coins` VALUES (837,'Pebblecoin','XPB',NULL,'cryptonight',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422590575,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XPB','https://bitcointalk.org/index.php?topic=909624.0','https://github.com/xpbcreator/pebblecoin/','',NULL);
INSERT INTO `coins` VALUES (838,'BitcoinScrypt','BTCS',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422620908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=btcs-btc','','','',NULL);
INSERT INTO `coins` VALUES (839,'MysteryCoin','MYST',NULL,'x11','v1.0.0.0','https://c-cex.com/i/l/myst.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.044383247328178,0,'No more PoW blocks',0,NULL,0.00001,311.41107028,0.00091477,6407,NULL,NULL,0.0000079055,NULL,89.00001,1,0,0,1,1422729705,NULL,'.mysterycoin','mysterycoind',NULL,NULL,'yaamp2',11918,'POS',1,NULL,1,0,NULL,NULL,111,88,1422969518,0,'https://c-cex.com/?p=myst-btc','https://bitcointalk.org/index.php?topic=939935.0','https://bitbucket.org/mysterycoin/mysterycoin','',NULL);
INSERT INTO `coins` VALUES (842,'Experiment 10K','10K',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422902620,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=10k-btc','https://bitcointalk.org/index.php?topic=942977.0','','',NULL);
INSERT INTO `coins` VALUES (843,'ExtractCoin','XTR',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1422928340,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XTR','https://bitcointalk.org/index.php?topic=941697.0;all','','',NULL);
INSERT INTO `coins` VALUES (844,'AmberCoin','AMBER','','x13','v2.1.0.1: Experimental','/images/coin-AMBER.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.12201838984996,16,'',0,NULL,0.0001,4.8394262596543,0.12500882,254003,108802,NULL,0.00011809980000013,0.00012275500000007,0.5,1,1,1,1,1423078275,NULL,'.AmberCoin','AmberCoind',NULL,NULL,'yaamp2',8440,'POS',1,NULL,1,0,'000000000f303291fac2947659e96ab97f74a154864450907d5f3bd4622c7f37',NULL,37,11552,1436648206,1,'https://c-cex.com/?p=amber-btc','https://bitcointalk.org/index.php?topic=944408','https://github.com/AmberCoinDev/Amber','',NULL);
INSERT INTO `coins` VALUES (845,'Liquid','LQD',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1423326113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_LQD','http://liquidtech.info/','','',NULL);
INSERT INTO `coins` VALUES (846,'GeoCoin','GEO','','qubit','80700','/images/coin-GEO.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.12148407306551,5,'',0,NULL,0,26.766903857813,NULL,249408,NULL,NULL,0.0000812126,0.000084605,4.004,1,1,1,1,1423495434,NULL,'.geocoin','geocoind',NULL,NULL,'yaamp2',8460,'POW',1,NULL,1,0,'0000000003939831d99d57b061cb949e03e25cda4a9ee8aac73843fd2b967591',NULL,61,130981,1436648206,1,'https://c-cex.com/?p=geo-btc','https://bitcointalk.org/index.php?topic=923995.0','https://github.com/onetimer/onetimer','',NULL);
INSERT INTO `coins` VALUES (847,'KoboCoin','KOBO',NULL,'x15','v2.0.0.0','/images/coin-847.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,2.1275688607976,0,'No more PoW blocks',0,NULL,0,8.20960502,0.00621395,44272,NULL,NULL,0.00000193,NULL,1000,1,0,0,1,1423498999,NULL,'','',NULL,NULL,'yaamp3',8470,'POS',1,NULL,1,0,'000000001549d9b16137eadb39c3b6f86949fffd385e1884ed5d6b6c3825497f',NULL,67,127,1424902380,0,'https://c-cex.com/?p=kobo-btc','https://bitcointalk.org/index.php?topic=920290.0','https://github.com/kobocoin','',NULL);
INSERT INTO `coins` VALUES (848,'SolarFarm Asset','CELL',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS?',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1423585596,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=cell-btc','https://bitcointalk.org/index.php?topic=917737.0','','',NULL);
INSERT INTO `coins` VALUES (849,'Crypto Bullion','CBX',NULL,'scrypt',NULL,'/images/coin-CBX.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1423606920,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/CBX_BTC','https://bitcointalk.org/index.php?topic=951753.0','','',NULL);
INSERT INTO `coins` VALUES (850,'PetroDollar','XPD','','sha256','91000','/images/coin-XPD.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000023735898135425,0,'',0,0,0,99400.614700981,NULL,85096,NULL,NULL,0,0,30.16333293,1,0,0,1,1423728996,NULL,'','',NULL,NULL,'yaamp3',8500,'POW',1,NULL,1,0,'0000000000021b4581324606cce08d248b00b1d035993e5a76adcf0dd4073fc6',NULL,6913,80,1431568172,0,'https://bittrex.com/Market/Index?MarketName=BTC-XPD','https://bitcointalk.org/index.php?topic=472238.0','http://github.com/bryceweiner/petrodollar','',NULL);
INSERT INTO `coins` VALUES (851,'NovaCoinDark','NVCD',NULL,'Multiple Algorit',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'SHA256D, BLAKE256, X11, SCRYPT, GROESTL',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424010707,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=nvcd-btc','https://bitcointalk.org/index.php?topic=837815.0','','',NULL);
INSERT INTO `coins` VALUES (852,'PenCoin','PEN',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'short POW',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424041003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-PEN','https://bitcointalk.org/index.php?topic=934029.0','','',NULL);
INSERT INTO `coins` VALUES (853,'BitBean','BEAN',NULL,'SHA256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424042291,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BEAN','https://bitcointalk.org/index.php?topic=915650.0','','',NULL);
INSERT INTO `coins` VALUES (854,'BitBean','BITB',NULL,'sha256',NULL,'https://i.imgur.com/0OZlN7x.png?1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424049194,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-BITB','https://bitcointalk.org/index.php?topic=915650.140','','',NULL);
INSERT INTO `coins` VALUES (855,'DogeGoreCoin','DGORE',NULL,'x11','v0.9.1.1-beta','/images/coin-DGORE.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.049568499030813,0,'',0,NULL,0.00001,17.521208367841,0,23576,NULL,NULL,0.000000008685,NULL,10000,1,0,0,1,1424090098,NULL,'','',NULL,NULL,'yaamp3',8550,'POS',1,NULL,1,0,'0000000000af5c16120f97ae6d8c80d95650128d7aaf4299df265dc994bf722d',NULL,189,6,1425732494,0,'https://c-cex.com/?p=dgore-btc','https://bitcointalk.org/index.php?topic=938330.0','https://github.com/dogegorecoin/dgore','',NULL);
INSERT INTO `coins` VALUES (856,'TileCoin','XTC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'coins are sold',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424111126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-XTC','https://bitcointalk.org/index.php?topic=761852.0','','',NULL);
INSERT INTO `coins` VALUES (857,'LiteStarCoin','LTS',NULL,'x11','v1.2.0.0','/images/coin-857.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00057772180335698,0,'',0,NULL,0.0001,150.33522406516,0.00024414,999,NULL,NULL,0.000000008685,NULL,1000.0223,1,0,0,1,1424263007,NULL,'.litestarcoin','litestarcoind',NULL,NULL,'yaamp2',11954,'POS',1,NULL,1,0,'0000000000e2260ace59ee1a38876f4c2a0b84b3ec9662b1386fbf9b46a54380',NULL,117,50,1424333701,0,'https://c-cex.com/?p=lts-btc','https://bitcointalk.org/index.php?topic=959292.0','https://github.com/rbsup2/ts3','',NULL);
INSERT INTO `coins` VALUES (858,'SlimCoin','SLM',NULL,'Dcrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424269232,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=slm-btc','https://bitcointalk.org/index.php?topic=613213.0','','',NULL);
INSERT INTO `coins` VALUES (859,'GridPay','GRID',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424278702,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-GRID','','','',NULL);
INSERT INTO `coins` VALUES (860,'SMACCoin','SMAC',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424308273,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SMAC','https://bitcointalk.org/index.php?topic=952083.msg10423825#msg10423825','','',NULL);
INSERT INTO `coins` VALUES (861,'Dogecoindark','DD',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424308281,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/DD_BTC','https://bitcointalk.org/index.php?topic=770742.0','','',NULL);
INSERT INTO `coins` VALUES (862,'Cindercoin','CIN',NULL,'x15',NULL,'https://www.cryptsy.com/img/coinlogos/curr_220.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424326815,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/CIN_BTC','','https://github.com/Flexiblecoin/Flex.git','',NULL);
INSERT INTO `coins` VALUES (863,'GridcoinClassic','GRCX',NULL,'',NULL,'https://c-cex.com/i/l/grcx.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424441720,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=grcx-btc','','','',NULL);
INSERT INTO `coins` VALUES (864,'SupCoin','SUP',NULL,'PLUCK',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424463023,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-SUP','https://bitcointalk.org/index.php?topic=950084.0','','',NULL);
INSERT INTO `coins` VALUES (865,'LyraBar','LYB',NULL,'lyra2','90001','/images/coin-865.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,7.5370147450984,0,'',0,0,0,0.11695744665662,NULL,61538,NULL,NULL,0.00000098,0.000005,5,1,0,0,1,1424489993,NULL,'','',NULL,NULL,'yaamp3',8650,'POW',1,NULL,1,0,'9162418985219fbf60e987324f5e2e17c56adb10dc99c555564970a3f6340ee2',NULL,252,299,1431865528,0,'https://bittrex.com/Market/Index?MarketName=BTC-LYB','https://bitcointalk.org/index.php?topic=939208.0','https://github.com/lyrabar/Lyrabar/','',NULL);
INSERT INTO `coins` VALUES (866,'ebolashare','EBS',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'pos',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424526126,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=ebs-btc','','','',NULL);
INSERT INTO `coins` VALUES (867,'PrototypeCoin','PTY',NULL,'x11',NULL,'https://c-cex.com/i/l/pty.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424641854,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=pty-btc','','','',NULL);
INSERT INTO `coins` VALUES (868,'GSMCoin','GSM',NULL,'x11','v1.0.0.0-beta','/images/coin-868.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.079968910086592,0,'No more PoW blocks',0,NULL,0.001,240.74043249,0.00082049,10525,NULL,NULL,0.0000086271,NULL,300,1,0,0,1,1424645362,NULL,'','',NULL,NULL,'yaamp3',8680,'POS',1,NULL,1,0,'2f65613cba3d653893a3fefc28f38bfc5d7094a51be41fe5557f5e89f1700060',NULL,59,808,1425126720,0,'https://c-cex.com/?p=gsm-btc','https://bitcointalk.org/index.php?topic=964014.0','https://github.com/gsmcoin/GSMcoin','',NULL);
INSERT INTO `coins` VALUES (869,'unknown','NSR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424646755,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_NSR',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (870,'RiskCoin','RISK',NULL,'',NULL,'https://c-cex.com/i/l/risk.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424716719,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=risk-btc','','','',NULL);
INSERT INTO `coins` VALUES (871,'MasterTraderCoin','MTR',NULL,'x11','v1.0.0.0','/images/coin-871.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.1996625511713,0,'No more PoW blocks',0,NULL,0.00001,17.84130063,0.00024414,10185,NULL,NULL,0.00035622396,NULL,1,1,0,0,1,1424808315,NULL,'','',NULL,NULL,'yaamp3',8710,'POS',1,NULL,1,0,'9bf29dbf40dd1f22885f8e6ca00519a483f122ebad171a52f9b2446d62086cd3',NULL,494,5,1425417337,0,'https://c-cex.com/?p=mtr-btc','https://bitcointalk.org/index.php?topic=954240','','',NULL);
INSERT INTO `coins` VALUES (872,'E-Money','ECASH',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424822218,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-ECASH','https://bitcointalk.org/index.php?topic=966590.0','','',NULL);
INSERT INTO `coins` VALUES (873,'WildBeastBitcoin','WBB',NULL,'scryptn',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1424909787,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-WBB','https://bitcointalk.org/index.php?topic=952619.0','','',NULL);
INSERT INTO `coins` VALUES (874,'Vanillacoin','VNL',NULL,'whirlpoolx',NULL,'https://c-cex.com/i/l/vnl.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,0.000029915,NULL,1,1,0,0,1,1424994652,NULL,'','',NULL,NULL,'yaamp4',9195,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,'https://c-cex.com/?p=vnl-btc','https://bitcointalk.org/index.php?topic=890388.0','https://github.com/john-connor/vanillacoin.git','',NULL);
INSERT INTO `coins` VALUES (875,'voyacoin','VOYA',NULL,'PLUCK',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1425055103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=voya-btc','https://bitcointalk.org/index.php?topic=963475.0','','',NULL);
INSERT INTO `coins` VALUES (876,'Xcoin','XCO',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1425153709,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xco-btc','https://bitcointalk.org/index.php?topic=969896.0','','',NULL);
INSERT INTO `coins` VALUES (877,'ZiftrCoin','ZRC','','zr5','93100','/images/coin-877.png','cryptsy',NULL,NULL,NULL,NULL,NULL,NULL,10,0,1,NULL,0.00061815411063613,8,'',0,129.30662,0,10.373206309635,NULL,176969,NULL,NULL,0.000094256342379038,0.000096714970588024,0.00680298,1,1,1,1,1425197843,NULL,'.ziftrcoin','ziftrcoind',NULL,NULL,'yaamp2',11332,'POW',1,NULL,1,0,'000000000766dcc1c96668daffca39c8f541d6bfc0a7cd90d0f7f1dc6b18f082',NULL,65,183,1436648206,1,'https://www.cryptsy.com/markets/view/ZRC_BTC','https://bitcointalk.org/?topic=970363.0','https://www.google.fr/url?sa=t&rct=j&q=&esrc=s&source=web&cd=16&cad=rja&uact=8&ved=0CEcQFjAFOAo&url=https%3A%2F%2Fgithub.com%2FZiftrCOIN%2Fziftrcoin&ei=PhWbVb-VK8r_ygOvvIXQCA&usg=AFQjCNHOvKezrjf7eetXrRMOgNIVL3lANg&bvm=bv.96952980,d.bGQ','http://zrcexplorer.com',NULL);
INSERT INTO `coins` VALUES (878,'Union Coin','UNC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1425259123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=unc-btc','https://bitcointalk.org/index.php?topic=365399.0','','',NULL);
INSERT INTO `coins` VALUES (880,'Finercoin','XFC',NULL,'x11',NULL,'/images/coin-XFC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1425912762,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xfc-btc','https://bitcointalk.org/index.php?topic=661788.0','','',NULL);
INSERT INTO `coins` VALUES (881,'Xaurum','XAU',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1426091481,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=xau-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (882,'InstaMineNugget','MINE',NULL,NULL,NULL,'/images/coin-MINE.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1426309868,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-MINE',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (883,'Ascension','ASN',NULL,'qubit','v1.0.0.6: NextGen','/images/coin-883.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.22131497325269,0,'no more pow blocks',0,NULL,0.0001,963.51325383,0.37253576,10315,NULL,NULL,0.000002509,NULL,8499,1,0,0,1,1426309878,NULL,'','',NULL,NULL,'yaamp1',8830,'POS',1,NULL,1,0,'9228aa452f3253415721a7d66154d109830c8e7ad0e66a894a4c63905463363f',NULL,136,1724,1426864519,0,'https://bittrex.com/Market/Index?MarketName=BTC-ASN','https://bitcointalk.org/index.php?topic=984878.0','https://bitbucket.org/ascension_dev/ascension-master/src','',NULL);
INSERT INTO `coins` VALUES (884,'Rimbit','RBT',NULL,'',NULL,'https://c-cex.com/i/l/rbt.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1426505172,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=rbt-btc','','','',NULL);
INSERT INTO `coins` VALUES (885,'LiteDoge','LDOGE',NULL,'scrypt','v1.0.0.1-g32a928e','/images/coin-LDOGE.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.78810150946661,0,'no more pow blocks',0,NULL,0.99,153.05769441,63089888.975638,8671,NULL,NULL,0.00000004825,NULL,250000,1,0,0,1,1426606835,NULL,'','',NULL,NULL,'yaamp3',8850,'POS',1,NULL,1,0,NULL,NULL,734597,607,1426869292,0,'https://c-cex.com/?p=ldoge-btc','https://bitcointalk.org/index.php?topic=985182.0','https://bitbucket.org/litedogedev/litedoge/src','',NULL);
INSERT INTO `coins` VALUES (886,'unknown','PAY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1426629994,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=pay-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (887,'Omnicoin','OMC','','scrypt','90000','/images/coin-887.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.12761511796761,0,'',0,NULL,0,12.276944287113,NULL,201118,NULL,NULL,0.000008829796864,0.0000099198192002151,16.71249999,1,0,0,1,1426642180,NULL,'','',NULL,NULL,'yaamp2',8870,'POW',1,NULL,1,0,'5751a04797d999d8eaae0bb5c6ed5798ab911c291aad811dbccc65f10ef9c00e',NULL,250,58,1434809266,0,'https://bittrex.com/Market/Index?MarketName=BTC-OMC','https://bitcointalk.org/index.php?topic=962832.0','https://github.com/Omnicoin-Project/Omnicoin','',NULL);
INSERT INTO `coins` VALUES (888,'unknown','WOC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1426982583,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=woc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (889,'Bitz','BITZ',NULL,'x11','v1.0.1.0','/images/coin-BITZ.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.057229187367086,0,'no more pow blocks',0,NULL,0.00001,12.48211416,0.00209567,103908,NULL,NULL,0.000002040975,NULL,35,1,0,0,1,1426983582,NULL,'','',NULL,NULL,'yaamp3',8890,'POS',1,NULL,1,0,'bbbe3538be32f2b30f1867dc90f02b171b6603eb2198a8de7654eab35ceb3d8f',NULL,69,2,1428325787,0,'https://c-cex.com/?p=bitz-btc','https://bitcointalk.org/index.php?topic=954125.0','https://github.com/stormbitz/bitz','',NULL);
INSERT INTO `coins` VALUES (890,'CRAVE','CRAVE',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427119105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=crave-btc','','','',NULL);
INSERT INTO `coins` VALUES (891,'Zirkcoin','ZIRK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427149735,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=zirk-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (892,'Dragonsphere','XDB','','x11','v0.9.1.1-beta','/images/coin-892.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.32535279263676,0,'no more pow blocks',0,NULL,0.00001,4.80493801,0.04509805,20397,NULL,NULL,0.00000015633,0.00000019079999948803,1000,1,0,0,1,1427179773,NULL,'','',NULL,NULL,'yaamp3',8920,'POS',1,NULL,1,0,'ebb3372e57251233c6ed339537b743b99e11adc77e75ae873fae3983a1c02319',NULL,116,2,1429631010,0,'https://bittrex.com/Market/Index?MarketName=BTC-XDB','https://bitcointalk.org/index.php?topic=986534.0','https://github.com/bobbidi/nappa','',NULL);
INSERT INTO `coins` VALUES (893,'DigitalCash','DASH','','x11','110223','/images/coin-893.png',NULL,NULL,NULL,NULL,2.20535708,NULL,NULL,1,0,1,NULL,0.060473148791362,0,'',0,NULL,0,4517.0550441251,NULL,289053,NULL,NULL,0.013423236745869,0.013790171437065,2.43750007,1,0,0,1,1427233695,NULL,'','',NULL,NULL,'yaamp2',8930,'POW',1,NULL,1,0,'000000000007cd4ff3d7078d1fe1dccd8be0a154571c530898fc637739e9ef43',NULL,147,2638,1434809266,1,'https://bleutrade.com/exchange/DASH/BTC','','','',NULL);
INSERT INTO `coins` VALUES (894,'BitCrystal','BTCRY',NULL,'quark','2000000','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,9881.741359579,0,'',0,NULL,0,0.00024413713253701,NULL,0,NULL,NULL,0.0000000193,NULL,5000,1,0,0,1,1427304811,NULL,'','',NULL,NULL,'yaamp3',8940,'POW',1,NULL,1,0,'',NULL,NULL,0,NULL,0,'https://bittrex.com/Market/Index?MarketName=BTC-BTCRY','https://bitcointalk.org/index.php?topic=966861.0','https://github.com/bitcrystal/bitcrystal_v20/tree/update14','',NULL);
INSERT INTO `coins` VALUES (895,'iCash','ICASH',NULL,'x11','110125','/images/coin-895.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.089049193251246,59,'',0,NULL,0,178.90462378434,NULL,9664,NULL,NULL,0.00000071217,NULL,2235,1,0,0,1,1427403345,NULL,'','',NULL,NULL,NULL,8950,'POW',1,NULL,1,0,'000000000594c83986f74beed672256f85c223acc50de59a83b72e7930a3655e',NULL,256,33,1428320229,0,'https://c-cex.com/?p=icash-btc','https://bitcointalk.org/index.php?topic=996567.0','https://github.com/cryptodev35/icash','',NULL);
INSERT INTO `coins` VALUES (896,'256coin','256',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427409369,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=256-btc','https://bitcointalk.org/index.php?topic=1002334.0','','',NULL);
INSERT INTO `coins` VALUES (897,'SelfieCoin','SLFI',NULL,'',NULL,'https://c-cex.com/i/l/slfi.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427642578,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=slfi-btc','','','',NULL);
INSERT INTO `coins` VALUES (898,'NEW ECONOMY MOVEMENt','XEM',NULL,'',NULL,'http://ccn.multipoolmining.com/static/logo.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427829232,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_XEM','','','',NULL);
INSERT INTO `coins` VALUES (899,'CyberCoin','CC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427895596,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=cc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (900,'Canadian Dollar','CAD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427903987,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/CAD_BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (901,'Euro','EUR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427903991,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.cryptsy.com/markets/view/EUR_BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (902,'UCoin','UCOIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427935981,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-UCOIN',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (903,'OCTO','OCTO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1427935986,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bittrex.com/Market/Index?MarketName=BTC-OCTO',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (905,'unknown','ICN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428181165,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=icn-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (906,'unknown','URC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428271526,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=urc-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (907,'unknown','CRY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428272606,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=cry-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (908,'Phalanx','PXL',NULL,'sha256',NULL,'https://c-cex.com/i/l/pxl.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428275834,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=pxl-btc','','','',NULL);
INSERT INTO `coins` VALUES (909,'QoraCoin','QORA',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428520684,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://poloniex.com/exchange/btc_QORA','','','',NULL);
INSERT INTO `coins` VALUES (910,'Cypher','CYP',NULL,'qubit','v1.2.0.0: NextGen','/images/coin-CYP.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,0,'cypher is not connected!',0,NULL,0.0001,0.00024414,0.00024414,0,NULL,NULL,0.000004116,0.000004235,140,1,0,0,1,1428569817,NULL,'','',NULL,NULL,'yaamp3',9100,'POS',1,NULL,1,0,'7c28d30256e0515ea16e050145d09fc181173325c14de6e9f036e6f509b1e276',NULL,125,4278,1436510845,1,'https://c-cex.com/?p=cyp-btc','https://bitcointalk.org/index.php?topic=1006527.0','https://github.com/neworldorder/braveneworld.git','',NULL);
INSERT INTO `coins` VALUES (911,'MorpheusCoin','MRP','','x11','80600','/images/coin-911.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.40749089216424,0,'',0,1360,0,0.050590863615029,NULL,28363,NULL,NULL,0.000000056259999205376,0.00000021000006346342,42.5007,1,0,0,1,1428572848,NULL,'','',NULL,NULL,'yaamp1',9110,'POW',1,NULL,1,0,'0000000a02b06ea40c932354c603fef5a2c0a90263edaaa51752aeef75c08bfd',NULL,1284,0,1431688313,0,'https://c-cex.com/?p=mrp-btc','','https://github.com/mrpcoin/mrp','',NULL);
INSERT INTO `coins` VALUES (912,'Elektron','EKN','','x13','v3.1.0.0','/images/coin-912.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.66689765400702,0,'no more pow blocks',0,NULL,0.00001,25.14129179,0.02350906,22477,NULL,NULL,0.000033533337026914,0.000040197730034772,50,1,0,0,1,1428669835,NULL,'','',NULL,NULL,'yaamp1',9120,'POS',1,NULL,1,0,'6c8a5dde79901c1e216f2b274e256dc85a812a335fd77f1a3e9aae6afbbd913f',NULL,70,61,1429967186,0,'https://c-cex.com/?p=ekn-btc','','https://github.com/ElektronFoundation/elektron','',NULL);
INSERT INTO `coins` VALUES (913,'EggCoin','EGG',NULL,'scrypt',NULL,'https://c-cex.com/i/l/egg.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no pow',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428698437,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=egg-btc','','','',NULL);
INSERT INTO `coins` VALUES (914,'unknown','STP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (915,'unknown','NXE',NULL,'fresh',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=977489.0','','',NULL);
INSERT INTO `coins` VALUES (916,'unknown','AECC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (917,'unknown','PLANET',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (918,'FireCoin','FIRE',NULL,'x15',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=702951.0','','',NULL);
INSERT INTO `coins` VALUES (919,'AnalCoin','ANAL',NULL,'sha256','v1.0.0.0-g32a928e','/images/coin-919.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,4940.8126484804,0,'analcoin is not connected!',0,NULL,0.01,0.00024414,0.00024414,0,NULL,NULL,0.000120625,NULL,1,1,0,0,1,1428710640,NULL,'','',NULL,NULL,'yaamp3',9190,'POS',1,NULL,1,0,'',NULL,NULL,0,NULL,0,'','','','',NULL);
INSERT INTO `coins` VALUES (920,'unknown','MTLMC3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (921,'Twistercoin','TWIST',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=966354.0','','',NULL);
INSERT INTO `coins` VALUES (922,'CrimeCoin','CRIME',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=959024.0','','',NULL);
INSERT INTO `coins` VALUES (923,'Bitcurrency','BTCR',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=867474.0','','',NULL);
INSERT INTO `coins` VALUES (924,'unknown','TEC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (925,'unknown','KARMA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (926,'TorrentCoin','TCX',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=1012911','','',NULL);
INSERT INTO `coins` VALUES (927,'unknown','TAB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (928,'Ninja Doge','NDOGE',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=998008.0','','',NULL);
INSERT INTO `coins` VALUES (929,'GiftNet','GIFT',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=1001062.0','','',NULL);
INSERT INTO `coins` VALUES (930,'BaseBallCardCoin','BBCC',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=991921.0','','',NULL);
INSERT INTO `coins` VALUES (931,'TrickyCoin','TRICK',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=1004692.0','','',NULL);
INSERT INTO `coins` VALUES (932,'Digigems','DGMS',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=913237.0','','',NULL);
INSERT INTO `coins` VALUES (933,'CryptoClub','CCB',NULL,'x11',NULL,'/images/coin-CCB.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=667866.0','','',NULL);
INSERT INTO `coins` VALUES (934,'Ozziecoin','OZC',NULL,'x11',NULL,'/images/coin-OZC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=578881.0','https://github.com/ozziecoin/ozziecoin','',NULL);
INSERT INTO `coins` VALUES (935,'Stakecoin','STK',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (936,'SifCoin','SIC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710640,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=240894.0','','',NULL);
INSERT INTO `coins` VALUES (937,'DecryptRcoin','DECR',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710641,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=926536.0','','',NULL);
INSERT INTO `coins` VALUES (938,'RiceCoin','RICE',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428710641,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','https://bitcointalk.org/index.php?topic=929774.0','https://github.com/teamricecoin/','',NULL);
INSERT INTO `coins` VALUES (939,'ProCoin','XPRO',NULL,'x15',NULL,NULL,'yobit',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428770651,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bitcointalk.org/index.php?topic=1010533.0','https://github.com/procryptoproject/pro',NULL,NULL);
INSERT INTO `coins` VALUES (940,'Positron','TRON',NULL,'sha256','v1.0.0.0-g32a928e','/images/coin-940.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000084156019817904,0,'no more pow blocks',0,NULL,0.001,50455053.710806,0.00024414,3523,NULL,NULL,0.00042460965,NULL,100,1,0,0,1,1428770651,NULL,'','',NULL,NULL,'yaamp3',9400,'POS',1,NULL,1,0,'85aca23da8ef9fa8658e28dab31381dd0f962b605c01de3442a01d4467efb253',NULL,468,41060,1429042751,0,'','','https://bitbucket.org/positrondev/positron','',NULL);
INSERT INTO `coins` VALUES (941,'GizmoCoin','GIZ',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no pow',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428782890,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (942,'eTRUST','ETRUST',NULL,'scrypt','v1.1.2.0-g','/images/coin-942.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.023201312129849,0,'',0,NULL,0.0001,13.725516824986,NULL,14018,NULL,NULL,0.00001056096,0.000019760000002228,2,1,0,0,1,1428782890,NULL,'','',NULL,NULL,'yaamp3',9420,'POS',1,NULL,1,0,'',NULL,70,64,1429128166,0,'','','','',NULL);
INSERT INTO `coins` VALUES (943,'unknown','GLIDE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1428922026,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=glide-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (944,'LeaCoin','LEA','','sha256','1000000','/images/coin-LEA.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000021805683583319,0,'',0,0,0,3595.3929029757,NULL,92646,NULL,NULL,0,0,200,1,0,0,1,1428931817,NULL,'','',NULL,NULL,'yaamp3',9440,'POW',1,NULL,1,0,'00000000001407f26a6f15727604d7104bd10e528dd70d71cd78996bec30add4',NULL,53,12,1431865529,0,'','','https://github.com/leacoin/LeaCoin','',NULL);
INSERT INTO `coins` VALUES (945,'HazMatCoin','HZT',NULL,'scrypt','v1.1.0','/images/coin-945.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.034539743374763,0,'',0,0,0.001,3.121042297042,NULL,14726,NULL,NULL,0.0000000873,0.000000195,100,100,0,0,1,1429022676,NULL,'','',NULL,NULL,'yaamp3',9450,'POS',1,NULL,1,0,'725f999a4d79204508b5baafab4f6cf690c0931bd6f1634468457a61f8c139e2',NULL,1884,13,1431863891,0,'','https://bitcointalk.org/index.php?topic=1019312.0','https://github.com/HazMatCoin/HazMatCoin','',NULL);
INSERT INTO `coins` VALUES (946,'P7 Coin','P7C',NULL,'scrypt',NULL,'https://i.imgur.com/2TJaARY.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,0.00000172735,NULL,1,1,0,0,1,1429114917,NULL,'','',NULL,NULL,'',9460,NULL,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,'','','https://github.com/p7coin/p7c','',NULL);
INSERT INTO `coins` VALUES (947,'IvugeoEvolution','IEC','','scrypt','1020000','/images/coin-IEC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.090107481303448,0,'',0,NULL,0,35.332114666959,NULL,47824,NULL,NULL,0.00002948565053656,0.000032915158984526,7.601,1,0,0,1,1429290655,NULL,NULL,NULL,NULL,NULL,NULL,9470,'POW',1,NULL,1,0,'f52026898f77f9c615d2eaf0091ac404fd3e58504157bdbccf5140b17d71d194',NULL,68,151,1434809266,0,'https://c-cex.com/?p=iec-btc','','','',NULL);
INSERT INTO `coins` VALUES (948,'8BitCoin','8BIT',NULL,'scrypt','v1.0.0.0-g','/images/coin-8BIT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.31614017068258,17,'no more pow blocks',0,296.0232,0.0001,619.04085821,65536,1888,NULL,NULL,0.002446082,NULL,8.0007,1,0,0,1,1429300996,NULL,'','',NULL,NULL,'yaamp6',9480,'POS',1,NULL,1,0,'1c570a23a1a7297633918699eefce128a8ce33599bbdda027b7b92a042e08e18',NULL,70,2131,1429409562,0,'https://c-cex.com/?p=8bit-btc','','','',NULL);
INSERT INTO `coins` VALUES (949,'OKcash','OK',NULL,'scrypt','v2.0.0.0-g','/images/coin-OK.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00016020568209623,0,'no more pow blocks',0,NULL,0.0001,41.20078585,0.59104437,206099,NULL,NULL,0.00000066006,NULL,1,1,0,0,1,1429317793,NULL,'','',NULL,NULL,'yaamp6',9490,'POS',1,NULL,1,0,'',NULL,3339,213,1429352138,0,'https://c-cex.com/?p=ok-btc','','','',NULL);
INSERT INTO `coins` VALUES (950,'AnarchistsPrime','ACP','','sha256','80600','/images/coin-950.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00000047862279295731,0,'',0,96.0009,0,1354564.8254519,NULL,6932,NULL,NULL,0.000002750250704064,0.000006435000384,32,1,0,0,1,1429356999,NULL,'','',NULL,NULL,'yaamp6',9500,'POW',1,NULL,1,0,'00000000000004645c476b689b52cb63e1212cee7a409cd735e06100b39887b9',NULL,5767,1592,1429867030,0,'https://c-cex.com/?p=acp-btc','','','',NULL);
INSERT INTO `coins` VALUES (951,'KolschCoin','CGN',NULL,'x11','v1.0.0.0','/images/coin-CGN.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.11311969461248,0,'',0,0,0.00001,1.307927194348,0.00024414,38654,NULL,NULL,0,0,0.04041,1,0,0,1,1429359192,NULL,'','',NULL,NULL,'yaamp6',9510,'POS',1,NULL,1,0,'000000001c4a20fa63cfecefbb88b7be9f02a802722ed50fb66349f9264baefe',NULL,62,5,1431865427,0,'','','https://github.com/Tillkoeln/Kolschcoin','',NULL);
INSERT INTO `coins` VALUES (952,'Californium','CF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429397079,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (953,'unknown','CTK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429398150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (955,'Neutron','NTRN','','sha256','v1.0.0.0-g32a928e','/images/coin-955.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000049854200368409,69,'no more pow blocks',0,NULL,0.01,14887410.980583,0.0012256,4463,NULL,NULL,0.000070685711427889,0.000076650649519521,105,1,0,0,1,1429476527,NULL,'','',NULL,NULL,'yaamp6',9550,'POS',1,NULL,1,0,'8a3d7b3feeac137eac1adce7e134d13c828e768a00f75c323b2c90536f93ec6c',NULL,100,4746,1429630459,0,'https://c-cex.com/?p=ntrn-btc','','','',NULL);
INSERT INTO `coins` VALUES (956,'Coven','COV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429485266,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (957,'Slingcoin','SLING','','sha256',NULL,'https://c-cex.com/i/l/sling.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,0.00072294712,0.000792856,1,1,0,0,1,1429503687,NULL,'','',NULL,NULL,'yaamp6',9570,NULL,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,'https://www.cryptsy.com/markets/view/SLING_BTC',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (958,'unknown','!MOTO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429543601,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://c-cex.com/?p=!moto-btc',NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (959,'MyriadCoin','MYR','','skein','90212','/images/coin-421.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0089892767429296,0,'',0,NULL,0,147.13146886264,NULL,1264635,1130090,NULL,0.0000002548,0.000000265160002048,500,1,0,0,0,1429564241,NULL,'','',NULL,NULL,'yaamp2',18154,'POW',1,NULL,1,0,'c2f8c0204aec442d002a996021ee5fc273b66deac042ac83fd99d1d4832986d7',NULL,30,9458,1436453818,1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (960,'Unitus','UIS-skein','UIS','skein','90301','/images/coin-960.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0011913186759151,0,'',0,0,0,183.91352963101,NULL,157829,NULL,NULL,0.0000003921542912,0.0000004051970903145,86.02583546,1,0,0,1,1429565643,NULL,'','',NULL,NULL,'yaamp6',9600,'POW',1,NULL,1,1,'492e88a794520ca9d9c03f612190c777f638639c1b6424b44ece7b92b02d1c5b',NULL,96,3848,1431865529,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (961,'Unitus','UIS-qubit','UIS','qubit','90301','/images/coin-961.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00074188716911912,0,'',0,0,0,295.32741867343,NULL,157829,NULL,NULL,0.0000003921542912,0.0000004051970903145,86.02583546,1,0,0,1,1429565698,NULL,'','',NULL,NULL,'yaamp3',9610,'POW',1,NULL,1,1,'492e88a794520ca9d9c03f612190c777f638639c1b6424b44ece7b92b02d1c5b',NULL,96,687,1431865529,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (963,'BitLux','LUX','','x11','v1.0.0.0','/images/coin-963.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.094414894036716,0,'no more pow blocks',0,NULL,0.00001,2.24960799,0.00028649,9350,NULL,NULL,0.00002123965,0.000029815400906776,1,1,0,0,1,1429571728,NULL,'','',NULL,NULL,'yaamp6',9630,'POS',1,NULL,1,0,'7e1518a66f5e07fd0710f4bb91d33900f9690cb640184b6d0bdf199252a33e6b',NULL,304,0,1430612611,0,'','','https://github.com/bitluxdev/bitlux','',NULL);
INSERT INTO `coins` VALUES (964,'DroidZ','DRZ','','qubit','v1.2.0.0: NextGen','/images/coin-964.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.11554164779054,32,'no more pow blocks',0,NULL,0.0001,18.49960634,0.08759783,32653,NULL,NULL,0.00000427495,0.0000051004000384049,50,1,0,0,1,1429633806,NULL,NULL,NULL,NULL,NULL,'yaamp6',9640,'POS',1,NULL,1,0,'bc8610312c936aa2352d92647241df28627e38ee8ed5b114a1ce706220be519d',NULL,126,418,1431352361,0,'','','','',NULL);
INSERT INTO `coins` VALUES (965,'007','007',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'apr 26',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429643176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (966,'BigCoin','HUGE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429676527,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (967,'BlitzPay','BLITZ',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no pow',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429730301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (968,'NexusEconomy','NIRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1429730301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (969,'GramCoin','GRAM','','sha256','90001','/images/coin-969.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000038953109558436,0,'',0,0,0,5534.8597953795,NULL,16934,NULL,NULL,0.0000000098,0.00000002,220,1,0,0,1,1429747276,NULL,'','',NULL,NULL,'yaamp6',9690,'POW',1,NULL,1,0,'000000000002abaacc7d99c0028e8907d33d260fd31fec8834c83a96c52d7711',NULL,171,4,1431865529,0,'','','','',NULL);
INSERT INTO `coins` VALUES (970,'Singular','SIGU','','scrypt','v1.5.0.0','/images/coin-970.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.19663144613327,0,'',0,NULL,0.0001,206.23944337222,NULL,7893,NULL,NULL,0.0000675886,0.000094539991971185,60,100,0,0,1,1429747276,NULL,'','',NULL,NULL,'yaamp6',9700,'POS',1,NULL,1,0,'4f93a1f679deba28ef59e240cf93f35bcb0c9172ea91d6b1668de4da5d24d985',NULL,124,104,1430059484,0,'','','','',NULL);
INSERT INTO `coins` VALUES (974,'AsianBond','AIB',NULL,'scrypt',NULL,'https://ip.bitcointalk.org/?u=http%3A%2F%2Faib.iobond.com%2Fimages%2Faib_golden.png&t=551&c=DMkFfs-ZdE9rxg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430054320,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (975,'Unattainium','UNAT-skein','UNAT','skein','90401','/images/coin-975.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,283.07816500202,0,'Warning: The network does not appear to fully agree! Some miners appear to be experiencing issues.',0,1.5,0,0.00024621211665824,NULL,678413,NULL,NULL,0.00002787885,0.000033188307987195,0.25,1,0,0,1,1430065051,NULL,'','',NULL,NULL,'yaamp2',9750,'POW',1,NULL,1,0,'b1313612f93b7c6461c9b192a44ce28d6c7672256f75ffe2737046c2bc7e6a72',NULL,74,0,1430514012,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (976,'Quartz','QTZ','','sha256','v1.0.0.0-g32a928e','/images/coin-976.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000002733225164589,0,'no more pow blocks',0,NULL,0.001,3848626.4611723,0.01026398,6120,NULL,NULL,0.000021037904627466,0.000027343501202712,50.001,1,0,0,1,1430078003,NULL,'','',NULL,NULL,'yaamp6',9760,'POS',1,NULL,1,0,'34afb30e84d60f0d53656b8957b4e497de4061bcf782ecf381278ca2f40afbcc',NULL,76,1556,1430272294,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (978,'DoxCoin','DOX',NULL,'scrypt',NULL,'https://pbs.twimg.com/profile_images/592494616043069440/ZYgbYOl4_400x400.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430151924,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (979,'Isotope','XTP','','sha256','v1.0.0.0-g32a928e','/images/coin-979.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000072583775641328,0,'no more pow blocks',0,NULL,0.001,4455906.182614,0.00029737,1654,NULL,NULL,0.000043123532618355,0.000050000827872484,75,1,0,0,1,1430158299,NULL,'','',NULL,NULL,'yaamp3',9790,'POS',1,NULL,1,0,'00000000000000f0b1e2e9dd3d10be19f27f791fc62b430b11d853b1a80cfc98',NULL,84,2047,1430740070,0,'','','','',NULL);
INSERT INTO `coins` VALUES (980,'XanaxCoin','XNX','','scrypt','80602','/images/coin-980.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0054750439352697,0,'',0,0,0,7.5177514713355,NULL,13607,NULL,NULL,0,0,210.0001,1,0,0,1,1430158303,NULL,'','',NULL,NULL,'yaamp6',9800,'POW',1,NULL,1,0,'240b2b346e1ef0353cbc3863d2dd0647b0398227dc37ef1cd248ddbf0fde96f2',NULL,129,2,1431865529,0,'','','','',NULL);
INSERT INTO `coins` VALUES (981,'BitSeeds','XSEED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430213527,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (982,'MegaStake','XMS','','x11','v1.1.0.0: Satoshi','/images/coin-982.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,0,'',0,NULL,0.001,1.3613701987993,0.00024414,5276,NULL,NULL,0.000072513613100198,0.000077670603844411,0,1,0,0,1,1430213535,NULL,'','',NULL,NULL,'yaamp6',9820,'POS',1,NULL,1,0,'0000000013dc7865bf8bf081fbd290e634623897b57933030e527f849c547cbf',NULL,111,0,1430406686,0,'','','','',NULL);
INSERT INTO `coins` VALUES (983,'Dumdum','GUM','','x11','v1.0.0.0','/images/coin-983.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.12542729135545,0,'no more pow blocks',0,NULL,0.0001,57.7027529,0.02372036,5347,NULL,NULL,0.00000072375,0.0000011251999913779,1000,1,0,0,1,1430325911,NULL,'','',NULL,NULL,'yaamp6',9830,'POS',1,NULL,1,0,'62114979c39422a62339d7d5b390105f2fcb37e0c3957906f9b6bd25f181f8ec',NULL,61,30,1430421538,0,'','','','',NULL);
INSERT INTO `coins` VALUES (984,'ChronoSphere','SPHR','','scrypt','v1.2.0.0-g32a928e','/images/coin-984.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0092646897835664,0,'no more pow blocks',0,NULL,0.0001,147.60524718,107147.53417823,5547,NULL,NULL,0.0000092657169974181,0.000012935215352952,14.75888834,1,0,0,1,1430399551,NULL,'','',NULL,NULL,'yaamp6',9840,'POS',1,NULL,1,0,'2820b6f2d5f489fd86cfac1e7bc116aeb7e9de4e0e518f926941b7be2c3a088b',NULL,88,173,1430612681,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (985,'TrickyDickFunBills','TDFB','','sha256','v1.0.9.1-g32a928ebeta','/images/coin-985.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000004153523347039,38,'no more pow blocks',0,NULL,0.001,1080347.8456908,0.00099378,4905,NULL,NULL,0.0000029915,0.0000058253568,150,1,0,0,1,1430418389,NULL,'','',NULL,NULL,'yaamp1',9850,'POS',1,NULL,1,0,'',NULL,60927,1002,1430435577,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (986,'unknown','BTX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430479619,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (987,'UniversalCurrency','UNIT','','sha256','v1.0.0.0-g32a928e','/images/coin-987.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000041631792665498,0,'',0,NULL,0.001,367387.60645269,0.0164691,156767,NULL,NULL,0.0000045463054269044,0.0000056951034645045,100,1,0,0,1,1430505476,NULL,'','',NULL,NULL,'yaamp2',9870,'POS',1,NULL,1,0,'3a34c90529450f9229a79ba39021666d038e8d950e8b569efef101d9f69fd1b8',NULL,18,778,1434809266,0,'','','','',NULL);
INSERT INTO `coins` VALUES (988,'BubbleCoin','BUB','','sha256','v1.0.0.0-g32a928e','/images/coin-988.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000097946729987092,0,'no more pow blocks',0,NULL,0.01,2801746.1638195,0.00029802,4054,NULL,NULL,0.00002195375,0.000025757345030349,125,1,0,0,1,1430505476,NULL,'','',NULL,NULL,'yaamp6',9880,'POS',1,NULL,1,0,'00000000000004efea8c835ac67dee29c93c82d724e9bc7601d004ffa9cbea4b',NULL,62,339,1430612019,0,'','','','',NULL);
INSERT INTO `coins` VALUES (989,'GraphCoin','GPH','','scrypt','v1.0.0.0-unk','/images/coin-989.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.1031792974924,29,'no more pow blocks',0,NULL,0.0001,2004.38396568,75916.5298547,7735,NULL,NULL,0.00010340546474195,0.0001085257950553,200,1,0,0,1,1430527579,NULL,'','',NULL,NULL,'yaamp3',9890,'POS',1,NULL,1,0,'e3f231265f36b71c4014612b949bc0aaeed275db1dc2d6042d8bc8ff75939770',NULL,71,3018,1430782535,0,'','','','',NULL);
INSERT INTO `coins` VALUES (990,'Graviton','GRAV','','sha256',NULL,'https://i.imgur.com/vm2DpSy.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,0,1430585334,NULL,'','',NULL,NULL,'yaamp3',9900,NULL,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,'','','','',NULL);
INSERT INTO `coins` VALUES (991,'SpinCoin ','SPC',NULL,'nist5',NULL,'https://c-cex.com/i/l/spc.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'ICO',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430611621,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (992,'CryptoCoin','CTO','','lyra2','1000000','/images/coin-992.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.59484869157633,0,'',0,0,0,0.19336649789328,NULL,46190,NULL,NULL,0.0000004998,0.0000007500064,4.99452055,1,0,0,1,1430666472,NULL,'','',NULL,NULL,'yaamp6',9920,'POW',1,NULL,1,0,'23d5f4ca54c549e58967b685e334f3f39d6de396224e518846be7390ee27a84d',NULL,32,24,1431865529,0,'','','','',NULL);
INSERT INTO `coins` VALUES (993,'GorillaTeeth','TEETH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430769168,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (994,'Empyrean','EPY','','scrypt','1000000','/images/coin-994.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0068364314118777,0,'',0,3,0,286.46245261756,NULL,735,NULL,NULL,0.00019521695361324,0.00023030975907528,0.503,1,0,0,1,1430781458,NULL,'','',NULL,NULL,'yaamp3',9940,'POW',1,NULL,1,0,'3c5bd882a64f901571c1d9447b5a8e56e16e81b7a1ea7d999a506276ada66b33',NULL,400,355,1431177773,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (995,'GoatCoin','GOAT','','scrypt','v1.2.0.0-g32a928e','/images/coin-995.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.1662435342226,0,'no more pow blocks',0,NULL,0.000001,1571.92278919,23152.9844044,2464,NULL,NULL,0.0000261322,0.000028340605508011,1000,1,0,0,1,1430788767,NULL,'','',NULL,NULL,'yaamp3',9950,'POS',1,NULL,1,0,'2f7d3441038ac7fed643e177ef6b82cb0f3d4b185429b2df18fe9c43707e607e',NULL,66,906,1430859213,0,'','https://bitcointalk.org/index.php?topic=1048923.0','','',NULL);
INSERT INTO `coins` VALUES (996,'PlatinumCoin','PNC','','sha256','80600','/images/coin-996.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000000019334622830814,0,'',0,NULL,0,1354564.8254519,NULL,6932,NULL,NULL,0.0000000873,0.000000365,30,1,0,0,1,1430853386,NULL,'','',NULL,NULL,'yaamp6',9960,'POW',1,NULL,1,0,'',NULL,206413,1082,1430855918,0,'','','','',NULL);
INSERT INTO `coins` VALUES (997,'UltimateCoin','UTLE','','x11','v1.0.0.0','/images/coin-997.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.23940909288556,0,'no more pow blocks',0,NULL,0.00001,141.07651298,0.00073101,8335,NULL,NULL,0.00006755,0.000083897050548957,50,1,0,0,1,1430855843,NULL,'','',NULL,NULL,'yaamp6',9970,'POS',1,NULL,1,0,'850e54aa2d439ce7edda87f271e46d55e61ce2c404e718f247d6dee65a6e0b30',NULL,64,75,1430927497,0,'','','','',NULL);
INSERT INTO `coins` VALUES (998,'ViralCoin','VIRAL',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430857243,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (999,'IslaCoin','ISL','','x11','v1.0.0.0','/images/coin-999.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,10,'',0,NULL,0.0001,5.4284671476163,0.00315994,52787,NULL,NULL,0.000000784,0.000001595,0,1,0,0,1,1430864916,NULL,NULL,NULL,NULL,NULL,NULL,9990,'POS',1,NULL,1,0,'00000000140ae50b4fba883bb4468de6fe8fad395260950e70c29e2c10ab1078',NULL,44,530123,1432656786,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1000,'Gambit','GAM',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'ico',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1430866080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1001,'ParkByte','PKB','','sha256','v1.0.0.0: Experimental','/images/coin-1001.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0,32,'no more pow blocks',0,0,0.00001,695993.82341994,0.01624057,99286,NULL,NULL,0.000012764417792,0.000014790172232729,0,1,0,0,1,1431023107,NULL,'','',NULL,NULL,'yaamp3',10010,'POS',1,NULL,1,0,'31be010cc76b8e19c682642b264b13745fbee6a6b87e05f2bf5460ad51c3d59e',NULL,64,244,1433843450,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1002,'ExperienceCoin','EPC','','scrypt','1080200','/images/coin-1002.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,3.0731006715593e-195,0,'',0,0,0,2.7108193409189,NULL,42149,NULL,NULL,0,0,17503,1,0,0,1,1431023958,NULL,'','',NULL,NULL,'yaamp6',10020,'POW',1,NULL,1,0,'ddd94058a297296882ea2efc28fcfee1b05fb86e99a90c065af59a1ab2a7e144',NULL,92,11,1431612873,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1003,'Venturenic','VTN','','qubit','v1.0.0.1: VTNbetaf','/images/coin-1003.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00015398684086878,10,'no more pow blocks',0,NULL,0.0001,34.64581759,0.03044828,6913,NULL,NULL,0.0000005335,0.00000066995712,1,1,0,0,1,1431025635,NULL,'','',NULL,NULL,'yaamp6',10030,'POS',1,NULL,1,0,NULL,NULL,177642,382,1431045575,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1004,'CryptoFocus','FCS','','x11','v1.0.0.0-g','/images/coin-1004.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.010211927851211,0,'no more pow blocks',0,0,0.001,47.02102316,0.00024414,12006,NULL,NULL,0.000004798350592,0.000015713036800639,10,1,0,0,1,1431041611,NULL,NULL,NULL,NULL,NULL,'yaamp3',10040,'POS',1,NULL,1,0,'6e3c52bef93ac62fee392f87e3429755779025d009a6645f32323e2629821c89',NULL,4668,71,1434275577,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1005,'TicketCoin','TKT','','x11','v2.0.0.0','/images/coin-1005.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.45556279850462,0,'',0,0,0.00001,0.43023706203265,0.00024414,6244,NULL,NULL,0.000000078399974912,0.0000000999839872,250,1,0,0,1,1431045116,NULL,'','',NULL,NULL,'yaamp6',10050,'POS',1,NULL,1,0,'00000000690b7d8b3bbe4caeabccee233e31f2c83296d1d944c945df9fbe3007',NULL,275,4,1431865529,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1006,'FusionCoin','FSN','','sha256',NULL,'https://pbs.twimg.com/profile_images/595713766530093056/qtLLCjk__400x400.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,0,1431089635,NULL,'','',NULL,NULL,'yaamp6',10060,NULL,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1008,'unknown','BTI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431102873,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1009,'LimeCoinX','LIMX','','x11','110226','/images/coin-LIMX.png',NULL,NULL,NULL,NULL,25.00015,NULL,NULL,1,0,1,NULL,0.091514229214706,0,'',0,NULL,0,15.310392785472,NULL,90844,NULL,NULL,0.0000028004022784307,0.0000035985063424,50,1,0,0,1,1431138978,NULL,'','',NULL,NULL,'yaamp6',10090,'POW',1,NULL,1,0,'0000000000e6abcc2dbbf5dc80ff02128a40c051bf6087e2abd12c72630ddc57',NULL,447,6,1431688008,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1010,'ShellCoin','SHELL',NULL,'x11',NULL,'https://i.imgur.com/Z7iBOJ7.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no more pow blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431138996,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1011,'unknown','CLV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431289195,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1012,'TeleBET','TB',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'Last PoW block: 2880',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431369309,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1013,'16Bit Coin','BIT16',NULL,'nist5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,0.00000004,NULL,1,1,0,0,NULL,1431369309,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bitcointalk.org/index.php?topic=1049139.0','https://github.com/dragons78/liar16',NULL,NULL);
INSERT INTO `coins` VALUES (1014,'16bitcoin','16BIT','','nist5','v1.0.0.0','/images/coin-1014.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,1448.2837716065,0,'sixteenbitcoin is not connected!',0,0,0.00001,0.00024414,0.00024414,0,NULL,NULL,0.0000003491993792,0.00000038999968,200,1,0,0,1,1431384935,NULL,'','',NULL,NULL,'yaamp3',10140,'POS',1,NULL,1,0,'48532623c975e6f61b8fe3d8054397f54c6d55298d5c517af27a7d454964bc8c',NULL,28,1969,1432642622,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1015,'M1','M1',NULL,'x13',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no more pow blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431391060,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1016,'unknown','KRAK',NULL,'sha256',NULL,'https://i.imgur.com/gLqxMRo.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431393143,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1017,'unknown','BA',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431422332,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1018,'AstralCoin','AST','','x13','v1.0.0.0','/images/coin-1018.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0022445209464856,0,'astral is not connected!',0,NULL,0.01,1.72865395,NULL,1471,NULL,NULL,0.000000388,0.00000132,1,1,0,0,1,1431424473,NULL,'','',NULL,NULL,'yaamp3',10180,'POS',1,NULL,1,0,'',NULL,973158,28,1431516437,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1019,'GrantCoin','GRT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431427852,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1020,'Bata','BTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431456819,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1021,'unknown','MRB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431528150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1022,'StealthCash','STX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431530334,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1023,'unknown','PTA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431565849,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1024,'DarkCrave','DCC','','sha256','v1.0.2.0-g32a928e','/images/coin-1024.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,76251.584352294,0,'darkcrave is not connected!',0,0,0.000001,0.00001526,0.00001526,0,NULL,NULL,0.00012055959999982,0.00015841597763673,1,1,0,0,1,1431689006,NULL,NULL,NULL,NULL,NULL,'yaamp2',10240,'POS',1,NULL,1,0,'',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1026,'ArbitCoin','ARB','','sha256','v1.0.0.0','/images/coin-1026.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000000021598390414308,0,'no more pow blocks',0,0,0.01,4682208.1667973,0.00267652,18996,NULL,NULL,0.000010112815998755,0.000012074606847447,1,1,0,0,1,1431713702,NULL,NULL,NULL,NULL,NULL,'yaamp3',10260,'POS',1,NULL,1,0,'',NULL,54,NULL,1432643452,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1027,'GrantCoin','GRANT',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POP',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1431726150,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1028,'CorgiCoin','CORG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1029,'Darkbit','DB',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1030,'Equilibrium','EQM','','sha256','v1.1.0.0-g32a928e','/images/coin-1030.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000000011438837020104,0,'no more pow blocks',0,0,0.0001,6783906.4289152,0.00100602,4045,NULL,NULL,0.000009672064,0.000013025808090134,1,1,0,0,1,1432346280,NULL,NULL,NULL,NULL,NULL,'yaamp2',10300,'POS',1,NULL,1,0,NULL,NULL,354220,1812,1432823491,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1031,'Fadecoin','FADE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1032,'Seedbit','SED',NULL,'quark','v1.0.0.0-g32a928e','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.39460476478798,25,'no more pow blocks',0,NULL,0.0001,0.063080839921875,0.0036984,6249,NULL,NULL,0.0000024892,0.00045752,1,1,0,0,1,1432346280,NULL,NULL,NULL,NULL,NULL,'yaamp3',10320,'POS',1,NULL,1,0,'',NULL,96,NULL,1432601807,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1033,'SkullBuzz','SKB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1034,'Turing','TNG',NULL,'fresh',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346280,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1035,'unknown','PSN',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346283,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1036,'Variance','VARY',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346283,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1037,'unknown','TWERK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346285,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1038,'unknown','CS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346285,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1039,'unknown','GENIUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346285,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1040,'Premium','PRE','','scrypt','1000101','/images/coin-1040.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.038176515992767,0,'',0,NULL,0,17.792351720327,NULL,13373,NULL,NULL,0,0,50,1,0,1,1,1432346285,NULL,NULL,NULL,NULL,NULL,'yaamp3',10400,'POW',1,NULL,1,0,'32c5e131e8801b7fb43f10f02ec19667043b11bdeab2cc4be44b3600e1dcc149',NULL,19308,44,1434804098,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1041,'unknown','NICE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432346285,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1042,'unknown','XNA',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'no pow',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432417535,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1043,'unknown','32BIT',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432579156,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1044,'Vcoin','VCN',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432608254,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1045,'unknown','CREVA',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432649909,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1046,'Audiocoin','ADC',NULL,'scrypt',NULL,'/images/coin-ADC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432678698,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1047,'Synergy','SNRG',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'4320',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432692448,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1048,'ECCoin','ECC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432734971,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1049,'RadonCoin','RDN','','scrypt','v1.1.0.1-g32a928e','/images/coin-1049.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.059543589648679,0,'no more pow blocks',0,0,0.0001,154.70906106,74910.20616039,24205,NULL,NULL,0.00001842379199821,0.000024391800000717,50.0002,1,0,0,1,1432747507,NULL,NULL,NULL,NULL,NULL,'yaamp2',10490,'POS',1,NULL,1,0,'486d61ea15ed08f55b9adcdbf651653a217bda9f52cf29c6cb018589d1402687',NULL,55,515,1433595855,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1050,'unknown','PSY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432747507,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1051,'unknown','TWLV',NULL,'t-inside',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432809060,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1052,'unknown','VCOIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432826852,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1053,'unknown','MOIN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432836578,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1054,'unknown','GREED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432837355,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1055,'unknown','EXB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432862313,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1056,'unknown','GLUCK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1432919225,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1057,'unknown','DRA',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'shit',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433107106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1058,'unknown','OPTION',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433329273,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1059,'unknown','SEEDS',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433415953,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1060,'BananaBits','NANAS',NULL,'scrypt',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433415985,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1061,'unknown','BNB',NULL,'x11',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'ICO',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433427661,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1062,'unknown','ARPA',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433500474,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1063,'unknown','VAPOR',NULL,'sha256',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433535246,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1064,'Dubstep','DUB',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'ICO',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433542867,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1065,'unknown','FIST',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433551292,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1066,'unknown','OPT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433620673,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1067,'PharmaCoin','XPH','','scrypt','v1.0.1.0-g32a928e','/images/coin-1067.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.12196538955664,52,'no more pow blocks',0,0,0.00001,2501.83885576,547111.17010684,11064,NULL,NULL,0.0000030513775004043,0.0000034178738840484,10000.00002,1,0,0,1,1433674392,NULL,NULL,NULL,NULL,NULL,'yaamp2',10670,'POS',1,NULL,1,0,'6bcf7610c6414e37d6073bf363ee667d71266d8d689e73d40c4c5c9452499ea8',NULL,33,7896,1433975557,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1068,'CeriumCoin','XCE','','sha256','v1.0.0.0-g32a928e','/images/coin-1068.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000006839677682872,46,'no more pow blocks',0,0,0.001,5686963.8896015,0.01743737,3667,NULL,NULL,0.0000077793999998013,0.00001396000001321,500,1,0,0,1,1433684674,NULL,NULL,NULL,NULL,NULL,'yaamp3',10680,'POS',1,NULL,1,0,'c5fe6884fdfc1d4566b6648c280ff35eecc5b253790fe1901ebe292bba1dbb83',NULL,89,2517,1433843234,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1069,'DarkTron','DRKT',NULL,'sha256',NULL,'https://i.imgur.com/k6Ial35.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'No more PoW blocks',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1433719487,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1070,'Illuminati','ILM','','x11','v0.9.1.1-beta','/images/coin-1070.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.3644403090456,0,'',0,NULL,0.00001,0.49137000269922,0,12309,NULL,NULL,0.0000000588,0.00000007,145.00003,1,0,0,1,1433780678,NULL,NULL,NULL,NULL,NULL,NULL,10700,'POS',1,NULL,1,0,'0000000048682100124847c587b613a4762d07a6b4106cd5153972444b855cfe',NULL,113,1,1434809263,1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1071,'Genstake','GEN','','scrypt','v1.0.2.0','/images/coin-1071.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.15383225867361,0,'',0,NULL,0.0001,26.205974420334,0.0042326,28246,NULL,NULL,0.000030352167943602,0.000037941389558406,5,1,0,0,1,1433782292,NULL,NULL,NULL,NULL,NULL,'yaamp2',10710,'POS',1,NULL,1,0,'df70bc1eb79e665c4b72383081f4d671695fb78ce7ab43ee6935c92157f3182c',NULL,76,70,1434809263,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1072,'Transformers','TRANSF','','qubit','v1.0.0.0','/images/coin-1072.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.11901391700505,0,'',0,NULL,0.0001,0.39911449991169,0.00024414,1337,NULL,NULL,0,0,500,1,0,0,0,1433783186,NULL,NULL,NULL,NULL,NULL,'yaamp2',10720,'POS',1,NULL,1,0,'0000000117d2764ed8a8becb32f0ca5d0d061c96be3fb40af9ba037f7f248dc9',NULL,3451,4108,1434809263,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1073,'EDGE','EDGE','','sha256','v1.0.0.0-g','/images/coin-1073.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.0000092376579297547,0,'no more pow blocks',0,0,0.00001,565619.55852145,46242.89931845,12193,NULL,NULL,0.000005225,0.000007245,100,1,0,0,1,1433803001,NULL,NULL,NULL,NULL,NULL,'yaamp2',10730,'POS',1,NULL,1,0,'a21fe64c1fe65501a2c867b6ebc032937c356e9e47b456c290c338a033f68027',NULL,65,807,1434229036,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1074,'unknown','EOC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434041550,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1075,'YepCoin','YEP','','sha256','v1.0.0.0','/images/coin-1075.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,4.4181703690547,7,'',0,0,0.00001,0.00039518620925738,0.00024414,2,NULL,NULL,0.0000001746,0.0000000864,1,1,0,0,1,1434042334,NULL,NULL,NULL,NULL,NULL,'yaamp3',10750,'POS',1,NULL,1,0,'',NULL,717029646,0,1434059292,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1076,'Sharkcoin','SAK',NULL,'quark','1040001','/images/coin-SAK.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.30332531552926,0,'',0,NULL,0.01,441.46409493987,NULL,1796239,1773426,NULL,0,0,8.01,1000,0,0,1,1434065468,NULL,NULL,NULL,NULL,NULL,NULL,4009,'POW',1,NULL,0,0,'000000000068ca33f2d9b7a4ed83706d31ff5ec1a6636b4c6b763b4620eeb0e1',NULL,7263,2830,1434809263,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1077,'Sentaro','SEN','','scrypt','v1.0.0.0-g32a928e','/images/coin-1077.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.020268301384412,0,'',0,NULL,0.00001,9.3742582489423,0.00001526,9080,NULL,NULL,0,0,100.00003,1,0,1,1,1434213382,NULL,NULL,NULL,NULL,NULL,'yaamp2',10770,'POS',1,NULL,1,0,'78d3e648ca76492bd2ffc67088756cf98672dbc186aa4384fea8d09522de4a19',NULL,72,41,1434809263,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1079,'HedgeCoin','HEDG','','x13','90102','/images/coin-1079.png','c-cex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.20046931303359,7,'',0,NULL,0,6.3619313135787,NULL,14869,NULL,NULL,0.0000005292,0.000000745,241,1,1,1,0,1434322230,NULL,NULL,NULL,NULL,NULL,'yaamp3',10790,'POW',1,NULL,1,0,'0000000027d7d38e5ddee415364b3ac6bc1e7e991408a11e6099bbe5b2de90e1',NULL,182,34957,1436648004,1,'https://c-cex.com/?p=hedg-btc','https://bitcointalk.org/index.php?topic=1086585.0','https://github.com/equiteam/HedgeCoin',NULL,NULL);
INSERT INTO `coins` VALUES (1080,'EuropeCoin','ERC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434381642,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1081,'Nodex','NODX','','sha256',NULL,'https://i.imgur.com/brPYbyL.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,0,NULL,1,NULL,NULL,NULL,NULL,0,0,1,1,0,0,1,1434385765,NULL,NULL,NULL,NULL,NULL,'yaamp3',10810,NULL,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1082,'WarOfCoins','WOC2','','PoS','v1.0.0.0','/images/coin-1082.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.53952626700252,0,'no more pow blocks',0,NULL,0.01,0.17643258,135380.02756126,3823,NULL,NULL,0,0,0,0,0,0,0,1434386584,NULL,NULL,NULL,NULL,NULL,'',NULL,'POS',1,NULL,1,0,'0dc57139ff4089da7aa82baea2b91235b1032f582c0557f56295b4c4c58b5895',NULL,175,1,1434809192,0,'','','','',NULL);
INSERT INTO `coins` VALUES (1083,'CryptoCircuits','CIRC',NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'POS',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434388176,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1084,'unknown','SMSR',NULL,'qubit',NULL,'https://i.imgur.com/r4sX4HB.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,'5 days',0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434466368,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','',NULL);
INSERT INTO `coins` VALUES (1085,'GlobalCurrencyCoin','GLOBE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434471522,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1086,'Vibranium','XVI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434801757,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1087,'unknown','FUTC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434801797,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1088,'Bloodcoin','BOD','','quark','90207','/images/coin-1088.png','yobit',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.00013988794702068,8,'EXCEPTION: St12out_of_range       \nCInv::GetCommand() : type=8 unknown type       \nblood in ProcessMessages()       \n',0,NULL,0,0.71737417080807,NULL,90695,NULL,NULL,0.0000000392,0.00000005,0.256,1,1,1,1,1434801833,NULL,'.bloodcoin','bloodd',NULL,NULL,'yaamp5',3060,'POW',1,NULL,1,0,'',NULL,15,14042,1436648206,1,'https://yobit.net/en/trade/BOD/BTC','https://bitcointalk.org/index.php?topic=1091421.0','https://github.com/bitquarkcoin',NULL,NULL);
INSERT INTO `coins` VALUES (1089,'unknown','GTFO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1434801865,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1090,'Dibbits','DIBS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882405,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1091,'GridmasterCoin','GRM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882435,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1092,'GenesisCoin','GENE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882466,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1093,'Spktr','SPKTR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882496,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1094,'GorillaBucks','BUCKS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882544,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1095,'unknown','GENI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882574,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1096,'unknown','INDEX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882604,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1097,'unknown','POLY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882635,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1098,'unknown','TAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882665,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1099,'unknown','HAZE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882699,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1100,'unknown','TAGR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882729,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1101,'unknown','EA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882759,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1102,'unknown','SPEC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882789,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1103,'RateCoin','XRA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882819,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1104,'unknown','BLUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882849,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1105,'unknown','KC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882879,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1106,'unknown','TENNET',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882909,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1107,'unknown','EXT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882939,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1108,'unknown','SPX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882969,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1109,'unknown','GMCX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435882999,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1110,'unknown','SJW',NULL,NULL,NULL,'/images/coin-SJW.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435883029,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1111,'unknown','BAM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435883059,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1112,'unknown','CRPS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435883089,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1113,'unknown','HXX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435883119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1114,'Flaxscript','FLAX','','c11','1000000','/images/coin-flax.png','cryptopia',2082,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.95076959211306,5,'',0,NULL,0,0.31596837182392,NULL,20958,NULL,NULL,0.0000013061439999985,0.0000021799999999992,23,1,1,0,0,1435885877,NULL,NULL,'flaxscriptd',NULL,NULL,'yaamp6',23175,'POW',1,NULL,0,0,'000000010f42529ad5d81465edf511078ed3456b7e32cf73210d00b8b0210928',NULL,119,90,1436648206,1,'https://www.cryptopia.co.nz/Exchange?market=FLAX_BTC','https://bitcointalk.org/?topic=1099181','https://github.com/thegreatoldone/flaxscript','http://flaxscript.info/flaxdecoder',NULL);
INSERT INTO `coins` VALUES (1115,'Chaincoin','CHC','','c11','90201','/images/coin-chc.png','cryptopia',NULL,NULL,NULL,0,NULL,NULL,1,0,1,NULL,0.59044445303223,6,'',0,624.0002,0,0.57255309668795,NULL,502506,NULL,NULL,0.0000010564400000182,0.000003800000000021,32,2,1,1,1,1435886052,NULL,NULL,'chaincoind',NULL,NULL,'yaamp6',11995,'POW',1,NULL,0,0,'00000000db6164f88b42283a672b22d9aafa53dce0fbde270377948e3dabe7dc',NULL,96,163,1436648139,1,'https://www.cryptopia.co.nz/Exchange?market=CHC_BTC','https://bitcointalk.org/index.php?topic=422149.0','https://github.com/chaincoin/chaincoin','http://cryptobe.com/chain/ChainCoin',NULL);
INSERT INTO `coins` VALUES (1116,'unknown','YOVI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1435939759,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1117,'Dropcoin','DRP','','drop','100200','/images/coin-DRP.png','alcurex',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,14.028955576105,8,'',0,50.00000373,0,0.11232767767004,NULL,58835,NULL,NULL,0.0000157584,0.00001608,10,1,1,1,1,1435948295,NULL,'.dropcoin','dropcoind',NULL,NULL,'yaamp2',29019,'POW',1,NULL,1,0,'000000040c0dd46d8edd070eb64dc8d3264c6be5d4547411e15e2434cc7ac872',NULL,66,1925,1436648206,1,'https://alcurex.org/index.php/crypto/market?pair=DRP_BTC','https://bitcointalk.org/?topic=1040762.0','https://bitbucket.org/nscrypto/dropcoin.git','http://cryptobe.com/chain/DropCoin',NULL);
INSERT INTO `coins` VALUES (1118,'Xedoscoin','XDC','','skein','1010201','/images/coin-XDC.png','comkort',NULL,NULL,NULL,NULL,NULL,NULL,100,0,0,NULL,0,0,'',0,NULL,0,0.009815308646413,NULL,635431,NULL,NULL,NULL,NULL,0,0,0,1,0,NULL,NULL,'.xedoscoin','xedoscoind',NULL,NULL,'yaamp3',18153,'POW',1,NULL,0,0,'00000003417f1b70e635c712d019deb3a4dfbe87edeab587a883d1686e8c3eae',NULL,103,3,1436311177,1,NULL,'https://bitcointalk.org/?topic=445651.0','https://github.com/xedoscoin/xedoscoin','http://xedoscoin.com:2750/chain/Xedoscoin',NULL);
INSERT INTO `coins` VALUES (1181,'unknown','DOT',NULL,NULL,NULL,'/images/coin-DOT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013247,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1182,'unknown','WSX',NULL,NULL,NULL,'/images/coin-WSX.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013277,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1183,'unknown','POP',NULL,NULL,NULL,'/images/coin-POP.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013307,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1184,'unknown','DARK',NULL,NULL,NULL,'/images/coin-DARK.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013337,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1185,'unknown','SVC',NULL,NULL,NULL,'/images/coin-SVC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013367,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1186,'unknown','MDC',NULL,NULL,NULL,'/images/coin-MDC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013397,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1187,'unknown','66',NULL,NULL,NULL,'/images/coin-66.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013427,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1188,'unknown','$$$',NULL,NULL,NULL,'/images/coin-$$$.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013457,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1189,'unknown','XGR',NULL,NULL,NULL,'/images/coin-XGR.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013487,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1190,'unknown','XPL',NULL,NULL,NULL,'/images/coin-XPL.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013517,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1191,'unknown','KIWI',NULL,NULL,NULL,'/images/coin-KIWI.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013547,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1192,'unknown','NTC',NULL,NULL,NULL,'/images/coin-NTC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013577,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1193,'unknown','TTY',NULL,NULL,NULL,'/images/coin-TTY.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013607,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1194,'unknown','TOP',NULL,NULL,NULL,'/images/coin-TOP.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013637,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1195,'unknown','CIV',NULL,NULL,NULL,'/images/coin-CIV.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013667,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1196,'unknown','GXG',NULL,NULL,NULL,'/images/coin-GXG.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013697,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1197,'unknown','FTCC',NULL,NULL,NULL,'/images/coin-FTCC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013727,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1198,'unknown','$MINE',NULL,NULL,NULL,'/images/coin-MINE.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013757,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1199,'unknown','ADD',NULL,NULL,NULL,'/images/coin-ADD.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013787,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1200,'unknown','$MINEW',NULL,NULL,NULL,'/images/coin-MINE.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013817,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1201,'unknown','$MINEZ',NULL,NULL,NULL,'/images/coin-MINE.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013847,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1202,'unknown','IPC',NULL,NULL,NULL,'/images/coin-IPC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013877,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1203,'unknown','SPN',NULL,NULL,NULL,'/images/coin-SPN.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013908,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1204,'unknown','BSY',NULL,NULL,NULL,'/images/coin-BSY.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013938,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1205,'unknown','DUCK',NULL,NULL,NULL,'/images/coin-DUCK.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013968,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1206,'unknown','UNIC',NULL,NULL,NULL,'/images/coin-UNIC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436013998,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1207,'unknown','FUNK',NULL,NULL,NULL,'/images/coin-FUNK.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014028,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1208,'unknown','CNO',NULL,NULL,NULL,'/images/coin-CNO.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014058,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1209,'unknown','CHAO',NULL,NULL,NULL,'/images/coin-CHAO.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014088,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1210,'unknown','BLZ',NULL,NULL,NULL,'/images/coin-BLZ.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1211,'unknown','EMC',NULL,NULL,NULL,'/images/coin-EMC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014148,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1212,'unknown','OFF',NULL,NULL,NULL,'/images/coin-OFF.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014178,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1213,'unknown','BDSM',NULL,NULL,NULL,'/images/coin-BDSM.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014208,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1214,'unknown','EXC',NULL,NULL,NULL,'/images/coin-EXC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014238,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1215,'unknown','FETISH',NULL,NULL,NULL,'/images/coin-FETISH.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014268,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1216,'unknown','SHA',NULL,NULL,NULL,'/images/coin-SHA.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014298,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1217,'Skeincoin','SKC','','skein',NULL,'/images/coin-SKC.png','cryptopia',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,0,'',0,NULL,NULL,1,NULL,NULL,NULL,NULL,0,0,1,1,0,1,1,1436014328,NULL,NULL,NULL,NULL,NULL,'yamp1',15706,NULL,1,NULL,1,0,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1218,'unknown','MARS',NULL,NULL,NULL,'/images/coin-MARS.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014358,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1219,'unknown','CX',NULL,NULL,NULL,'/images/coin-CX.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014388,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1220,'unknown','CDC',NULL,NULL,NULL,'/images/coin-CDC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014418,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1221,'AnimeCoin','ANI',NULL,'anime',NULL,'/images/coin-ANI.png','cryptopia',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,0.00000001,0.00000002,1,1,0,0,NULL,1436014448,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1222,'unknown','DUO',NULL,NULL,NULL,'/images/coin-DUO.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014478,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1223,'unknown','GRW',NULL,NULL,NULL,'/images/coin-GRW.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014508,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1224,'unknown','PLC',NULL,NULL,NULL,'/images/coin-PLC.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014538,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1225,'Version','V',NULL,NULL,NULL,'/images/coin-V.png','cryptopia',NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014569,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bitcointalk.org/?topic=478176.0','https://github.com/staycrypto/version',NULL,NULL);
INSERT INTO `coins` VALUES (1226,'unknown','QUIT',NULL,NULL,NULL,'/images/coin-QUIT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014599,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1227,'unknown','BNX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436014629,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1228,'unknown','ALCUREX',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436034988,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1229,'unknown','BTRHA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035019,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1230,'unknown','BT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035049,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1231,'unknown','CV2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035079,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1232,'unknown','DRK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1233,'unknown','DRM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035139,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1234,'unknown','FAIL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035169,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1235,'unknown','FIMK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035199,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1236,'unknown','FRSH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035229,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1237,'unknown','FX01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035259,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1238,'unknown','HANSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035289,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1239,'unknown','ISO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035319,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1240,'unknown','MRC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035349,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1241,'unknown','NODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035379,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1242,'unknown','P0001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035409,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1243,'unknown','PHO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035439,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1244,'unknown','PPCD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035469,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1245,'unknown','RUM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035499,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1246,'unknown','TALK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035529,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1247,'unknown','VAPE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035559,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1248,'unknown','ZUR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436035589,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1249,'unknown','CARB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436047321,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1250,'Ideacoin','IDC-SKN','IDC','skein','90214','/images/coin-IDC.png','bitex',NULL,NULL,NULL,NULL,NULL,NULL,100,0,1,NULL,0.082095830233845,3,'',0,NULL,0,5.9686344434823,NULL,42678,NULL,NULL,0.000000196,0.0000003,250,1,1,1,0,NULL,NULL,'.ideacoin','ideacoind',NULL,NULL,'yaamp4',15075,'POW',1,NULL,0,0,'000000000001519490fde30c9914dd9a5740a1feb394adebedab4b30460dcd76',NULL,80,433,1436648206,1,NULL,'https://bitcointalk.org/index.php?topic=1106025.0',NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1251,'Ideacoin','IDC-SHA','IDC','sha256','90214','/images/coin-IDC.png','bitex',NULL,NULL,NULL,NULL,NULL,NULL,100,0,1,NULL,0.000012972119762758,3,'',0,NULL,0,37773.317619743,NULL,42678,NULL,NULL,0.000000196,0.0000003,250,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'yaamp4',15076,'POW',1,NULL,0,0,'000000000001519490fde30c9914dd9a5740a1feb394adebedab4b30460dcd76',NULL,80,24701,1436648206,1,NULL,'https://bitcointalk.org/index.php?topic=1106025.0',NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1252,'Ideacoin','IDC-SCR','IDC','scrypt','90214','/images/coin-IDC.png','bitex',NULL,NULL,NULL,NULL,NULL,NULL,100,0,1,NULL,4.7678977645533,4,'',0,10250.0006,0,0.10277065998413,NULL,42678,NULL,NULL,0.000000196,0.0000003,250,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'yaamp4',15077,'POW',1,NULL,0,0,'e1280bb43372f73711be7de9c577615366bffd11bb771924068795a7c060594d',NULL,80,130,1436648206,1,NULL,'https://bitcointalk.org/index.php?topic=1106025.0',NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1253,'Ideacoin','IDC-QUB','IDC','qubit','90214','/images/coin-IDC.png','bitex',NULL,NULL,NULL,NULL,NULL,NULL,100,0,1,NULL,1.0485409323262,2,'',0,NULL,0,0.46731604355484,NULL,42678,NULL,NULL,0.000000196,0.0000003,250,1,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yaamp4',15078,'POW',1,NULL,0,0,'bbd64f9cd073eda0e9f8eab074c0e7137f9c62f6e2d91fbe9e2ec45216834544',NULL,80,2243,1436648206,1,NULL,'https://bitcointalk.org/index.php?topic=1106025.0',NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1254,'unknown','MCAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436170987,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1255,'unknown','MOLD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436171737,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1256,'unknown','VERSA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436220881,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1257,'LocalFamilyOwned','LFO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436221602,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1258,'FullIntegrityCoin','FIC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436277625,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1259,'2BACCO','2BACCO',NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436290031,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bitcointalk.org/index.php?topic=1096693.0','https://github.com/2bacco/2bacco',NULL,NULL);
INSERT INTO `coins` VALUES (1260,'Nuke','NUKE',NULL,'PoS',NULL,NULL,'yobit',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436291509,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://bitcointalk.org/index.php?topic=1112937.0',NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1261,'unknown','SPROUT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436314617,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1262,'Midnight','MDT','','bmw','v1.0.0.0-g','/images/coin-MDT.png',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,1,NULL,0.000035344686999313,27,'',0,NULL,0.000001,33.951354556438,17634.72399691,4624,NULL,NULL,0.00000001,0.00000001,12,1,1,1,1,0,NULL,'.midnight','midnightd',NULL,NULL,'192.168.0.120',15710,'POW',1,NULL,0,0,'0000000001c7bc35fb752f9589478e2ea63e68f11933af573c8ea2fb4eb04b53',NULL,25,1482,1436648206,1,NULL,'https://bitcointalk.org/?topic=1116894.new#new','https://github.com/midnightmdt/midnight',NULL,NULL);
INSERT INTO `coins` VALUES (1263,'unknown','SPRTS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436585044,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1264,'unknown','CPN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,0,NULL,1436592258,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `coins` VALUES (1265,'BowsCoin','BSC',NULL,'x11','2000000','/images/coin-BSC.png','c-cex',NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,1,NULL,0,0,'bowscoin is not connected!',0,NULL,0,0.00024414,NULL,0,NULL,NULL,0,0,1,1,1,0,NULL,1436598141,NULL,'.bowscoin','bowscoind',NULL,NULL,'yaamp4',15711,'POW',1,NULL,1,0,'',NULL,NULL,NULL,NULL,1,NULL,'https://bitcointalk.org/index.php?topic=1039949.0','https://github.com/bowscoin/bowscoin','http://cryptobe.com/chain/BowsCoin',NULL);
/*!40000 ALTER TABLE `coins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connections` (
  `id` int(11) NOT NULL,
  `user` varchar(64) DEFAULT NULL,
  `host` varchar(64) DEFAULT NULL,
  `db` varchar(64) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `idle` int(11) DEFAULT NULL,
  `last` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `coinid` int(11) DEFAULT NULL,
  `blockid` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mature_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`userid`),
  KEY `coin` (`coinid`),
  KEY `block` (`blockid`),
  KEY `create1` (`create_time`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11620 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings`
--

LOCK TABLES `earnings` WRITE;
/*!40000 ALTER TABLE `earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange`
--

DROP TABLE IF EXISTS `exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coinid` int(11) DEFAULT NULL,
  `send_time` int(11) DEFAULT NULL,
  `receive_time` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price_estimate` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `market` varchar(16) DEFAULT NULL,
  `tx` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coinid` (`coinid`),
  KEY `status` (`status`),
  KEY `market` (`market`),
  KEY `send_time` (`send_time`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange`
--

LOCK TABLES `exchange` WRITE;
/*!40000 ALTER TABLE `exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashrate`
--

DROP TABLE IF EXISTS `hashrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashrate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(11) DEFAULT NULL,
  `hashrate_bad` bigint(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rent` double DEFAULT NULL,
  `earnings` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `t1` (`time`),
  KEY `a1` (`algo`)
) ENGINE=InnoDB AUTO_INCREMENT=10151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashrate`
--

LOCK TABLES `hashrate` WRITE;
/*!40000 ALTER TABLE `hashrate` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashrenter`
--

DROP TABLE IF EXISTS `hashrenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashrenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renterid` int(11) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` double DEFAULT NULL,
  `hashrate_bad` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashrenter`
--

LOCK TABLES `hashrenter` WRITE;
/*!40000 ALTER TABLE `hashrenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashrenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashstats`
--

DROP TABLE IF EXISTS `hashstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashstats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(11) DEFAULT NULL,
  `earnings` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt',
  PRIMARY KEY (`id`),
  KEY `algo1` (`algo`),
  KEY `time1` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=1437 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashstats`
--

LOCK TABLES `hashstats` WRITE;
/*!40000 ALTER TABLE `hashstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hashuser`
--

DROP TABLE IF EXISTS `hashuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hashuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `hashrate` bigint(11) DEFAULT NULL,
  `hashrate_bad` bigint(11) DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `u1` (`userid`),
  KEY `t1` (`time`),
  KEY `a1` (`algo`)
) ENGINE=InnoDB AUTO_INCREMENT=5570 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hashuser`
--

LOCK TABLES `hashuser` WRITE;
/*!40000 ALTER TABLE `hashuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `hashuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renterid` int(11) DEFAULT NULL,
  `ready` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  `host` varchar(1024) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(1024) DEFAULT NULL,
  `password` varchar(1024) DEFAULT NULL,
  `percent` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `renterid` (`renterid`),
  KEY `ready` (`ready`),
  KEY `active` (`active`),
  KEY `algo` (`algo`),
  KEY `price` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsubmits`
--

DROP TABLE IF EXISTS `jobsubmits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsubmits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `algo` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsubmits`
--

LOCK TABLES `jobsubmits` WRITE;
/*!40000 ALTER TABLE `jobsubmits` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsubmits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `markets`
--

DROP TABLE IF EXISTS `markets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `markets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coinid` int(11) DEFAULT NULL,
  `marketid` int(11) DEFAULT NULL,
  `lastsent` int(11) DEFAULT NULL,
  `lasttraded` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT NULL,
  `txfee` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price2` double DEFAULT NULL,
  `deposit_address` varchar(1024) DEFAULT NULL,
  `message` varchar(2048) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `base_coin` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coinid` (`coinid`),
  KEY `name` (`name`),
  KEY `lastsent` (`lastsent`),
  KEY `lasttraded` (`lasttraded`)
) ENGINE=InnoDB AUTO_INCREMENT=1980 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `markets`
--

LOCK TABLES `markets` WRITE;
/*!40000 ALTER TABLE `markets` DISABLE KEYS */;
INSERT INTO `markets` VALUES (1,155,NULL,NULL,0,0,0.002,NULL,0.020691404922548,0.020814137099131,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (3,142,NULL,1434521832,1434524748,0,0.002,NULL,0.0000048300000002048,0.0000048499920774144,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (8,153,NULL,NULL,0,0,0.2,NULL,0.0000051,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (9,77,NULL,1434456939,1434486428,0,0.002,NULL,0.00045488930176232,0.00045867861107593,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (13,190,NULL,1434522685,1434524748,0,0.02,NULL,0.00042096793948053,0.00042342978904575,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (18,104,NULL,1434050553,1434072251,0,0.2,NULL,0.000019048800027151,0.000019239584365976,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (19,196,NULL,NULL,1427398373,0,0.02,NULL,0.00000082,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (28,104,300,1433970099,1434012677,0,0.1,NULL,0.000019268864160664,0.000019580422626153,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (32,193,295,1415517055,1415609089,0,0.1,NULL,0.00000909,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (33,155,3,NULL,0,0,0.5,NULL,0.020653791025973,0.020664033181219,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (37,161,286,1415775585,1416674167,0,0.1,NULL,0,NULL,NULL,'Maintenance','cryptsy',NULL);
INSERT INTO `markets` VALUES (38,187,13,1423227045,1423252100,0,3,NULL,0.00241806,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (39,142,173,NULL,1434508324,0,5,NULL,0.0000047676001026145,0.0000047887936391457,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (41,145,117,1434803414,1434523133,0,0.1,NULL,0.00028938605610631,0.00029032826007153,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (42,77,247,1434521830,1434522333,0,0.2,NULL,0.00045200003714478,0.00045200624133822,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (47,155,NULL,NULL,0,0,NULL,NULL,0.020159837398926,0.02057791933957,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (49,154,NULL,1415933511,1415969270,0,NULL,NULL,0.00001247,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (56,200,NULL,1420307044,1421857842,0,0.2,NULL,0.0000395,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (57,200,304,1420295881,1420306375,0,0.1,NULL,0.00003801,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (70,155,NULL,NULL,0,0,0.01,NULL,0.020096017919634,0.020545593883579,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (79,243,143,1416953465,1416997001,0,0.3,NULL,0.000262,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (84,104,NULL,1423481825,1434072277,0,0.1,NULL,0.00001852999957504,0.000019990999864319,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (88,142,NULL,1425017779,1434524781,0,0.1,NULL,0.0000048,0.000005030432,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (89,77,NULL,1414839892,1414851008,0,0.001,NULL,0.00044308,0.00046974596008715,NULL,'no','bleutrade',NULL);
INSERT INTO `markets` VALUES (96,146,NULL,1423025840,1423026664,0,2,NULL,0.00000070000000020349,0.00000070500000020414,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (97,146,132,1422553301,1422572195,0,100,NULL,0.00000070000000512,0.00000070500001536,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (98,146,NULL,NULL,0,0,NULL,NULL,0.0000007,0.0000007050000025559,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (99,146,NULL,NULL,0,0,2,NULL,0.00000070000000000164,0.00000070500160000082,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (102,200,NULL,1420309208,1434524781,0,0.1,NULL,0.000038,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (105,270,NULL,1418562395,1434524780,0,0.1,NULL,0.000026,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (125,299,NULL,1436271690,1436272114,0,0.1,NULL,0.0000003,0.00000032,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (126,304,88,NULL,1434524761,0,0.1,NULL,0.00014764757952621,0.00014947054603459,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (127,305,71,NULL,1434523933,0,0.09,NULL,0.00001591132341022,0.000016099654447018,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (128,307,31,1434524344,1434523929,0,50,NULL,0.000001540048,0.0000016050211219097,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (129,308,5,NULL,1434514210,0,40,NULL,0.0000464330706652,0.000046592728834152,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (134,190,NULL,1425510082,1426033220,0,0.1,NULL,0.0003695,0.00039639,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (142,326,NULL,1431863219,1434524778,0,0.1,NULL,0.000000119999355904,0.000000144999919616,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (143,245,NULL,1431591448,1431863719,0,0.1,NULL,0.00000021,0.000000225,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (154,346,NULL,1434277674,1436167349,0,0.02,NULL,0.00032000000946176,0.00032065189784782,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (155,346,151,1434507107,1434509151,0,1,NULL,0.00032238956651717,0.00032324560827644,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (161,348,NULL,NULL,1419705062,0,NULL,NULL,0.00000145,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (167,308,NULL,NULL,1434503381,0,0.2,NULL,0.000046446231718516,0.000046884410723589,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (175,373,309,1431862289,1431865567,0,0.1,NULL,0.00000055000000000013,0.00000057000000000007,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (178,374,NULL,1423507748,1423599532,0,0.002,NULL,0.000040189290869924,0.000041081167418411,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (179,374,261,1421120569,1422835246,0,0.1,NULL,0.000040113121024,0.000041099912790225,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (188,386,NULL,1422010095,1434524748,0,0.002,NULL,0.00000104,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (191,392,NULL,1421173018,1432385898,0,0.2,NULL,0.000018520784,0.000019333716782215,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (192,392,26,1421117724,1421126812,0,0.1,NULL,0.000018413456131104,0.000019034581613064,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (193,392,NULL,NULL,0,0,0.1,NULL,0.00001891,0.000018955,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (194,393,NULL,1434510421,1434524747,0,0.2,NULL,0.0006311526144897,0.00063211368646088,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (195,393,NULL,1420517421,1420736934,0,0.1,NULL,0.00060510991679263,0.00063295728637071,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (196,394,45,1424861810,1424869612,0,0.1,NULL,0.00015313901733297,0.00015471239926813,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (197,394,NULL,1424559716,1434524780,0,0.1,NULL,0.00013842904806402,0.00015533020883201,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (198,390,NULL,1423640237,1429477846,0,2,NULL,0.00000109,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (199,390,278,1424391616,1424431178,0,1,NULL,0.00000106,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (201,396,66,1434503750,1434505041,0,3,NULL,0.0008037920191287,0.00082144087676504,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (202,398,NULL,NULL,0,0,0.2,NULL,0.00045872,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (203,398,302,NULL,0,0,0.1,NULL,0.00051943,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (204,399,14,1434488679,1434490916,0,100,NULL,0.000048284516338552,0.000049006985891085,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (205,399,NULL,NULL,0,0,0.001,NULL,0.000044806695628034,0.000049184349414017,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (206,400,136,1419365772,1419600391,0,0.1,NULL,0.00000841,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (207,401,249,NULL,0,0,10,NULL,0.00001017,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (212,389,NULL,1423016957,1434524749,0,0.02,NULL,0.00001516,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (213,389,444,1423754459,1423833043,0,0.1,NULL,0.0000165,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (215,406,NULL,1434397280,1434400798,0,2,NULL,0.00000025,0.000000255,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (216,406,167,1434411720,1434412124,0,100,NULL,0.00000024793342034739,0.0000002529667106857,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (217,356,183,1428959499,1429004481,0,3,NULL,0.0000019799950103757,0.0000020239971851879,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (218,321,NULL,NULL,1420030398,0,NULL,NULL,0.00000251,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (221,417,NULL,NULL,0,0,0.1,NULL,NULL,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (222,414,465,1422201734,1422222517,0,0.1,NULL,0.00000004,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (224,418,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (225,419,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (227,421,NULL,NULL,1434524748,0,0.2,NULL,0.00000026000012799476,0.00000026503212801442,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (228,422,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (230,424,NULL,NULL,1434524746,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (232,404,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (233,426,NULL,NULL,0,0,0.2,NULL,0.00001542,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (234,427,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (236,428,NULL,1434524344,1434523108,0,0.2,NULL,0.0000034096001026077,0.0000034547618453504,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (237,429,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (239,431,NULL,1425408716,1425495029,0,0.2,NULL,0.00000008,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (240,432,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (241,433,NULL,1425007059,1434524746,0,0.2,NULL,0,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (242,434,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (243,435,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (244,436,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (245,437,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (246,438,NULL,NULL,1436109965,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (247,439,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (248,440,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (249,441,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (250,442,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (251,443,NULL,NULL,0,0,0.2,NULL,0.00000965,0.0000098,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (252,444,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (253,445,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (254,446,NULL,NULL,0,0,0.02,NULL,0.00012347,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (259,450,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (260,451,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (261,452,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (262,453,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (266,457,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (267,458,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (270,349,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (271,461,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (272,462,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (273,463,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (277,467,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (278,468,NULL,NULL,1430790105,0,0.02,NULL,0.000007,0.000007145,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (279,469,NULL,1431862294,1431865557,0,0.02,NULL,0.00001470802227712,0.0000151630624256,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (282,472,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (283,473,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (285,475,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (286,476,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (287,477,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (289,479,NULL,NULL,0,0,0.02,NULL,0.00374449,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (292,482,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (295,485,NULL,1434041257,1434054876,0,0.0002,NULL,0.0095050259002821,0.009752507950141,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (297,487,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (298,488,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (299,489,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (301,491,NULL,NULL,0,0,0.2,NULL,0.000017950012800033,0.000018415006400016,NULL,'','bittrex',NULL);
INSERT INTO `markets` VALUES (302,492,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (303,493,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (304,494,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (305,495,NULL,1430512942,1434524749,0,0.0002,NULL,0.00002889,0.000033188307987195,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (306,496,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (308,498,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (309,499,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (310,500,NULL,NULL,1434523100,0,0.02,NULL,0.000008510000026665,0.0000097449999830835,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (312,502,NULL,1434492181,1434523106,0,0.2,NULL,0.000021850016,0.000021855523200002,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (314,504,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (317,371,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (318,507,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (321,192,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (324,512,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (325,513,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (326,514,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (327,515,NULL,NULL,1434523112,0,0.2,NULL,0.000001476,0.000001543,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (328,516,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (331,519,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (333,521,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (408,552,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (409,553,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (410,433,NULL,1425483844,1425546475,0,0.1,NULL,0.00000028,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (412,479,NULL,NULL,0,0,0.001,NULL,0.00115,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (413,336,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (414,554,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (415,555,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (416,556,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (417,557,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (421,560,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (424,561,NULL,1425479934,1425523859,0,0.1,NULL,0.00000006,0.0000000650064,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (425,562,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (426,424,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (427,563,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (428,564,NULL,NULL,0,0,0.1,NULL,0.00000317,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (430,565,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (431,566,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (432,567,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (433,568,NULL,1431862299,1431863723,0,0.1,NULL,0.0000117899999744,0.0000126350015872,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (434,569,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (437,572,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (438,573,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (440,513,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (442,491,NULL,NULL,0,0,0.001,NULL,0.00001624,0.000025095,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (443,574,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (444,575,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (446,502,NULL,NULL,0,0,0.1,NULL,0.000021350079999998,0.000022700519999999,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (447,428,NULL,1433038808,1433069058,0,0.1,NULL,0.0000033553829120072,0.0000034626914560036,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (448,577,NULL,NULL,0,0,0.015,NULL,0.00147,0.00148,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (449,578,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (450,579,NULL,NULL,0,0,0.1,NULL,0.000037,0.00003736,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (451,580,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (455,530,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (456,584,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (457,585,NULL,NULL,0,0,0.1,NULL,0.0013300408,0.001342805968,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (458,305,NULL,1432864372,1434524781,0,0.001,NULL,0.00001533,0.000016485,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (460,418,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (461,426,NULL,NULL,0,0,0.1,NULL,0.00001399,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (462,257,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (465,588,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (466,485,NULL,NULL,1434067528,0,0.01,NULL,0.0090009451574423,0.0095004675787211,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (467,589,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (469,440,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (470,590,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (473,251,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (474,591,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (475,409,NULL,NULL,0,0,0.001,NULL,0.002001,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (484,594,NULL,NULL,0,0,NULL,NULL,0.00000116,0.0000013750000001108,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (485,512,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (486,516,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (491,557,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (492,274,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (496,561,NULL,NULL,0,0,NULL,NULL,0.00000005,0.000000055000000004096,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (498,301,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (501,378,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (515,313,NULL,NULL,1436040221,0,NULL,NULL,0.00000925,0.00000955,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (521,605,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (526,419,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (540,397,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (542,408,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (543,612,NULL,NULL,0,0,NULL,NULL,0.00001072,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (548,333,NULL,NULL,1420029280,0,NULL,NULL,0.00000097,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (558,344,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (559,191,141,NULL,0,0,0.000001,NULL,4.69999994,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (560,619,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (561,620,287,NULL,1434420964,0,0.1,NULL,0.000035369999891458,0.000035434999939073,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (562,471,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (563,621,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (564,622,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (565,623,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (566,624,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (567,477,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (568,260,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (569,625,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (570,626,160,NULL,1434522299,0,2,NULL,0.00016607153287618,0.00016929472781209,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (571,505,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (573,627,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (574,628,157,NULL,0,0,0.02,NULL,0.00000331,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (575,629,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (576,433,251,1426028253,1426059679,0,0.01,NULL,0.0000003,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (577,630,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (578,631,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (579,632,10,NULL,0,0,500,NULL,0.0000013900000000328,0.0000014485866671276,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (580,633,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (581,479,256,NULL,0,0,1,NULL,0.00364908,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (582,634,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (583,635,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (584,636,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (585,637,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (586,449,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (587,638,53,NULL,0,0,0.5,NULL,0.00001051,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (588,639,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (589,452,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (591,641,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (592,413,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (593,458,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (594,559,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (595,642,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (596,643,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (597,644,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (598,645,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (599,646,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (600,647,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (601,514,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (602,648,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (603,349,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (604,649,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (605,650,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (606,651,72,NULL,0,0,0.1,NULL,0.00050107131288111,0.00050481089953549,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (607,652,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (608,538,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (609,653,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (610,654,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (611,655,139,NULL,1433366201,0,0.1,NULL,0.00000012,0.0000001250000512,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (612,424,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (613,656,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (614,596,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (615,657,69,NULL,1429559550,0,0.1,NULL,0.0000030067202229327,0.0000032019622727937,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (616,524,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (617,658,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (618,498,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (619,659,138,NULL,0,0,0.1,NULL,0,NULL,NULL,'Maintenance','cryptsy',NULL);
INSERT INTO `markets` VALUES (620,507,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (622,660,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (623,661,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (624,564,39,NULL,0,0,0.01,NULL,0.00000524,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (625,662,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (626,663,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (627,503,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (628,664,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (629,665,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (630,666,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (631,667,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (632,668,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (633,466,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (634,669,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (635,500,281,1434520236,1434522300,0,1,NULL,0.0000090507423690418,0.0000095160083225843,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (636,670,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (637,671,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (638,312,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (639,672,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (640,571,59,NULL,0,0,66400,NULL,0.00000012039946752,0.00000012539973376,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (641,488,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (642,673,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (643,192,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (644,674,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (645,474,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (646,675,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (647,480,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (648,676,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (649,677,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (650,678,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (651,679,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (652,680,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (653,681,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (654,513,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (655,682,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (656,492,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (657,683,177,1424928383,1424930912,0,500,NULL,0.00000006,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (658,491,152,NULL,0,0,0.4,NULL,0.000017339424,0.000017624712,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (659,684,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (660,464,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (661,574,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (662,359,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (663,685,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (664,273,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (665,421,200,1434501377,1434502609,0,0.3,NULL,0.00000026,0.000000265,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (666,686,164,1434502993,1434522307,0,0.1,NULL,0.0000005900013056,0.0000005951945856,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (667,687,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (668,439,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (669,475,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (670,688,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (671,689,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (672,528,134,NULL,1425363880,0,50,NULL,0.0000016,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (673,577,29,NULL,0,0,0.5,NULL,0.0014070628959289,0.0014295284120817,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (674,431,264,1425440079,1427129711,0,30,NULL,0.00000008,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (675,690,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (676,691,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (677,419,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (678,692,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (679,523,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (680,579,75,NULL,0,0,0.1,NULL,0.000038010000512,0.00003884500025856,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (681,693,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (682,694,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (683,695,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (684,585,28,NULL,0,0,5,NULL,0.0013675190621547,0.0013851327647486,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (685,696,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (686,697,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (687,698,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (688,418,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (689,506,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (690,699,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (691,700,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (692,462,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (693,701,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (694,702,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (695,489,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (696,438,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (697,508,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (698,703,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (699,704,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (700,705,158,NULL,0,0,0.1,NULL,0.00000235999999488,0.00000242999999744,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (701,706,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (702,707,180,1424796518,1425127974,0,4,NULL,0.0000012,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (703,708,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (704,709,291,NULL,0,0,0.1,NULL,0.00000081,0.00000082999999994266,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (705,710,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (706,411,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (707,257,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (708,587,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (709,442,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (711,712,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (712,713,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (713,714,130,1431862314,1432384426,0,0.1,NULL,0.000001,0.0000010148003200059,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (714,515,448,1434260080,1434264293,0,0.1,NULL,0.0000015600000255999,0.0000015750000128,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (715,715,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (716,716,27,1431057041,1431070644,0,0.8,NULL,0.000028677583837117,0.000028843440243669,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (717,717,203,NULL,1430593865,0,0.02,NULL,0.000060592930530381,0.000062540717803783,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (718,485,133,1433969265,1433975437,0,0.01,NULL,0.0096798735495102,0.0098394480624909,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (719,718,201,NULL,1431794593,0,0.1,NULL,0.00000022,0.000000225,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (720,422,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (721,525,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (722,290,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (723,455,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (724,440,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (725,430,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (726,510,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (727,445,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (728,511,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (729,719,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (730,720,115,NULL,1434523926,0,0.1,NULL,0.0000015000000099337,0.0000015250000096319,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (731,721,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (732,591,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (733,409,466,NULL,0,0,0.1,NULL,0.00221338,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (734,268,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (735,476,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (736,470,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (737,722,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (738,723,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (739,724,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (740,725,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (741,478,85,1434512992,1434522334,0,0.3,NULL,0.000013209228799166,0.000013355489584811,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (742,726,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (743,727,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (744,728,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (745,729,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (746,730,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (747,731,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (748,732,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (749,425,206,1431864148,1431865569,0,0.1,NULL,0.00000005,0.000000055,NULL,'','cryptsy','LTC');
INSERT INTO `markets` VALUES (750,733,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (751,734,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (752,735,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (753,736,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (755,573,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (756,737,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (757,738,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (758,739,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (759,740,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (760,575,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (761,741,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (762,742,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (763,743,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (764,744,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (765,745,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (766,746,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (767,747,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (768,319,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (770,522,NULL,NULL,1434524749,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (771,523,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (773,524,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (774,525,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (775,240,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (778,244,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (780,373,NULL,1431646907,1431792579,0,0.2,NULL,0,0.00000066999846051791,NULL,'Wallet to be removed on 6/5.  Please withdraw all funds immediately.','bittrex',NULL);
INSERT INTO `markets` VALUES (782,257,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (783,260,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (786,529,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (787,530,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (789,265,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (790,270,NULL,1419454397,1419509525,0,0.2,NULL,0.00006025,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (792,532,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (794,273,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (797,306,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (798,247,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (799,533,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (804,309,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (810,541,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (812,320,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (813,327,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (814,330,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (815,363,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (816,335,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (818,323,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (819,338,NULL,NULL,1434524749,0,0.2,NULL,0.00000003,0.000000035,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (820,544,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (824,251,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (826,354,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (827,547,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (830,361,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (833,364,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (837,301,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (838,550,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (839,295,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (842,382,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (843,388,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (844,391,NULL,1427815850,1427828348,0,0.2,NULL,0.00001142,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (845,387,NULL,1420824179,1420898418,0,0.2,NULL,0.00000007,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (847,402,NULL,1420224026,1420248127,0,0.2,NULL,0.00000691,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (848,410,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (849,385,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (850,412,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (851,409,NULL,NULL,0,0,0.002,NULL,0.00224601,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (852,415,NULL,NULL,1436109967,0,0.002,NULL,0.00011007760123274,0.00011628685918144,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (853,416,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (857,268,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (860,596,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (861,752,NULL,1426219841,1426401291,0,0.2,NULL,0.00000005,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (862,753,NULL,1431737811,1434524746,0,0.2,NULL,0,0.0000017150000061396,NULL,'Wallet to be removed on 6/5.  Please withdraw all funds immediately.','bittrex',NULL);
INSERT INTO `markets` VALUES (868,757,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (870,758,NULL,1431865122,1431865560,0,0.2,NULL,0,0.00000028488812799181,NULL,'Wallet to be removed on 6/5.  Please withdraw all funds immediately.','bittrex',NULL);
INSERT INTO `markets` VALUES (871,413,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (875,760,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (876,760,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (877,760,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (878,761,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (881,764,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (882,765,NULL,NULL,0,0,NULL,NULL,0.000003,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (885,768,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (886,767,NULL,NULL,1421263146,0,0.2,NULL,0.00005313,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (887,769,NULL,1421419096,1421420072,0,0.2,NULL,0.00009004,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (889,770,NULL,1424855458,1424859403,0,0.2,NULL,0.00000048,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (892,686,NULL,1434414916,1434500156,0,0.2,NULL,0.00000060000000512,0.00000060500000512001,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (893,773,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (894,766,NULL,NULL,0,0,0.2,NULL,0.00000751,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (896,775,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (897,776,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (898,777,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (899,710,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (900,778,NULL,NULL,1436109223,0,NULL,NULL,0.00029001,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (901,327,NULL,NULL,1436109223,0,NULL,NULL,0.00000031,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (902,779,NULL,NULL,1436109223,0,NULL,NULL,0.00000023,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (903,780,NULL,NULL,1436109223,0,NULL,NULL,0.00000029,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (905,450,NULL,NULL,1436109223,0,NULL,NULL,0.00009326,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (906,781,NULL,NULL,1436109223,0,NULL,NULL,0.00000009,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (907,782,NULL,NULL,1436109223,0,NULL,NULL,0.00000026,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (909,760,NULL,NULL,1436109223,0,NULL,NULL,0.00006821,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (910,320,NULL,NULL,1436109223,0,NULL,NULL,0.00009976,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (912,398,NULL,NULL,1436109223,0,NULL,NULL,0.00008187,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (913,371,NULL,NULL,1436109223,0,NULL,NULL,0.00002025,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (914,512,NULL,NULL,1436109223,0,NULL,NULL,0.00000155,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (915,783,NULL,NULL,1436109223,0,NULL,NULL,0.00000151,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (916,452,NULL,NULL,1436109223,0,NULL,NULL,0.00004174,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (917,784,NULL,NULL,1436109223,0,NULL,NULL,0.00002321,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (918,785,NULL,NULL,1436109223,0,NULL,NULL,0.00005055,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (920,413,NULL,NULL,1436109223,0,NULL,NULL,0.00663315,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (921,786,NULL,NULL,1436109223,0,NULL,NULL,0.00017972,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (923,441,NULL,NULL,1436109223,0,NULL,NULL,0.000031,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (924,788,NULL,NULL,1436109223,0,NULL,NULL,0.00000043,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (925,789,NULL,NULL,1436109223,0,NULL,NULL,0,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (926,146,NULL,NULL,1423352890,0,NULL,NULL,0.00000070000000512,0.00000070500000512,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (928,790,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (929,596,NULL,NULL,1436109223,0,NULL,NULL,0.00000054,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (930,356,NULL,1428451866,1436109223,0,NULL,NULL,0.0000018799999987712,0.0000019349999993856,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (931,507,NULL,NULL,1436109223,0,NULL,NULL,0.00066038,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (932,791,NULL,NULL,1436109223,0,NULL,NULL,0.00000048,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (933,660,NULL,NULL,1436109223,0,NULL,NULL,0.00000083,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (934,661,NULL,NULL,1436109223,0,NULL,NULL,0.00001799,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (935,792,NULL,NULL,1436109223,0,NULL,NULL,0.00000206,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (937,794,NULL,NULL,1436109223,0,NULL,NULL,0.00005403,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (940,795,NULL,NULL,1436109223,0,NULL,NULL,0.3,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (942,796,NULL,NULL,1436109223,0,NULL,NULL,0.000001209199993856,0.000001279599995392,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (943,797,NULL,NULL,1436109223,0,NULL,NULL,0.00000003,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (945,312,NULL,NULL,1436109223,0,NULL,NULL,0.00000133,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (946,798,NULL,NULL,1436109223,0,NULL,NULL,0.00000115,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (948,799,NULL,NULL,1436109223,0,NULL,NULL,0.00012674,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (949,800,NULL,NULL,1436109223,0,NULL,NULL,0.00000058,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (950,155,NULL,NULL,0,0,NULL,NULL,0.02049031911929,0.020613860350444,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (951,801,NULL,NULL,1436109223,0,NULL,NULL,0.00008689,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (952,802,NULL,NULL,1436109223,0,NULL,NULL,0.00000082,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (953,803,NULL,NULL,1436109223,0,NULL,NULL,0.00001743,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (954,574,NULL,NULL,1436109223,0,NULL,NULL,0.00000005,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (955,804,NULL,NULL,1436109223,0,NULL,NULL,0.00000477,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (956,805,NULL,NULL,1436109223,0,NULL,NULL,0.000049,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (958,806,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (959,807,NULL,NULL,1436109223,0,NULL,NULL,0.00000083,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (960,607,NULL,NULL,1436109223,0,NULL,NULL,0.00620761,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (961,421,NULL,1428642406,1436109223,0,NULL,NULL,0.00000026000000491684,0.00000027000000245514,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (962,439,NULL,NULL,1436109223,0,NULL,NULL,0.00004799,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (963,475,NULL,NULL,1436109223,0,NULL,NULL,0.00002104,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (964,808,NULL,NULL,1436109223,0,NULL,NULL,0.0041996,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (965,502,NULL,1432803047,1436109223,0,NULL,NULL,0.00002057648,0.00002226828,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (966,577,NULL,NULL,1436109223,0,NULL,NULL,0.00142,0.001435,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (967,431,NULL,1425472701,1436109223,0,NULL,NULL,0.00000008,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (968,154,NULL,NULL,1436109223,0,NULL,NULL,0.00004531,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (969,809,NULL,NULL,1436109223,0,NULL,NULL,0.00017201,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (971,810,NULL,NULL,1436109223,0,NULL,NULL,0.00006005,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (972,523,NULL,NULL,1436109223,0,NULL,NULL,0.00002292,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (973,811,NULL,NULL,1436109223,0,NULL,NULL,0.00000009,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (974,487,NULL,NULL,1436109223,0,NULL,NULL,0.00000036,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (975,142,NULL,1428641263,1436109223,0,NULL,NULL,0.000004739984256,0.000004774992192,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (976,585,NULL,NULL,1436109223,0,NULL,NULL,0.0013156711733939,0.0013469972641435,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (977,812,NULL,NULL,1436109223,0,NULL,NULL,0.00000087,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (978,697,NULL,NULL,1436109223,0,NULL,NULL,0.00000089,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (979,314,NULL,NULL,1436109223,0,NULL,NULL,0.00012501,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (980,469,NULL,NULL,1436109223,0,NULL,NULL,0.000015580736714752,0.000015914622434849,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (981,153,NULL,NULL,1436109223,0,NULL,NULL,0.00001298,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (982,418,NULL,NULL,1436109223,0,NULL,NULL,0.00000005,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (983,813,NULL,NULL,1436109223,0,NULL,NULL,0.0000124,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (985,704,NULL,NULL,1436109223,0,NULL,NULL,0.00000064,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (986,814,NULL,NULL,1436109223,0,NULL,NULL,0.00006407,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (987,815,NULL,NULL,1436109223,0,NULL,NULL,0.000013,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (989,499,NULL,NULL,1436109223,0,NULL,NULL,0.000003,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (991,817,NULL,NULL,1436109223,0,NULL,NULL,0.00004681,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (992,442,NULL,NULL,1436109223,0,NULL,NULL,0.3122371,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (993,390,NULL,1423703964,1436109223,0,NULL,NULL,0.00000163,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (995,758,NULL,1428678829,1436109223,0,NULL,NULL,0.00000040015744,0.0000004051970903145,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (996,389,NULL,1423660863,1436109223,0,NULL,NULL,0.00001301,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (997,818,NULL,NULL,1436109223,0,NULL,NULL,0.010802,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (998,77,NULL,NULL,1436109223,0,NULL,NULL,0.00045,0.00045552478984929,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (999,374,NULL,1422778258,1423598296,0,NULL,NULL,0.000040150000429505,0.000042421748986446,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1001,346,NULL,1428336986,1436210848,0,NULL,NULL,0.00032002200001536,0.00032500756559942,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1002,399,NULL,1428322427,1436109223,0,NULL,NULL,0.000047434337794536,0.000048237169242868,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1004,820,NULL,NULL,1436109223,0,NULL,NULL,0.0000351,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1005,821,NULL,NULL,1436109223,0,NULL,NULL,0.00117501,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1006,445,NULL,NULL,1436109223,0,NULL,NULL,0.00009802,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1007,822,NULL,NULL,1436109223,0,NULL,NULL,0.00000086,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1008,823,NULL,NULL,1436109223,0,NULL,NULL,0.00000069,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1009,824,NULL,NULL,1436109223,0,NULL,NULL,0.00430013,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1011,463,NULL,NULL,1436109223,0,NULL,NULL,0.00000031,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1012,825,NULL,NULL,1436109223,0,NULL,NULL,0.00010006,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1013,251,NULL,NULL,1436109224,0,NULL,NULL,0.00009012,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1014,457,NULL,NULL,1436109224,0,NULL,NULL,0.00339875,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1015,591,NULL,NULL,1436109224,0,NULL,NULL,0.00008556,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1016,268,NULL,NULL,1436109224,0,NULL,NULL,0.00003583,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1017,476,NULL,NULL,1436109224,0,NULL,NULL,0.00001556,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1018,826,NULL,NULL,1436109224,0,NULL,NULL,0.00390001,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1019,827,NULL,NULL,1436109224,0,NULL,NULL,0.00000001,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1023,830,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1030,837,NULL,NULL,1436109224,0,NULL,NULL,0.00000251,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1031,838,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1033,839,NULL,1422894873,1422895044,0,0.02,NULL,0.00000815,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1036,798,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1040,844,NULL,1434510428,1434518266,0,NULL,NULL,0.000123,0.000123985,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1041,845,NULL,NULL,1436109223,0,NULL,NULL,0.00795404,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1044,406,NULL,1428611245,1436109223,0,NULL,NULL,0.0000002380001282048,0.00000024900005427203,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1045,848,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1046,847,NULL,1424831798,1424833376,0,0.2,NULL,0.000002,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1047,849,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1048,824,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1049,850,NULL,NULL,1429477848,0,0.2,NULL,0,0.00000086907942754903,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1050,607,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1051,814,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1054,852,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1056,854,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1058,856,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1059,768,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1060,415,NULL,NULL,1436109223,0,NULL,NULL,0.00011023,0.00012022318903989,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1061,857,NULL,NULL,0,0,NULL,NULL,0.00000001,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1064,859,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1065,717,NULL,NULL,0,0,NULL,NULL,0.000014660000005159,0.00008507500000258,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1069,770,471,1424854056,1424873645,0,0.1,NULL,0.00000048,NULL,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1070,860,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1071,854,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1073,839,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1074,415,469,NULL,0,0,0.1,NULL,0.00012001,0.0001283,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1075,561,470,NULL,1434516584,0,0.1,NULL,0.000000050000128,0.000000055000128,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1076,862,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1077,859,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1078,846,NULL,1428667309,1436109223,0,NULL,NULL,0.00008102,0.000083927483969689,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1080,601,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1081,864,NULL,NULL,1436109965,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1082,561,NULL,1433930064,1433931225,0,0.2,NULL,0.00000005,0.000000055,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1083,846,NULL,NULL,1434524746,0,0.002,NULL,0.00008287,0.000084605,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1085,866,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1088,869,NULL,NULL,1436109223,0,NULL,NULL,0.00001303,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1090,791,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1097,868,NULL,NULL,1424963698,0,0.2,NULL,0.00000894,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1098,873,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1099,794,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1102,601,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1105,876,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1106,877,473,NULL,0,0,0.1,NULL,0.0000961799412031,0.000096714970588024,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1107,877,NULL,1436116110,1436117201,0,0.002,NULL,0.000093245835891627,0.000096592917945813,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1108,878,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1110,877,NULL,NULL,0,0,0.1,NULL,0.000095,0.000097495,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1111,876,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1115,871,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1117,880,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1119,417,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1121,364,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1122,417,NULL,NULL,1436109223,0,NULL,NULL,0.00000353,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1123,881,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1125,883,NULL,1426643038,1434524746,0,0.2,NULL,0.0000026,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1126,884,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1131,885,NULL,NULL,0,0,2,NULL,0.00000005,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1132,887,NULL,1434524349,1434515781,0,0.2,NULL,0.0000090099968,0.0000099198192002151,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1135,889,NULL,NULL,0,0,NULL,NULL,0.00000235,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1140,893,NULL,NULL,0,0,0.03,NULL,0.012545518431804,0.013450249215915,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1141,893,155,1434380602,1434384273,0,0.4,NULL,0.013573221474857,0.013608748125659,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1142,890,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1143,894,NULL,NULL,0,0,2,NULL,0.00000002,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1144,893,NULL,1428665177,1436109223,0,NULL,NULL,0.013697180352928,0.013790171437065,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1145,893,NULL,NULL,0,0,NULL,NULL,0.011229984576,0.01311578732,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1148,893,NULL,1434802685,1436109965,0,0.002,NULL,0.013519836159622,0.013608729584541,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1149,865,NULL,NULL,0,0,NULL,NULL,0.000001,0.000005,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1153,900,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1154,901,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1156,903,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1158,333,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1162,907,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1164,808,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1165,898,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1167,910,NULL,NULL,0,0,NULL,NULL,0.00000417,0.00000558,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1168,911,NULL,1431689663,1433110596,0,NULL,NULL,0.0000000579999991808,0.00000021000006346342,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1170,910,NULL,NULL,1428935543,0,0.02,NULL,0.0000042,0.000004235,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1172,874,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1173,913,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1174,155,NULL,NULL,0,0,NULL,NULL,0.02,0.029450080000041,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1175,577,NULL,NULL,0,0,NULL,NULL,0.00002101,0.001060505,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1176,585,NULL,NULL,0,0,NULL,NULL,0.0008,0.00105,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1177,893,NULL,NULL,0,0,NULL,NULL,0.01080004992,0.01276997496,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1178,146,NULL,NULL,0,0,NULL,NULL,0.00000069,0.00000070003999999997,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1179,544,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1180,104,NULL,NULL,0,0,NULL,NULL,0.00001603,0.000020465,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1181,77,NULL,NULL,0,0,NULL,NULL,0.00000001,0.044940005,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1182,523,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1183,374,NULL,NULL,0,0,NULL,NULL,0.00000001,0.000050005,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1184,489,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1185,190,NULL,NULL,0,0,NULL,NULL,0.0002222132096,0.0004411258048,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1186,354,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1187,346,NULL,NULL,0,0,NULL,NULL,0.00000001,0.025000005,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1188,306,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1189,240,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1190,547,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1191,466,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1192,409,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1193,897,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1194,914,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1195,915,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1196,881,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1197,908,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1198,916,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1199,894,NULL,NULL,0,0,NULL,NULL,0.00000004,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1200,917,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1201,918,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1202,919,NULL,NULL,0,0,NULL,NULL,0.000125,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1203,885,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1204,920,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1205,921,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1206,922,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1207,923,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1208,493,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1209,868,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1210,867,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1211,875,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1212,854,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1213,876,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1215,889,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1216,852,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1217,924,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1218,891,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1219,899,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1220,387,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1221,413,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1222,925,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1223,907,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1224,911,NULL,1429824397,1434524792,0,NULL,NULL,0.00000001,0.00000008,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1225,926,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1226,154,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1227,418,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1228,910,NULL,NULL,0,0,NULL,NULL,0.00000361,0.00000443,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1229,333,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1231,892,NULL,NULL,0,0,NULL,NULL,0.00000006,0.00000021,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1232,927,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1233,928,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1234,890,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1235,895,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1236,896,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1237,929,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1238,930,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1239,906,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1240,931,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1241,932,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1242,606,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1243,583,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1244,385,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1245,383,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1246,764,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1247,933,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1248,765,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1250,767,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1251,433,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1252,747,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1253,772,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1254,410,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1255,475,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1256,416,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1257,766,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1258,771,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1259,390,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1260,713,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1261,759,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1262,530,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1263,762,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1264,934,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1265,935,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1266,756,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1267,844,NULL,1431437814,1431543768,0,NULL,NULL,0.00012399999999995,0.00014099999999997,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1268,846,NULL,NULL,0,0,NULL,NULL,0.00000501,0.000502505,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1269,406,NULL,NULL,0,0,NULL,NULL,0.00000007,0.00000022,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1270,847,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1271,723,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1272,453,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1273,849,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1274,187,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1275,936,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1276,561,NULL,NULL,0,0,NULL,NULL,0.00000005,0.00000006,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1277,855,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1278,905,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1279,382,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1280,769,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1281,361,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1282,937,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1283,831,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1284,938,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1285,516,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1286,828,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1288,835,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1289,857,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1290,939,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1291,940,NULL,NULL,0,0,NULL,NULL,0.00035,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1292,940,NULL,NULL,0,0,NULL,NULL,0.000375,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1293,941,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1294,942,NULL,NULL,0,0,NULL,NULL,0.00001152,0.000019760000002228,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1295,910,482,NULL,0,0,0.1,NULL,0.0000037799991808026,0.000004135001190406,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1296,393,479,1434488679,1434505880,0,0.1,NULL,0.00061009031981396,0.00062552020036829,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1297,190,480,1434802586,1434524764,0,0.1,NULL,0.00040186853010499,0.00041237059335707,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1298,769,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1299,940,NULL,1428985738,1428986353,0,0.02,NULL,0.00043,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1301,880,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1302,913,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1303,944,NULL,1431863233,1434524790,0,NULL,NULL,0.00000003,0.000000037,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1305,479,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1306,941,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1307,945,NULL,1431022850,1431865590,0,NULL,NULL,0.00000004,0.000000385,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1308,260,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1310,890,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1311,940,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1312,873,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1313,946,NULL,NULL,0,0,NULL,NULL,0.00000102,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1317,947,NULL,1432922842,1432923331,0,NULL,NULL,0.000024999980794059,0.00002999999065303,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1319,949,NULL,NULL,0,0,NULL,NULL,0.00000072,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1320,948,NULL,NULL,0,0,NULL,NULL,0.00150002,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1321,950,NULL,NULL,0,0,NULL,NULL,0.000003000000768,0.000006435000384,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1322,951,NULL,1431791086,1431865591,0,NULL,NULL,0.000375,0.000587495,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1323,948,NULL,NULL,1429408966,0,0.002,NULL,0.0025348,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1324,413,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1325,952,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1326,953,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1328,955,NULL,NULL,0,0,NULL,NULL,0.000064724761599959,0.000087336612802471,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1329,955,NULL,NULL,0,0,NULL,NULL,0.0000806,0.00010280367994982,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1330,956,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1332,948,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1333,955,488,1429580440,1429582256,0,0.1,NULL,0.000063476712499231,0.000075083574739456,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1334,957,487,NULL,0,0,0.1,NULL,0.0007480288,0.0007828128,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1335,952,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1336,955,NULL,1429590816,1429591388,0,0.02,NULL,0.000073249441894186,0.000076650649519521,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1337,711,166,1431793179,1431793651,0,60,NULL,0.00000004,0.000000045,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1341,957,NULL,NULL,0,0,NULL,NULL,0.0007200096,0.0008832048,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1342,957,NULL,NULL,0,0,0.002,NULL,0.000749168,0.000792856,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1343,956,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1344,959,NULL,NULL,0,0,0.2,NULL,0.00000026,0.000000265160002048,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1345,959,200,NULL,0,0,0.3,NULL,0.00000027,0.00000027500000002048,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1346,959,NULL,NULL,0,0,NULL,NULL,0.00000026,0.00000027,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1347,960,NULL,NULL,0,0,NULL,NULL,0,0.00000028488812799181,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1349,960,NULL,NULL,0,0,NULL,NULL,0.00000040015744,0.0000004051970903145,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1350,961,NULL,NULL,0,0,NULL,NULL,0.00000040015744,0.0000004051970903145,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1355,963,NULL,1429738252,1429764366,0,NULL,NULL,0.00000356,0.000026769999999999,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1356,964,NULL,1430523537,1430525338,0,NULL,NULL,0.00000449,0.000006245,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1357,965,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1358,963,NULL,NULL,0,0,NULL,NULL,0.00001112,0.00002306,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1359,966,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1360,912,490,NULL,0,0,0.1,NULL,0.000035459999384617,0.000042729999692298,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1361,965,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1362,881,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptsy',NULL);
INSERT INTO `markets` VALUES (1363,949,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1364,965,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1365,967,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1366,968,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1367,969,NULL,1431862329,1431865593,0,NULL,NULL,0.00000001,0.000000015,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1368,970,NULL,1430009999,1434524790,0,NULL,NULL,0.00007004,0.000094539991971185,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1369,963,NULL,NULL,1430500006,0,0.002,NULL,0.00002201,0.000029815400906776,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1370,886,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1372,969,NULL,1431674818,1431864759,0,NULL,NULL,0.00000001,0.00000002,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1373,489,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1378,947,NULL,1434524349,1434523102,0,0.2,NULL,0.000030087398506694,0.000032915158984526,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1379,966,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1382,974,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1383,975,NULL,NULL,0,0,NULL,NULL,0.00002889,0.000033188307987195,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1384,976,NULL,NULL,0,0,NULL,NULL,0.000022948355197672,0.000027343501202712,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1385,976,NULL,1430172183,1430195149,0,NULL,NULL,0.00001204,0.000017019600332512,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1387,970,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1391,978,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1392,979,NULL,NULL,0,0,NULL,NULL,0.000047039577440256,0.000050000827872484,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1393,980,NULL,1431862329,1431864637,0,NULL,NULL,0.00000002,0.000000025,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1394,710,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1397,981,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1398,982,NULL,NULL,0,0,NULL,NULL,0.0000756813882567,0.000087830675289554,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1399,912,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1400,978,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1401,982,NULL,NULL,0,0,NULL,NULL,0.00005601,0.000083010008512826,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1402,983,NULL,NULL,1430399777,0,NULL,NULL,0.00000075,0.0000011251999913779,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1403,982,NULL,NULL,0,0,0.002,NULL,0.00007514364051834,0.000077670603844411,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1404,976,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1405,984,NULL,NULL,0,0,NULL,NULL,0.000010107136075722,0.000012935215352952,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1406,985,NULL,NULL,0,0,NULL,NULL,0.0000031,0.0000058253568,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1407,986,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1408,651,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1409,987,NULL,1431118034,1434524790,0,NULL,NULL,0.00000094,0.00000522,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1410,988,NULL,1430606422,1430608238,0,NULL,NULL,0.00002275,0.000025757345030349,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1411,964,NULL,NULL,1431273019,0,0.02,NULL,0.00000443,0.0000051004000384049,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1412,989,NULL,1430766213,1430766922,0,NULL,NULL,0.00010715592201238,0.0001085257950553,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1413,964,NULL,NULL,0,0,NULL,NULL,0.000004,0.0000065,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1414,990,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1416,991,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1419,766,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1420,987,NULL,1432830840,1432831308,0,NULL,NULL,0.00000221,0.000005825,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1460,988,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1462,992,NULL,1431863234,1431864747,0,NULL,NULL,0.00000051,0.0000007500064,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1476,990,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1478,994,NULL,1431146575,1434524790,0,NULL,NULL,0.00015005,0.000275025,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1479,995,NULL,NULL,1430851096,0,NULL,NULL,0.00002708,0.000028340605508011,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1480,994,NULL,1431162519,1431199867,0,NULL,NULL,0.000152040049408,0.00023597424805245,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1481,996,NULL,NULL,0,0,NULL,NULL,0.00000009,0.000000365,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1482,997,NULL,1430893619,1430894261,0,NULL,NULL,0.00007,0.000083897050548957,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1483,998,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1484,999,NULL,1431862331,1434524790,0,NULL,NULL,0.00000081,0.0000012000000000002,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1485,1000,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1486,995,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1487,999,NULL,NULL,0,0,NULL,NULL,0.0000008,0.000001595,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1488,997,NULL,NULL,0,0,NULL,NULL,0.000046664502159251,0.000072677331346888,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1489,989,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1492,1001,NULL,1431794102,1431865593,0,NULL,NULL,0.00001501,0.00001551,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1493,1002,NULL,1431515422,1433842992,0,NULL,NULL,0,0.000000005,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1494,1003,NULL,NULL,0,0,NULL,NULL,0.00000055,0.00000066995712,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1495,1004,NULL,NULL,1434177512,0,NULL,NULL,0.00000505089536,0.000015713036800639,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1496,1005,NULL,NULL,1431864782,0,NULL,NULL,0.0000000799999744,0.0000000999839872,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1497,1006,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1500,1008,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1502,1009,NULL,1431488360,1432385898,0,0.002,NULL,0.000002887012658176,0.0000035985063424,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1503,1010,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1504,987,NULL,1434523509,1434524750,0,2,NULL,0.0000046390871703106,0.0000056951034645045,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1505,979,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1506,1010,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1507,1011,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1508,898,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1510,1012,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1511,1013,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1512,606,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1514,1014,NULL,1431862332,1431862800,0,0.02,NULL,0.00000035999936,0.00000038999968,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1515,1015,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1516,1016,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1517,1017,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1518,1018,NULL,NULL,0,0,NULL,NULL,0.0000004,0.00000132,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1520,1020,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1521,1015,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1522,1021,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1523,1022,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1524,994,NULL,NULL,0,0,0.00002,NULL,0.00020125459135386,0.00023030975907528,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1525,1010,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1527,1015,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1528,1020,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1529,486,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1530,1023,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1531,1024,NULL,NULL,0,0,NULL,NULL,0.00010003,0.00013901,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1532,1024,NULL,NULL,0,0,NULL,NULL,0.00015,0.000247495,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1534,1026,NULL,NULL,0,0,NULL,NULL,0.0000215,0.00002155,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1536,1019,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1537,453,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1538,998,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1539,1015,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1540,984,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1541,1026,NULL,NULL,0,0,0.02,NULL,0.00001031919999873,0.000012074606847447,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1542,1026,NULL,NULL,0,0,0.1,NULL,0.00001305,0.00002414752672,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1543,1028,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1544,1029,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1545,1030,NULL,NULL,0,0,0.1,NULL,0.00000467,0.000010085,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1547,859,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1548,1032,NULL,NULL,0,0,0.1,NULL,0.00000254,0.00045752,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1549,1033,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1550,1022,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1551,1012,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1552,1034,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1553,940,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1554,998,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1555,1026,NULL,NULL,0,0,NULL,NULL,0.0000103,0.000015115,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1556,407,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1557,1029,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1558,1030,NULL,NULL,0,0,NULL,NULL,0.0000099712,0.000013025808090134,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1559,1001,NULL,1433273753,1433276651,0,NULL,NULL,0.00001103,0.000016505,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1560,1035,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1561,1012,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1563,432,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1564,1037,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1565,1030,NULL,NULL,0,0,NULL,NULL,0.00000601,0.00001115008188177,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1566,1029,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1567,1034,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1568,1038,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1569,1039,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1570,1032,NULL,NULL,0,0,NULL,NULL,0.000002,0.0000032942000021914,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1571,1040,NULL,NULL,0,0,NULL,NULL,0.00000015,0.0000010750544,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1572,1041,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1573,1033,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1574,1040,NULL,1434042045,1434523109,0,0.02,NULL,0.00000143,0.000001505120008192,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1575,1042,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1576,961,NULL,NULL,0,0,NULL,NULL,0,0.00000028488812799181,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1580,364,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1581,571,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1582,1043,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1583,1031,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1584,1034,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1586,1024,NULL,NULL,0,0,0.0002,NULL,0.00012301999999982,0.00015841597763673,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1588,1044,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1589,844,NULL,NULL,1434475894,0,0.1,NULL,0.00012051000000013,0.00012275500000007,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1590,854,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1591,570,NULL,NULL,1434524778,0,0.1,NULL,0,0.000000005,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1592,1045,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1593,1033,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1594,989,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1595,346,NULL,NULL,0,0,0.1,NULL,0.000201256,0.00027944799499264,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1596,1046,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1597,1047,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1598,440,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1599,1048,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1600,1049,NULL,NULL,0,0,NULL,NULL,0.00001602,0.000047935008000008,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1601,1050,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1602,1047,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1603,947,NULL,NULL,0,0,0.1,NULL,0.0000308099968,0.0000634949984,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1604,1031,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1605,1051,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1606,1052,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1607,1053,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1608,1054,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1609,1049,NULL,NULL,1433342202,0,NULL,NULL,0.000018993599998155,0.000024391800000717,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1610,1055,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1611,516,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1612,1056,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1613,949,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1614,1046,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1616,1057,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1617,299,NULL,1436220598,1436296102,0,0.2,NULL,0.00000029,0.0000003,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1618,1047,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1619,1001,NULL,NULL,0,0,0.02,NULL,0.0000131591936,0.000014790172232729,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1620,1058,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1621,247,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1622,1059,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1623,1060,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1624,1061,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1625,1062,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1626,1063,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1627,1064,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1628,1065,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1629,753,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1630,1046,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1631,1066,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1632,1067,NULL,1433941645,1433942145,0,NULL,NULL,0.0000031457500004168,0.0000034178738840484,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1633,1068,NULL,1433781998,1433782550,0,NULL,NULL,0.00000986,0.000011410026560414,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1634,1069,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1635,419,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1636,1070,NULL,1433884061,1433888487,0,NULL,NULL,0.00000007,0.0000000952,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1637,1071,NULL,1433877405,1433883675,0,NULL,NULL,0.00001002,0.00001974,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1638,1072,NULL,NULL,1434524792,0,NULL,NULL,0.00000002,0.000000074999999993446,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1639,1068,NULL,NULL,0,0,NULL,NULL,0.0000078179999999917,0.0000099790044864061,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1640,1073,NULL,1434097936,1434098402,0,NULL,NULL,0.0000055,0.000007245,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1641,1073,NULL,1434066240,1434099284,0,0.1,NULL,0.00000121,0.000015595000000004,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1642,1068,NULL,NULL,0,0,0.1,NULL,0.0000080199999997952,0.00001396000001321,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1643,1069,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1644,1069,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1645,1067,NULL,NULL,0,0,0.1,NULL,0.00000118,0.00000559,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1646,1060,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1647,1060,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1648,1070,NULL,NULL,1434524778,0,0.1,NULL,0.00000006,0.00000007,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1649,1030,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1650,1071,NULL,1434516929,1434523099,0,0.002,NULL,0.000030971599942451,0.000037941389558406,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1652,347,189,1434477823,1434522311,0,70,NULL,0.00000075000000000001,0.00000075500000000001,NULL,'','cryptsy',NULL);
INSERT INTO `markets` VALUES (1653,1074,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1654,1075,NULL,NULL,0,0,NULL,NULL,0.00000018,0.0000000864,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1656,1076,NULL,NULL,0,NULL,NULL,NULL,3.3915,3.585,NULL,NULL,'jubi',NULL);
INSERT INTO `markets` VALUES (1657,1077,NULL,NULL,1434524790,0,NULL,NULL,0.00000015,0.00000029,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1658,1069,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1660,1079,NULL,NULL,1434524817,0,NULL,NULL,0.00000054,0.000000745,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1661,874,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1662,1080,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1663,1081,NULL,NULL,0,0,NULL,NULL,0.00000488,0.00010244,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1664,1082,NULL,NULL,1434524028,0,NULL,NULL,0.000015008333313645,0.000020689166641688,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1665,1060,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1666,1083,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1667,1079,NULL,NULL,0,0,NULL,NULL,0.00000027,0.00000051000000000082,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1668,1084,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1669,1085,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1670,1000,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1671,1086,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1672,563,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1673,1087,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1674,1088,NULL,NULL,0,0,NULL,NULL,0.00000004,0.00000005,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1675,1089,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1676,1090,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1677,1064,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1678,713,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1679,1091,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1680,1083,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1681,1083,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1682,1090,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1683,1092,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1684,1093,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1685,1094,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1686,335,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1687,1095,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1688,1096,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1689,1097,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1690,1098,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1691,488,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1692,719,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1693,1093,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1694,1099,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1695,1100,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1696,1101,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1697,1102,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1698,1103,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1699,1104,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1700,1105,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1701,1106,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1702,1107,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1703,1108,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1704,1109,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1705,1110,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1706,1111,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1707,1112,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1708,1092,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1709,1113,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1710,1097,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1711,616,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1712,1114,2082,NULL,0,0,NULL,NULL,0.0000013327999999985,0.0000021799999999992,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1714,1094,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1715,1117,NULL,NULL,0,0,NULL,NULL,0.00001608,0.00001608,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1716,1096,NULL,NULL,1436109223,0,NULL,NULL,NULL,NULL,NULL,NULL,'poloniex',NULL);
INSERT INTO `markets` VALUES (1776,1181,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1777,155,NULL,NULL,0,0,NULL,NULL,0.018424979999502,0.019280498361752,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1778,146,NULL,NULL,0,0,NULL,NULL,0.0000006762784,0.00000070004,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1779,347,NULL,NULL,0,0,NULL,NULL,0.000000588,0.0000003,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1780,142,NULL,NULL,0,0,NULL,NULL,0.0000049293999999999,0.000005415,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1782,1182,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1783,1183,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1784,418,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1785,1184,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1786,570,NULL,NULL,0,0,NULL,NULL,0,0.000000005,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1787,406,NULL,NULL,0,0,NULL,NULL,0.00000021559987496006,0.00000023499993620454,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1789,770,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1790,391,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1791,299,NULL,NULL,0,0,0.1,NULL,0.0000002156,0.000000505,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1792,1185,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1793,1186,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1795,369,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1796,587,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1797,771,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1798,251,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1799,743,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1800,933,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1801,765,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1803,1188,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1804,469,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1805,1189,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1806,1190,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1807,1009,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1808,949,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1809,836,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1810,568,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1811,846,NULL,NULL,0,0,NULL,NULL,0.000070559999999998,0.000084999999999999,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1812,516,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1813,588,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1814,1191,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1815,515,NULL,NULL,0,0,NULL,NULL,0.0000010486000002007,0.0000010750000124928,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1816,855,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1817,1192,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1818,1193,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1819,561,NULL,NULL,0,0,NULL,NULL,0.000000048999999999936,0.000000059999999999967,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1820,844,NULL,NULL,0,0,NULL,NULL,0.00009235519949824,0.000122069999744,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1821,1194,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1822,1195,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1823,1196,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1824,579,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1825,1197,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1826,1198,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1827,1199,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1828,1200,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1829,1201,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1830,576,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1831,849,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1832,326,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1833,565,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1834,1202,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1835,606,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1836,880,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1837,414,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1838,1203,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1839,601,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1840,416,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1841,815,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1842,494,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1843,670,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1844,307,NULL,NULL,0,0,NULL,NULL,0.0000008036,0.000125405,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1845,1204,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1846,747,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1847,1205,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1848,1206,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1849,485,NULL,NULL,0,0,NULL,NULL,0.0088200098,0.0095,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1850,811,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1851,191,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1852,934,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1853,1207,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1854,1208,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1855,944,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1856,951,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1857,1209,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1858,580,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1859,1210,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1860,1211,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1861,1212,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1862,1213,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1863,1214,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1864,830,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1865,948,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1866,1215,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1867,947,NULL,NULL,0,0,NULL,NULL,0.0000245294,0.000337515,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1868,885,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1869,439,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1870,530,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1871,312,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1872,650,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1873,1216,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1874,572,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1875,1217,NULL,NULL,0,0,NULL,NULL,0.0000002058,0.00000040499999999993,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1876,889,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1877,619,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1878,1218,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1879,394,NULL,NULL,0,0,NULL,NULL,0.0000147686,0.000117535,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1880,1076,NULL,NULL,0,0,NULL,NULL,0.0013936286,0.001561035,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1881,651,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1882,713,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1883,1219,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1884,586,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1885,1220,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1886,850,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1887,1221,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1888,1222,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1889,1223,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1890,1224,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1891,1110,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1892,764,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1893,1225,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1894,1226,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1895,1046,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1896,1227,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1897,1116,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1898,1228,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1899,844,NULL,NULL,0,0,NULL,NULL,0.000067,0.000067,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1900,889,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1901,479,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1902,1229,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1903,1230,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1904,639,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1905,933,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1906,319,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1907,1038,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1908,1231,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1909,910,NULL,NULL,0,0,NULL,NULL,0.00000617,0.00000617,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1910,146,NULL,NULL,0,0,NULL,NULL,0.00000065,0.00000065,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1911,1232,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1912,1233,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1913,964,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1914,524,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1915,1234,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1916,404,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1917,1235,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1918,599,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1919,662,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1920,1236,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1921,1197,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1922,1237,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1923,1039,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1924,567,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1925,1238,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1926,570,NULL,NULL,0,0,NULL,NULL,0.00000001,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1927,966,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1928,1239,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1929,885,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1930,155,NULL,NULL,0,0,NULL,NULL,0.019987200016,0.01200001,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1931,865,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1932,803,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1933,1240,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1934,475,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1935,577,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1936,1241,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1937,915,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1938,419,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1939,1242,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1940,1243,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1941,530,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1942,1244,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1943,585,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1944,1245,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1945,1076,NULL,NULL,0,0,NULL,NULL,0.0000001,0.0000001,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1946,411,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1947,1246,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1948,940,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1949,77,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1950,1247,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1951,363,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1952,1182,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1953,881,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1954,344,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1955,1248,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'alcurex',NULL);
INSERT INTO `markets` VALUES (1956,899,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1957,1249,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1958,885,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1959,1250,NULL,NULL,0,0,NULL,NULL,0.0000002,0.0000003,NULL,NULL,'bitex',NULL);
INSERT INTO `markets` VALUES (1960,1252,NULL,NULL,0,0,NULL,NULL,0.0000002,0.0000003,NULL,NULL,'bitex',NULL);
INSERT INTO `markets` VALUES (1961,1255,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1962,1251,NULL,NULL,0,0,NULL,NULL,0.0000002,0.0000003,NULL,NULL,'bitex',NULL);
INSERT INTO `markets` VALUES (1964,1257,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1965,1256,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'c-cex',NULL);
INSERT INTO `markets` VALUES (1966,1115,NULL,NULL,0,0,NULL,NULL,0.0000010780000000186,0.000003800000000021,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1967,1258,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1968,478,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bleutrade',NULL);
INSERT INTO `markets` VALUES (1969,1259,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1970,1260,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1971,308,NULL,NULL,0,0,NULL,NULL,0.000032398721599993,0.000046524959999997,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1972,1103,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'bittrex',NULL);
INSERT INTO `markets` VALUES (1973,467,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1974,1253,NULL,NULL,0,NULL,NULL,NULL,0.0000002,0.0000003,NULL,NULL,'bitex',NULL);
INSERT INTO `markets` VALUES (1975,570,458,NULL,0,0,0.1,NULL,0.00000033000959487967,0.00000034000294133727,NULL,'','cryptsy','LTC');
INSERT INTO `markets` VALUES (1976,788,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'yobit',NULL);
INSERT INTO `markets` VALUES (1977,1263,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1978,1264,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'cryptopia',NULL);
INSERT INTO `markets` VALUES (1979,1265,NULL,NULL,0,0,NULL,NULL,0.0000019399982028276,0.0000034200551040591,NULL,NULL,'c-cex',NULL);
/*!40000 ALTER TABLE `markets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mining`
--

DROP TABLE IF EXISTS `mining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mining` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usdbtc` double DEFAULT NULL,
  `last_monitor_exchange` int(11) DEFAULT NULL,
  `last_update_price` int(11) DEFAULT NULL,
  `last_payout` int(11) DEFAULT NULL,
  `stratumids` varchar(1024) DEFAULT NULL,
  `best_algo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mining`
--

LOCK TABLES `mining` WRITE;
/*!40000 ALTER TABLE `mining` DISABLE KEYS */;
INSERT INTO `mining` VALUES (1,293.16,1422830048,1422829644,1436648233,'','lyra2');
/*!40000 ALTER TABLE `mining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nicehash`
--

DROP TABLE IF EXISTS `nicehash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nicehash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `last_decrease` int(11) DEFAULT NULL,
  `algo` varchar(32) DEFAULT NULL,
  `btc` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `workers` int(11) DEFAULT NULL,
  `accepted` double DEFAULT NULL,
  `rejected` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nicehash`
--

LOCK TABLES `nicehash` WRITE;
/*!40000 ALTER TABLE `nicehash` DISABLE KEYS */;
INSERT INTO `nicehash` VALUES (1,0,NULL,NULL,'x11',NULL,NULL,NULL,0,0,0);
INSERT INTO `nicehash` VALUES (2,0,NULL,NULL,'scrypt',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `nicehash` VALUES (3,0,NULL,NULL,'sha256',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `nicehash` VALUES (4,0,NULL,NULL,'scryptn',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `nicehash` VALUES (5,0,NULL,NULL,'x13',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `nicehash` VALUES (6,0,NULL,NULL,'x15',NULL,NULL,NULL,0,0,0);
INSERT INTO `nicehash` VALUES (7,0,NULL,NULL,'nist5',NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `nicehash` VALUES (8,0,NULL,NULL,'neoscrypt',NULL,NULL,NULL,0,0,0);
INSERT INTO `nicehash` VALUES (9,0,NULL,NULL,'lyra2',NULL,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `nicehash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coinid` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `ask` double DEFAULT NULL,
  `bid` double DEFAULT NULL,
  `market` varchar(16) DEFAULT NULL,
  `uuid` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coinid` (`coinid`),
  KEY `created` (`created`),
  KEY `market` (`market`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payouts`
--

DROP TABLE IF EXISTS `payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `account_ids` varchar(1024) DEFAULT NULL,
  `time` int(11) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `amount` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `tx` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`,`completed`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payouts`
--

LOCK TABLES `payouts` WRITE;
/*!40000 ALTER TABLE `payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rawcoins`
--

DROP TABLE IF EXISTS `rawcoins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rawcoins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `symbol` varchar(32) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=656 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rawcoins`
--

LOCK TABLES `rawcoins` WRITE;
/*!40000 ALTER TABLE `rawcoins` DISABLE KEYS */;
INSERT INTO `rawcoins` VALUES (1,'Bitcoin','BTC',1);
INSERT INTO `rawcoins` VALUES (2,'Litecoin','LTC',1);
INSERT INTO `rawcoins` VALUES (3,'Dogecoin','DOGE',1);
INSERT INTO `rawcoins` VALUES (4,'Vertcoin','VTC',1);
INSERT INTO `rawcoins` VALUES (5,'ReddCoin','RDD',1);
INSERT INTO `rawcoins` VALUES (6,'NXT','NXT',1);
INSERT INTO `rawcoins` VALUES (7,'DarkCoin','DRK',1);
INSERT INTO `rawcoins` VALUES (8,'PotCoin','POT',1);
INSERT INTO `rawcoins` VALUES (9,'BlackCoin','BC',1);
INSERT INTO `rawcoins` VALUES (10,'MyriadCoin','MYR',1);
INSERT INTO `rawcoins` VALUES (12,'OctoCoin','888',1);
INSERT INTO `rawcoins` VALUES (15,'ElectronicGulden','EFL',1);
INSERT INTO `rawcoins` VALUES (16,'DimeCoin','DIME',1);
INSERT INTO `rawcoins` VALUES (17,'RotoCoin','RT2',0);
INSERT INTO `rawcoins` VALUES (18,'SolarCoin','SLR',1);
INSERT INTO `rawcoins` VALUES (21,'FlutterCoin ','FLT',0);
INSERT INTO `rawcoins` VALUES (23,'CryptoEscudoCoin','CESC',1);
INSERT INTO `rawcoins` VALUES (24,'PesetaCoin ','PTC',1);
INSERT INTO `rawcoins` VALUES (25,'IsraelCoin ','ISR',1);
INSERT INTO `rawcoins` VALUES (26,'CleanWaterCoin ','WATER',1);
INSERT INTO `rawcoins` VALUES (29,'GuldenCoin','NLG',1);
INSERT INTO `rawcoins` VALUES (30,'RubyCoin','RBY',1);
INSERT INTO `rawcoins` VALUES (31,'GiveCoin','GIVE',1);
INSERT INTO `rawcoins` VALUES (32,'WhiteCoin','WC',1);
INSERT INTO `rawcoins` VALUES (34,'MonaCoin','MONA',1);
INSERT INTO `rawcoins` VALUES (36,'NobleCoin','NOBL',1);
INSERT INTO `rawcoins` VALUES (37,'CinniCoin','CINNI',0);
INSERT INTO `rawcoins` VALUES (38,'BitStarCoin','BITS',1);
INSERT INTO `rawcoins` VALUES (39,'BlueCoin','BLU',1);
INSERT INTO `rawcoins` VALUES (40,'OrangeCoin','OC',1);
INSERT INTO `rawcoins` VALUES (42,'HempCoin','THC',1);
INSERT INTO `rawcoins` VALUES (46,'EnergyCoin','ENRG',1);
INSERT INTO `rawcoins` VALUES (47,'ShibeCoin','SHIBE',1);
INSERT INTO `rawcoins` VALUES (49,'SaffronCoin','SFR',1);
INSERT INTO `rawcoins` VALUES (53,'LibertyCoin','XLB',0);
INSERT INTO `rawcoins` VALUES (55,'NautilusCoin','NAUT',1);
INSERT INTO `rawcoins` VALUES (56,'VeriCoin','VRC',1);
INSERT INTO `rawcoins` VALUES (57,'CureCoin','CURE',1);
INSERT INTO `rawcoins` VALUES (60,'UroCoin','URO',1);
INSERT INTO `rawcoins` VALUES (62,'SyncCoin','SYNC',1);
INSERT INTO `rawcoins` VALUES (64,'BlakeCoin','BLC',1);
INSERT INTO `rawcoins` VALUES (66,'StabilitySharesXSI','XSI',1);
INSERT INTO `rawcoins` VALUES (67,'XCurrency','XC',1);
INSERT INTO `rawcoins` VALUES (68,'Dirac','XDQ',1);
INSERT INTO `rawcoins` VALUES (71,'GraniteCoin','GRN',1);
INSERT INTO `rawcoins` VALUES (73,'SuperCoin','SUPER',1);
INSERT INTO `rawcoins` VALUES (74,'JackpotCoin ','JPC',1);
INSERT INTO `rawcoins` VALUES (76,'Maieuticoin','MMXIV',1);
INSERT INTO `rawcoins` VALUES (77,'BoostCoin ','BOST',0);
INSERT INTO `rawcoins` VALUES (78,'CAIx','CAIX',1);
INSERT INTO `rawcoins` VALUES (81,'Boolberry','BBR',1);
INSERT INTO `rawcoins` VALUES (83,'Hyper','HYPER',1);
INSERT INTO `rawcoins` VALUES (84,'CannaCoin','CCN',1);
INSERT INTO `rawcoins` VALUES (90,'KryptKoin','KTK',1);
INSERT INTO `rawcoins` VALUES (91,'Mugatu','MUGA',1);
INSERT INTO `rawcoins` VALUES (93,'VootCoin','VOOT',1);
INSERT INTO `rawcoins` VALUES (94,'BankNote','BN',1);
INSERT INTO `rawcoins` VALUES (95,'Monero','XMR',1);
INSERT INTO `rawcoins` VALUES (96,'CloakCoin','CLOAK',1);
INSERT INTO `rawcoins` VALUES (100,'TalkCoin','TAC',1);
INSERT INTO `rawcoins` VALUES (103,'CHCCoin','CHCC',1);
INSERT INTO `rawcoins` VALUES (107,'GlyphCoin','GLYPH',0);
INSERT INTO `rawcoins` VALUES (109,'CoolCoin','COOL',0);
INSERT INTO `rawcoins` VALUES (110,'BurnerCoin','BURN',1);
INSERT INTO `rawcoins` VALUES (112,'CryptCoin','CRYPT',1);
INSERT INTO `rawcoins` VALUES (115,'StartCoin','START',1);
INSERT INTO `rawcoins` VALUES (116,'FractalCoin','FRAC',0);
INSERT INTO `rawcoins` VALUES (119,'KoreCoin','KORE',1);
INSERT INTO `rawcoins` VALUES (122,'Razor','RZR',1);
INSERT INTO `rawcoins` VALUES (123,'Guerillacoin','GUE',0);
INSERT INTO `rawcoins` VALUES (124,'DuckNote','XDN',1);
INSERT INTO `rawcoins` VALUES (128,'Minerals','MIN',1);
INSERT INTO `rawcoins` VALUES (133,'TechCoin','TECH',1);
INSERT INTO `rawcoins` VALUES (135,'CoffeeCoin','CFC2',1);
INSERT INTO `rawcoins` VALUES (136,'GameLeagueCoin','GML',1);
INSERT INTO `rawcoins` VALUES (137,'TruckCoin','TRK',1);
INSERT INTO `rawcoins` VALUES (139,'WankCoin','WKC',1);
INSERT INTO `rawcoins` VALUES (143,'Quatloo','QTL',1);
INSERT INTO `rawcoins` VALUES (144,'Saturn2Coin','SAT2',0);
INSERT INTO `rawcoins` VALUES (145,'XXXCoin','XXX',1);
INSERT INTO `rawcoins` VALUES (151,'AeroCoin','AERO',1);
INSERT INTO `rawcoins` VALUES (156,'TrustPlus','TRUST',1);
INSERT INTO `rawcoins` VALUES (157,'BritCoin','BRIT',1);
INSERT INTO `rawcoins` VALUES (158,'JudgeCoin','JUDGE',1);
INSERT INTO `rawcoins` VALUES (159,'NavajoCoin','NAV',1);
INSERT INTO `rawcoins` VALUES (160,'IcebergCoin','ICB',0);
INSERT INTO `rawcoins` VALUES (161,'FreshCoin','FRSH',1);
INSERT INTO `rawcoins` VALUES (162,'ShieldCoin','SHLD',0);
INSERT INTO `rawcoins` VALUES (163,'StealthCoin','XST',1);
INSERT INTO `rawcoins` VALUES (164,'AegisCoin','AGS',0);
INSERT INTO `rawcoins` VALUES (168,'ApexCoin','APEX',1);
INSERT INTO `rawcoins` VALUES (171,'ZetaCoin','ZET',1);
INSERT INTO `rawcoins` VALUES (172,'BitcoinDark','BTCD',1);
INSERT INTO `rawcoins` VALUES (173,'PseudoCash','PSEUD',0);
INSERT INTO `rawcoins` VALUES (176,'KeyCoin','KEY',1);
INSERT INTO `rawcoins` VALUES (178,'NewUniversalDollar','NUD',1);
INSERT INTO `rawcoins` VALUES (180,'ViaCoin','VIA',1);
INSERT INTO `rawcoins` VALUES (181,'Triangles','TRI',1);
INSERT INTO `rawcoins` VALUES (182,'PlanktonCoin','FOOD',0);
INSERT INTO `rawcoins` VALUES (183,'ConcealCoin','CNL',0);
INSERT INTO `rawcoins` VALUES (186,'Pesa','PES',1);
INSERT INTO `rawcoins` VALUES (187,'IncognitoCoin','ICG',1);
INSERT INTO `rawcoins` VALUES (189,'Unobtanium','UNO',1);
INSERT INTO `rawcoins` VALUES (192,'EsportsCoin','ESC',1);
INSERT INTO `rawcoins` VALUES (193,'DarkCash','DRKC',0);
INSERT INTO `rawcoins` VALUES (198,'PinkCoin','PINK',1);
INSERT INTO `rawcoins` VALUES (199,'IOCoin','IOC',1);
INSERT INTO `rawcoins` VALUES (202,'ShadowCash','SDC',1);
INSERT INTO `rawcoins` VALUES (204,'RawCoin','RAW',1);
INSERT INTO `rawcoins` VALUES (207,'MaxCoin','MAX',1);
INSERT INTO `rawcoins` VALUES (208,'LibrexCoin','LXC',1);
INSERT INTO `rawcoins` VALUES (209,'BoomCoin','BOOM',1);
INSERT INTO `rawcoins` VALUES (210,'DobbsCoin','BOB',1);
INSERT INTO `rawcoins` VALUES (215,'Unattainium','UNAT',1);
INSERT INTO `rawcoins` VALUES (216,'MultiWalletCoin','MWC',1);
INSERT INTO `rawcoins` VALUES (217,'CannabisCoin','CANN',1);
INSERT INTO `rawcoins` VALUES (220,'VaultCoin','VAULT',1);
INSERT INTO `rawcoins` VALUES (224,'Fuel2Coin','FC2',1);
INSERT INTO `rawcoins` VALUES (225,'SonicScrewDriver','SSD',1);
INSERT INTO `rawcoins` VALUES (229,'JoinCoin','J',1);
INSERT INTO `rawcoins` VALUES (230,'SoleCoin','SOLE',0);
INSERT INTO `rawcoins` VALUES (231,'UmbrellaLTC','ULTC',1);
INSERT INTO `rawcoins` VALUES (233,'SysCoin','SYS',1);
INSERT INTO `rawcoins` VALUES (235,'Halcyon','HAL',1);
INSERT INTO `rawcoins` VALUES (237,'BigBullion','BIG',1);
INSERT INTO `rawcoins` VALUES (239,'NeosCoin','NEOS',1);
INSERT INTO `rawcoins` VALUES (240,'Digibyte','DGB',1);
INSERT INTO `rawcoins` VALUES (242,'GreenBacks','GB',1);
INSERT INTO `rawcoins` VALUES (243,'RootCoin','ROOT',1);
INSERT INTO `rawcoins` VALUES (245,'Axron','AXR',1);
INSERT INTO `rawcoins` VALUES (246,'RipoffCoin','RIPO',1);
INSERT INTO `rawcoins` VALUES (249,'Fibre','FIBRE',1);
INSERT INTO `rawcoins` VALUES (252,'Nimbus','NMB',1);
INSERT INTO `rawcoins` VALUES (253,'ACoin','ACOIN',0);
INSERT INTO `rawcoins` VALUES (254,'ShadeCoin','SHADE',1);
INSERT INTO `rawcoins` VALUES (255,'FlexibleCoin','FLEX',1);
INSERT INTO `rawcoins` VALUES (256,'CoinMarketsCoin','JBS',1);
INSERT INTO `rawcoins` VALUES (257,'SSVCoin','SSV',0);
INSERT INTO `rawcoins` VALUES (258,'SocialXBot','XBOT',1);
INSERT INTO `rawcoins` VALUES (259,'XCash','XCASH',1);
INSERT INTO `rawcoins` VALUES (260,'BURST','BURST',1);
INSERT INTO `rawcoins` VALUES (262,'LitecoinDark','LTCD',1);
INSERT INTO `rawcoins` VALUES (263,'LightSpeed','LSD',0);
INSERT INTO `rawcoins` VALUES (264,'BancorCoin','BNCR',0);
INSERT INTO `rawcoins` VALUES (265,'CraigsCoin','CRAIG',1);
INSERT INTO `rawcoins` VALUES (266,'TitCoin','TIT',1);
INSERT INTO `rawcoins` VALUES (267,'GlobalBoost-Y','BSTY',1);
INSERT INTO `rawcoins` VALUES (268,'Gnosis','GNS',1);
INSERT INTO `rawcoins` VALUES (269,'VolatilityCoin','VLTY',1);
INSERT INTO `rawcoins` VALUES (270,'DeepCoin','DCN',1);
INSERT INTO `rawcoins` VALUES (271,'Prime-XI','PXI',1);
INSERT INTO `rawcoins` VALUES (272,'MozzShare','MLS',1);
INSERT INTO `rawcoins` VALUES (273,'CrackCoin','CRACK',0);
INSERT INTO `rawcoins` VALUES (274,'DigitalCoin','DGC',1);
INSERT INTO `rawcoins` VALUES (275,'Bitmark','BTM',1);
INSERT INTO `rawcoins` VALUES (278,'CoinWorksCoin','LAB',0);
INSERT INTO `rawcoins` VALUES (279,'SterlingCoin','SLG',1);
INSERT INTO `rawcoins` VALUES (280,'DarkToken','DT',0);
INSERT INTO `rawcoins` VALUES (281,'RosCoin','ROS',1);
INSERT INTO `rawcoins` VALUES (282,'42Coin','42',0);
INSERT INTO `rawcoins` VALUES (283,'AsiaCoin','AC',0);
INSERT INTO `rawcoins` VALUES (284,'AlphaCoin','ALF',0);
INSERT INTO `rawcoins` VALUES (285,'AlienCoin','ALN',0);
INSERT INTO `rawcoins` VALUES (286,'AmericanCoin','AMC',0);
INSERT INTO `rawcoins` VALUES (287,'AnonCoin','ANC',1);
INSERT INTO `rawcoins` VALUES (288,'Argentum','ARG',0);
INSERT INTO `rawcoins` VALUES (289,'AuroraCoin','AUR',0);
INSERT INTO `rawcoins` VALUES (290,'BattleCoin','BCX',0);
INSERT INTO `rawcoins` VALUES (291,'Benjamins','BEN',0);
INSERT INTO `rawcoins` VALUES (292,'Betacoin','BET',0);
INSERT INTO `rawcoins` VALUES (293,'BBQCoin','BQC',0);
INSERT INTO `rawcoins` VALUES (294,'BitBar','BTB',0);
INSERT INTO `rawcoins` VALUES (295,'ByteCoin','BTE',0);
INSERT INTO `rawcoins` VALUES (296,'BitGem','BTG',0);
INSERT INTO `rawcoins` VALUES (297,'CryptoBuck','BUK',0);
INSERT INTO `rawcoins` VALUES (298,'CACHeCoin','CACH',0);
INSERT INTO `rawcoins` VALUES (299,'BottleCaps','CAP',0);
INSERT INTO `rawcoins` VALUES (300,'CashCoin','CASH',0);
INSERT INTO `rawcoins` VALUES (301,'CatCoin','CAT',0);
INSERT INTO `rawcoins` VALUES (302,'CryptogenicBullion','CGB',0);
INSERT INTO `rawcoins` VALUES (303,'CopperLark','CLR',1);
INSERT INTO `rawcoins` VALUES (304,'Cosmoscoin','CMC',0);
INSERT INTO `rawcoins` VALUES (305,'CHNCoin','CNC',0);
INSERT INTO `rawcoins` VALUES (306,'CommunityCoin','COMM',0);
INSERT INTO `rawcoins` VALUES (307,'CraftCoin','CRC',0);
INSERT INTO `rawcoins` VALUES (308,'CasinoCoin','CSC',0);
INSERT INTO `rawcoins` VALUES (309,'eMark','DEM',0);
INSERT INTO `rawcoins` VALUES (310,'Diamond','DMD',0);
INSERT INTO `rawcoins` VALUES (311,'DevCoin','DVC',0);
INSERT INTO `rawcoins` VALUES (312,'EarthCoin','EAC',0);
INSERT INTO `rawcoins` VALUES (313,'ElaCoin','ELC',0);
INSERT INTO `rawcoins` VALUES (314,'Einsteinium','EMC2',0);
INSERT INTO `rawcoins` VALUES (315,'Emerald','EMD',0);
INSERT INTO `rawcoins` VALUES (316,'ExeCoin','EXE',0);
INSERT INTO `rawcoins` VALUES (317,'EZCoin','EZC',0);
INSERT INTO `rawcoins` VALUES (318,'FireflyCoin','FFC',0);
INSERT INTO `rawcoins` VALUES (319,'FreiCoin','FRC',1);
INSERT INTO `rawcoins` VALUES (320,'Franko','FRK',0);
INSERT INTO `rawcoins` VALUES (321,'FastCoin','FST',0);
INSERT INTO `rawcoins` VALUES (322,'FeatherCoin','FTC',1);
INSERT INTO `rawcoins` VALUES (323,'GrandCoin','GDC',0);
INSERT INTO `rawcoins` VALUES (324,'Globalcoin','GLC',0);
INSERT INTO `rawcoins` VALUES (325,'GoldCoin','GLD',0);
INSERT INTO `rawcoins` VALUES (326,'Galaxycoin','GLX',0);
INSERT INTO `rawcoins` VALUES (327,'HoboNickels','HBN',0);
INSERT INTO `rawcoins` VALUES (328,'HunterCoin','HUC',0);
INSERT INTO `rawcoins` VALUES (329,'HeavyCoin','HVC',0);
INSERT INTO `rawcoins` VALUES (330,'InfiniteCoin','IFC',1);
INSERT INTO `rawcoins` VALUES (331,'IXCoin','IXC',0);
INSERT INTO `rawcoins` VALUES (332,'JunkCoin','JKC',0);
INSERT INTO `rawcoins` VALUES (333,'KlondikeCoin','KDC',0);
INSERT INTO `rawcoins` VALUES (334,'KrugerCoin','KGC',0);
INSERT INTO `rawcoins` VALUES (335,'LegendaryCoin','LGD',0);
INSERT INTO `rawcoins` VALUES (336,'Lucky7Coin','LK7',0);
INSERT INTO `rawcoins` VALUES (337,'LuckyCoin','LKY',0);
INSERT INTO `rawcoins` VALUES (338,'LiteBar','LTB',0);
INSERT INTO `rawcoins` VALUES (339,'LiteCoinX','LTCX',0);
INSERT INTO `rawcoins` VALUES (340,'LycanCoin','LYC',0);
INSERT INTO `rawcoins` VALUES (341,'MegaCoin','MEC',1);
INSERT INTO `rawcoins` VALUES (342,'Mediterraneancoin','MED',0);
INSERT INTO `rawcoins` VALUES (343,'MintCoin','MINT',1);
INSERT INTO `rawcoins` VALUES (346,'MinCoin','MNC',0);
INSERT INTO `rawcoins` VALUES (347,'MurrayCoin','MRY',0);
INSERT INTO `rawcoins` VALUES (348,'MazaCoin','MZC',0);
INSERT INTO `rawcoins` VALUES (349,'NanoToken','NAN',0);
INSERT INTO `rawcoins` VALUES (350,'Nibble','NBL',0);
INSERT INTO `rawcoins` VALUES (351,'NeoCoin','NEC',0);
INSERT INTO `rawcoins` VALUES (352,'Netcoin','NET',1);
INSERT INTO `rawcoins` VALUES (353,'NameCoin','NMC',1);
INSERT INTO `rawcoins` VALUES (354,'NoirBits','NRB',0);
INSERT INTO `rawcoins` VALUES (355,'NoirShares','NRS',0);
INSERT INTO `rawcoins` VALUES (356,'NovaCoin','NVC',0);
INSERT INTO `rawcoins` VALUES (357,'NyanCoin','NYAN',0);
INSERT INTO `rawcoins` VALUES (358,'Orbitcoin','ORB',1);
INSERT INTO `rawcoins` VALUES (359,'OpenSourceCoin','OSC',0);
INSERT INTO `rawcoins` VALUES (360,'PhilosopherStone','PHS',0);
INSERT INTO `rawcoins` VALUES (361,'CryptsyPoints','Points',0);
INSERT INTO `rawcoins` VALUES (362,'Peercoin','PPC',1);
INSERT INTO `rawcoins` VALUES (363,'Bitshares PTS','PTS',0);
INSERT INTO `rawcoins` VALUES (364,'PhoenixCoin','PXC',0);
INSERT INTO `rawcoins` VALUES (365,'PayCoin','PYC',0);
INSERT INTO `rawcoins` VALUES (366,'Quark','QRK',1);
INSERT INTO `rawcoins` VALUES (367,'RonPaulCoin','RPC',0);
INSERT INTO `rawcoins` VALUES (368,'RoyalCoin','RYC',0);
INSERT INTO `rawcoins` VALUES (369,'StableCoin','SBC',0);
INSERT INTO `rawcoins` VALUES (370,'SilkCoin','SILK',0);
INSERT INTO `rawcoins` VALUES (371,'SmartCoin','SMC',0);
INSERT INTO `rawcoins` VALUES (372,'SpainCoin','SPA',0);
INSERT INTO `rawcoins` VALUES (373,'Spots','SPT',0);
INSERT INTO `rawcoins` VALUES (374,'SecureCoin','SRC',0);
INSERT INTO `rawcoins` VALUES (375,'StarCoin','STR',0);
INSERT INTO `rawcoins` VALUES (376,'SexCoin','SXC',1);
INSERT INTO `rawcoins` VALUES (377,'TagCoin','TAG',0);
INSERT INTO `rawcoins` VALUES (378,'TakCoin','TAK',0);
INSERT INTO `rawcoins` VALUES (379,'TekCoin','TEK',0);
INSERT INTO `rawcoins` VALUES (380,'TeslaCoin','TES',0);
INSERT INTO `rawcoins` VALUES (381,'TigerCoin','TGC',0);
INSERT INTO `rawcoins` VALUES (382,'TorCoin','TOR',0);
INSERT INTO `rawcoins` VALUES (383,'TerraCoin','TRC',0);
INSERT INTO `rawcoins` VALUES (384,'UnbreakableCoin','UNB',0);
INSERT INTO `rawcoins` VALUES (385,'USDe','USDe',0);
INSERT INTO `rawcoins` VALUES (386,'UltraCoin','UTC',1);
INSERT INTO `rawcoins` VALUES (387,'WorldCoin','WDC',1);
INSERT INTO `rawcoins` VALUES (388,'Crypti','XCR',0);
INSERT INTO `rawcoins` VALUES (389,'JouleCoin','XJO',0);
INSERT INTO `rawcoins` VALUES (390,'PrimeCoin','XPM',1);
INSERT INTO `rawcoins` VALUES (391,'YaCoin','YAC',0);
INSERT INTO `rawcoins` VALUES (392,'YBCoin','YBC',0);
INSERT INTO `rawcoins` VALUES (393,'ZcCoin','ZCC',0);
INSERT INTO `rawcoins` VALUES (394,'ZedCoin','ZED',0);
INSERT INTO `rawcoins` VALUES (395,'AndroidsTokensV2','ADT',0);
INSERT INTO `rawcoins` VALUES (396,'AsicCoin','ASC',0);
INSERT INTO `rawcoins` VALUES (397,'BatCoin','BAT',0);
INSERT INTO `rawcoins` VALUES (398,'ColossusCoin','COL',0);
INSERT INTO `rawcoins` VALUES (399,'CopperBars','CPR',0);
INSERT INTO `rawcoins` VALUES (400,'Continuumcoin','CTM',0);
INSERT INTO `rawcoins` VALUES (401,'Doubloons','DBL',0);
INSERT INTO `rawcoins` VALUES (402,'DamaCoin','DMC',0);
INSERT INTO `rawcoins` VALUES (403,'ElephantCoin','ELP',0);
INSERT INTO `rawcoins` VALUES (404,'FlappyCoin','FLAP',0);
INSERT INTO `rawcoins` VALUES (405,'FlorinCoin','FLO',0);
INSERT INTO `rawcoins` VALUES (406,'GameCoin','GME',0);
INSERT INTO `rawcoins` VALUES (407,'KarmaCoin','KARM',1);
INSERT INTO `rawcoins` VALUES (408,'LeafCoin','LEAF',0);
INSERT INTO `rawcoins` VALUES (409,'LottoCoin','LOT',0);
INSERT INTO `rawcoins` VALUES (410,'MemeCoin','MEM',0);
INSERT INTO `rawcoins` VALUES (411,'KittehCoin','MEOW',0);
INSERT INTO `rawcoins` VALUES (412,'MoonCoin','MOON',1);
INSERT INTO `rawcoins` VALUES (413,'MasterCoin (Hydro)','MST',0);
INSERT INTO `rawcoins` VALUES (414,'RabbitCoin','RBBT',0);
INSERT INTO `rawcoins` VALUES (415,'RedCoin','RED',0);
INSERT INTO `rawcoins` VALUES (416,'FedoraCoin','TIPS',0);
INSERT INTO `rawcoins` VALUES (417,'Tickets','TIX',0);
INSERT INTO `rawcoins` VALUES (418,'XenCoin','XNC',0);
INSERT INTO `rawcoins` VALUES (419,'ZeitCoin','ZEIT',0);
INSERT INTO `rawcoins` VALUES (420,'','ABC2',0);
INSERT INTO `rawcoins` VALUES (421,'','AID',0);
INSERT INTO `rawcoins` VALUES (424,'','BTQ',0);
INSERT INTO `rawcoins` VALUES (426,'','CHILD',1);
INSERT INTO `rawcoins` VALUES (428,'Checkcoin','CKC',1);
INSERT INTO `rawcoins` VALUES (437,'','GRC',0);
INSERT INTO `rawcoins` VALUES (438,'','IMAC',0);
INSERT INTO `rawcoins` VALUES (440,'Lemurcoin','LMR',1);
INSERT INTO `rawcoins` VALUES (441,'','MOTO',0);
INSERT INTO `rawcoins` VALUES (442,'','MSC',0);
INSERT INTO `rawcoins` VALUES (444,'','NIC',0);
INSERT INTO `rawcoins` VALUES (445,'','NOTE',0);
INSERT INTO `rawcoins` VALUES (446,'','NWO',0);
INSERT INTO `rawcoins` VALUES (447,'','ONE',1);
INSERT INTO `rawcoins` VALUES (448,'OpalCoin','OPAL',1);
INSERT INTO `rawcoins` VALUES (450,'','PLCN',0);
INSERT INTO `rawcoins` VALUES (452,'','PROZ',0);
INSERT INTO `rawcoins` VALUES (453,'PyramidsCoin','PYRA',1);
INSERT INTO `rawcoins` VALUES (460,'SativaCoin','STV',1);
INSERT INTO `rawcoins` VALUES (467,'','XRC',0);
INSERT INTO `rawcoins` VALUES (468,'','XSX',0);
INSERT INTO `rawcoins` VALUES (469,'','CCI',0);
INSERT INTO `rawcoins` VALUES (470,'','GHC',1);
INSERT INTO `rawcoins` VALUES (471,'Bleutrade Share','BLEU',1);
INSERT INTO `rawcoins` VALUES (473,'BeaverCoin','BVC',1);
INSERT INTO `rawcoins` VALUES (474,'Canada eCoin','CDN',1);
INSERT INTO `rawcoins` VALUES (475,'CzechCrownCoin','CZC',1);
INSERT INTO `rawcoins` VALUES (476,'Donationcoin','DON',1);
INSERT INTO `rawcoins` VALUES (477,'FujiCoin','FJC',1);
INSERT INTO `rawcoins` VALUES (478,'GCoin','GCN',1);
INSERT INTO `rawcoins` VALUES (479,'Guncoin','GUN',1);
INSERT INTO `rawcoins` VALUES (480,'HamRadioCoin','HAM',1);
INSERT INTO `rawcoins` VALUES (481,'HeisenbergHex','HEX',1);
INSERT INTO `rawcoins` VALUES (482,'HTML5','HTML5',1);
INSERT INTO `rawcoins` VALUES (483,'IrishCoin','IRL',1);
INSERT INTO `rawcoins` VALUES (484,'NewYorkCoin','NYC',1);
INSERT INTO `rawcoins` VALUES (485,'Paccoin','PAC',1);
INSERT INTO `rawcoins` VALUES (486,'PolishCoin','PCC',1);
INSERT INTO `rawcoins` VALUES (487,'PHCoin','PHC',1);
INSERT INTO `rawcoins` VALUES (488,'Pandacoin','PND',1);
INSERT INTO `rawcoins` VALUES (489,'POWcoin','POW',1);
INSERT INTO `rawcoins` VALUES (490,'RussiaCoin','RC',1);
INSERT INTO `rawcoins` VALUES (494,'TrollCoin','TRL',1);
INSERT INTO `rawcoins` VALUES (495,'US Dollar','USD',1);
INSERT INTO `rawcoins` VALUES (497,'VirtaCoin','VTA',1);
INSERT INTO `rawcoins` VALUES (498,'InkwayCoin','LKNX',1);
INSERT INTO `rawcoins` VALUES (503,'ExclusiveCoin','EXCL',1);
INSERT INTO `rawcoins` VALUES (505,'EtherCoin','ETC',1);
INSERT INTO `rawcoins` VALUES (506,'VikingCoin','VIK',1);
INSERT INTO `rawcoins` VALUES (507,'XG','XG',1);
INSERT INTO `rawcoins` VALUES (513,'MaryJaneCoin','MARYJ',1);
INSERT INTO `rawcoins` VALUES (516,'unknown','SONG',0);
INSERT INTO `rawcoins` VALUES (517,'Magi','XMG',1);
INSERT INTO `rawcoins` VALUES (518,'UtilityCoin','UTIL',1);
INSERT INTO `rawcoins` VALUES (519,'Ruble','RUBLE',1);
INSERT INTO `rawcoins` VALUES (520,'Wolfcoin','WLF',1);
INSERT INTO `rawcoins` VALUES (521,'XCloudCoin','XCLD',1);
INSERT INTO `rawcoins` VALUES (522,'BitSwift','SWIFT',1);
INSERT INTO `rawcoins` VALUES (525,'ArchCoin','ARCH',1);
INSERT INTO `rawcoins` VALUES (526,'GhostCoin','GHOST',1);
INSERT INTO `rawcoins` VALUES (527,'SeedCoin','SEED',1);
INSERT INTO `rawcoins` VALUES (530,'GAIACoin','GAIA',1);
INSERT INTO `rawcoins` VALUES (531,'WorldWideCoin','WWC',1);
INSERT INTO `rawcoins` VALUES (532,'Cagecoin','CAGE',1);
INSERT INTO `rawcoins` VALUES (533,'Ripple','XRP',0);
INSERT INTO `rawcoins` VALUES (534,'WhistleCoin','WSTL',1);
INSERT INTO `rawcoins` VALUES (537,'Munne','MNE',1);
INSERT INTO `rawcoins` VALUES (538,'unknown','CRW',0);
INSERT INTO `rawcoins` VALUES (539,'unknown','SQC',0);
INSERT INTO `rawcoins` VALUES (541,'unknown','VOXP',0);
INSERT INTO `rawcoins` VALUES (542,'EquinoxCoin ','EQX',1);
INSERT INTO `rawcoins` VALUES (544,'GlowCoin','GLOW',1);
INSERT INTO `rawcoins` VALUES (545,'unknown','KRYP',0);
INSERT INTO `rawcoins` VALUES (547,'unknown','PLCS',0);
INSERT INTO `rawcoins` VALUES (548,'unknown','VTX',0);
INSERT INTO `rawcoins` VALUES (549,'MiracleCoin','MCL',1);
INSERT INTO `rawcoins` VALUES (550,'DopeCoin','DOPE',1);
INSERT INTO `rawcoins` VALUES (552,'unknown','DOGEB',0);
INSERT INTO `rawcoins` VALUES (553,'unknown','SPUDS',0);
INSERT INTO `rawcoins` VALUES (554,'VidioShare','VDO',1);
INSERT INTO `rawcoins` VALUES (555,'CamorraCoin','CAM',1);
INSERT INTO `rawcoins` VALUES (556,'NopeCoin','NOPE',1);
INSERT INTO `rawcoins` VALUES (557,'SparkCoin','SPARK',1);
INSERT INTO `rawcoins` VALUES (558,'unknown','UP',0);
INSERT INTO `rawcoins` VALUES (560,'CannabisDarkcoin','CND',1);
INSERT INTO `rawcoins` VALUES (561,'DogeCoinDark','DOGED',1);
INSERT INTO `rawcoins` VALUES (562,'MetalMusicCoin','MTLMC',1);
INSERT INTO `rawcoins` VALUES (563,'MonetaryUnit','MUE',1);
INSERT INTO `rawcoins` VALUES (564,'GanjaCoin','GANJA',1);
INSERT INTO `rawcoins` VALUES (565,'DayTraderCoin','DTC',1);
INSERT INTO `rawcoins` VALUES (567,'ScatterCoin','XSTC',1);
INSERT INTO `rawcoins` VALUES (568,'Sembro Token','SMBR',1);
INSERT INTO `rawcoins` VALUES (569,'CleverHash','CHASH',1);
INSERT INTO `rawcoins` VALUES (570,'DarkShibe','DSB',1);
INSERT INTO `rawcoins` VALUES (571,'HyperStake','HYP',0);
INSERT INTO `rawcoins` VALUES (572,'unknown','LOG',0);
INSERT INTO `rawcoins` VALUES (573,'unknown','QBK',0);
INSERT INTO `rawcoins` VALUES (574,'DigitalPrice','DP',1);
INSERT INTO `rawcoins` VALUES (575,'Bladecoin','BLA',1);
INSERT INTO `rawcoins` VALUES (576,'DarkKush','DANK',1);
INSERT INTO `rawcoins` VALUES (578,'Pennies','CENT',0);
INSERT INTO `rawcoins` VALUES (579,'BlockNet','BLOCK',1);
INSERT INTO `rawcoins` VALUES (580,'unknown','CATC',0);
INSERT INTO `rawcoins` VALUES (581,'unknown','VOCAL',0);
INSERT INTO `rawcoins` VALUES (582,'SecuritySysCoin','SCSY',1);
INSERT INTO `rawcoins` VALUES (583,'AppleBytes','ABY',1);
INSERT INTO `rawcoins` VALUES (584,'unknown','MIC',0);
INSERT INTO `rawcoins` VALUES (585,'Snowballs','BALLS',1);
INSERT INTO `rawcoins` VALUES (586,'RektCoin','REKT',1);
INSERT INTO `rawcoins` VALUES (587,'Quicksilver','QSLV',1);
INSERT INTO `rawcoins` VALUES (588,'unknown','ICNX',0);
INSERT INTO `rawcoins` VALUES (590,'unknown','U',0);
INSERT INTO `rawcoins` VALUES (592,'ByteCent','BYC',1);
INSERT INTO `rawcoins` VALUES (593,'BunnyCoin','BUN',1);
INSERT INTO `rawcoins` VALUES (594,'UroDark','UROD',1);
INSERT INTO `rawcoins` VALUES (595,'UFOCoin','UFO',1);
INSERT INTO `rawcoins` VALUES (596,'unknown','ZER',0);
INSERT INTO `rawcoins` VALUES (597,'EthereumDark','ETD',1);
INSERT INTO `rawcoins` VALUES (598,'Nanite','XNAN',1);
INSERT INTO `rawcoins` VALUES (600,'OcupyCoin','OCUPY',1);
INSERT INTO `rawcoins` VALUES (601,'unknown','ZNY',0);
INSERT INTO `rawcoins` VALUES (602,'unknown','FICE',0);
INSERT INTO `rawcoins` VALUES (603,'unknown','HLC',0);
INSERT INTO `rawcoins` VALUES (604,'Guarany','GUA',1);
INSERT INTO `rawcoins` VALUES (605,'unknown','ACHK',0);
INSERT INTO `rawcoins` VALUES (606,'unknown','GIMP',0);
INSERT INTO `rawcoins` VALUES (607,'unknown','BOARD',0);
INSERT INTO `rawcoins` VALUES (608,'GlowShares','GSX',1);
INSERT INTO `rawcoins` VALUES (609,'unknown','PFC',0);
INSERT INTO `rawcoins` VALUES (610,'Quotient','XQN',1);
INSERT INTO `rawcoins` VALUES (611,'OptimumCoin','OPTI',1);
INSERT INTO `rawcoins` VALUES (612,'Consolidated Mining','MN',0);
INSERT INTO `rawcoins` VALUES (613,'GreenCoin','GRE',1);
INSERT INTO `rawcoins` VALUES (614,'VPNCoin','VPN',1);
INSERT INTO `rawcoins` VALUES (615,'Bollywoodcoin','BDC',1);
INSERT INTO `rawcoins` VALUES (616,'ViorCoin','VIOR',1);
INSERT INTO `rawcoins` VALUES (617,'BitBay','BAY',1);
INSERT INTO `rawcoins` VALUES (618,'HawaiiCoin','HIC',1);
INSERT INTO `rawcoins` VALUES (619,'MalibuCoin','MAL',1);
INSERT INTO `rawcoins` VALUES (620,'ImperiumCoin','IMPC',1);
INSERT INTO `rawcoins` VALUES (621,'Diode','DIO',1);
INSERT INTO `rawcoins` VALUES (622,'DeafDollars','DEAF',1);
INSERT INTO `rawcoins` VALUES (623,'unknown','ALI',0);
INSERT INTO `rawcoins` VALUES (624,'BitSharesX','BTS',1);
INSERT INTO `rawcoins` VALUES (625,'unknown','EUPH',0);
INSERT INTO `rawcoins` VALUES (626,'WorldTradeFunds','XWT',1);
INSERT INTO `rawcoins` VALUES (627,'MobCoin','MOB',1);
INSERT INTO `rawcoins` VALUES (628,'PimpCash','PIMP',1);
INSERT INTO `rawcoins` VALUES (629,'unknown','ERM',0);
INSERT INTO `rawcoins` VALUES (630,'MewnCoin','MEWN',1);
INSERT INTO `rawcoins` VALUES (631,'unknown','FUD',0);
INSERT INTO `rawcoins` VALUES (632,'unknown','KING',0);
INSERT INTO `rawcoins` VALUES (633,'AeroME','AM',1);
INSERT INTO `rawcoins` VALUES (634,'unknown','FIND',0);
INSERT INTO `rawcoins` VALUES (635,'unknown','CBR',0);
INSERT INTO `rawcoins` VALUES (636,'SpreadCoin','SPR',1);
INSERT INTO `rawcoins` VALUES (637,'MetalCoin','METAL',1);
INSERT INTO `rawcoins` VALUES (638,'CheckOutCoin','CXC',1);
INSERT INTO `rawcoins` VALUES (639,'BitcoinFast','BCF',1);
INSERT INTO `rawcoins` VALUES (640,'unknown','STB',0);
INSERT INTO `rawcoins` VALUES (641,'unknown','RMS',0);
INSERT INTO `rawcoins` VALUES (642,'EventCoint','EVENT',1);
INSERT INTO `rawcoins` VALUES (644,'FairCoin','FAIR',1);
INSERT INTO `rawcoins` VALUES (645,'DarkSwift','DS',1);
INSERT INTO `rawcoins` VALUES (646,'unknown','BCENT',0);
INSERT INTO `rawcoins` VALUES (647,'unknown','SMLY',0);
INSERT INTO `rawcoins` VALUES (648,'PayCoin','XPY',1);
INSERT INTO `rawcoins` VALUES (649,'NooCoin','NOO',1);
INSERT INTO `rawcoins` VALUES (650,'vTorrent','VTR',1);
INSERT INTO `rawcoins` VALUES (651,'Clams','CLAM',0);
INSERT INTO `rawcoins` VALUES (652,'TittieCoin','TTC',0);
INSERT INTO `rawcoins` VALUES (653,'Sapience','XAI',1);
INSERT INTO `rawcoins` VALUES (654,'NakomotoDark','NKT',1);
INSERT INTO `rawcoins` VALUES (655,'Ideacoin','IDC',1);
/*!40000 ALTER TABLE `rawcoins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renters`
--

DROP TABLE IF EXISTS `renters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `email` varchar(1024) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `apikey` varbinary(1024) DEFAULT NULL,
  `received` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `unconfirmed` double DEFAULT NULL,
  `spent` double DEFAULT NULL,
  `custom_start` double DEFAULT NULL,
  `custom_balance` double DEFAULT NULL,
  `custom_accept` double DEFAULT NULL,
  `custom_reject` double DEFAULT NULL,
  `custom_address` varchar(1024) DEFAULT NULL,
  `custom_server` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renters`
--

LOCK TABLES `renters` WRITE;
/*!40000 ALTER TABLE `renters` DISABLE KEYS */;
/*!40000 ALTER TABLE `renters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentertxs`
--

DROP TABLE IF EXISTS `rentertxs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rentertxs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renterid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `tx` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `renterid` (`renterid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentertxs`
--

LOCK TABLES `rentertxs` WRITE;
/*!40000 ALTER TABLE `rentertxs` DISABLE KEYS */;
/*!40000 ALTER TABLE `rentertxs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `maxcoins` int(11) DEFAULT NULL,
  `uptime` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name1` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `algo` varchar(64) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `speed` bigint(20) DEFAULT NULL,
  `custom_balance` double DEFAULT NULL,
  `custom_accept` double DEFAULT NULL,
  `custom_reject` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Nicehash','scrypt',0.0003646,20628000000,0,0,0);
INSERT INTO `services` VALUES (2,'Nicehash','x11',0.0004524,15616000000,0,0,0);
INSERT INTO `services` VALUES (3,'Nicehash','x13',0.0003273,185100000,0,0,0);
INSERT INTO `services` VALUES (4,'Nicehash','x15',0.0004079,7200000,0,0,0);
INSERT INTO `services` VALUES (5,'Nicehash','nist5',0.001,21900000,0,0,0);
INSERT INTO `services` VALUES (6,'Nicehash','sha256',0.0000098,2310347791200000,0,0,0);
INSERT INTO `services` VALUES (7,'Nicehash','scryptn',0.0005521,1200000,0,0,0);
INSERT INTO `services` VALUES (8,'Nicehash','neoscrypt',0.0073366,13600000,0,0,0);
INSERT INTO `services` VALUES (9,'Nicehash','lyra2',0.0006123,181400000,0,0,0);
INSERT INTO `services` VALUES (16,'Nicehash','qubit',0.0001968,72200000,0,0,0);
INSERT INTO `services` VALUES (17,'Nicehash','quark',0.0004536,65978400000,0,0,0);
INSERT INTO `services` VALUES (18,'Nicehash','zr5',0.0001,61865000000,0,0,0);
INSERT INTO `services` VALUES (19,'Nicehash','c11',0.0003403,11823800000,0,0,0);
INSERT INTO `services` VALUES (20,'Nicehash','keccak',0.0000027,153200000,0,0,0);
INSERT INTO `services` VALUES (21,'Nicehash','whirlx',0.0000091,1100700000,0,0,0);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shares`
--

DROP TABLE IF EXISTS `shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shares` (
  `id` bigint(30) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `workerid` int(11) DEFAULT NULL,
  `coinid` int(11) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `error` int(11) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT NULL,
  `extranonce1` tinyint(1) DEFAULT NULL,
  `difficulty` double DEFAULT '0',
  `algo` varchar(16) DEFAULT 'x11',
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `algo1` (`algo`),
  KEY `valid1` (`valid`),
  KEY `user1` (`userid`),
  KEY `worker1` (`workerid`),
  KEY `coin1` (`coinid`),
  KEY `jobid` (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=248001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shares`
--

LOCK TABLES `shares` WRITE;
/*!40000 ALTER TABLE `shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `wallet` double DEFAULT NULL,
  `wallets` double DEFAULT NULL,
  `immature` double DEFAULT NULL,
  `margin` double DEFAULT NULL,
  `waiting` double DEFAULT NULL,
  `balances` double DEFAULT NULL,
  `onsell` double DEFAULT NULL,
  `renters` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=InnoDB AUTO_INCREMENT=853 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stratums`
--

DROP TABLE IF EXISTS `stratums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stratums` (
  `pid` int(11) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `algo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stratums`
--

LOCK TABLES `stratums` WRITE;
/*!40000 ALTER TABLE `stratums` DISABLE KEYS */;
/*!40000 ALTER TABLE `stratums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `market` varchar(1024) DEFAULT NULL,
  `address` varchar(1024) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `uuid` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `subscribe` tinyint(1) DEFAULT NULL,
  `difficulty` double DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `dns` varchar(1024) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `nonce1` varchar(64) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `worker` varchar(64) DEFAULT NULL,
  `algo` varchar(16) DEFAULT 'scrypt',
  PRIMARY KEY (`id`),
  KEY `algo1` (`algo`),
  KEY `name1` (`name`),
  KEY `userid` (`userid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10880 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-12  3:01:32
