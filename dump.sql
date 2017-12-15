-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `constructor_play`
--

DROP TABLE IF EXISTS `constructor_play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constructor_play` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constructor_id` varchar(45) NOT NULL,
  `play_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constructor_play`
--

LOCK TABLES `constructor_play` WRITE;
/*!40000 ALTER TABLE `constructor_play` DISABLE KEYS */;
INSERT INTO `constructor_play` VALUES (16,'1','38'),(17,'1','39'),(21,'1','40'),(22,'3','41'),(23,'4','42'),(24,'5','43'),(37,'1','45'),(38,'1','46'),(54,'1','3'),(56,'1','76'),(57,'1','6'),(60,'2','2'),(61,'4','5'),(62,'3','80'),(63,'4','81'),(64,'3','84'),(65,'1','7'),(66,'2','1'),(67,'5','8');
/*!40000 ALTER TABLE `constructor_play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `constructors`
--

DROP TABLE IF EXISTS `constructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `constructors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constructor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `constructors`
--

LOCK TABLES `constructors` WRITE;
/*!40000 ALTER TABLE `constructors` DISABLE KEYS */;
INSERT INTO `constructors` VALUES (1,'PS4'),(2,'XBOX_ONE'),(3,'SWITCH'),(4,'PS3'),(5,'XBOX_360');
/*!40000 ALTER TABLE `constructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates`
--

DROP TABLE IF EXISTS `dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates`
--

LOCK TABLES `dates` WRITE;
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` VALUES (1,'2014'),(2,'2015'),(3,'2016'),(4,'2017'),(5,'2018');
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plays`
--

DROP TABLE IF EXISTS `plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `note` varchar(45) NOT NULL,
  `comment` varchar(700) DEFAULT NULL,
  `date_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays`
--

LOCK TABLES `plays` WRITE;
/*!40000 ALTER TABLE `plays` DISABLE KEYS */;
INSERT INTO `plays` VALUES (1,'gta5','30','34','20','Los Santos : une métropole tentaculaire avec ses gourous, ses starlettes et ses gloires du passé fanées qui faisaient jadis rêver le monde entier et qui, aujourd\'hui, luttent pour ne pas sombrer dans l\'oubli alors que le pays est rongé par la crise et la télé-réalité bas de gamme.','5'),(2,'hitman','23','15','13','Vingt ans avant les missions présentées dans l\'histoire principale, l\'assassin 47 arrive dans un centre de formation top-secret de l\'ICA situé en haute-montagne, où il rencontre pour la première fois son agent de liaison, Diana Burnwood. Sous sa supervision, 47 participe à plusieurs missions simulées pour évaluer ses compétences tout en passant par une évaluation psychologique et une vérification approfondie de son passé trouble.','1'),(3,'assassin\'s creed origins','65','38','16','L\'histoire se déroule en 49 av. J.-C. dans l\'Égypte antique1 ; elle met en scène Bayek, un Medjaÿ, à l\'époque de la création de la confrérie des Assassins. Cet assassin sera confronté à « l\'Ordre des Anciens » qui préfigure les futurs antagonistes Templiers des épisodes précédents2. Les membres de l\'Ordre des Anciens que rencontre Bayek apparaissent sous des pseudonymes. Ainsi, le joueur affronte successivement l\'ibis, le héron, le vautour, le bélier, l\'hippopotame, le lézard, la hyène, le crocodile, le scarabée, le scorpion, le chacal et le lion.','4'),(5,'cod','30','9','17','Le jeu se déroulant pendant la Seconde Guerre mondiale, la campagne suivra Daniels, de la Normandie aux Ardennes, accompagné par deux personnages aux rôles importants, un scout et un médecin. En effet, la campagne est la première de la série à ne pas inclure la régénération de la santé depuis Call of Duty, premier jeu de la série. À la place de cette régénération, les joueurs peuvent s\'appuyer sur des sacoches médicales de la même manière que les munitions. D\'autres membres de l\'escouade permettent de repérer les ennemis, révélant leurs positions par la forme de silhouettes rouges. Daniels a des compétences que l\'on peut améliorer en récoltant de l\'expérience.','4'),(6,'Rayman','30','29','13',': Rayman Legends est un jeu de plates-formes sur PlayStation 4. On y retrouve Rayman, accompagné par de nouveaux personnages jouables, essayant de libérer les petites créatures nommées Ptizêtres à travers différents environnements thématiques. Le jeu, offrant un mode coopératif pour trois, permet à un joueur d\'interagir directement avec le décor.','3'),(7,'Crash bandicoot','30','29','18','Crash Bandicoot: N. Sane Trilogy est un jeu vidéo de plates-formes développé par Vicarious Visions, édité par Activision et par Sony Interactive Entertainment au Japon1. Le jeu est sorti en 2017 sur PlayStation 4. Il s\'agit d\'un remake des trois premiers titres de la série Crash Bandicoot : Crash Bandicoot, Crash Bandicoot 2: Cortex Strikes Back et Crash Bandicoot 3: Warped, développés à l\'origine par Naughty Dog sur PlayStation entre 1996 et 1998.','4'),(8,'batman','49','27','9',NULL,'3'),(81,'resident evil','30','20','10',NULL,'1'),(84,'zelda','36','39','16','The Legend of Zelda: Breath of the Wild  est un jeu vidéo d’action-aventure en monde ouvert développé par Nintendo EPD avec l\'aide de Monolith Soft et édité par Nintendo. Il est sorti le 3 mars 2017 sur Nintendo Switch pour le lancement de la console, ainsi que sur Wii U dont c\'est le dernier jeu produit par Nintendo.\r\n\r\nLe jeu fait partie de la série The Legend of Zelda et propose d\'incarne Link, amnésique, qui se réveille après un long sommeil d\'une centaine d\'années par une mystérieuse voix qui le guide pour éliminer Ganon, le fléau et restaurer la paix dans le royaume d\'Hyrule.','4');
/*!40000 ALTER TABLE `plays` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-15 15:03:05
