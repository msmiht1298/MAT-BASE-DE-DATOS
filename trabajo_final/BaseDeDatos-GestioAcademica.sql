-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestion_academica
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificacion` (
  `id_calificacion` int NOT NULL AUTO_INCREMENT,
  `id_inscripcion` int DEFAULT NULL,
  `nota` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id_calificacion`),
  KEY `id_inscripcion` (`id_inscripcion`),
  CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`id_inscripcion`) REFERENCES `inscripcion` (`id_inscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (1,1,85.50),(2,2,78.00),(3,3,92.30),(4,4,88.70),(5,5,74.50),(6,6,80.00),(7,7,91.20),(8,8,76.80),(9,9,85.00),(11,11,95.70),(12,12,67.30),(13,13,82.50),(14,14,90.80),(15,15,77.90),(16,16,84.20),(17,17,86.30),(18,18,93.50),(19,19,72.60),(20,20,88.10),(21,21,79.80),(22,22,91.70),(23,23,81.00),(24,24,94.60),(25,25,86.90),(26,26,76.20),(27,27,89.00),(28,28,70.50),(29,29,96.10),(30,30,87.50),(31,31,73.70),(32,32,92.90),(33,33,80.50),(34,34,85.60),(35,35,78.40),(36,36,94.20),(37,37,71.30),(38,38,82.90),(39,39,90.20),(40,40,77.20),(41,41,88.90),(42,42,79.10),(43,43,95.00),(44,44,84.80),(45,45,86.50),(46,46,76.00),(47,47,89.80),(48,48,91.50),(49,49,72.00),(50,50,85.30),(51,51,94.90),(52,52,78.20),(53,53,90.50),(54,54,83.10),(55,55,87.70),(56,56,75.60),(57,57,95.40),(58,58,80.30),(59,59,85.90),(60,60,92.10),(61,61,76.90),(62,62,89.50),(63,63,91.00),(64,64,73.50),(65,65,94.80),(66,66,86.00),(67,67,79.00),(68,68,88.30),(69,69,82.40),(70,70,96.50),(71,71,74.10),(72,72,90.00),(73,73,85.10),(74,74,93.70),(75,75,78.90),(76,76,84.70),(77,77,92.60),(78,78,77.50),(79,79,87.20),(80,80,95.90),(81,81,80.20),(82,82,89.30),(83,83,73.80),(84,84,94.50),(85,85,76.70),(86,86,90.90),(87,87,85.80),(88,88,78.00),(89,89,82.80),(90,90,88.50),(91,91,97.10),(92,92,74.80),(93,93,92.00),(94,94,86.70),(95,95,79.30),(96,96,90.20),(97,97,83.40),(98,98,95.60),(99,99,77.10),(100,100,88.20);
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clase` (
  `id_clase` int NOT NULL AUTO_INCREMENT,
  `id_curso` int DEFAULT NULL,
  `id_profesor` int DEFAULT NULL,
  `semestre` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_clase`),
  KEY `id_curso` (`id_curso`),
  KEY `id_profesor` (`id_profesor`),
  CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `clase_ibfk_2` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (1,1,1,'2025-1'),(2,2,2,'2025-1'),(3,3,3,'2025-1'),(4,4,4,'2025-1'),(5,5,5,'2025-1'),(6,6,6,'2025-2'),(7,7,7,'2025-2'),(8,8,8,'2025-2'),(9,9,9,'2025-2'),(10,10,10,'2025-2'),(11,11,11,'2025-1'),(12,12,12,'2025-1'),(13,13,13,'2025-1'),(14,14,14,'2025-1'),(15,15,15,'2025-1'),(16,16,16,'2025-2'),(17,17,17,'2025-2'),(18,18,18,'2025-2'),(19,19,19,'2025-2'),(20,20,20,'2025-2'),(21,21,21,'2025-1'),(22,22,22,'2025-1'),(23,23,23,'2025-1'),(24,24,24,'2025-1'),(25,25,25,'2025-1'),(26,26,26,'2025-2'),(27,27,27,'2025-2'),(28,28,28,'2025-2'),(29,29,29,'2025-2'),(30,30,30,'2025-2'),(31,31,31,'2025-1'),(32,32,32,'2025-1'),(33,33,33,'2025-1'),(34,34,34,'2025-1'),(35,35,35,'2025-1'),(36,36,36,'2025-2'),(37,37,37,'2025-2'),(38,38,38,'2025-2'),(39,39,39,'2025-2'),(40,40,40,'2025-2'),(41,41,41,'2025-1'),(42,42,42,'2025-1'),(43,43,43,'2025-1'),(44,44,44,'2025-1'),(45,45,45,'2025-1'),(46,46,46,'2025-2'),(47,47,47,'2025-2'),(48,48,48,'2025-2'),(49,49,49,'2025-2'),(50,50,50,'2025-2'),(51,51,51,'2025-1'),(52,52,52,'2025-1'),(53,53,53,'2025-1'),(54,54,54,'2025-1'),(55,55,55,'2025-1'),(56,56,56,'2025-2'),(57,57,57,'2025-2'),(58,58,58,'2025-2'),(59,59,59,'2025-2'),(60,60,60,'2025-2'),(61,61,61,'2025-1'),(62,62,62,'2025-1'),(63,63,63,'2025-1'),(64,64,64,'2025-1'),(65,65,65,'2025-1'),(66,66,66,'2025-2'),(67,67,67,'2025-2'),(68,68,68,'2025-2'),(69,69,69,'2025-2'),(70,70,70,'2025-2'),(71,71,71,'2025-1'),(72,72,72,'2025-1'),(73,73,73,'2025-1'),(74,74,74,'2025-1'),(75,75,75,'2025-1'),(76,76,76,'2025-2'),(77,77,77,'2025-2'),(78,78,78,'2025-2'),(79,79,79,'2025-2'),(80,80,80,'2025-2'),(81,81,81,'2025-1'),(82,82,82,'2025-1'),(83,83,83,'2025-1'),(84,84,84,'2025-1'),(85,85,85,'2025-1'),(86,86,86,'2025-2'),(87,87,87,'2025-2'),(88,88,88,'2025-2'),(89,89,89,'2025-2'),(90,90,90,'2025-2'),(91,91,91,'2025-1'),(92,92,92,'2025-1'),(93,93,93,'2025-1'),(94,94,94,'2025-1'),(95,95,95,'2025-1'),(96,96,96,'2025-2'),(97,97,97,'2025-2'),(98,98,98,'2025-2'),(99,99,99,'2025-2'),(100,100,100,'2025-2');
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `creditos` int NOT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Programación en Python',4,1),(2,'Estructuras de Datos',4,1),(3,'Bases de Datos Avanzadas',3,1),(4,'Electrónica Digital',4,2),(5,'Circuitos Eléctricos',3,2),(6,'Cálculo Diferencial',4,3),(7,'Álgebra Lineal',3,3),(8,'Química Orgánica',4,4),(9,'Física Cuántica',4,5),(10,'Biología Molecular',3,6),(11,'Gestión Empresarial',3,7),(12,'Microeconomía',3,8),(13,'Psicología Cognitiva',3,9),(14,'Sociología Aplicada',3,10),(15,'Periodismo Digital',3,11),(16,'Diseño de Interfaces',3,12),(17,'Arquitectura Sostenible',4,13),(18,'Derecho Constitucional',3,14),(19,'Contabilidad General',3,15),(20,'Marketing Digital',3,16),(21,'Análisis Financiero',3,17),(22,'Didáctica en Educación',3,18),(23,'Entrenamiento Deportivo',4,19),(24,'Anatomía Humana',4,20),(25,'Ortodoncia Básica',3,21),(26,'Cuidados Intensivos',3,22),(27,'Farmacología Clínica',4,23),(28,'Nutrición Animal',3,24),(29,'Antropología Cultural',3,25),(30,'Historia Contemporánea',3,26),(31,'Cartografía Digital',3,27),(32,'Literatura Latinoamericana',3,28),(33,'Traducción Profesional',3,29),(34,'Ingeniería Estructural',4,30),(35,'Optimización de Procesos',3,31),(36,'Mecánica de Materiales',4,32),(37,'Desarrollo de Aplicaciones',4,33),(38,'Tecnologías Disruptivas',3,34),(39,'Cambio Climático y Gestión Ambiental',3,35),(40,'Gestión Turística',3,36),(41,'Administración Hotelera',3,37),(42,'Arte Culinario',4,38),(43,'Producción Musical',3,39),(44,'Actuación Teatral',3,40),(45,'Danza Contemporánea',3,41),(46,'Dirección de Cine',4,42),(47,'Relaciones Diplomáticas',3,43),(48,'Análisis Político',3,44),(49,'Criminología Forense',3,45),(50,'Intervención Social',3,46),(51,'Filosofía Moderna',3,47),(52,'Teología Comparada',3,48),(53,'Astrofísica',4,49),(54,'Nanotecnología Aplicada',4,50),(55,'Biotecnología y Genética',4,51),(56,'Introducción a la IA',3,52),(57,'Robótica Autónoma',4,53),(58,'Seguridad Informática',4,54),(59,'Desarrollo Web Full-Stack',4,55),(60,'Creación de Videojuegos',3,56),(61,'Análisis de Big Data',4,57),(62,'Ciencia de Datos',3,58),(63,'Blockchain y Finanzas',3,59),(64,'Redes y Protocolos',4,60),(65,'Sistemas Embebidos',3,61),(66,'Automatización Industrial',4,62),(67,'Agricultura Inteligente',3,63),(68,'Mineralogía y Geología',3,64),(69,'Meteorología Aplicada',3,65),(70,'Oceanografía',3,66),(71,'Actuaría Financiera',3,67),(72,'Estadística Avanzada',3,68),(73,'Logística Estratégica',3,69),(74,'Transporte Inteligente',3,70),(75,'Ingeniería Naval',4,71),(76,'Ingeniería Aeroespacial',4,72),(77,'Biomecánica',4,73),(78,'Bioquímica Médica',4,74),(79,'Neurociencia Aplicada',3,75),(80,'Ecología Urbana',3,76),(81,'Oceanografía Aplicada',3,77),(82,'Patología Clínica',4,78),(83,'Rehabilitación Física',3,79),(84,'Terapia Ocupacional',3,80),(85,'Optometría Clínica',3,81),(86,'Tecnología Médica',3,82),(87,'Educación Inclusiva',3,83),(88,'Orientación Educativa',3,84),(89,'Educación Artística',3,85),(90,'Pedagogía Moderna',3,86),(91,'Didáctica Musical',3,87),(92,'Matemáticas en Secundaria',3,88),(93,'Física en Secundaria',3,89),(94,'Historia en Secundaria',3,90),(95,'Geografía en Secundaria',3,91),(96,'Lengua y Literatura en Secundaria',3,92),(97,'Biología en Secundaria',3,93),(98,'Inglés en Secundaria',3,94),(99,'Negocios Internacionales',3,95),(100,'Telecomunicaciones Avanzadas',4,96),(101,'Inteligencia de Negocios',3,97),(102,'Innovación Empresarial',3,98),(103,'Investigación de Mercados',3,99),(104,'Desarrollo Organizacional',3,100);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencias de la Computación'),(2,'Ingeniería Eléctrica'),(3,'Matemáticas Aplicadas'),(4,'Química'),(5,'Física'),(6,'Biología'),(7,'Administración de Empresas'),(8,'Economía'),(9,'Psicología'),(10,'Sociología'),(11,'Comunicación Social'),(12,'Diseño Gráfico'),(13,'Arquitectura'),(14,'Derecho'),(15,'Contabilidad'),(16,'Mercadeo'),(17,'Finanzas'),(18,'Educación Inicial'),(19,'Educación Física'),(20,'Medicina'),(21,'Odontología'),(22,'Enfermería'),(23,'Farmacia'),(24,'Veterinaria'),(25,'Antropología'),(26,'Historia'),(27,'Geografía'),(28,'Literatura'),(29,'Idiomas'),(30,'Ingeniería Civil'),(31,'Ingeniería Industrial'),(32,'Ingeniería Mecánica'),(33,'Ingeniería en Sistemas'),(34,'Tecnologías Emergentes'),(35,'Gestión Ambiental'),(36,'Turismo'),(37,'Hotelería'),(38,'Gastronomía'),(39,'Música'),(40,'Teatro'),(41,'Danza'),(42,'Cine'),(43,'Relaciones Internacionales'),(44,'Ciencias Políticas'),(45,'Criminología'),(46,'Trabajo Social'),(47,'Filosofía'),(48,'Teología'),(49,'Astronomía'),(50,'Nanotecnología'),(51,'Biotecnología'),(52,'Inteligencia Artificial'),(53,'Robótica'),(54,'Ciberseguridad'),(55,'Desarrollo Web'),(56,'Desarrollo de Videojuegos'),(57,'Big Data'),(58,'Análisis de Datos'),(59,'Blockchain'),(60,'Redes de Computadoras'),(61,'Sistemas Embebidos'),(62,'Automatización'),(63,'Ingeniería Agrónoma'),(64,'Zootecnia'),(65,'Geología'),(66,'Meteorología'),(67,'Oceanografía'),(68,'Actuaría'),(69,'Estadística'),(70,'Logística'),(71,'Ingeniería en Transporte'),(72,'Ingeniería Naval'),(73,'Ingeniería Aeroespacial'),(74,'Ingeniería Biomédica'),(75,'Bioquímica'),(76,'Genética'),(77,'Neurociencia'),(78,'Ecología'),(79,'Ciencias del Mar'),(80,'Patología'),(81,'Fisioterapia'),(82,'Terapia Ocupacional'),(83,'Optometría'),(84,'Tecnología Médica'),(85,'Educación Especial'),(86,'Orientación Educativa'),(87,'Educación Artística'),(88,'Pedagogía'),(89,'Educación Musical'),(90,'Ed. Secundaria en Matemática'),(91,'Ed. Secundaria en Física'),(92,'Ed. Secundaria en Química'),(93,'Ed. Secundaria en Historia'),(94,'Ed. Secundaria en Geografía'),(95,'Ed. Secundaria en Lengua'),(96,'Ed. Secundaria en Biología'),(97,'Ed. Secundaria en Inglés'),(98,'Estudios Internacionales'),(99,'Negocios Internacionales'),(100,'Ingeniería en Telecomunicaciones'),(101,'Inteligencia de Negocios');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id_estudiante` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Ana','Martínez','martinezAna2025correo@email.com',1),(2,'Luis','Gómez','luis.gomez2@email.com',2),(3,'María','López','maria.lopez3@email.com',3),(4,'Carlos','Rodríguez','carlos.rodriguez4@email.com',4),(5,'Laura','Fernández','laura.fernandez5@email.com',5),(6,'Pedro','Ramírez','pedro.ramirez6@email.com',6),(7,'Julia','Sánchez','julia.sanchez7@email.com',7),(8,'David','Pérez','david.perez8@email.com',8),(9,'Sofía','Torres','sofia.torres9@email.com',9),(10,'Miguel','Flores','miguel.flores10@email.com',10),(11,'Isabel','Jiménez','isabel.jimenez11@email.com',11),(12,'Diego','Ruiz','diego.ruiz12@email.com',12),(13,'Valeria','Alvarez','valeria.alvarez13@email.com',13),(14,'Manuel','Morales','manuel.morales14@email.com',14),(15,'Camila','Ortega','camila.ortega15@email.com',15),(16,'Jorge','Núñez','jorge.nunez16@email.com',16),(17,'Natalia','Castro','natalia.castro17@email.com',17),(18,'Andrés','Silva','andres.silva18@email.com',18),(19,'Elena','Vargas','elena.vargas19@email.com',19),(20,'Fernando','Mendoza','fernando.mendoza20@email.com',20),(21,'Lucía','Guerrero','lucia.guerrero21@email.com',21),(22,'Martín','Iglesias','martin.iglesias22@email.com',22),(23,'Paula','Peña','paula.pena23@email.com',23),(24,'Ricardo','Delgado','ricardo.delgado24@email.com',24),(25,'Alicia','Ramos','alicia.ramos25@email.com',25),(26,'Tomás','Campos','tomas.campos26@email.com',26),(27,'Andrea','Cabrera','andrea.cabrera27@email.com',27),(28,'Sebastián','Fuentes','sebastian.fuentes28@email.com',28),(29,'Claudia','Ponce','claudia.ponce29@email.com',29),(30,'Gonzalo','Salazar','gonzalo.salazar30@email.com',30),(31,'Renata','Carrillo','renata.carrillo31@email.com',31),(32,'Iván','Aguilar','ivan.aguilar32@email.com',32),(33,'Luciano','Rivas','luciano.rivas33@email.com',33),(34,'Emma','Mejía','emma.mejia34@email.com',34),(35,'Álvaro','Benítez','alvaro.benitez35@email.com',35),(36,'Daniela','Mora','daniela.mora36@email.com',36),(37,'Nicolás','Soto','nicolas.soto37@email.com',37),(38,'Patricia','Navarro','patricia.navarro38@email.com',38),(39,'Agustín','Luna','agustin.luna39@email.com',39),(40,'Noelia','Espinoza','noelia.espinoza40@email.com',40),(41,'Leandro','Montoya','leandro.montoya41@email.com',41),(42,'Bianca','Rojas','bianca.rojas42@email.com',42),(43,'Esteban','Bravo','esteban.bravo43@email.com',43),(44,'Cecilia','Arias','cecilia.arias44@email.com',44),(45,'Rodrigo','Vega','rodrigo.vega45@email.com',45),(46,'Verónica','Herrera','veronica.herrera46@email.com',46),(47,'Mateo','León','mateo.leon47@email.com',47),(48,'Florencia','Campos','florencia.campos48@email.com',48),(49,'Marcos','Ferrer','marcos.ferrer49@email.com',49),(50,'Carla','Durán','carla.duran50@email.com',50),(51,'Mario','Cortés','mario.cortes51@email.com',51),(52,'Tamara','Quintero','tamara.quintero52@email.com',52),(53,'Axel','Maldonado','axel.maldonado53@email.com',53),(54,'Dana','Reyes','dana.reyes54@email.com',54),(55,'Bruno','Paredes','bruno.paredes55@email.com',55),(56,'Melina','Romero','melina.romero56@email.com',56),(57,'Santiago','Toledo','santiago.toledo57@email.com',57),(58,'Julieta','Gallego','julieta.gallego58@email.com',58),(59,'Facundo','Bustamante','facundo.bustamante59@email.com',59),(60,'Victoria','Villegas','victoria.villegas60@email.com',60),(61,'Cristian','Serrano','cristian.serrano61@email.com',61),(62,'Vanesa','Olivares','vanesa.olivares62@email.com',62),(63,'Kevin','Medina','kevin.medina63@email.com',63),(64,'Mía','Miranda','mia.miranda64@email.com',64),(65,'Adrián','Barrientos','adrian.barrientos65@email.com',65),(66,'Camilo','Palacios','camilo.palacios66@email.com',66),(67,'Josefina','Godoy','josefina.godoy67@email.com',67),(68,'Alan','Lozano','alan.lozano68@email.com',68),(69,'Martina','Escobar','martina.escobar69@email.com',69),(70,'Benjamin','Pizarro','benjamin.pizarro70@email.com',70),(71,'Valentina','Del Valle','valentina.delvalle71@email.com',71),(72,'Thiago','Sáez','thiago.saez72@email.com',72),(73,'Abigail','Tapia','abigail.tapia73@email.com',73),(74,'Mauricio','Godinez','mauricio.godinez74@email.com',74),(75,'Carolina','Sanhueza','carolina.sanhueza75@email.com',75),(76,'Rafael','Araya','rafael.araya76@email.com',76),(77,'Lorena','Cáceres','lorena.caceres77@email.com',77),(78,'Felipe','Zamora','felipe.zamora78@email.com',78),(79,'Dayana','Acevedo','dayana.acevedo79@email.com',79),(80,'Bastián','Bustos','bastian.bustos80@email.com',80),(81,'Yesica','Del Pino','yesica.delpino81@email.com',81),(82,'Gael','Sanhueza','gael.sanhueza82@email.com',82),(83,'Pamela','Cornejo','pamela.cornejo83@email.com',83),(84,'Simón','Navarrete','simon.navarrete84@email.com',84),(85,'Angélica','Tapia','angelica.tapia85@email.com',85),(86,'Franco','Sepúlveda','franco.sepulveda86@email.com',86),(87,'Nahia','Gallardo','nahia.gallardo87@email.com',87),(88,'Cristina','Guajardo','cristina.guajardo88@email.com',88),(89,'Isaías','Salinas','isaias.salinas89@email.com',89),(90,'Gabriela','Figueroa','gabriela.figueroa90@email.com',90),(91,'Lisandro','Yáñez','lisandro.yanez91@email.com',91),(92,'Ariana','Ojeda','ariana.ojeda92@email.com',92),(93,'Hugo','Gallardo','hugo.gallardo93@email.com',93),(94,'Rebeca','Tapia','rebeca.tapia94@email.com',94),(95,'Enzo','Zapata','enzo.zapata95@email.com',95),(96,'Milagros','Lagos','milagros.lagos96@email.com',96),(97,'Darío','Riquelme','dario.riquelme97@email.com',97),(98,'Agustina','Saavedra','agustina.saavedra98@email.com',98),(99,'Lucio','Vergara','lucio.vergara99@email.com',99),(100,'Camila','Fierro','camila.fierro100@email.com',100);
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion` (
  `id_inscripcion` int NOT NULL AUTO_INCREMENT,
  `id_estudiante` int DEFAULT NULL,
  `id_clase` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_inscripcion`),
  KEY `id_estudiante` (`id_estudiante`),
  KEY `id_clase` (`id_clase`),
  CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`),
  CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clase` (`id_clase`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (1,1,1,'2025-01-15'),(2,2,2,'2025-01-16'),(3,3,3,'2025-01-17'),(4,4,4,'2025-01-18'),(5,5,5,'2025-01-19'),(6,6,6,'2025-02-01'),(7,7,7,'2025-02-02'),(8,8,8,'2025-02-03'),(9,9,9,'2025-02-04'),(11,11,11,'2025-03-01'),(12,12,12,'2025-03-02'),(13,13,13,'2025-03-03'),(14,14,14,'2025-03-04'),(15,15,15,'2025-03-05'),(16,16,16,'2025-04-01'),(17,17,17,'2025-04-02'),(18,18,18,'2025-04-03'),(19,19,19,'2025-04-04'),(20,20,20,'2025-04-05'),(21,21,21,'2025-05-01'),(22,22,22,'2025-05-02'),(23,23,23,'2025-05-03'),(24,24,24,'2025-05-04'),(25,25,25,'2025-05-05'),(26,26,26,'2025-06-01'),(27,27,27,'2025-06-02'),(28,28,28,'2025-06-03'),(29,29,29,'2025-06-04'),(30,30,30,'2025-06-05'),(31,31,31,'2025-07-01'),(32,32,32,'2025-07-02'),(33,33,33,'2025-07-03'),(34,34,34,'2025-07-04'),(35,35,35,'2025-07-05'),(36,36,36,'2025-08-01'),(37,37,37,'2025-08-02'),(38,38,38,'2025-08-03'),(39,39,39,'2025-08-04'),(40,40,40,'2025-08-05'),(41,41,41,'2025-09-01'),(42,42,42,'2025-09-02'),(43,43,43,'2025-09-03'),(44,44,44,'2025-09-04'),(45,45,45,'2025-09-05'),(46,46,46,'2025-10-01'),(47,47,47,'2025-10-02'),(48,48,48,'2025-10-03'),(49,49,49,'2025-10-04'),(50,50,50,'2025-10-05'),(51,51,51,'2025-11-01'),(52,52,52,'2025-11-02'),(53,53,53,'2025-11-03'),(54,54,54,'2025-11-04'),(55,55,55,'2025-11-05'),(56,56,56,'2025-12-01'),(57,57,57,'2025-12-02'),(58,58,58,'2025-12-03'),(59,59,59,'2025-12-04'),(60,60,60,'2025-12-05'),(61,61,61,'2026-01-01'),(62,62,62,'2026-01-02'),(63,63,63,'2026-01-03'),(64,64,64,'2026-01-04'),(65,65,65,'2026-01-05'),(66,66,66,'2026-02-01'),(67,67,67,'2026-02-02'),(68,68,68,'2026-02-03'),(69,69,69,'2026-02-04'),(70,70,70,'2026-02-05'),(71,71,71,'2026-03-01'),(72,72,72,'2026-03-02'),(73,73,73,'2026-03-03'),(74,74,74,'2026-03-04'),(75,75,75,'2026-03-05'),(76,76,76,'2026-04-01'),(77,77,77,'2026-04-02'),(78,78,78,'2026-04-03'),(79,79,79,'2026-04-04'),(80,80,80,'2026-04-05'),(81,81,81,'2026-05-01'),(82,82,82,'2026-05-02'),(83,83,83,'2026-05-03'),(84,84,84,'2026-05-04'),(85,85,85,'2026-05-05'),(86,86,86,'2026-06-01'),(87,87,87,'2026-06-02'),(88,88,88,'2026-06-03'),(89,89,89,'2026-06-04'),(90,90,90,'2026-06-05'),(91,91,91,'2026-07-01'),(92,92,92,'2026-07-02'),(93,93,93,'2026-07-03'),(94,94,94,'2026-07-04'),(95,95,95,'2026-07-05'),(96,96,96,'2026-08-01'),(97,97,97,'2026-08-02'),(98,98,98,'2026-08-03'),(99,99,99,'2026-08-04'),(100,100,100,'2026-08-05');
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id_profesor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `id_departamento` int DEFAULT NULL,
  PRIMARY KEY (`id_profesor`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'Javier','Cruz',1),(2,'Mariana','Vega',2),(3,'Alberto','Santos',3),(4,'Clara','Ríos',4),(5,'Eduardo','Salinas',5),(6,'Patricia','Carranza',6),(7,'Roberto','Nieto',7),(8,'Teresa','Villalobos',8),(9,'Guillermo','Mora',9),(10,'Silvia','Lara',10),(11,'Ramón','Escobar',11),(12,'Lorena','Ayala',12),(13,'Ignacio','Camacho',13),(14,'Norma','Delgado',14),(15,'Mauricio','Gallardo',15),(16,'Angela','Beltrán',16),(17,'Joaquín','Soria',17),(18,'Beatriz','Reyes',18),(19,'Oscar','Zúñiga',19),(20,'Carmen','Villarreal',20),(21,'Federico','Corral',21),(22,'Leticia','Barrios',22),(23,'Ricardo','Ibarra',23),(24,'Andrea','Páez',24),(25,'Héctor','Mendoza',25),(26,'Gloria','Ocampo',26),(27,'Damián','Navarrete',27),(28,'Rocío','Peña',28),(29,'Esteban','Solís',29),(30,'Natalia','Castaño',30),(31,'Pablo','Aguilar',31),(32,'Adriana','Rosales',32),(33,'Julián','Bravo',33),(34,'Isabel','Moreno',34),(35,'Raúl','Palacios',35),(36,'Melisa','Franco',36),(37,'Sergio','Santos',37),(38,'Eva','Valencia',38),(39,'Tomás','Ortiz',39),(40,'Sandra','Lagos',40),(41,'Francisco','Del Valle',41),(42,'Rosa','Naranjo',42),(43,'Lucas','Salgado',43),(44,'María','Lemus',44),(45,'Andrés','Venegas',45),(46,'Karina','Duarte',46),(47,'Gustavo','Escamilla',47),(48,'Verónica','Aguirre',48),(49,'Benjamín','Cuevas',49),(50,'Yolanda','Serna',50),(51,'Eduarda','Gallardo',51),(52,'Leonardo','Alarcón',52),(53,'Marcela','Carrillo',53),(54,'Víctor','Godoy',54),(55,'Catalina','Salcedo',55),(56,'Joel','Benítez',56),(57,'Fabiola','Mejía',57),(58,'Martín','Tapia',58),(59,'Paola','Zavala',59),(60,'Nicolás','Arteaga',60),(61,'Viviana','Segura',61),(62,'Álvaro','Zárate',62),(63,'Gabriela','Matos',63),(64,'Diego','Prado',64),(65,'Antonia','Salas',65),(66,'Maximiliano','Herrera',66),(67,'Soledad','Arévalo',67),(68,'Rodrigo','Silva',68),(69,'Daniela','Rentería',69),(70,'Alonso','Rivas',70),(71,'Fernanda','Olmos',71),(72,'Emilio','Zúñiga',72),(73,'Cecilia','Baeza',73),(74,'Julio','Pino',74),(75,'Tatiana','Catalán',75),(76,'Ignacio','Espinoza',76),(77,'Denisse','Toledo',77),(78,'Ezequiel','Núñez',78),(79,'Monserrat','Zapata',79),(80,'Cristóbal','Toro',80),(81,'Camila','Saavedra',81),(82,'Lautaro','Muñoz',82),(83,'Renata','Bravo',83),(84,'Alonso','Del Pino',84),(85,'Florencia','Navarrete',85),(86,'Bruno','Gallardo',86),(87,'Valentina','Reyes',87),(88,'Esteban','Cortés',88),(89,'Josefa','Lozano',89),(90,'Franco','Yáñez',90),(91,'Emilia','Maldonado',91),(92,'Gaspar','Cáceres',92),(93,'Antonella','Vergara',93),(94,'Santino','Ojeda',94),(95,'Micaela','Fierro',95),(96,'Ángel','Guzmán',96),(97,'Josefina','Leiva',97),(98,'Benicio','Acuña',98),(99,'Marin','Pizarro',99),(100,'Guidal','Silvestre',100);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-05 10:47:34
