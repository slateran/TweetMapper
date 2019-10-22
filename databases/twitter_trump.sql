-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: twitter
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `trump`
--

DROP TABLE IF EXISTS `trump`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trump` (
  `id` int(255) DEFAULT NULL,
  `userid` varchar(255) NOT NULL,
  `username` varchar(500) NOT NULL,
  `tweet` varchar(500) NOT NULL,
  `language` varchar(500) NOT NULL,
  `location` varchar(500) NOT NULL,
  `longitude` varchar(500) NOT NULL,
  `latitude` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trump`
--

LOCK TABLES `trump` WRITE;
/*!40000 ALTER TABLE `trump` DISABLE KEYS */;
INSERT INTO `trump` VALUES (NULL,'4646810601','weareteamtrump','Want to work at Trump Hotels? We\'re #hiring in #Chicago, IL! Click for details: https://t.co/J0NuQXyt3C #Hospitality #Job #Jobs','en','Worldwide','-87.6264397','41.8888655'),(NULL,'4646810601','weareteamtrump','Join the Trump Hotels team! See our latest #job opening here: https://t.co/UZlUNVPTyn #security #Washington, DC #Hiring','en','Worldwide','-77.0276216','38.8940974'),(NULL,'1180025371','trendinaliaUS','⒍ Resilience of the Resistance\n⒎ The DAMN\n⒏ Liberty Place\n⒐ #MakeOneThingDisappear\n⒑ Donald Trump Is Unintelligible\n\n2017/4/24 06:54 CDT','es','USA','-77.029','38.8991'),(NULL,'138418838','Pairsonnalites','#Stigmabase | UK -  Hillary Clinton concerned Trump administration will roll back LGBTI rights - Hillary Clinton… https://t.co/85rCmNwRQv','en','Americas | UK | Ireland','-0.1373291','51.49506473'),(NULL,'191092262','pairsonnalitesN','#Stigmabase | UK -  Hillary Clinton concerned Trump administration will roll back LGBTI rights https://t.co/Mzj9hSIeOL','en','Scot | Inuit | Skandinavien','-0.1373291','51.49506473'),(NULL,'1180025371','trendinaliaUS','⒍ #ObservationsAtTheMarathon\n⒎ The DAMN\n⒏ Resilience of the Resistance\n⒐ Slide On Me\n⒑ Donald Trump Is Unintelligible\n\n2017/4/24 07:14 CDT','es','USA','-77.029','38.8991'),(NULL,'15455135','steinbring','@RawStory So, they are saying that if the America refuses to pay for Trump\'s wall, he will de-fund people\'s health… https://t.co/zWFHdIkzr4','en','Glendale, Wisconsin','-87.9127175','43.1050893'),(NULL,'26370513','robprather','Indeed. The media should ave spent way more time on the Trump/Russia investigation. https://t.co/TKmeYOroJ1','en','Tucker, GA','-84.2509909','33.8204073'),(NULL,'4646810601','weareteamtrump','Join the Trump Hotels team! See our latest #job opening here: https://t.co/hmNJxc2Yoz #Hospitality #Miami, FL #Hiring','en','Worldwide','-80.4326521','25.8433674'),(NULL,'280586684','nooga','Trump Steaks is alive and well in Japan. @ Osaka https://t.co/0qeAcvXAvX','en','San Francisco, CA','135.508','34.7114'),(NULL,'21549241','rockingrobin2','Donald Trump Is Unintelligible\n https://t.co/2bIGuvOvkH','en','Atlanta, Georgia','-84.2111865','33.7244746'),(NULL,'480064823','NJdivorce','#thetrumpreport Welcome to the biggest week of Donald Trump\'s presidency - CNN https://t.co/jyUbkzQK5X… https://t.co/NzO1wGEQ5X','en','Jersey City, New Jersey','-74.0728249','40.6897945'),(NULL,'97213119','ajem1007','@WRadioColombia Pregúntenle a Maria Isabel que piensa ahora de la reunión \"franca y calida sobre Colombia y la región\" de los Ex con Trump.','es','Bogotá, Colombia','-74.0464686','4.6661552'),(NULL,'480064823','NJdivorce','#thetrumpreport Donald Trump Has Made Socialism Cool Again - Mother Jones https://t.co/xFhbWI8Ot3 #artusalawfirm https://t.co/3PSzZrvKz3','en','Jersey City, New Jersey','-74.0728249','40.6897945'),(NULL,'12802862','jlibront','I\'m at Trump Building in New York, NY https://t.co/hHgIvh1FY8','en','North Andover, MA, USA','-74.00974836','40.70685537'),(NULL,'138418838','Pairsonnalites','#Egaylity -  Hillary Clinton concerned Trump administration will roll back LGBTI rights - Hillary Clinton has… https://t.co/MqAPw5cxR0','en','Americas | UK | Ireland','0.0203125','51.61967125'),(NULL,'208056970','PairsonnalitesU','#Egaylity -  Hillary Clinton concerned Trump administration will roll back LGBTI rights - Hillary Clinton has… https://t.co/k9bnpho0zb','en','WORLDWIDE ','0.0203125','51.61967125'),(NULL,'480064823','NJdivorce','#thetrumpreport War of Words after David Crosby Calls Ted Nugent and Donald Trump a \'Pair of…… https://t.co/ykhrJE3Kq2','en','Jersey City, New Jersey','-74.0728249','40.6897945'),(NULL,'710776714939539456','MiguelSihman','#DonaldTrump  en el Día de Recuerdo del Holocausto: “No se puede ignorar las amenazas de exterminación de #Israel” https://t.co/oCDLq8rVCQ','en','Israel','34.9120231','32.1715229');
/*!40000 ALTER TABLE `trump` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-24 21:59:32
