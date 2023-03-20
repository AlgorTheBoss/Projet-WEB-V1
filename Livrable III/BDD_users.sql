-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projet_web
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id_addresses` int NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `number_street` varchar(45) DEFAULT NULL,
  `country` varchar(45) NOT NULL,
  `postal_code` int DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `cre_addresses` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_addresses` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_addresses` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_addresses`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'BLAGNAC','Allée André Turcat','6','France',31700,'','2023-03-15 16:08:12','2023-03-15 16:08:12',NULL),(2,'BLAGNAC','Rue Marcel Doret','4','France',31700,'','2023-03-15 16:08:12','2023-03-15 16:08:12',NULL),(3,'TOULOUSE','Avenue Gaspard Coriolis','42','France',31000,'','2023-03-15 16:08:12','2023-03-15 16:08:12',NULL),(4,'PARIS','Boulevard Poissonnière','14-16','France',75009,'','2023-03-15 16:08:12','2023-03-15 16:08:12',NULL),(5,'Naterre','Boulevard de la Seine','93','France',92000,'','2023-03-16 09:17:59','2023-03-16 09:17:59',NULL),(6,'Toulouse','Rue Magellan','16','France',31670,'','2023-03-16 09:17:59','2023-03-16 09:17:59',NULL),(7,'La Couronne','Route de la Croix du Milieu','40','France',16400,'','2023-03-16 09:17:59','2023-03-16 09:17:59',NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `idapplications` int NOT NULL AUTO_INCREMENT,
  `offers_id_offers` int NOT NULL,
  `users_id_users` int NOT NULL,
  `cre_applications` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_applications` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_applications` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`idapplications`),
  KEY `fk_applications_offers1_idx` (`offers_id_offers`),
  KEY `fk_applications_users1_idx` (`users_id_users`),
  CONSTRAINT `fk_applications_offers1` FOREIGN KEY (`offers_id_offers`) REFERENCES `offers` (`id_offers`),
  CONSTRAINT `fk_applications_users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `areas` (
  `id_areas` int NOT NULL AUTO_INCREMENT,
  `name_area` varchar(45) NOT NULL,
  `cre_areas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_areas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_areas` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_areas`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Informatique','2023-03-15 15:21:24','2023-03-15 15:21:24',NULL),(2,'Système embarqué','2023-03-15 15:21:24','2023-03-15 15:21:24',NULL),(3,'BTP','2023-03-15 15:21:24','2023-03-15 15:21:24',NULL),(4,'Informatique/BTP','2023-03-15 15:21:24','2023-03-15 15:21:24',NULL),(5,'Informatique/Système embarqué','2023-03-15 15:21:24','2023-03-15 15:21:24',NULL),(6,'Système embarqué/BTP','2023-03-15 15:21:24','2023-03-15 15:21:24',NULL),(7,'Général','2023-03-15 15:36:34','2023-03-15 15:36:34',NULL);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus`
--

