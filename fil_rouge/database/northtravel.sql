-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 11:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `catégorie`
--

CREATE TABLE `catégorie` (
  `IdCatégorie` int(10) NOT NULL,
  `NomCatégorie` varchar(100) DEFAULT NULL,
  `imageCatégorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catégorie`
--

INSERT INTO `catégorie` (`IdCatégorie`, `NomCatégorie`, `imageCatégorie`) VALUES
(1, 'Café', 'Rectangle44.png'),
(2, 'Hotel', 'Rectangle45.png'),
(3, 'Restaurant', 'Rectangle46.png');

-- --------------------------------------------------------

--
-- Table structure for table `favori`
--

CREATE TABLE `favori` (
  `Id` int(10) NOT NULL,
  `IdVisiteur` int(10) NOT NULL,
  `DateAjout` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `IdImage` int(5) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `Id` int(10) DEFAULT NULL,
  `image1` varchar(50) DEFAULT NULL,
  `image2` varchar(50) DEFAULT NULL,
  `image3` varchar(50) DEFAULT NULL,
  `image4` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`IdImage`, `image`, `Id`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, 'le mirage1.jpg', 1, 'le mirage 2.jpg', 'le mirage 3.jpg', 'le mirage4.jpg', 'le mirage5.jpg\n'),
(2, 'dar sultan.jpg', 2, 'dar sultan2.jfif', 'dar sultan3.jpg', 'dar sultan4.jpg', 'dar sultan5.jpeg'),
(3, 'dar nour.jpg', 3, 'dar nour2.jpg', 'dar nour3.jpg', 'dar nour4.jpg', 'dar nour5.jpg'),
(4, 'kasbah rose.png', 4, 'kasbah rose2.png', 'kasbah rose3.png', 'kasbah rose4.jpg', 'kasbah rose5.jpg'),
(5, 'kasbah blanca.jpg', 5, 'kasbah blanca2.jpg', 'kasbaj blanca3.jpg', 'kasbah blanca4.jpg', 'kasbah blanca5.jpg'),
(7, 'la terrasse.jpg', 8, 'la terrasse2.jpg', 'la terrasse3.jpg', 'la terrasse4.jpg', 'la terrasse5.jpg'),
(8, 'salon bleu.jpg', 9, 'salon bleu2.jpg', 'salon bleu3.jpg', 'salon bleu4.jpg', 'salon bleu5.jpg'),
(12, 'riadTanger.jpg', 10, 'riadTanger2.jpg', 'riadTanger3.jpg', 'riadTanger4.jpg', 'riadTanger5.jpg'),
(13, 'riadDarSaba.jpg', 11, 'riadDarSaba2.jpg', 'riadDarSaba3.jpg', 'riadDarSaba4.jpg', 'riadDarSaba5.jpg'),
(14, 'RIAD DAR MESOUDA.jpg', 12, 'RIAD DAR MESOUDA2.jpg', 'RIAD DAR MESOUDA3.jpg', 'RIAD DAR MESOUDA4.jpg', 'RIAD DAR MESOUDA5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `Id` int(10) NOT NULL,
  `IdCatégorie` int(10) DEFAULT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  `Description` varchar(900) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `website` varchar(500) DEFAULT NULL,
  `Adresse` varchar(500) DEFAULT NULL,
  `Prix` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`Id`, `IdCatégorie`, `libelle`, `Description`, `Telephone`, `website`, `Adresse`, `Prix`) VALUES
(1, 2, 'mmmm', 'L´Océan, la douceur de l´air que vient vivifier le chergui, un vent venu de l´Est, la pointe du Cap Spartel et les mythiques Grottes d´Hercule chantées par Homère…\r\n\r\nA 20 minutes de l´Aéroport International de Tanger et du Centre Ville, \"LE MIRAGE\" offre 45 résidences de luxe. A 8 kilomètres du \"Royal Golf Club\" (18 trous) et à seulement 15 kilomètres des Côtes Espagnoles.\r\n\r\nDepuis les terrasses, où des escaliers en cascades mènent à l´immense plage de sable qui s´étale à l´infini, les visiteurs découvrent la vue sur l´Océan \"à couper le souffle\"…', '212 539 333492', 'www.lemirage.com', 'Rte des Grottes d\'Hercule, Tanger', '1100'),
(2, 2, 'Dar Sultan', 'Le Dar Sultan est une charmante Maison d\'Hôtes, la première homologuée à Tanger, située dans le quartier historique de la Kasbah, à quelques centaines de mètres des plages. Depuis son ouverture en 2003, nous, les propriétaires, et notre fidèle équipe, composée de sept personnes, veillons au bien-être de nos hôtes. Toujours prêts à vous rendre service, nous visons à rendre votre séjour le plus agréable possible. Les amoureux d\'authenticité apprécieront le charme de la Maison, de ses chambres et de ses alentours.', '0539336061', 'ww.darsultan.com', 'Q5QP+CH6, Rue Ahmed Ben Ajiba, Tangier', '1000'),
(3, 2, 'Dar Nour', 'Dar Nour ou « la Maison de la Lumière », est la plus ancienne chambre d’hôtes de Tan­ger, reconnue internationalement comme l’une des meilleures adresses du Maroc…\r\n\r\nElle attire les voyageurs amoureux de sensations, à la recherche d’une douceur de vivre et d’une hospitalité sincère et joyeuse.', '0662112724', 'www.darnour.com\r\n', '20, Rue Gourna, la Kasbah, Tanger 90000', '854'),
(4, 2, 'Kasabah Rose', '\"Je rêvais de diriger une maison d\'hôtes, depuis que j\'ai étudié l\'hôtellerie il y a 20 ans, et c\'est devenu réalité lorsque Kasbah Rose a ouvert ses portes en 2015. Accueillir des gens du monde entier est un bel échange quotidien de notre culture et de la leur\", déclare Lorraine Kleinveld .\r\n\r\nLa maison d\'hôtes est située sur l\'ancien mur de la Kasbah et à côté des marches menant à la rue de La Kasbah, vous vous trouverez au meilleur endroit pour explorer l\'ancienne Kasbah, la Médina et la nouvelle ville de Tanger. Kasbah Rose dispose de 5 chambres doubles dont 2 ont leur propre balcon et une avec une terrasse privée. La confortable terrasse sur le toit offre une vue spectaculaire nord/est sur la baie de Tanger et une vue sur la ville vers le sud.', '0653638071', 'www.kasbahrose.com', 'Merrouche 30, 90030, Kasbah,، rue, Tangier', '800'),
(5, 2, 'Kasba Blanca', 'Le Kasba blanca est situé sur le front de mer de Tanger, à 1,4 km de la plage et à 100 mètres du Dar el Makhzen. Il propose un restaurant, une réception ouverte 24h/24, une cuisine commune et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Des services d\'étage, de concierge et de change sont assurés.\r\n\r\nLeur salle de bains privative est pourvue d\'une douche et de peignoirs. Le linge de lit et les serviettes sont fournis.\r\n\r\nUn petit-déjeuner halal est servi tous les matins sur place.\r\n\r\nLe Kasba blanca possède une terrasse.\r\n\r\nLa maison d\'hôtes assure des services de repassage et de fax/photocopies.\r\n\r\nVous séjournerez à proximité du musée de la Kasbah, du musée de la légation américaine et du musée Forbes de Tanger. L\'aéroport le plus proche, celui de Tanger-Ibn Battouta, est situé à 11 km. Un service de navette aéroport peut être assuré moyennant des frais supplémentaires.', '0669629948', 'www.kasbablancatng.com', '17 Rue Gourna, Tangier 90100', '600'),
(8, 1, 'Dar ElKasbah', 'La terrasse de Dar el Kasbah vous invite à goûter à ses délicieux plats de cuisine marocaine et méditerranéenne . Sur la terrasse vous pourrez profiter du soleil et contempler la muraille de l\'ancienne ville et le bâtiment du premier télégraphe d\'Afrique .', '+212 661-882408', 'https://laterrassededarelkasbah.business.site/', '12 bis Rue de la Kasbah, Tanger', '74  - 159 '),
(9, 1, 'Salon Bleu', 'Le Salon Bleu est une petite maison sur plusieurs étages, posée sur la muraille la plus ancienne de la ville de Tanger. Le Salon Bleu a plusieurs niveaux de terrasses qui font face au détroit et au Musée-Palais de la Kasbah. Au XVIe siècle le célèbre chroniqueur Britannique Samuel Pepys habitait dans cette maison où il a écrit une partie de son célèbre journal. A deux pas du Salon Bleu, Delacroix, Matisse, Francis Bacon, Brian Jones, les Rolling Stones, Jean Genêt, Kerouac, William Burroughs, Paul Bowles ont laissé leur trace. Aujourd\'hui c\'est le musicien Christophe, l\'écrivain Jean-Paul Kauffmann ou l\'actrice Emmanuelle Béart qui sont enchantés par les lieux et que l\'on peut croiser sur les terrasses du Salon Bleu. Le Salon Bleu est recommandé par New York Times, Le Figaro, Libération, Le Monde, Lonely Planet, les guides du Routard et Michelin, Elle, Marie-Claire, L\'officiel, Vogue. Ma', '0539371618', 'https://www.lejournaldelamaison.fr/le-journal-de-la-maison/piece-par-piece/salon/salon-bleu-inspirations-adopter-cette-teinte-vibrante-315505.html#item=2', 'Pl. de la Kasbah, Tanger 90000', '42  - 212 '),
(10, 3, 'Riad Tanger', 'Une maison entièrement rénovée dans un quartier piétonnier, à côté de la rue de la kasbah.\r\n\r\nSur chaque étage, une suite comprenant une chambre double, un chambre simple, un salon et une salle de bain.\r\n\r\nAu rez de chaussée, salon commun avec téléviseur grand écran plat, bibliothèque et documentation touristique.\r\n\r\nAu 3è étage: terrasse et au-dessus solarium. Vue panoramique sur la baie et la ville.', NULL, NULL, '31, Rue de la Kasbah Palacio Aharrar, Tanger (Tanja) 90000 Maroc', '100-300'),
(11, 3, 'Riad Dar Saba', 'Tout le linge de maison désinfecté à haute température\r\nMasques obligatoires pour les clients dans les espaces communs\r\nMasques obligatoires pour le personnel dans les espaces communs\r\nGel désinfectant pour les mains à la disposition des clients et du personnel\r\nPolitique de confinement pour le personnel présentant des symptômes\r\nZones de passage régulièrement désinfectées\r\nPersonnel tenu de se laver régulièrement les mains\r\nSurveillance quotidienne de la température et des symptômes du personnel\r\nEnregistrement sans contact\r\nDépart sans contact\r\nProduits de toilette dans des emballages individuels', '0539331387', 'http://www.sabashouse.com/', '61 Rue Cheikh Mohammed Ben Seddik Place Amrah La Kasbah, Tanger 90000', '120-500'),
(12, 3, 'Riad Mesouda\r\n\r\n', 'Riad Dar Mesouda et une charmante Maison D\'hotes parmi les premiers homologueés a Tanger .Situé dans le centre ville de Tanger A quelque metres des consulat de France et de l\'Espagne . Pas loin au terain de Golf et de la plage de Tanger . Depuis l\'ouverture en 2013 toute l\'equipe de Riad vous acueillez avec une chalereuse reception . Nous visons a rendre votre sejoours le plus agreable possible. Nous vous remercions pour la confiance et l\'interet que vous nous portez .', '0539336061', NULL, 'Rue ANGLETERRE N° 71 RUE ANGLETERRE N° 71 TANGER, Tanger (Tanja) 90000 Maroc', '30-300');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Id` int(10) NOT NULL,
  `IdVisiteur` int(10) NOT NULL,
  `Note` int(5) DEFAULT NULL,
  `Commentaire` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Id`, `IdVisiteur`, `Note`, `Commentaire`) VALUES
