-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: herbal
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','$2b$12$MulcF3yro7Y.dvXal.xeFOLQ6qa54k74xRoQXOGnXhoBLjVeHlY/m','2024-12-27 19:48:34',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('fd4efb0b264f');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_log`
--

DROP TABLE IF EXISTS `audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `target_user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `target_user_id` (`target_user_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `audit_log_ibfk_1` FOREIGN KEY (`target_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `audit_log_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_log`
--

LOCK TABLES `audit_log` WRITE;
/*!40000 ALTER TABLE `audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disease` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disease_name` varchar(255) NOT NULL,
  `description` text,
  `natural_therapy` text,
  `yoga_beginner` text,
  `image_name_beginner` varchar(255) NOT NULL,
  `yoga_moderate` text,
  `image_name_moderate` varchar(255) NOT NULL,
  `yoga_advanced` text,
  `image_name_advanced` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `disease_name` (`disease_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,'Diabetes','High blood sugar levels due to insulin resistance or deficiency.','Moringa Oleifera, Jamun, Tulsi','Balasana','balasana.webp','Ardha Matsyendrasana','Ardha Matsyendrasana.jpeg','Paschimottanasana','Paschimottanasana.jpeg'),(2,'Hypertension','High blood pressure leading to cardiovascular risks.','Garlic, Tulsi, Lemon','Sukhasana (Easy Pose)','Sukhasana.webp','Vajrasana','Vajrasana.jpeg','Sirsasana (Headstand)','Sirsasana.jpeg'),(3,'Digestive Disorders','Issues like indigestion, bloating, and constipation.','Mint, Ginger, Betel','Pavanamuktasana','Pavanamuktasana.jpeg','Bhujangasana','Bhujangasana.jpeg','Mayurasana (Peacock)','Mayurasana.jpeg'),(4,'Skin Infections','Bacterial or fungal infections causing rashes or irritation.','Neem, Turmeric, Sandalwood','Bhujangasana','Bhujangasana.jpeg','Dhanurasana','Dhanurasana.jpeg','Chakrasana (Wheel)','Chakrasana.jpeg'),(5,'Respiratory Issues','Asthma, bronchitis, or congestion due to inflammation.','Tulsi, Ginger, Eucalyptus','Anulom Vilom Pranayama','Anulom Vilom Pranayama.jpeg','Bhastrika Pranayama','Bhastrika Pranayama.jpeg','Kapal Bhati Pranayama','Kapal Bhati Pranayama.jpeg'),(6,'Arthritis','Joint inflammation causing pain and stiffness.','Turmeric, Ginger, Ashwagandha','Marjariasana','Marjariasana.jpeg','Gomukhasana','Gomukhasana.jpeg','Natarajasana','Natarajasana.jpeg'),(7,'Anxiety & Stress','Mental health issues causing restlessness and tension.','Tulsi, Jasmine, Ashwagandha','Shavasana','Shavasana.webp','Balasana','Balasana.webp','Sirsasana','Sirsasana.jpeg'),(8,'Insomnia','Difficulty falling or staying asleep.','Chamomile, Tulsi, Lavender','Shavasana','Shavasana.webp','Viparita Karani','Viparita Karani.jpeg','Yoga Nidra','Yoga Nidra.webp'),(9,'Obesity','Excess body fat leading to health complications.','Ginger, Lemon, Fenugreek','Surya Namaskar','Surya Namaskar.png','Trikonasana','Trikonasana.jpeg','Navasana (Boat Pose)','Navasana.jpeg'),(10,'Cold & Cough','Viral infections causing throat irritation and mucus buildup.','Tulsi, Ginger, Lemon','Anulom Vilom Pranayama','Anulom Vilom Pranayama.jpeg','Bhastrika Pranayama','Bhastrika Pranayama.jpeg','Kapal Bhati Pranayama','Kapal Bhati Pranayama.jpeg'),(11,'Liver Disorders','Issues like fatty liver or hepatitis affecting liver function.','Neem, Turmeric, Amla','Ardha Matsyendrasana','Ardha Matsyendrasana.jpeg','Bhujangasana','Bhujangasana.jpeg','Mayurasana','Mayurasana.jpeg'),(12,'Kidney Stones','Hard deposits in kidneys causing pain and urinary issues.','Pomegranate, Basil, Lemon','Pavanamuktasana','Pavanamuktasana.jpeg','Balasana','Balasana.jpeg','Paschimottanasana','Paschimottanasana.jpeg'),(13,'Anemia','Low hemoglobin levels causing fatigue and weakness.','Spinach, Beetroot, Fenugreek','Surya Namaskar','Surya Namaskar.png','Vajrasana','Vajrasana.jpeg','Sarvangasana','Sarvangasana.jpeg'),(14,'Allergies','Immune system overreaction to allergens causing rashes or sneezing.','Neem, Turmeric, Tulsi','Bhujangasana','Bhujangasana.jpeg','Dhanurasana','Dhanurasana.jpeg','Chakrasana','Chakrasana.jpeg'),(15,'Menstrual Cramps','Painful cramps during menstruation.','Ginger, Mint, Fenugreek','Balasana','balasana.webp','Supta Baddha Konasana','Supta Baddha Konasana.jpeg','Baddha Konasana','Baddha Konasana.jpeg');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herbal_plant`
--

DROP TABLE IF EXISTS `herbal_plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `herbal_plant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `common_name` varchar(255) NOT NULL,
  `scientific_name` varchar(255) NOT NULL,
  `botanical_name` varchar(255) DEFAULT NULL,
  `description` text,
  `uses` text,
  `origin` varchar(255) DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `climate` varchar(255) DEFAULT NULL,
  `soil` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) NOT NULL,
  `additional_info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herbal_plant`
--

LOCK TABLES `herbal_plant` WRITE;
/*!40000 ALTER TABLE `herbal_plant` DISABLE KEYS */;
INSERT INTO `herbal_plant` VALUES (1,'Alpinia Galanga (Rasna)','Alpinia galanga','Alpinia galanga','Upright plant used in Southeast Asian cuisine and traditional medicine.','Culinary spice, respiratory and digestive treatment in Ayurveda.','South and Southeast Asia, particularly Java, Indonesia.','Southern regions','Tropical, humid with well-distributed rainfall.','Well-drained, fertile soils rich in organic matter.','Alpinia galanga.jpg','Strong taste reminiscent of citrus and black pepper.'),(2,'Amaranthus Viridis (Arive-Dantu)','Amaranthus viridis','Amaranthus viridis','Slender herb used as a leafy vegetable.','Culinary vegetable, diuretic in traditional medicine.','Tropical and subtropical regions worldwide.','Fields and gardens across India.','Warm with adequate rainfall.','Adaptable, prefers well-drained soils.','Amaranthus viridis.jpg','Rich in vitamins and minerals.'),(3,'Artocarpus Heterophyllus (Jackfruit)','Artocarpus heterophyllus','Artocarpus heterophyllus','Large evergreen tree producing the largest tree fruit.','Culinary use, antimicrobial and antifungal properties.','Western Ghats of India.','Tropical regions, especially Kerala and Tamil Nadu.','Tropical, high humidity.','Deep, well-drained alluvial soils.','Artocarpus heterophyllus.jpg','National fruit of Bangladesh, state fruit of Kerala and Tamil Nadu.'),(4,'Azadirachta Indica (Neem)','Azadirachta indica','Azadirachta indica','Fast-growing evergreen tree with small white flowers.','Medicinal (antibacterial, antifungal), cosmetics, and pesticides.','Indian subcontinent.','Throughout India, commonly planted along roadsides and in gardens.','Tropical and semi-tropical.','Well-drained, sandy soils.','Azadirachta indica.jpg','Cornerstone of Ayurvedic medicine.'),(5,'Basella Alba (Basale)','Basella alba','Basella alba','Fast-growing vine with heart-shaped leaves.','Culinary vegetable, skin ailment treatment.','Tropical Asia and Africa.','South India, home gardens.','Warm, humid tropical climates.','Well-drained, fertile soils rich in organic matter.','Basella alba.jpg','Low-maintenance, easily propagated.'),(6,'Brassica Juncea (Indian Mustard)','Brassica juncea','Brassica juncea','Annual herb with yellow flowers and seed pods used for mustard oil.','Culinary, mustard oil production, medicinal (skin diseases, anti-inflammatory).','Indian subcontinent and Central Asia.','Punjab, Haryana, Uttar Pradesh.','Temperate and subtropical regions.','Well-drained, loamy soils with good fertility.','Brassica juncea.jpg','Rich in vitamins, minerals, and antioxidants.'),(7,'Carissa Carandas (Karanda)','Carissa carandas','Carissa carandas','Perennial shrub with thorny branches and oval fruits.','Pickles, jams, chutneys, treatment for digestive issues and anemia.','Indian subcontinent and Southeast Asia.','Maharashtra, Rajasthan, Karnataka.','Warm, arid to semi-arid climates.','Well-drained sandy or loamy soils.','Carissa carandas.jpg','Drought-resistant and ornamental.'),(8,'Citrus Limon (Lemon)','Citrus limon','Citrus limon','Small tree with fragrant flowers and acidic yellow fruits.','Culinary, immunity booster, antimicrobial properties.','Northeast India, Myanmar, or China.','Andhra Pradesh, Maharashtra, Gujarat.','Tropical to subtropical climates.','Well-drained, fertile soils with good organic content.','Citrus limon.jpg','Rich in vitamin C.'),(9,'Ficus Auriculata (Roxburgh Fig)','Ficus auriculata','Ficus auriculata','Deciduous tree with large leaves and purple figs.','Edible fruits, treatment for ulcers and diabetes.','Himalayas and Southeast Asia.','Northeastern and Himalayan regions.','Tropical and subtropical climates.','Loamy, well-drained soils.','Ficus auriculata.jpg','Often planted for ornamental value and shade.'),(10,'Ficus Religiosa (Peepal Tree)','Ficus religiosa','Ficus religiosa','Large, sacred tree with heart-shaped leaves.','Traditional medicine, oxygen source, religious significance.','Indian subcontinent.','Throughout India near temples and religious sites.','Tropical and subtropical climates.','Tolerant to various soil types.','Ficus religiosa.jpg','Known as the \'Tree of Life\' in Indian traditions.'),(11,'Hibiscus Rosa-sinensis','Hibiscus rosa-sinensis','Hibiscus rosa-sinensis','Tropical shrub with large, showy flowers in various colors.','Ornamental, hair care, and traditional medicine for digestive issues.','Asia.','Widely grown across India in gardens and homes.','Tropical and subtropical.','Well-drained, fertile soils rich in organic matter.','Hibiscus rosa-sinensis.jpg','National flower of Malaysia.'),(12,'Jasminum (Jasmine)','Jasminum spp.','Jasminum spp.','Climbing shrubs or small trees with fragrant white or yellow flowers.','Perfume industry, religious offerings, and traditional medicine.','South Asia.','Cultivated in Tamil Nadu, Karnataka, and Andhra Pradesh.','Tropical and subtropical climates.','Well-drained sandy loam soils.','Jasminum spp.jpg','Highly valued for its aromatic flowers.'),(13,'Mangifera Indica (Mango)','Mangifera indica','Mangifera indica','Large evergreen tree with sweet, fleshy fruit.','Edible fruit, traditional medicine, and timber.','Indian subcontinent.','Grown throughout India, especially in Uttar Pradesh and Andhra Pradesh.','Tropical and subtropical.','Well-drained, deep alluvial soils.','Mangifera indica.jpg','National fruit of India.'),(14,'Mentha (Mint)','Mentha spp.','Mentha spp.','Perennial herb with aromatic leaves.','Culinary herb, essential oils, and traditional medicine.','Europe and Asia.','Cultivated in Uttar Pradesh and Punjab.','Temperate and subtropical climates.','Moist, fertile soils with good drainage.','Mentha spp.jpg','Known for its cooling properties.'),(15,'Moringa Oleifera (Drumstick)','Moringa oleifera','Moringa oleifera','Fast-growing tree with edible leaves and pods.','Nutritional supplement, traditional medicine, and water purification.','Indian subcontinent.','Commonly grown in South India.','Tropical and subtropical.','Sandy loam soils with good drainage.','Moringa oleifera.jpg','Known as the \'Miracle Tree\'.'),(16,'Muntingia Calabura (Jamaica Cherry-Gasagase)','Muntingia calabura','Muntingia calabura','Small, fast-growing tree with edible red fruits.','Fruits are consumed fresh; bark and leaves used in traditional medicine.','Central and South America.','Found in tropical regions, especially in gardens and along roadsides.','Tropical and subtropical.','Grows well in sandy, well-drained soils.','Muntingia calabura.jpg','Known for its rapid growth and sweet fruits.'),(17,'Murraya Koenigii (Curry)','Murraya koenigii','Murraya koenigii','Small tree with aromatic leaves used in Indian cuisine.','Culinary spice, traditional medicine for digestive issues and diabetes.','Indian subcontinent.','Widely grown in South India and home gardens.','Tropical and subtropical.','Loamy, well-drained soils.','Murraya koenigii.jpg','Highly valued for its flavor and medicinal properties.'),(18,'Nerium Oleander (Oleander)','Nerium oleander','Nerium oleander','Shrub or small tree with showy, fragrant flowers.','Ornamental plant; toxic, used cautiously in traditional medicine.','Mediterranean region.','Grown as an ornamental plant in gardens.','Tropical and subtropical.','Well-drained sandy or loamy soils.','Nerium oleander.jpg','Toxic if ingested; handle with care.'),(19,'Nyctanthes Arbor-tristis (Parijata)','Nyctanthes arbor-tristis','Nyctanthes arbor-tristis','Small, ornamental tree with fragrant white flowers.','Religious offerings, traditional medicine for fever and skin ailments.','South Asia and Southeast Asia.','Common in gardens and near temples.','Tropical and subtropical.','Well-drained, fertile soils.','Nyctanthes arbor-tristis.jpg','Also known as the \'Night Jasmine\'.'),(20,'Ocimum Tenuiflorum (Tulsi)','Ocimum tenuiflorum','Ocimum tenuiflorum','Sacred plant in India with aromatic leaves.','Religious, traditional medicine for respiratory and immune system health.','Indian subcontinent.','Grown widely in households and temples.','Tropical and subtropical.','Loamy, well-drained soils with organic matter.','Ocimum tenuiflorum.jpg','Revered in Hindu culture.'),(21,'Piper Betle (Betel)','Piper betle','Piper betle','Climbing vine with glossy heart-shaped leaves.','Chewing leaves, traditional medicine for digestion and oral health.','Southeast Asia.','Widely cultivated in West Bengal, Assam, and Odisha.','Tropical and humid climates.','Rich, well-drained loamy soils.','Piper betle.jpg','Used in cultural rituals and ceremonies.'),(22,'Plectranthus Amboinicus (Mexican Mint)','Plectranthus amboinicus','Plectranthus amboinicus','Aromatic, fleshy herb with soft leaves.','Culinary herb, cough relief, and digestive aid.','Africa and India.','Grown in home gardens across India.','Tropical and subtropical.','Well-drained soils with good organic content.','Plectranthus amboinicus.jpg','Commonly used in herbal teas and remedies.'),(23,'Pongamia Pinnata (Indian Beech)','Pongamia pinnata','Pongamia pinnata','Medium-sized tree with compound leaves and fragrant flowers.','Oil production, biodiesel, and traditional medicine.','Indian subcontinent.','Found along roadsides and in rural areas.','Tropical and subtropical.','Tolerates saline and alkaline soils.','Pongamia pinnata.jpg','Used for soil reclamation.'),(24,'Psidium Guajava (Guava)','Psidium guajava','Psidium guajava','Small tree with edible fruits rich in vitamin C.','Fruits for consumption, leaves in traditional medicine.','Central America.','Grown widely in Uttar Pradesh, Bihar, and Maharashtra.','Tropical and subtropical.','Well-drained soils with good fertility.','Psidium guajava.jpg','Known for its high nutritional value.'),(25,'Punica Granatum (Pomegranate)','Punica granatum','Punica granatum','Shrub or small tree with red, edible fruits.','Fruits for juices, seeds for traditional medicine.','Iran and northern India.','Widely grown in Maharashtra and Karnataka.','Semi-arid and subtropical.','Loamy, well-drained soils.','Punica granatum.jpg','Rich in antioxidants.'),(26,'Santalum Album (Sandalwood)','Santalum album','Santalum album','Small evergreen tree known for its aromatic heartwood.','Essential oils, perfumes, and traditional medicine.','Indian subcontinent.','Grown in Karnataka, Tamil Nadu, and Kerala.','Tropical and subtropical.','Well-drained red or lateritic soils.','Santalum album.jpg','Highly valued for its fragrance and medicinal properties.'),(27,'Syzygium Cumini (Jamun)','Syzygium cumini','Syzygium cumini','Medium-sized tree with purple, berry-like edible fruits.','Fruits are consumed fresh; leaves and bark are used in diabetes treatment.','Indian subcontinent.','Commonly found in forests and urban gardens.','Tropical and subtropical.','Moist, well-drained soils.','Syzygium cumini.jpg','Rich in antioxidants and used in Ayurveda.'),(28,'Syzygium Jambos (Rose Apple)','Syzygium jambos','Syzygium jambos','Small tree with fragrant flowers and rose-flavored fruits.','Eaten fresh, used in desserts, and medicinal applications.','Southeast Asia.','Grown in home gardens and tropical forests.','Tropical and subtropical.','Loamy, well-drained soils.','Syzygium jambos.jpg','Fruits are rich in vitamin C and flavonoids.'),(29,'Tabernaemontana Divaricata (Crape Jasmine)','Tabernaemontana divaricata','Tabernaemontana divaricata','Evergreen shrub with fragrant, white flowers.','Ornamental plant, traditional medicine for wound healing.','Indian subcontinent and Southeast Asia.','Widely grown in gardens and parks.','Tropical and subtropical.','Well-drained, fertile soils.','Tabernaemontana divaricata.jpg','Flowers are used in religious ceremonies.'),(30,'Trigonella Foenum-graecum (Fenugreek)','Trigonella foenum-graecum','Trigonella foenum-graecum','Annual herb with small leaves and yellow flowers.','Culinary spice, traditional medicine for digestion and diabetes.','Mediterranean region and South Asia.','Cultivated in Rajasthan, Gujarat, and Madhya Pradesh.','Semi-arid and temperate.','Well-drained sandy loam soils.','Trigonella foenum-graecum.jpg','Seeds are rich in fiber and proteins.');
/*!40000 ALTER TABLE `herbal_plant` ENABLE KEYS */;

-- Table structure for table `feedback`
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `message` TEXT NOT NULL,
    `rating` INT CHECK (`rating` BETWEEN 1 AND 5),
    `submitted_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `prediction` DISABLE KEYS */;
/*!40000 ALTER TABLE `prediction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `otp` varchar(6) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prediction`
--

DROP TABLE IF EXISTS `prediction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prediction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `prediction_type` varchar(50) NOT NULL,
  `input_data` text NOT NULL,
  `result` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `prediction_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prediction`
--

LOCK TABLES `prediction` WRITE;
/*!40000 ALTER TABLE `prediction` DISABLE KEYS */;
/*!40000 ALTER TABLE `prediction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `security_question` varchar(255) NOT NULL,
  `security_answer` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-18 14:43:25