DROP TABLE IF EXISTS `campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campus` (
  `id_campus` int NOT NULL AUTO_INCREMENT,
  `name_campus` varchar(45) DEFAULT NULL,
  `cre_campus` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_campus` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_campus` timestamp NULL DEFAULT NULL,
  `addresses_id_addresses` int NOT NULL,
  PRIMARY KEY (`id_campus`),
  UNIQUE KEY `Ville_UNIQUE` (`name_campus`),
  KEY `fk_campus_adresses1_idx` (`addresses_id_addresses`),
  CONSTRAINT `fk_campus_adresses1` FOREIGN KEY (`addresses_id_addresses`) REFERENCES `addresses` (`id_addresses`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus`
--

LOCK TABLES `campus` WRITE;
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` VALUES (1,'CESI Angoulême','2023-03-16 09:19:55','2023-03-16 09:19:55',NULL,7),(2,'CESI Paris-Nanterre','2023-03-16 09:19:55','2023-03-16 09:19:55',NULL,5),(3,'CESI Toulouse','2023-03-16 09:19:55','2023-03-16 09:19:55',NULL,6);
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id_classes` int NOT NULL AUTO_INCREMENT,
  `name_class` varchar(45) NOT NULL,
  `cre_classes` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_classes` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_classes` timestamp NULL DEFAULT NULL,
  `campus_id_campus` int NOT NULL,
  PRIMARY KEY (`id_classes`),
  KEY `fk_class_campus1_idx` (`campus_id_campus`),
  CONSTRAINT `fk_class_campus1` FOREIGN KEY (`campus_id_campus`) REFERENCES `campus` (`id_campus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id_companies` int NOT NULL AUTO_INCREMENT,
  `name_company` varchar(45) DEFAULT NULL,
  `logo_company` varchar(255) DEFAULT NULL,
  `city_companie` varchar(45) NOT NULL,
  `telephone_company` varchar(45) NOT NULL,
  `email_company` varchar(45) NOT NULL,
  `staff_number` int NOT NULL,
  `description_company` varchar(255) NOT NULL,
  `cre_companies` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_companies` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_companies` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_companies`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Airbus','logo1.png','Toulouse','0509080704','airbus.rh@airbus.fr',135000,'Entreprise spécialisée dans la vente des aviations','2023-03-15 13:50:23','2023-03-15 13:50:23',NULL),(5,'Thalès','logo5.png','Toulouse','0509080705','thales.rh@thales.fr',81000,'Entreprise spécialisée pour aider les entreprises spécialisée dans la vente des aviations','2023-03-15 13:50:23','2023-03-15 13:50:23',NULL),(10,'Météo France','logo11.png','Paris','0509080703','mtf.rh@mtf.fr',40000,'Prévoit la météo','2023-03-15 13:50:23','2023-03-15 13:50:23',NULL),(20,'Riot Games','logo21.png','Lyon','0509080701','rito.rh@riot.fr',50,'Créer des jeux vidéos','2023-03-15 13:50:23','2023-03-15 13:50:23',NULL);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_addresses`
--

DROP TABLE IF EXISTS `companies_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_addresses` (
  `companies_id_companies` int NOT NULL,
  `addresses_id_addresses` int NOT NULL,
  `cre_companies_addresses` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_companies_addresses` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_companies_addresses` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`companies_id_companies`,`addresses_id_addresses`),
  KEY `fk_companies_has_adresses_adresses1_idx` (`addresses_id_addresses`),
  KEY `fk_companies_has_adresses_companies1_idx` (`companies_id_companies`),
  CONSTRAINT `fk_companies_has_adresses_adresses1` FOREIGN KEY (`addresses_id_addresses`) REFERENCES `addresses` (`id_addresses`),
  CONSTRAINT `fk_companies_has_adresses_companies1` FOREIGN KEY (`companies_id_companies`) REFERENCES `companies` (`id_companies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_addresses`
--

LOCK TABLES `companies_addresses` WRITE;
/*!40000 ALTER TABLE `companies_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies_areas`
--

DROP TABLE IF EXISTS `companies_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies_areas` (
  `companies_id_companies` int NOT NULL,
  `areas_id_areas` int NOT NULL,
  `cre_companies_areas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_companies_areas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_companies_areas` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`companies_id_companies`,`areas_id_areas`),
  KEY `fk_Entreprises_has_Domaine_Domaine1_idx` (`areas_id_areas`),
  KEY `fk_Entreprises_has_Domaine_Entreprises1_idx` (`companies_id_companies`),
  CONSTRAINT `fk_Entreprises_has_Domaine_Domaine1` FOREIGN KEY (`areas_id_areas`) REFERENCES `areas` (`id_areas`),
  CONSTRAINT `fk_Entreprises_has_Domaine_Entreprises1` FOREIGN KEY (`companies_id_companies`) REFERENCES `companies` (`id_companies`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies_areas`
--

LOCK TABLES `companies_areas` WRITE;
/*!40000 ALTER TABLE `companies_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expertises`
--

DROP TABLE IF EXISTS `expertises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expertises` (
  `id_expertises` int NOT NULL AUTO_INCREMENT,
  `name_expertise` varchar(45) NOT NULL,
  `cre_expertises` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_expertises` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_expertises` timestamp NULL DEFAULT NULL,
  `areas_id_areas` int NOT NULL,
  PRIMARY KEY (`id_expertises`),
  KEY `fk_expertises_areas1_idx` (`areas_id_areas`),
  CONSTRAINT `fk_expertises_areas1` FOREIGN KEY (`areas_id_areas`) REFERENCES `areas` (`id_areas`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expertises`
--

LOCK TABLES `expertises` WRITE;
/*!40000 ALTER TABLE `expertises` DISABLE KEYS */;
INSERT INTO `expertises` VALUES (1,'développeur front','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,1),(2,'développeur back','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,1),(3,'Ingénieur BTP en bureau d\'étude','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,3),(4,'Ingénieur système embarqué','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,2),(5,'Ingénieur BTP sur terrain','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,3),(6,'Technicien supérieur en informatique','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,1),(7,'Technicien supérieur en système embarqué','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,3),(8,'Technicien supérieur en BTP','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,2),(9,'Développeur','2023-03-15 15:25:20','2023-03-15 15:25:20',NULL,1),(10,'général','2023-03-15 15:37:12','2023-03-15 15:37:12',NULL,7);
/*!40000 ALTER TABLE `expertises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id_offers` int NOT NULL AUTO_INCREMENT,
  `contact_offer` varchar(45) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `link_offer` varchar(255) DEFAULT NULL,
  `description_offer` longtext,
  `type_offer` varchar(45) NOT NULL,
  `date_offer` date NOT NULL,
  `name_offer` longtext,
  `cre_offers` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_offers` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `salary` int NOT NULL,
  `del_offers` timestamp NULL DEFAULT NULL,
  `number_offer` int NOT NULL,
  `expertises_id_expertises` int NOT NULL,
  `companies_id_companies` int NOT NULL,
  `adresses_id_adresses` int NOT NULL,
  `level_offer` varchar(45) NOT NULL,
  PRIMARY KEY (`id_offers`),
  KEY `fk_Offres_Entreprises1_idx` (`companies_id_companies`),
  KEY `fk_offers_expertises1_idx` (`expertises_id_expertises`),
  KEY `fk_offers_adresses1_idx` (`adresses_id_adresses`),
  CONSTRAINT `fk_offers_adresses1` FOREIGN KEY (`adresses_id_adresses`) REFERENCES `addresses` (`id_addresses`),
  CONSTRAINT `fk_offers_expertises1` FOREIGN KEY (`expertises_id_expertises`) REFERENCES `expertises` (`id_expertises`),
  CONSTRAINT `fk_Offres_Entreprises1` FOREIGN KEY (`companies_id_companies`) REFERENCES `companies` (`id_companies`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (41,'Jeanguy.fete@airbus.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','dessin électronique des pédales du cockpit','internship','2023-03-04','dessin électronique','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,2,9,1,1,'bac+2'),(42,'Jeanguy.fete@airbus.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','coder le bouton digital pour la lumière des classes éco','internship','2023-03-04','système embarqué','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,1,4,1,1,'bac+2'),(43,'Jeanguy.fete@airbus.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','coder le bouton digital pour la lumière des classes premium','internship','2023-03-04','système embarqué','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,2,4,1,1,'bac+2'),(44,'Jeanguy.fete@airbus.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','coder le bouton digital pour la lumière des classes business','internship','2023-03-04','système embarqué','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,2,4,1,1,'bac+2'),(45,'Jeanguy.fete@thales.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','définir les besoins de l\'interface graphique du cockpit','internship','2023-03-04','définition des besoins','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,1,1,5,2,'bac+2'),(46,'Jeanguy.fete@thales.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','prototyper l\'interface graphique du cockpit','internship','2023-03-04','prtotyper une interface','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,1,1,5,2,'bac+2'),(47,'Jeanguy.fete@thales.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Choix des matériaux pour les pales des moteurs de l\'A390','internship','2023-03-04','Choix des matériaux','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,1,3,5,2,'bac+2'),(48,'Jeanguy.fete@thales.fr',400,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Définir les dimensions des bobines pour alimenter les écrans de l\'avion','work-study','2023-03-04','Dimensionnement de bobines ','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,1,3,5,2,'bac+3'),(49,'Jeanguy.fete@mtf.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Les différentes directions métiers de Météo-France sont des gros producteurs etconsommateurs de données avec quelques spécificités par rapport aux usages « big data »que l\'on peut communément rencontrer. La croissance des volumes de données n\'est pas liéeà l\'augmentation du nombre d\'enregistrements à traiter, mais à la taille de chaqueenregistrement. En effet les données les plus volumineuses à Météo-France se trouve sousforme de champs 2D horizontaux (imagerie radar ou satellite) ou 3D (modèle de prévisionnumérique). Ces données sont stockées sous forme de raster dans différents format de fichier : netcdf, GRIB2, Geotiff, contenant des métadonnées permettant d\'identifier le contenu du fichier. Historiquement à Météo-France, la manipulation de ses fichiers se faisait à travers différents outils en ligne de commande (GMT, CDO, EcCodes) ou à travers des librairies с et Fortran pour réaliser des calculs sur les données. Avec le développement de nombreuses librairies en Python permettant de faire de l\'analyse des données ou des sorties graphiques, de nombreux développeurs à Météo-France migrent leurs anciens scripts vers du Python. Ces migrations se font sans concertation entre les équipes métiers ce qui peut amener à des développements redondants. Dans le cadre d\'une action d\'innovation, il est proposé d\'instruire la possibilité et l\'intérêt de mettre en place une librairie Python de manipulation des données météorologiques qui puissent être partagée entre les différentes équipes. Deux ateliers de co-constructions pour définir le périmètre de cette librairie sont prévus en mai et juin. Le premier atelier vise à définir un périmètre fonctionnel pour la librairie, en identifiant les cas d\'usage les plus partagés entre les équipes. Et à prioriser ces cas d\'usage.Le deuxième atelier vise à définir l\'organisation \'technique\' autour de la librairie: sur quelleslibrairies externes s\'appuyer, l\'arborescence du git, les règles de contribution (merge request).Ce stage sera suivi d\'un autre stage ciblé pour un bac+4 informatique au cours de l\'été qui seconsacrera à l\'implémentation concrète des cas d\'usage prioritaires dans la librairie.','internship','2023-03-04','Mise en places d\'une bibliothèque','2023-03-15 16:13:17','2023-03-15 16:13:17',1200,NULL,1,6,10,3,'bac+2'),(50,'Jeanguy.fete@mtf.fr',400,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Prédire la météo avec des calculs de probabilités','work-study','2023-03-04','Calculs de probabilités','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,9,10,3,'bac+3'),(51,'Jeanguy.fete@mtf.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Optimiser les trajectoires des ballons','internship','2023-03-04','Optimisation de trajectoires','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,8,10,3,'bac+2'),(52,'Jeanguy.fete@mtf.fr',400,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Dire s\'il fait beau à Narbonne pour y allez le dimanche','internship','2023-03-04','Prédire la météo','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,10,10,3,'bac+2'),(53,'Jeanguy.fete@mtf.fr',400,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Créer un second supercalculateur','work-study','2023-03-04','Création d\'un supercalculateur','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,4,10,3,'bac+3'),(54,'Jeanguy.fete@mtf.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Définir l\'angle parfait d\'une parabole','internship','2023-03-04','mise en place de paraboles','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,10,10,3,'bac+2'),(55,'Jeanguy.fete@mtf.fr',40000,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Dimensionner le support d\'un radar','internship','2023-03-04','Construire un support aux dimensions spécifiques','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,5,10,3,'bac+2'),(56,'Jeanguy.fete@riot.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Automatiser la régulation des messages toxiques','internship','2023-03-04','Créer un bot modérateur','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,2,20,4,'bac+4'),(57,'Jeanguy.fete@riot.fr',16,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Automatiser les demandes de débanissement','internship','2023-03-04','Créer un bot modérateur','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,2,20,4,'bac+4'),(58,'Jeanguy.fete@riot.fr',400,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Débugger le lobby et mettre en place un meilleur client','work-study','2023-03-04','Debuggage d\'applications','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,1,20,4,'bac+4'),(59,'Jeanguy.fete@riot.fr',400,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Coder un battle royal comme EpicGames','work-study','2023-03-04','Coder un jeu','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,9,20,4,'bac+3'),(60,'Jeanguy.fete@riot.fr',400,'https://www.youtube.com/watch?v=Q8mZqEazakQ&t=1s','Mettre en place un chat vocal sur League of Leeeeegends','work-study','2023-03-04','Mise en place d\'un chat vocal','2023-03-15 16:13:17','2023-03-15 16:13:17',700,NULL,1,9,20,4,'bac+3');
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `users_id_users` int NOT NULL,
  `companies_id_companies` int NOT NULL,
  `rating` int DEFAULT NULL,
  `cre_ratings` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_ratings` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_ratings` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`users_id_users`,`companies_id_companies`),
  KEY `fk_Users_has_Entreprises_Entreprises1_idx` (`companies_id_companies`),
  KEY `fk_Users_has_Entreprises_Users1_idx` (`users_id_users`),
  CONSTRAINT `fk_Users_has_Entreprises_Entreprises1` FOREIGN KEY (`companies_id_companies`) REFERENCES `companies` (`id_companies`),
  CONSTRAINT `fk_Users_has_Entreprises_Users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_roles` int NOT NULL AUTO_INCREMENT,
  `name_role` varchar(45) DEFAULT NULL,
  `cre_roles` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_roles` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_roles` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_roles`),
  UNIQUE KEY `Nom_role_UNIQUE` (`name_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'tuteur','2023-03-15 10:56:13','2023-03-15 10:56:13',NULL),(2,'admin','2023-03-15 10:56:42','2023-03-15 10:56:42',NULL),(3,'élève','2023-03-15 10:56:48','2023-03-15 10:56:48',NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_users` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(70) NOT NULL,
  `last_name` varchar(70) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `graduation_year` int DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `cre_users` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_users` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_users` timestamp NULL DEFAULT NULL,
  `roles_id_roles` int DEFAULT NULL,
  PRIMARY KEY (`id_users`),
  UNIQUE KEY `Email_UNIQUE` (`email`),
  KEY `fk_Users_Roles1_idx` (`roles_id_roles`),
  CONSTRAINT `fk_Users_Roles1` FOREIGN KEY (`roles_id_roles`) REFERENCES `roles` (`id_roles`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'John','Doe','johndoe@email.com','password123','1990-02-01','1234567890',2025,'profil.jpg','2023-03-15 10:33:31','2023-03-15 10:33:31',NULL,NULL),(2,'Dorian','GOTTY MICHELSON','dorian.gottymichelson@viacesi.fr','password123=','2002-10-29','0644835589',2026,'profile.jpg','2023-03-15 10:35:15','2023-03-15 12:36:39',NULL,3),(3,'Lino','LAFORE','lino.lafore@viacesi.fr','password123=1','2003-12-12','+33664758493',2026,'profil_lino.jpg','2023-03-15 10:36:34','2023-03-15 12:36:39',NULL,3),(4,'John','Doe','johndoe@viacesi.fr','password1','2002-01-01','1234567890',2025,'profile1.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(5,'Jane','Smith','janesmith@viacesi.fr','password2','2002-02-15','2345678901',2025,'profile2.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(6,'Bob','Johnson','bobjohnson@viacesi.fr','password3','2002-05-23','3456789012',2025,'profile3.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(7,'Alice','Williams','alicewilliams@viacesi.fr','password4','2002-12-07','4567890123',2025,'profile4.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(8,'Michael','Brown','michaelbrown@viacesi.fr','password5','2002-08-31','5678901234',2025,'profile5.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(9,'Karen','Taylor','ktaylor@cesi.fr','password6','1980-04-22','6789012345',NULL,'profile6.jpg','2023-03-15 10:45:32','2023-03-15 12:36:04',NULL,1),(10,'David','Anderson','davidanderson@viacesi.fr','password7','2002-11-16','7890123456',2025,'profile7.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(11,'Susan','Thomas','susanthomas@viacesi.fr','password8','2002-07-09','8901234567',2025,'profile8.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(12,'Steven','Jackson','stevenjackson@viacesi.fr','password9','2002-03-02','9012345678',2025,'profile9.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(13,'Lisa','Garcia','lgarcia@cesi.fr','password10','1980-06-18','0123456789',NULL,'profile10.jpg','2023-03-15 10:45:32','2023-03-15 12:36:04',NULL,1),(14,'Tom','Martinez','tommartinez@viacesi.fr','password11','2002-10-13','1234567890',2025,'profile11.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(15,'Amy','Robinson','amyrobinson@viacesi.fr','password12','2002-09-27','2345678901',2025,'profile12.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(16,'Peter','Clark','peterclark@viacesi.fr','password13','2002-01-08','3456789012',2025,'profile13.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(17,'Megan','Rodriguez','meganrodriguez@viacesi.fr','password14','2002-05-31','4567890123',2025,'profile14.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(18,'Kevin','Lee','kevinlee@viacesi.fr','password15','2002-12-15','5678901234',2010,'profile15.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(19,'Jessica','Gonzalez','jessicagonzalez@viacesi.fr','password16','2002-08-08','6789012345',2025,'profile16.jpg','2023-03-15 10:45:32','2023-03-15 12:36:39',NULL,3),(20,'Andrew','Nelson','anelson@cesi.fr','password17','1980-03-21','7890123456',NULL,'profile17.jpg','2023-03-15 10:45:32','2023-03-15 12:36:04',NULL,1),(21,'Jean','RICARD','jeanricard@gmail.com','password123','1990-05-15','+3323454234',NULL,'profile_picture_url','2023-03-15 12:41:57','2023-03-15 12:44:38',NULL,2);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_in_classes`
--

DROP TABLE IF EXISTS `users_in_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_in_classes` (
  `classes_id_classes` int NOT NULL,
  `users_id_users` int NOT NULL,
  `cre_users_in_classes` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_users_in_classes` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_users_in_classes` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`classes_id_classes`,`users_id_users`),
  KEY `fk_classes_has_users_users1_idx` (`users_id_users`),
  KEY `fk_classes_has_users_classes1_idx` (`classes_id_classes`),
  CONSTRAINT `fk_classes_has_users_classes1` FOREIGN KEY (`classes_id_classes`) REFERENCES `classes` (`id_classes`),
  CONSTRAINT `fk_classes_has_users_users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_in_classes`
--

LOCK TABLES `users_in_classes` WRITE;
/*!40000 ALTER TABLE `users_in_classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_in_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `users_id_users` int NOT NULL,
  `offers_id_offers` int NOT NULL,
  `cre_wishlists` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mod_wishlists` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `del_wishlists` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`users_id_users`,`offers_id_offers`),
  KEY `fk_Users_has_Offres_Offres1_idx` (`offers_id_offers`),
  KEY `fk_Users_has_Offres_Users1_idx` (`users_id_users`),
  CONSTRAINT `fk_Users_has_Offres_Offres1` FOREIGN KEY (`offers_id_offers`) REFERENCES `offers` (`id_offers`),
  CONSTRAINT `fk_Users_has_Offres_Users1` FOREIGN KEY (`users_id_users`) REFERENCES `users` (`id_users`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 10:50:07
