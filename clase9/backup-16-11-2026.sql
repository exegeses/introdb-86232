-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb86232
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `actores`
--

DROP TABLE IF EXISTS `actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actores` (
  `idActor` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `idPais` tinyint unsigned NOT NULL,
  PRIMARY KEY (`idActor`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `actores_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actores`
--

LOCK TABLES `actores` WRITE;
/*!40000 ALTER TABLE `actores` DISABLE KEYS */;
INSERT INTO `actores` VALUES (1,'Marlon','Brando',1),(2,'Al','Pacino',1),(3,'Robert','De Niro',1),(4,'Leonardo','DiCaprio',1),(5,'Jack','Nicholson',1),(6,'Harrison','Ford',1),(7,'Uma','Thurman',1),(8,'Samuel L.','Jackson',1),(9,'Russell','Crowe',4),(10,'Christian','Bale',2),(11,'Matthew','McConaughey',1),(12,'Elijah','Wood',1),(13,'Viggo','Mortensen',1),(14,'Jason','Statham',2),(15,'Rumi','Hiiragi',3),(16,'Ryunosuke','Kamiki',3);
/*!40000 ALTER TABLE `actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `categoria` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (9,'Accesorios Apple'),(18,'Aires Acondicionados'),(12,'Almacenamiento'),(4,'Auriculares'),(13,'Cámaras'),(10,'Cargadores y Cables'),(16,'Consolas'),(14,'Home Theater'),(8,'Impresoras'),(7,'Monitores'),(2,'Notebooks'),(5,'Parlantes'),(17,'Proyectores'),(20,'Reproductores de Audio'),(1,'Smartphones'),(15,'Smartwatches'),(3,'Tablets'),(11,'Teclados y Mouse'),(6,'Televisores'),(19,'Wearables');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` int NOT NULL,
  `telefono` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fechaAlta` date NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Lucía','González',30123456,1123456789,'lucia.gonzalez@mail.con','2024-05-12'),(2,'Martín','Pérez',28987654,1139876543,'martin.perez@mail.com','2024-06-01'),(3,'Sofía','Ramírez',32555444,1144455566,'sofia.ramirez@mail.com','2024-06-15'),(4,'Carlos','López',27666777,1155566677,'carlos.lopez@mail.com','2024-06-20'),(5,'Ana','Martínez',33444555,1166677786,'any.martinez@mail.com','2024-06-25'),(6,'Juan','Rodríguez',35111222,1122334455,'juan.rodriguez@mail.com','2024-07-01'),(7,'María','Gómez',36222333,1133445566,'maria.gomez@mail.com','2024-07-02'),(8,'Diego','Fernández',29333444,1144556677,'diego.fernandez@mail.com','2024-07-05'),(9,'Valeria','Díaz',31444555,1155667788,'valeria.diaz@mail.com','2024-07-10'),(10,'Alejandro','Torres',26555666,1166778899,'alejandro.torres@mail.com','2024-07-12'),(11,'Camila','Ruiz',37666777,1177889900,'camila.ruiz@mail.com','2024-07-15'),(12,'Gabriel','Castro',34777888,1188990011,'gabriel.castro@mail.com','2024-07-18'),(13,'Florencia','Romero',32888990,1199001122,'florencia.romero@mail.com','2024-07-20'),(14,'Pablo','Sosa',28999001,1111223344,'pablo.sosa@mail.com','2024-07-22'),(15,'Julieta','Álvarez',35000112,1122114433,'julieta.alvarez@mail.com','2024-07-25'),(16,'Matías','Medina',33111223,1133225544,'matias.medina@mail.com','2024-08-01'),(17,'Romina','Silva',30222334,1144336655,'romina.silva@mail.com','2024-08-03'),(18,'Hernán','Rojas',27333445,1155447766,'hernan.rojas@mail.com','2024-08-05'),(19,'Natalia','Molina',36444556,1166558877,'natalia.molina@mail.com','2024-08-08'),(20,'Rodrigo','Ortiz',29555667,1177669988,'rodrigo.ortiz@mail.com','2024-08-10'),(21,'Paula','Benítez',31666778,1188770099,'paula.benitez@mail.com','2024-08-12'),(22,'Esteban','Ramírez',34777889,1199881100,'esteban.ramirez@mail.com','2024-08-15'),(23,'Agostina','Acosta',32888991,1111992233,'agostina.acosta@mail.com','2024-08-18'),(24,'Federico','Flores',28999002,1122003344,'federico.flores@mail.com','2024-08-20'),(25,'Carolina','Herrera',35111333,1133114455,'carolina.herrera@mail.com','2024-08-25');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directores`
--

DROP TABLE IF EXISTS `directores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directores` (
  `idDirector` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `idPais` tinyint unsigned NOT NULL,
  PRIMARY KEY (`idDirector`),
  KEY `idPais` (`idPais`),
  CONSTRAINT `directores_ibfk_1` FOREIGN KEY (`idPais`) REFERENCES `paises` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directores`
--

LOCK TABLES `directores` WRITE;
/*!40000 ALTER TABLE `directores` DISABLE KEYS */;
INSERT INTO `directores` VALUES (1,'Francis Ford','Coppola',1),(2,'Martin','Scorsese',1),(3,'Stanley','Kubrick',1),(4,'Steven','Spielberg',1),(5,'Quentin','Tarantino',1),(6,'Hayao','Miyazaki',3),(7,'Makoto','Shinkai',3),(8,'Ridley','Scott',2),(9,'Christopher','Nolan',2),(10,'Peter','Jackson',4),(11,'Guy','Ritchie',2);
/*!40000 ALTER TABLE `directores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `empleado` varchar(100) NOT NULL,
  `sector` enum('Gerente','Recepcionista','Barista','Cocinero','Mantenimiento','Limpieza') NOT NULL,
  `idHotel` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `fk_hotel` (`idHotel`),
  CONSTRAINT `fk_hotel` FOREIGN KEY (`idHotel`) REFERENCES `hoteles` (`idHotel`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Carlos','Gerente',1),(2,'Marta','Recepcionista',1),(3,'Dante','Cocinero',1),(4,'Sergio','Limpieza',1),(5,'Jimena','Barista',1),(6,'Pedro','Mantenimiento',1),(7,'Sofía','Gerente',2),(8,'Ariel','Recepcionista',2),(9,'Tomás','Cocinero',2),(10,'Elena','Limpieza',2),(11,'Bautista','Gerente',3),(12,'Lorena','Recepcionista',3),(13,'Fabián','Cocinero',3),(14,'Úrsula','Limpieza',3),(15,'Ramiro','Mantenimiento',3),(16,'Victoria','Gerente',4),(17,'Manuel','Recepcionista',4),(18,'Julieta','Cocinero',4),(19,'Rosa','Limpieza',4),(20,'Esteban','Barista',4),(21,'Cosme Fulanito','Limpieza',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `idGenero` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `genero` varchar(50) NOT NULL,
  PRIMARY KEY (`idGenero`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (9,'Acción'),(6,'Animación'),(7,'Aventura'),(10,'Bélico'),(3,'Ciencia Ficción'),(5,'Comedia'),(2,'Crimen'),(1,'Drama'),(8,'Fantasía'),(4,'Terror');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoteles`
--

DROP TABLE IF EXISTS `hoteles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoteles` (
  `idHotel` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `hotel` varchar(100) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  PRIMARY KEY (`idHotel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoteles`
--

LOCK TABLES `hoteles` WRITE;
/*!40000 ALTER TABLE `hoteles` DISABLE KEYS */;
INSERT INTO `hoteles` VALUES (1,'Alvear Icon','Aimé Painé 1130'),(2,'Patagonia','Av. del Libertador 450'),(3,'Urbano Central','Florida 100'),(4,'Costa Galana','Peralta Ramos 5725');
/*!40000 ALTER TABLE `hoteles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `marca` (`marca`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (15,'Anker'),(1,'Apple'),(13,'Asus'),(7,'Bose'),(11,'Dell'),(20,'Epson'),(18,'Harman Kardon'),(10,'HP'),(6,'JBL'),(12,'Lenovo'),(4,'LG'),(14,'Logitech'),(19,'Marshall'),(9,'Motorola'),(5,'Philips'),(17,'Pioneer'),(2,'Samsung'),(16,'Sennheiser'),(3,'Sony'),(8,'Xiaomi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `idPais` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `pais` varchar(50) NOT NULL,
  `bandera` varchar(255) NOT NULL,
  PRIMARY KEY (`idPais`),
  UNIQUE KEY `pais` (`pais`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Estados Unidos','https://flagcdn.com/w320/us.png'),(2,'Reino Unido','https://flagcdn.com/w320/gb.png'),(3,'Japón','https://flagcdn.com/w320/jp.png'),(4,'Nueva Zelanda','https://flagcdn.com/w320/nz.png'),(5,'Italia','https://flagcdn.com/w320/it.png'),(6,'Francia','https://flagcdn.com/w320/fr.png'),(7,'Alemania','https://flagcdn.com/w320/de.png'),(8,'España','https://flagcdn.com/w320/es.png'),(9,'Corea del Sur','https://flagcdn.com/w320/kr.png'),(10,'Australia','https://flagcdn.com/w320/au.png');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idPelicula` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `anio` smallint unsigned NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `duracion` smallint unsigned NOT NULL,
  `idDirector` mediumint unsigned NOT NULL,
  `idGenero` tinyint unsigned NOT NULL,
  `idPaisOrigen` tinyint unsigned NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  PRIMARY KEY (`idPelicula`),
  UNIQUE KEY `titulo` (`titulo`),
  KEY `idDirector` (`idDirector`),
  KEY `idGenero` (`idGenero`),
  KEY `idPaisOrigen` (`idPaisOrigen`),
  CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`idDirector`) REFERENCES `directores` (`idDirector`),
  CONSTRAINT `peliculas_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `generos` (`idGenero`),
  CONSTRAINT `peliculas_ibfk_3` FOREIGN KEY (`idPaisOrigen`) REFERENCES `paises` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'El Padrino',1972,9.2,175,1,2,1,'La historia de una familia de la mafia italoamericana y la transición de poder entre generaciones.'),(2,'El Padrino Parte II',1974,9.0,202,1,2,1,'Continúa la saga familiar mostrando en paralelo el ascenso del patriarca y la consolidación de su heredero.'),(3,'Apocalypse Now',1979,8.4,147,1,10,1,'Un oficial es enviado río arriba durante la guerra de Vietnam en busca de un coronel renegado.'),(4,'Taxi Driver',1976,8.2,114,2,1,1,'Un veterano de guerra insomne recorre las calles de Nueva York como taxista mientras su mente se deteriora.'),(5,'Goodfellas',1990,8.7,146,2,2,1,'El ascenso y la caída de un hombre dentro del crimen organizado neoyorquino, contado en primera persona.'),(6,'The Departed',2006,8.5,151,2,2,1,'Un policía infiltrado y un criminal infiltrado en la policía luchan por descubrirse mutuamente.'),(7,'2001: Odisea del Espacio',1968,8.3,149,3,3,1,'Un viaje espacial hacia Júpiter se complica cuando la computadora de a bordo desarrolla voluntad propia.'),(8,'La Naranja Mecánica',1971,8.3,136,3,3,1,'Un joven violento es sometido a un tratamiento experimental para eliminar sus impulsos criminales.'),(9,'El Resplandor',1980,8.4,146,3,4,1,'Un escritor y su familia quedan aislados como cuidadores de un hotel embrujado durante el invierno.'),(10,'Jurassic Park',1993,8.2,127,4,7,1,'Un parque temático con dinosaurios clonados se descontrola cuando falla la seguridad.'),(11,'La Lista de Schindler',1993,9.0,195,4,1,1,'Un empresario alemán salva a cientos de trabajadores judíos durante el Holocausto.'),(12,'E.T. El Extraterrestre',1982,7.8,115,4,3,1,'Un niño ayuda a un alienígena varado en la Tierra a regresar a casa.'),(13,'Pulp Fiction',1994,8.9,154,5,2,1,'Varias historias de crimen en Los Ángeles se entrelazan con humor negro y diálogos afilados.'),(14,'Kill Bill: Volumen 1',2003,8.2,111,5,9,1,'Una asesina busca venganza contra quienes intentaron matarla el día de su boda.'),(15,'El Viaje de Chihiro',2001,8.6,125,6,6,3,'Una niña queda atrapada en un mundo de espíritus y debe trabajar en una casa de baños para liberar a sus padres.'),(16,'Mi Vecino Totoro',1988,8.1,86,6,6,3,'Dos hermanas descubren criaturas mágicas del bosque al mudarse al campo con su padre.'),(17,'La Princesa Mononoke',1997,8.4,134,6,6,3,'Un príncipe se ve envuelto en el conflicto entre los dioses del bosque y una ciudad minera.'),(18,'Your Name',2016,8.4,106,7,6,3,'Dos adolescentes descubren que intercambian cuerpos misteriosamente y buscan encontrarse.'),(19,'El Tiempo Contigo',2019,7.5,112,7,6,3,'Un joven conoce a una chica capaz de despejar el cielo, en una Tokio marcada por la lluvia constante.'),(20,'Alien: El Octavo Pasajero',1979,8.5,117,8,4,2,'La tripulación de una nave de carga es cazada por una criatura extraterrestre letal.'),(21,'Blade Runner',1982,8.1,117,8,3,2,'Un cazarrecompensas persigue replicantes fugitivos en una Los Ángeles futurista y decadente.'),(22,'Gladiador',2000,8.5,155,8,9,2,'Un general romano traicionado se convierte en esclavo y gladiador buscando venganza.'),(23,'Origen',2010,8.8,148,9,3,2,'Un ladrón que roba secretos entrando en los sueños ajenos recibe la misión de implantar una idea.'),(24,'El Caballero de la Noche',2008,9.0,152,9,9,2,'Batman enfrenta al Joker, un criminal que busca sumir a Gotham en el caos.'),(25,'Interestelar',2014,8.7,169,9,3,2,'Un grupo de exploradores viaja a través de un agujero de gusano en busca de un nuevo hogar para la humanidad.'),(26,'El Señor de los Anillos: La Comunidad del Anillo',2001,8.9,178,10,8,4,'Un hobbit inicia un viaje para destruir un anillo capaz de dominar el mundo.'),(27,'El Señor de los Anillos: Las Dos Torres',2002,8.8,179,10,8,4,'La comunidad, ahora dividida, enfrenta nuevas batallas mientras el anillo continúa su camino hacia el destino.'),(28,'King Kong',2005,7.2,187,10,7,4,'Una expedición cinematográfica descubre una isla habitada por un gigantesco gorila y criaturas prehistóricas.'),(29,'Snatch: Cerdos y Diamantes',2000,8.3,102,11,2,2,'Un diamante robado desata una cadena de encuentros entre boxeadores, ladrones y gánsteres londinenses.'),(30,'Lock & Stock',1998,8.1,107,11,2,2,'Cuatro amigos se endeudan tras una partida de cartas amañada y deben conseguir dinero rápido.');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas_actores`
--

DROP TABLE IF EXISTS `peliculas_actores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas_actores` (
  `idPelicula` mediumint unsigned NOT NULL,
  `idActor` mediumint unsigned NOT NULL,
  KEY `idPelicula` (`idPelicula`),
  KEY `idActor` (`idActor`),
  CONSTRAINT `peliculas_actores_ibfk_1` FOREIGN KEY (`idPelicula`) REFERENCES `peliculas` (`idPelicula`),
  CONSTRAINT `peliculas_actores_ibfk_2` FOREIGN KEY (`idActor`) REFERENCES `actores` (`idActor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_actores`
--

LOCK TABLES `peliculas_actores` WRITE;
/*!40000 ALTER TABLE `peliculas_actores` DISABLE KEYS */;
INSERT INTO `peliculas_actores` VALUES (1,1),(1,2),(2,2),(2,3),(3,1),(4,3),(5,3),(6,4),(6,5),(9,5),(13,7),(13,8),(14,7),(15,15),(18,16),(21,6),(22,9),(23,4),(24,10),(25,11),(26,12),(26,13),(27,12),(27,13),(29,14),(30,14);
/*!40000 ALTER TABLE `peliculas_actores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` smallint unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `idMarca` tinyint unsigned NOT NULL,
  `idCategoria` tinyint unsigned NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `producto` (`producto`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'iPhone 15 128GB Negro',1133.50,1,1,'Smartphone Apple con chip A16 Bionic, pantalla Super Retina XDR 6.1\", cámara de 48MP y batería de larga duración.','iphone15_negro.jpg',1),(2,'iPhone 15 Pro 256GB Titanio',1533.50,1,1,'Smartphone Apple con chip A17 Pro, pantalla ProMotion 120Hz, sistema de cámaras Pro de 48MP y diseño en titanio.','iphone15pro_titanio.jpg',1),(3,'MacBook Air M2 8GB 256GB',1666.50,1,2,'Notebook ultradelgada con chip Apple M2, pantalla Liquid Retina 13.6\", hasta 18 horas de batería y diseño fanless.','macbook_air_m2.jpg',1),(4,'MacBook Pro M3 16GB 512GB',2600.00,1,2,'Notebook profesional con chip Apple M3, pantalla Liquid Retina XDR 14\", GPU de 10 núcleos y conectividad Thunderbolt 4.','macbook_pro_m3.jpg',1),(5,'iPad Air 11\" M2 64GB WiFi',866.50,1,3,'Tablet Apple con chip M2, pantalla Liquid Retina 11\", compatible con Apple Pencil y Magic Keyboard, ideal para productividad.','ipad_air_m2.jpg',1),(6,'Apple Watch Series 9 45mm',600.00,1,15,'Smartwatch con chip S9, pantalla Always-On Retina, monitoreo de salud avanzado, GPS y resistencia al agua WR50.','applewatch_s9.jpg',1),(7,'AirPods Pro 2da Generación',433.50,1,4,'Auriculares inalámbricos Apple con cancelación activa de ruido, modo Transparencia, audio espacial y estuche con MagSafe.','airpods_pro2.jpg',1),(8,'Samsung Galaxy S24 256GB',1000.00,2,1,'Smartphone Samsung con procesador Snapdragon 8 Gen 3, pantalla Dynamic AMOLED 6.2\" 120Hz y sistema de cámaras con IA.','galaxy_s24.jpg',1),(9,'Samsung Galaxy Tab S9 128GB',666.50,2,3,'Tablet Samsung con pantalla AMOLED 11\" 120Hz, procesador Snapdragon 8 Gen 2, resistencia IP68 y stylus S Pen incluido.','galaxy_tab_s9.jpg',1),(10,'Samsung Smart TV 55\" QLED 4K',800.00,2,6,'Televisor QLED 4K con procesador Neural Quantum, Quantum HDR, sistema operativo Tizen y compatibilidad con Alexa y Google.','samsung_tv_55.jpg',1),(11,'Sony WH-1000XM5',466.50,3,4,'Auriculares over-ear con la mejor cancelación de ruido de Sony, 30 horas de batería, carga rápida y sonido Hi-Res Audio.','sony_wh1000xm5.jpg',1),(12,'Sony WF-1000XM5',333.50,3,4,'Auriculares in-ear true wireless con cancelación de ruido líder en la industria, hasta 36 horas de autonomía total.','sony_wf1000xm5.jpg',1),(13,'Sony Bravia XR 65\" OLED 4K',1866.50,3,6,'Televisor OLED 4K con procesador cognitivo XR, XR OLED Contrast, Google TV integrado y compatibilidad con Dolby Vision.','sony_bravia_65.jpg',1),(14,'LG OLED 55\" C3 4K',1466.50,4,6,'Televisor OLED evo 4K con procesador α9 Gen6, Dolby Vision IQ, G-Sync compatible y 4 puertos HDMI 2.1 para gaming.','lg_oled55_c3.jpg',1),(15,'LG Monitor 27\" UltraFine 4K',500.00,4,7,'Monitor 4K IPS de 27\" con calibración de fábrica, compatibilidad Thunderbolt 3, brillo de 500 nits y cubierta antirreflejo.','lg_ultrafine_27.jpg',1),(16,'Philips Hue Starter Kit',200.00,5,10,'Kit de iluminación inteligente con 3 bombillas A19, puente Hue y compatibilidad con Alexa, Google Assistant y Apple HomeKit.','philips_hue_kit.jpg',1),(17,'JBL Charge 5',200.00,6,5,'Parlante Bluetooth portátil resistente al agua IP67, 20 horas de reproducción, PowerBank integrado y sonido potente con graves profundos.','jbl_charge5.jpg',1),(18,'JBL Flip 6',126.50,6,5,'Parlante Bluetooth portátil con resistencia IP67, 12 horas de batería, sonido JBL Pro con dos tweeter y un woofer.','jbl_flip6.jpg',1),(19,'JBL Tune 770NC',166.50,6,4,'Auriculares over-ear inalámbricos con cancelación de ruido adaptativa, hasta 70 horas de batería y carga rápida.','jbl_tune770nc.jpg',1),(20,'Bose QuietComfort 45',433.50,7,4,'Auriculares over-ear con cancelación de ruido Bose, 24 horas de autonomía, modo Aware y diseño plegable para viajes.','bose_qc45.jpg',1),(21,'Bose SoundLink Flex',233.50,7,5,'Parlante Bluetooth portátil con diseño resistente al agua IP67, sonido posicionado para exteriores y 12 horas de batería.','bose_soundlink_flex.jpg',1),(22,'Xiaomi Redmi Note 13 128GB',286.50,8,1,'Smartphone con pantalla AMOLED 6.67\" 120Hz, cámara de 108MP, batería de 5000mAh y carga rápida de 33W.','redmi_note13.jpg',1),(23,'Xiaomi Mi Band 8',60.00,8,19,'Pulsera inteligente con pantalla AMOLED 1.62\", monitoreo de salud 24/7, GPS asistido, 16 días de autonomía y resistencia 5ATM.','mi_band8.jpg',1),(24,'Motorola Edge 40 256GB',466.50,9,1,'Smartphone con pantalla pOLED 6.55\" 144Hz, cámara de 50MP con OIS, carga TurboPower 68W y diseño resistente al agua IP68.','moto_edge40.jpg',1),(25,'Motorola Moto G84 256GB',253.50,9,1,'Smartphone con pantalla pOLED 6.55\" 120Hz, cámara de 50MP, batería de 5000mAh con carga de 33W y altavoz estéreo Dolby Atmos.','moto_g84.jpg',1),(26,'HP Victus 15 Ryzen 5 16GB 512GB',800.00,10,2,'Notebook gaming con AMD Ryzen 5 7535HS, GPU NVIDIA RTX 2050, pantalla FHD 144Hz y sistema de enfriamiento térmico optimizado.','hp_victus15.jpg',1),(27,'HP LaserJet Pro M404dn',400.00,10,8,'Impresora láser monocromática con impresión dúplex automática, hasta 40 ppm, conectividad Ethernet y USB, ideal para oficina.','hp_laserjet_m404.jpg',1),(28,'Dell XPS 15 i7 32GB 1TB',2200.00,11,2,'Notebook premium con Intel Core i7-13700H, GPU NVIDIA RTX 4060, pantalla OLED 3.5K táctil y batería de 86Wh.','dell_xps15.jpg',1),(29,'Dell Monitor S2722QC 27\" 4K',366.50,11,7,'Monitor 4K IPS de 27\" con USB-C 65W, dos puertos HDMI, DisplayPort, hub USB integrado y compatibilidad con HDR400.','dell_s2722qc.jpg',1),(30,'Lenovo IdeaPad 5 i5 8GB 512GB',600.00,12,2,'Notebook con Intel Core i5-1335U, pantalla IPS FHD 15.6\", WiFi 6, lector de huellas digitales y batería de hasta 12 horas.','lenovo_ideapad5.jpg',1),(31,'Lenovo Tab P12 256GB',500.00,12,3,'Tablet con pantalla IPS 12.7\" 3K, procesador MediaTek Dimensity 7050, 8GB de RAM, cuatro altavoces JBL y stylus incluido.','lenovo_tab_p12.jpg',1),(32,'Asus ROG Zephyrus G14 RTX 4060',1933.50,13,2,'Notebook gaming con AMD Ryzen 9 8945HS, RTX 4060, pantalla OLED 2.8K 120Hz y diseño ultracompacto de 14\" para gaming profesional.','asus_rog_g14.jpg',1),(33,'Asus ProArt PA279CRV 27\" 4K',600.00,13,7,'Monitor profesional 4K IPS con cobertura 100% sRGB y 99% DCI-P3, calibración de fábrica Delta E<2 y USB-C 96W.','asus_proart_pa279.jpg',1),(34,'Logitech MX Master 3S',133.50,14,11,'Mouse inalámbrico premium con sensor de 8000 DPI, rueda de desplazamiento MagSpeed, ergonomía avanzada y conexión Bolt o Bluetooth.','logitech_mx_master3s.jpg',1),(35,'Logitech MX Keys S',166.50,14,11,'Teclado inalámbrico full-size con teclas de perfil perfecto, retroiluminación adaptativa, conexión multi-dispositivo y batería de 10 días.','logitech_mx_keys_s.jpg',1),(36,'Logitech G Pro X Superlight 2',200.00,14,11,'Mouse gaming ultraliviano de 60g con sensor HERO 2 25K, hasta 95 horas de batería, botones con efecto Hall y diseño simétrico.','logitech_gpro_sl2.jpg',1),(37,'Anker PowerCore 26800mAh',100.00,15,10,'Batería portátil de alta capacidad con dos puertos USB-A y un USB-C, carga rápida de 18W y tecnología PowerIQ 3.0.','anker_powercore26800.jpg',1),(38,'Anker Cable USB-C a Lightning MFi 1m',20.00,15,10,'Cable certificado MFi de 1 metro con conector USB-C, compatible con carga rápida Power Delivery hasta 30W para dispositivos Apple.','anker_cable_cl.jpg',1),(39,'Anker 737 Cargador 120W GaN',86.50,15,10,'Cargador compacto GaN de 120W con tres puertos (2x USB-C y 1x USB-A), ideal para cargar notebook, tablet y smartphone simultáneamente.','anker_737_gan.jpg',1),(40,'Sennheiser HD 560S',300.00,16,4,'Auriculares over-ear abiertos con respuesta en frecuencia extendida hasta 38kHz, Hi-Res Audio, diseño cómodo para largas sesiones.','sennheiser_hd560s.jpg',1),(41,'Sennheiser Momentum 4 Wireless',466.50,16,4,'Auriculares inalámbricos premium con cancelación de ruido adaptativa, 60 horas de autonomía, sonido Sennheiser Signature y Bluetooth 5.2.','sennheiser_momentum4.jpg',1),(42,'Pioneer DJ DDJ-400',466.50,17,20,'Controlador DJ de 2 canales para rekordbox, con jog wheels de 6\", efectos Beat FX y Pad FX, ideal para principiantes y nivel intermedio.','pioneer_ddj400.jpg',1),(43,'Pioneer Stereo A-10',400.00,17,14,'Amplificador estéreo de 50W x2 con entradas analógicas y digitales, filtro de audio Direct Energy HD y modo A/B de operación.','pioneer_a10.jpg',1),(44,'Harman Kardon Onyx Studio 8',366.50,18,5,'Parlante Bluetooth portátil con diseño premium, 8 horas de autonomía, luz LED ambiental, resistencia IPX5 y sonido envolvente 360°.','harman_onyx8.jpg',1),(45,'Marshall Emberton III',200.00,19,5,'Parlante Bluetooth portátil con estética clásica Marshall, 30 horas de reproducción, resistencia IP67 y sonido estéreo verdadero.','marshall_emberton3.jpg',1),(46,'Marshall Acton III',533.50,19,5,'Parlante de estante con WiFi, Bluetooth y entrada analógica, tres amplificadores de clase D, tweeter de cúpula y diseño icónico Marshall.','marshall_acton3.jpg',1),(47,'Epson EcoTank L3250',233.50,20,8,'Impresora multifunción tinta con sistema de tanque recargable, impresión, copia y escaneo, WiFi, compatible con Epson Connect y Alexa.','epson_l3250.jpg',1),(48,'Epson EF-21 Mini Proyector',466.50,20,17,'Miniproyector láser Android TV con brillo de 1000 lúmenes, resolución Full HD, altavoz integrado de 5W y autonomía de hasta 2.5 horas.','epson_ef21.jpg',1),(49,'Apple Magic Keyboard Touch ID ES',200.00,1,9,'Teclado inalámbrico Apple con Touch ID integrado, diseño ultradelgado, batería recargable de larga duración y layout en español.','apple_magic_kb.jpg',1),(50,'Apple MagSafe Charger 2m',53.50,1,9,'Cargador MagSafe oficial de Apple con cable de 2 metros, carga magnética de hasta 15W para iPhone 12 o superior y AirPods con estuche MagSafe.','apple_magsafe_2m.jpg',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_proveedores`
--

DROP TABLE IF EXISTS `productos_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos_proveedores` (
  `idProducto` smallint unsigned NOT NULL,
  `idProveedor` smallint unsigned NOT NULL,
  KEY `idProducto` (`idProducto`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `productos_proveedores_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `productos_proveedores_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `proveedores` (`idProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_proveedores`
--

LOCK TABLES `productos_proveedores` WRITE;
/*!40000 ALTER TABLE `productos_proveedores` DISABLE KEYS */;
INSERT INTO `productos_proveedores` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(11,18),(12,12),(12,19),(13,13),(13,20),(14,14),(14,21),(15,15),(15,22),(16,16),(16,23),(17,17),(17,24),(18,1),(18,25),(19,2),(19,18),(20,3),(20,19),(21,4),(21,18),(21,21),(22,5),(22,19),(22,22),(23,6),(23,20),(23,23),(24,7),(24,21),(24,24),(25,8),(25,22),(25,25),(26,9),(26,23),(26,1),(27,10),(27,24),(27,2),(28,11),(28,25),(28,3),(29,12),(29,18),(29,4),(30,13),(30,19),(30,5),(31,14),(31,20),(32,15),(32,21),(33,16),(34,17),(34,22),(34,6),(35,18),(36,19),(36,23),(37,20),(38,21),(38,24),(38,7),(39,22),(40,23),(40,25),(41,24),(42,25),(42,18),(42,8),(43,1),(43,19),(44,2),(44,20),(45,3),(45,21),(45,9),(46,4),(46,22),(47,5),(47,23),(48,6),(48,24),(48,10),(49,7),(49,25),(50,8),(50,1);
/*!40000 ALTER TABLE `productos_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `idProveedor` smallint unsigned NOT NULL AUTO_INCREMENT,
  `razonSocial` varchar(100) NOT NULL,
  `cuit` varchar(13) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`idProveedor`),
  UNIQUE KEY `cuit` (`cuit`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Apple Argentina S.R.L.','30-71234567-8','+54 11 5234-5600','contacto@apple-ar.com','Av. Libertador 7200, CABA'),(2,'Xiaomi Technology Corp Argentina','30-71456789-4','+54 11 4123-7800','ventas@xiaomi.com.ar','Corrientes 1500, CABA'),(3,'Hisense Cono Sur S.A.','30-71890123-5','+54 11 4321-9000','info@hisense.com.ar','Panamericana Km 32, Olivos'),(4,'Philips Hue Distribuciones S.A.','30-70567890-1','+54 11 4765-4321','soporte@philipshue.com.ar','Bouchard 680, CABA'),(5,'Nanoleaf Latam S.R.L.','30-71678901-2','+54 11 5555-1234','ventas@nanoleaf.la','Honduras 4800, CABA'),(6,'Aqara Smart Home Argentina','30-71901234-3','+54 11 4890-5678','contacto@aqara.com.ar','Thames 2100, CABA'),(7,'Eve Systems Distributor S.A.','30-71345678-9','+54 11 4987-6543','info@evehome.com.ar','Av. Santa Fe 3200, CABA'),(8,'TP-Link Argentina S.A.','30-70890123-6','+54 11 4812-3400','ventas@tp-link.com.ar','Paraguay 631, CABA'),(9,'Withings Health Solutions S.R.L.','30-71567890-7','+54 11 5123-4567','contacto@withings.com.ar','Arenales 2400, CABA'),(10,'Samsung Electronics Argentina S.A.','30-68541236-4','+54 11 4837-7000','b2b@samsung.com.ar','Leandro N. Alem 855, CABA'),(11,'Google Argentina S.R.L.','30-70912345-8','+54 11 5353-8000','argentina@google.com','Madero 942, CABA'),(12,'Amazon Web & Devices Argentina','30-71789012-3','+54 11 5252-9900','devices@amazon.com.ar','Cerrito 1250, CABA'),(13,'Ecobee Smart Climate S.A.','30-71212345-5','+54 11 4777-8899','ventas@ecobee.com.ar','Fitz Roy 1500, CABA'),(14,'Govee Lighting Latam S.R.L.','30-71323456-6','+54 11 4555-3322','info@govee.com.ar','Niceto Vega 5500, CABA'),(15,'TCL Multimedia Argentina S.A.','30-71023456-7','+54 11 4234-5678','comercial@tcl.com.ar','Av. Cabildo 2200, CABA'),(16,'Meross IoT Solutions S.R.L.','30-71434567-8','+54 11 4666-7788','contacto@meross.com.ar','Godoy Cruz 2800, CABA'),(17,'Asus Argentina S.A.','30-70789012-1','+54 11 4711-2233','ventas@asus.com.ar','Av. Maipú 1200, Vicente López'),(18,'Smart Devices Supplier S.R.L.','30-71112233-4','+54 11 4999-0011','ventas@smartdevices.com.ar','Suipacha 1111, CABA'),(19,'Conectividad Total S.A.','30-71556677-9','+54 11 4333-2244','pedidos@conectividad.com.ar','Esmeralda 950, CABA'),(20,'Automatización Hogar S.R.L.','30-71889900-1','+54 11 4888-9900','info@hogar-aut.com.ar','San Martín 660, CABA'),(21,'Global Tech Supply S.A.','30-70334455-2','+54 11 4111-5566','contacto@globaltech.com.ar','Lavalle 450, CABA'),(22,'Domótica Avanzada S.A.','30-71223344-5','+54 11 4777-1122','ventas@domoticaavanzada.ar','Reinares 321, Martínez'),(23,'EcoSensor Argentina S.R.L.','30-71667788-0','+54 11 4222-3344','info@ecosensor.com.ar','Zapiola 1500, CABA'),(24,'Digital Display Distribuidora S.A.','30-71445566-3','+54 11 4666-4455','comercial@digitaldisplay.ar','Av. Juan B. Justo 4500, CABA'),(25,'NextGen Smart Solutions S.R.L.','30-71990011-2','+54 11 5444-8899','soporte@nextgen.com.ar','Uruguay 1000, CABA');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viveres`
--

DROP TABLE IF EXISTS `viveres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viveres` (
  `idVivere` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `cantidad` tinyint unsigned NOT NULL DEFAULT '0',
  `marca` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idVivere`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viveres`
--

LOCK TABLES `viveres` WRITE;
/*!40000 ALTER TABLE `viveres` DISABLE KEYS */;
INSERT INTO `viveres` VALUES (1,'Arroz',10,'Gallo','Cereales'),(2,'Fideos',15,'Matarazzo','Pastas'),(3,'Harina de trigo',8,'Pureza','Harinas'),(4,'Azúcar',12,'Ledesma','Endulzantes'),(5,'Sal fina',6,'Celusal','Condimentos'),(6,'Aceite de girasol',5,'Cocinero','Aceites'),(7,'Leche entera',20,'La Serenísima','Lácteos'),(8,'Yerba mate',10,'Playadito','Infusiones'),(9,'Café molido',4,'Cabrales','Infusiones'),(10,'Té negro',7,'Taragüi','Infusiones'),(11,'Lentejas',9,'Arcor','Legumbres'),(12,'Garbanzos',6,'Inca','Legumbres'),(13,'Porotos',8,'Marolio','Legumbres'),(14,'Tomate triturado',12,'Molto','Conservas'),(15,'Arvejas en lata',10,'La Campagnola','Conservas'),(16,'Atún en lata',5,'Carrefour','Conservas'),(17,'Galletitas dulces',14,'Bagley','Galletitas'),(18,'Galletitas saladas',11,'Criollitas','Galletitas'),(19,'Mermelada de durazno',3,'BC','Dulces'),(20,'Dulce de leche',7,'La Serenísima','Dulces');
/*!40000 ALTER TABLE `viveres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-16 15:30:57