(2, 1, 0, 'nice'),
(4, 1, 0, 'riogjar');

-- --------------------------------------------------------

--
-- Table structure for table `visiteur`
--

CREATE TABLE `visiteur` (
  `IdVisiteur` int(10) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prénom` varchar(50) DEFAULT NULL,
  `Email` varchar(500) DEFAULT NULL,
  `MotDePasse` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visiteur`
--

INSERT INTO `visiteur` (`IdVisiteur`, `Nom`, `Prénom`, `Email`, `MotDePasse`) VALUES
(1, 'mohame', 'mohamed', 'mohamed', 'mohamed'),
(2, '', '', '', ''),
(3, 'nbn', 'elaribi', 'mlaaraib0699@gmail.com', '1234'),
(4, 'mohamed', 'elaribi', 'mlaaraibi0699@gmail.com', '123'),
(5, 'mohamed', 'elaribi', 'mlaaraibi0699@gmail.com', '123'),
(6, 'nbn', 'df', 'mlaaraibi0699@gmail.com', '1234'),
(7, 'nbn', 'elaribi', 'mlaaraibi0699@gmail.com', '1234'),
(8, 'elaribi', 'elaribi', 'elaribi', '123'),
(9, 'nbn', 'elaribi', 'mohamed@gmail.com', 'mohamed'),
(10, 'Salmi', 'Amine', 'salmiamine@gmail.com', '123123'),
(11, 'mohamed el aribi', 'yassine', 'mohamedy@gmail.com', '123123'),
(12, '9updjfo;l', 'ijqreog', 'jgiooih@', 'mohamedjio2'),
(13, 'moahgierk', 'rgijqorpg', 'mohamed2', 'mohamed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catégorie`
--
ALTER TABLE `catégorie`
  ADD PRIMARY KEY (`IdCatégorie`);

--
-- Indexes for table `favori`
--
ALTER TABLE `favori`
  ADD PRIMARY KEY (`Id`,`IdVisiteur`),
  ADD KEY `IdVisiteur` (`IdVisiteur`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`IdImage`),
  ADD KEY `id` (`Id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCatégorie` (`IdCatégorie`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Id`,`IdVisiteur`),
  ADD KEY `IdVisiteur` (`IdVisiteur`,`Id`) USING BTREE;

--
-- Indexes for table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`IdVisiteur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catégorie`
--
ALTER TABLE `catégorie`
  MODIFY `IdCatégorie` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `IdImage` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `IdVisiteur` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favori`
--
ALTER TABLE `favori`
  ADD CONSTRAINT `favori_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `publication` (`Id`),
  ADD CONSTRAINT `favori_ibfk_2` FOREIGN KEY (`IdVisiteur`) REFERENCES `visiteur` (`IdVisiteur`),
  ADD CONSTRAINT `favori_ibfk_3` FOREIGN KEY (`Id`) REFERENCES `publication` (`Id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id`) REFERENCES `publication` (`Id`);

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`IdCatégorie`) REFERENCES `catégorie` (`IdCatégorie`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `publication` (`Id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`IdVisiteur`) REFERENCES `visiteur` (`IdVisiteur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
