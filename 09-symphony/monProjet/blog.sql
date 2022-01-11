-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 10 jan. 2022 à 16:53
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `titre`, `description`, `categorie`) VALUES
(1, 'zero tolerance', 'Bypass Left Hand Vein to Upper Vein with Synthetic Substitute, Open Approach', 'Glass & Glazing'),
(2, 'support', 'Extirpation of Matter from Genitourinary Tract, Open Approach', 'Roofing (Asphalt)'),
(3, 'dynamic', 'Planar Nuclear Medicine Imaging of Musculoskeletal System, All using Other Radionuclide', 'Casework'),
(4, 'artificial intelligence', 'Low Dose Rate (LDR) Brachytherapy of Soft Palate using Iodine 125 (I-125)', 'RF Shielding'),
(5, 'Ergonomic', 'Supplement Head with Nonautologous Tissue Substitute, Percutaneous Endoscopic Approach', 'Structural and Misc Steel (Fabrication)'),
(6, 'implementation', 'Drainage of Left Metatarsal-Tarsal Joint, Percutaneous Approach', 'Sitework & Site Utilities'),
(7, 'paradigm', 'Supplement Facial Muscle with Synthetic Substitute, Open Approach', 'Masonry & Precast'),
(8, 'productivity', 'Release Left Abdomen Tendon, Percutaneous Approach', 'Exterior Signage'),
(9, 'exuding', 'Removal of Radioactive Element from Pleura, Percutaneous Approach', 'Painting & Vinyl Wall Covering'),
(10, 'product', 'Skin and Breast, Division', 'RF Shielding'),
(11, 'Fundamental', 'Removal of Infusion Device from Thymus, Percutaneous Approach', 'Retaining Wall and Brick Pavers'),
(12, 'upward-trending', 'Removal of Infusion Device from Right Ankle Joint, Open Approach', 'Glass & Glazing'),
(13, 'discrete', 'Replacement of Right Sphenoid Bone with Autologous Tissue Substitute, Percutaneous Endoscopic Approach', 'Plumbing & Medical Gas'),
(14, 'Organic', 'Release Cervical Plexus, Percutaneous Endoscopic Approach', 'Rebar & Wire Mesh Install'),
(15, 'zero tolerance', 'Revision of Extraluminal Device in Right Eye, Open Approach', 'EIFS'),
(16, 'capacity', 'Ultrasonography of Left Subclavian Artery, Intravascular', 'Waterproofing & Caulking'),
(17, 'Graphic Interface', 'Drainage of Pharynx, Via Natural or Artificial Opening, Diagnostic', 'Framing (Wood)'),
(18, 'Synchronised', 'Dilation of Left Axillary Artery with Three Intraluminal Devices, Percutaneous Approach', 'Electrical'),
(19, 'user-facing', 'Insertion of Radioactive Element into Rectum, Percutaneous Endoscopic Approach', 'Epoxy Flooring'),
(20, 'Stand-alone', 'Fragmentation in Transverse Colon, External Approach', 'Exterior Signage'),
(21, 'intranet', 'Resection of Sigmoid Colon, Open Approach', 'Glass & Glazing'),
(22, 'multi-tasking', 'Administration, Indwelling Device, Irrigation', 'HVAC'),
(23, 'Progressive', 'Removal of External Fixation Device from Right Ulna, External Approach', 'Construction Clean and Final Clean'),
(24, 'object-oriented', 'Removal of Spacer from Right Metacarpocarpal Joint, Open Approach', 'Construction Clean and Final Clean'),
(25, 'foreground', 'Revision of External Fixation Device in Right Carpal, External Approach', 'Drywall & Acoustical (FED)'),
(26, 'website', 'Release Left Pulmonary Artery, Percutaneous Approach', 'Framing (Steel)'),
(27, 'encryption', 'Removal of Nonautologous Tissue Substitute from Right Scapula, Percutaneous Approach', 'Drywall & Acoustical (FED)'),
(28, 'Operative', 'Inspection of Retroperitoneum, Percutaneous Approach', 'Retaining Wall and Brick Pavers'),
(29, 'transitional', 'Removal of Nonautologous Tissue Substitute from Pancreatic Duct, Via Natural or Artificial Opening', 'Granite Surfaces'),
(30, 'Organized', 'Transfusion of Nonautologous Globulin into Central Vein, Percutaneous Approach', 'Epoxy Flooring'),
(31, '6th generation', 'Dilation of Stomach, Via Natural or Artificial Opening Endoscopic', 'Landscaping & Irrigation'),
(32, 'bottom-line', 'Removal of Autologous Tissue Substitute from Epididymis and Spermatic Cord, Open Approach', 'Ornamental Railings'),
(33, 'Persistent', 'Computerized Tomography (CT Scan) of Left Hand/Finger Joint', 'RF Shielding'),
(34, 'challenge', 'Repair Left Lacrimal Duct, Via Natural or Artificial Opening Endoscopic', 'Fire Sprinkler System'),
(35, 'client-server', 'Introduction of Oxazolidinones into Products of Conception, Percutaneous Approach', 'Electrical'),
(36, 'Progressive', 'Insertion of Internal Fixation Device into Right Rib, Percutaneous Approach', 'Overhead Doors'),
(37, 'Inverse', 'Restriction of Left Main Bronchus with Intraluminal Device, Percutaneous Approach', 'Fire Protection'),
(38, 'support', 'Revision of Internal Fixation Device in Left Metatarsal, External Approach', 'Prefabricated Aluminum Metal Canopies'),
(39, 'Advanced', 'Excision of Left Mastoid Sinus, Percutaneous Approach, Diagnostic', 'Soft Flooring and Base'),
(40, 'Adaptive', 'Supplement Right Iris with Autologous Tissue Substitute, Open Approach', 'Electrical'),
(41, 'zero tolerance', 'Repair Right Upper Extremity Lymphatic, Percutaneous Endoscopic Approach', 'Construction Clean and Final Clean'),
(42, 'process improvement', 'Extirpation of Matter from Right Lower Lung Lobe, Via Natural or Artificial Opening', 'Temp Fencing, Decorative Fencing and Gates'),
(43, 'functionalities', 'Release Right Common Carotid Artery, Percutaneous Approach', 'Doors, Frames & Hardware'),
(44, '4th generation', 'Drainage of Right Lower Extremity Bursa and Ligament, Percutaneous Approach', 'Roofing (Asphalt)'),
(45, 'cohesive', 'Planar Nuclear Medicine Imaging of Myocardium using Technetium 99m (Tc-99m)', 'Exterior Signage'),
(46, 'Decentralized', 'Drainage of Chest Wall, Percutaneous Approach', 'Granite Surfaces'),
(47, 'Balanced', 'Destruction of Right Thyroid Artery, Open Approach', 'Roofing (Asphalt)'),
(48, 'needs-based', 'Supplement Left Internal Carotid Artery with Synthetic Substitute, Percutaneous Approach', 'Prefabricated Aluminum Metal Canopies'),
(49, 'Enhanced', 'Fusion of Left Ankle Joint with Autologous Tissue Substitute, Percutaneous Endoscopic Approach', 'Waterproofing & Caulking'),
(50, 'Advanced', 'Resection of Right Lung, Open Approach', 'Framing (Steel)');

-- --------------------------------------------------------

--
-- Structure de la table `article_avance`
--

CREATE TABLE `article_avance` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article_avance`
--

INSERT INTO `article_avance` (`id`, `titre`, `categorie`, `auteur`, `description`, `img`, `date_creation`) VALUES
(1, 'RF Shielding', 'CR-V', 'Clare Wilce', 'Ophthalmia nodosa, left eye', 'https://robohash.org/rerumverodolores.png?size=50x50&set=set1', '2021-06-14 16:47:43'),
(2, 'Plumbing & Medical Gas', 'E-Series', 'Shermy MacLaverty', 'Nondisplaced fracture of shaft of unspecified metacarpal bone', 'https://robohash.org/expeditaidvelit.png?size=50x50&set=set1', '2021-02-24 02:56:48'),
(3, 'Marlite Panels (FED)', 'Mustang', 'Martie Scroggs', 'Skin donor, unspecified', 'https://robohash.org/doloribusoptioreprehenderit.png?size=50x50&set=set1', '2021-11-29 14:43:24'),
(4, 'Drywall & Acoustical (FED)', 'Rodeo', 'Antonina Hamshaw', 'Non-pressure chronic ulcer of left ankle with fat layer exposed', 'https://robohash.org/aliquidquaeratfuga.png?size=50x50&set=set1', '2021-09-01 07:29:10'),
(5, 'Termite Control', 'Passat', 'Rhetta Kuhn', 'Other injuries of unspecified eye and orbit, initial encounter', 'https://robohash.org/etdolorcupiditate.png?size=50x50&set=set1', '2021-01-08 17:26:14'),
(6, 'Prefabricated Aluminum Metal Canopies', 'Outlook', 'Juliana Redpath', 'Nondisplaced pilon fracture of right tibia, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with delayed healing', 'https://robohash.org/magnisintrecusandae.png?size=50x50&set=set1', '2021-12-28 06:22:23'),
(7, 'Elevator', 'RS6', 'Ingaborg Bewick', 'Pedestrian on foot injured in collision with two- or three-wheeled motor vehicle in nontraffic accident, initial encounter', 'https://robohash.org/necessitatibusquidolores.png?size=50x50&set=set1', '2020-12-19 02:12:42'),
(8, 'Casework', 'Town Car', 'Hana Courtois', 'Tuberculous meningitis', 'https://robohash.org/nobisnihilmolestiae.png?size=50x50&set=set1', '2021-04-20 00:51:50'),
(9, 'Roofing (Asphalt)', 'V90', 'Cherri Rubenchik', 'Insect bite (nonvenomous), left knee, initial encounter', 'https://robohash.org/voluptatumsolutaadipisci.png?size=50x50&set=set1', '2021-07-01 19:23:58'),
(10, 'Wall Protection', 'ES', 'Leticia Pagden', 'Person on outside of other special all-terrain or other off-road motor vehicles injured in nontraffic accident, sequela', 'https://robohash.org/istedolorlibero.png?size=50x50&set=set1', '2021-02-17 08:03:42'),
(11, 'Electrical and Fire Alarm', 'XK', 'Rabi Sidwell', 'Displaced fracture of lesser tuberosity of right humerus, subsequent encounter for fracture with routine healing', 'https://robohash.org/nesciuntullamnobis.png?size=50x50&set=set1', '2021-01-29 12:11:17'),
(12, 'Drilled Shafts', 'Forester', 'Tilly Connold', 'Gastrostomy complications', 'https://robohash.org/dictaminusfuga.png?size=50x50&set=set1', '2021-10-24 15:58:25'),
(13, 'Drywall & Acoustical (FED)', 'Forester', 'Donnajean Merrywether', 'Other specified injury of ulnar artery at forearm level', 'https://robohash.org/aspernaturconsequaturaccusamus.png?size=50x50&set=set1', '2021-08-07 05:05:25'),
(14, 'Curb & Gutter', 'Expedition', 'Davidson Kittel', 'Intervertebral disc stenosis of neural canal of sacral region', 'https://robohash.org/exeaqueaut.png?size=50x50&set=set1', '2021-08-26 11:32:14'),
(15, 'Drywall & Acoustical (FED)', 'Galant', 'Queenie Drew', 'Laceration of extensor muscle, fascia and tendon of left index finger at forearm level, sequela', 'https://robohash.org/placeateiussimilique.png?size=50x50&set=set1', '2021-05-29 19:57:12'),
(16, 'Casework', 'Quattroporte', 'Alexi Alliston', 'Intermittent hydrarthrosis, wrist', 'https://robohash.org/nihilsimiliquefacere.png?size=50x50&set=set1', '2021-07-12 14:29:04'),
(17, 'Soft Flooring and Base', 'SLK-Class', 'Gregorio Flowitt', 'Inflammatory disorders of seminal vesicle', 'https://robohash.org/beataemolestiaead.png?size=50x50&set=set1', '2021-02-10 05:39:42'),
(18, 'Structural and Misc Steel (Fabrication)', 'Navigator', 'Erek Schlagman', 'Other specified injury of unspecified middle and inner ear, sequela', 'https://robohash.org/eumquossed.png?size=50x50&set=set1', '2021-01-25 19:50:51'),
(19, 'Framing (Steel)', 'Sentra', 'Nels Di Pietro', 'Displaced transverse fracture of shaft of right radius, sequela', 'https://robohash.org/seddelenitiexercitationem.png?size=50x50&set=set1', '2021-07-13 20:57:47'),
(20, 'Hard Tile & Stone', 'Econoline E350', 'Elsa Keld', 'Bather struck by nonpowered watercraft', 'https://robohash.org/quisequiquis.png?size=50x50&set=set1', '2021-11-18 06:17:23'),
(21, 'Soft Flooring and Base', 'Ram 1500', 'Karlan Meiklejohn', 'War operations involving explosion of marine mine, civilian', 'https://robohash.org/auteosmaiores.png?size=50x50&set=set1', '2020-12-06 15:48:25'),
(22, 'Curb & Gutter', 'Suburban 2500', 'Roxine Everly', 'Burn of third degree of nose (septum)', 'https://robohash.org/voluptatemmodiet.png?size=50x50&set=set1', '2021-02-04 06:00:29'),
(23, 'Granite Surfaces', 'Continental Mark VII', 'Tremaine Carmichael', 'Displaced fracture of intermediate cuneiform of unspecified foot, initial encounter for closed fracture', 'https://robohash.org/impeditinvoluptates.png?size=50x50&set=set1', '2021-04-14 06:23:13'),
(24, 'Framing (Steel)', 'RX', 'Hal Hennington', 'Avulsion of scalp', 'https://robohash.org/quiaquitenetur.png?size=50x50&set=set1', '2021-08-25 18:52:09'),
(25, 'Construction Clean and Final Clean', 'Impreza WRX', 'Tarrance Georgievski', 'Encounter for observation for other suspected diseases and conditions ruled out', 'https://robohash.org/commodiimpeditnihil.png?size=50x50&set=set1', '2021-10-10 01:28:57'),
(26, 'Epoxy Flooring', 'DeVille', 'Waylan Haistwell', 'Mosquito-borne viral encephalitis, unspecified', 'https://robohash.org/quisquamnequenihil.png?size=50x50&set=set1', '2021-12-21 23:42:56'),
(27, 'Termite Control', '626', 'Zora Hamel', 'Other nondisplaced fracture of fourth cervical vertebra, initial encounter for open fracture', 'https://robohash.org/asperioresfacilismolestiae.png?size=50x50&set=set1', '2021-01-25 13:49:20'),
(28, 'Landscaping & Irrigation', 'Daewoo Kalos', 'Rosita Spincke', 'Double pterygium of eye, bilateral', 'https://robohash.org/quosexplicabomolestias.png?size=50x50&set=set1', '2021-03-30 13:26:28'),
(29, 'Plumbing & Medical Gas', 'Bonneville', 'Lorne Kimmitt', 'Paralytic calcification and ossification of muscle, right hand', 'https://robohash.org/natusdistinctioaut.png?size=50x50&set=set1', '2020-12-07 21:48:01'),
(30, 'Marlite Panels (FED)', '1500', 'Pernell Martelet', 'Melanocytic nevi of right lower limb, including hip', 'https://robohash.org/innobissequi.png?size=50x50&set=set1', '2021-11-25 14:26:43'),
(31, 'Drilled Shafts', 'GX', 'Nikaniki Benne', 'Paranoid personality disorder', 'https://robohash.org/iustoexplicaboperferendis.png?size=50x50&set=set1', '2021-06-05 18:13:05'),
(32, 'Structural & Misc Steel Erection', '911', 'Merrili Sanham', 'Poisoning by other hormone antagonists, assault, initial encounter', 'https://robohash.org/eosestvel.png?size=50x50&set=set1', '2021-09-28 22:26:40'),
(33, 'Structural & Misc Steel Erection', 'Mark LT', 'Nikita Grimsdith', 'Person on outside of bus injured in collision with heavy transport vehicle or bus in traffic accident, subsequent encounter', 'https://robohash.org/delenitisintest.png?size=50x50&set=set1', '2021-12-05 09:01:54'),
(34, 'Fire Sprinkler System', 'Tribute', 'Findley Shee', 'Unspecified injury of right lower leg, initial encounter', 'https://robohash.org/officiaconsequaturab.png?size=50x50&set=set1', '2021-10-01 16:48:43'),
(35, 'Roofing (Metal)', 'Dakota Club', 'Davine Hartzenberg', 'Unspecified injury of other specified blood vessels at shoulder and upper arm level, right arm', 'https://robohash.org/temporibuseumipsa.png?size=50x50&set=set1', '2021-11-30 05:16:51'),
(36, 'Sitework & Site Utilities', 'Colt', 'Noelani Brockhurst', 'Other injury of extensor muscle, fascia and tendon of unspecified finger at wrist and hand level, subsequent encounter', 'https://robohash.org/aquout.png?size=50x50&set=set1', '2021-06-29 20:02:36'),
(37, 'Asphalt Paving', '300M', 'Maureene Olivetta', 'Disorder of ligament, unspecified wrist', 'https://robohash.org/sedexplicaboveniam.png?size=50x50&set=set1', '2021-11-08 07:34:45'),
(38, 'Electrical', 'Quattroporte', 'Selig Morhall', 'Dependent relative needing care at home', 'https://robohash.org/rationesolutarerum.png?size=50x50&set=set1', '2021-04-29 14:56:40'),
(39, 'Structural and Misc Steel (Fabrication)', 'Prius', 'Eolande Bouller', 'Displaced segmental fracture of shaft of unspecified tibia, subsequent encounter for closed fracture with routine healing', 'https://robohash.org/perferendisoditaut.png?size=50x50&set=set1', '2021-11-09 12:29:34'),
(40, 'Drilled Shafts', 'RX-7', 'Boonie Gaynesford', 'Pseudopterygium of conjunctiva, unspecified eye', 'https://robohash.org/architectorerumest.png?size=50x50&set=set1', '2021-04-23 23:56:32'),
(41, 'Fire Protection', 'Avalanche', 'Ula Phippin', 'Displaced midcervical fracture of left femur, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with nonunion', 'https://robohash.org/voluptateminventoreest.png?size=50x50&set=set1', '2021-12-20 05:54:38'),
(42, 'Granite Surfaces', 'SX4', 'Rowe Grigorey', 'Other postprocedural cardiac functional disturbances', 'https://robohash.org/explicaboquialaudantium.png?size=50x50&set=set1', '2022-01-02 08:05:43'),
(43, 'Exterior Signage', 'Sierra 2500', 'Edmund Tesche', 'Other osteoporosis with current pathological fracture, unspecified humerus, initial encounter for fracture', 'https://robohash.org/nonomniset.png?size=50x50&set=set1', '2021-10-10 00:17:17'),
(44, 'EIFS', 'Esprit', 'Agneta Kneeshaw', 'Algoneurodystrophy, unspecified lower leg', 'https://robohash.org/doloretamet.png?size=50x50&set=set1', '2021-06-10 00:51:36'),
(45, 'Roofing (Asphalt)', 'Justy', 'Perry McCudden', 'Unspecified fracture of third thoracic vertebra, subsequent encounter for fracture with routine healing', 'https://robohash.org/praesentiumetvoluptates.png?size=50x50&set=set1', '2021-05-21 12:58:56'),
(46, 'Doors, Frames & Hardware', 'Savana 3500', 'Gill Maccree', 'Nondisplaced fracture of medial malleolus of left tibia', 'https://robohash.org/estmollitiaeos.png?size=50x50&set=set1', '2021-12-25 03:12:03'),
(47, 'Casework', '1500 Club Coupe', 'Jessamine Greenstead', 'Poisoning by antigonadotrophins, antiestrogens, antiandrogens, not elsewhere classified, assault, initial encounter', 'https://robohash.org/harummagniqui.png?size=50x50&set=set1', '2021-05-02 22:07:51'),
(48, 'Asphalt Paving', 'Villager', 'Alexine Dagworthy', 'Other mental disorders complicating pregnancy, unspecified trimester', 'https://robohash.org/erroroptiodoloribus.png?size=50x50&set=set1', '2021-03-30 18:35:31'),
(49, 'Roofing (Metal)', 'Eclipse', 'Harcourt Taree', 'Nondisplaced fracture of distal pole of navicular [scaphoid] bone of right wrist, initial encounter for open fracture', 'https://robohash.org/debitisconsequunturdolorem.png?size=50x50&set=set1', '2021-09-24 20:13:06'),
(50, 'Asphalt Paving', 'Rogue', 'Deane McQuilliam', 'Ankylosis, unspecified hand', 'https://robohash.org/cumqueaccusamusqui.png?size=50x50&set=set1', '2021-01-25 15:39:38'),
(51, 'titre 2', 'categorie 1', 'chakib dabbek', 'test description', 'https://assets.startbootstrap.com/img/screenshots/themes/sb-admin-2.jpg', '2018-02-03 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `label`) VALUES
(1, 'Technology'),
(2, 'Consumer Services'),
(3, 'Finance'),
(4, 'Health Care');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220103133420', '2022-01-03 14:35:18', 54);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duree` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `titre`, `description`, `prix`, `categorie`, `duree`) VALUES
(1, 'Bulgarian', 'Nondisplaced fracture of middle third of navicular [scaphoid] bone of left wrist, subsequent encounter for fracture with malunion', 7207, 'Health Care', 541),
(2, 'Bengali', 'Injury of other nerves at shoulder and upper arm level', 9005, 'n/a', 232),
(3, 'Italian', 'Surgical instruments, materials and cardiovascular devices (including sutures) associated with adverse incidents', 7716, 'Public Utilities', 419),
(4, 'Dari', 'Sprain of interphalangeal joint of unspecified finger, subsequent encounter', 2157, 'Capital Goods', 319),
(5, 'Belarusian', 'Nondisplaced transverse fracture of shaft of humerus, unspecified arm, initial encounter for open fracture', 6477, 'Basic Industries', 459),
(6, 'Hungarian', 'Occupant of pick-up truck or van injured in other and unspecified transport accidents', 6985, 'Consumer Services', 519),
(7, 'Croatian', 'Unspecified injury of greater saphenous vein at hip and thigh level, unspecified leg', 5732, 'Health Care', 233),
(8, 'Gagauz', 'Severely displaced Zone III fracture of sacrum, subsequent encounter for fracture with delayed healing', 3127, 'n/a', 249),
(9, 'Indonesian', 'Other diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism complicating childbirth', 8325, 'Health Care', 862),
(10, 'Bosnian', 'Intentional self-harm by drowning and submersion while in swimming pool', 6117, 'n/a', 624),
(11, 'Assamese', 'Other female genital prolapse', 6934, 'Finance', 353),
(12, 'Irish Gaelic', 'Nondisplaced fracture of posterior column [ilioischial] of right acetabulum, initial encounter for open fracture', 7914, 'Consumer Services', 323),
(13, 'Punjabi', 'Malignant carcinoid tumor of the duodenum', 9968, 'Capital Goods', 212),
(14, 'Hiri Motu', 'Syndactyly', 8716, 'n/a', 412),
(15, 'Finnish', 'Other juvenile osteochondrosis of hip and pelvis', 4642, 'n/a', 691),
(16, 'Italian', 'Displaced transverse fracture of right patella, subsequent encounter for open fracture type I or II with nonunion', 8934, 'Consumer Services', 634),
(17, 'Haitian Creole', 'Unspecified superficial injury of left eyelid and periocular area, sequela', 6299, 'Capital Goods', 193),
(18, 'Croatian', 'Other injury due to other accident on board fishing boat', 5919, 'Health Care', 158),
(19, 'Quechua', 'Puncture wound with foreign body, unspecified foot, sequela', 4575, 'Finance', 526),
(20, 'Khmer', 'Corrosion of first degree of head, face, and neck, unspecified site, initial encounter', 5286, 'Finance', 132),
(21, 'Lithuanian', 'Corrosion of second degree of multiple fingers (nail), including thumb', 9179, 'n/a', 540),
(22, 'Dari', 'External constriction of right wrist, initial encounter', 2262, 'n/a', 595),
(23, 'Albanian', 'Newborn affected by maternal complications of pregnancy', 7852, 'Basic Industries', 675),
(24, 'Bosnian', 'Unspecified car occupant injured in collision with railway train or railway vehicle in nontraffic accident, subsequent encounter', 2514, 'Technology', 719),
(25, 'Malayalam', 'Displaced spiral fracture of shaft of radius, left arm, initial encounter for closed fracture', 7703, 'Technology', 495),
(26, 'Kannada', 'Adverse effect of other topical agents, sequela', 4165, 'Finance', 849),
(27, 'Dutch', 'Unspecified occupant of pick-up truck or van injured in collision with pedestrian or animal in nontraffic accident, initial encounter', 6816, 'Consumer Services', 410),
(28, 'Finnish', 'Unspecified traumatic displaced spondylolisthesis of sixth cervical vertebra, subsequent encounter for fracture with delayed healing', 8003, 'Energy', 869),
(29, 'Bengali', 'Laceration of right renal artery, initial encounter', 6040, 'Energy', 853),
(30, 'Māori', 'Type 2 diabetes mellitus with diabetic amyotrophy', 5985, 'Consumer Services', 257),
(31, 'Thai', 'Toxic effect of corrosive acids and acid-like substances, intentional self-harm', 9939, 'Technology', 642),
(32, 'Gujarati', 'Nonrheumatic pulmonary valve stenosis', 3700, 'Miscellaneous', 743),
(33, 'Burmese', 'Multiple fractures of pelvis with unstable disruption of pelvic ring, initial encounter for open fracture', 2996, 'n/a', 823),
(34, 'Arabic', 'Adverse effect of methylphenidate, initial encounter', 9107, 'n/a', 432),
(35, 'Romanian', 'Injury of bile duct', 8945, 'Basic Industries', 362),
(36, 'Romanian', 'Fetal anemia and thrombocytopenia, third trimester, fetus 2', 1972, 'Health Care', 114),
(37, 'German', 'Malignant neoplasm of other and unspecified parts of mouth', 9156, 'Finance', 467),
(38, 'Polish', 'Pathological fracture in other disease, left tibia, initial encounter for fracture', 4191, 'Energy', 113),
(39, 'Pashto', 'War operations involving other destruction of aircraft, civilian, sequela', 8236, 'n/a', 193),
(40, 'Gagauz', 'Complete traumatic amputation of left foot at ankle level, sequela', 9681, 'Miscellaneous', 877),
(41, 'Polish', 'Displaced transverse fracture of shaft of right radius, subsequent encounter for closed fracture with delayed healing', 1156, 'n/a', 196),
(42, 'Lithuanian', 'Explosion of bicycle tire, initial encounter', 1912, 'n/a', 497);

-- --------------------------------------------------------

--
-- Structure de la table `myblog`
--

CREATE TABLE `myblog` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `auteur_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` date NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `myblog`
--

INSERT INTO `myblog` (`id`, `categorie_id`, `auteur_id`, `titre`, `description`, `date_creation`, `img`) VALUES
(1, 4, 3, 'a suscipit nulla', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', '2021-11-26', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(2, 4, 3, 'vivamus tortor duis mattis egestas metus', 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', '2021-11-03', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(3, 2, 1, 'congue vivamus metus arcu adipiscing', 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', '2021-11-19', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(4, 1, 2, 'sit amet justo morbi ut', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in', '2021-10-21', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(5, 2, 3, 'morbi non quam nec dui', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', '2021-12-14', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(6, 3, 1, 'nulla elit ac nulla', 'nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', '2021-10-10', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(7, 1, 3, 'mauris morbi non lectus aliquam sit', 'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue', '2021-10-29', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(8, 4, 5, 'quisque erat eros viverra eget', 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', '2021-10-31', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(9, 1, 2, 'in tempor turpis', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', '2021-11-22', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(10, 2, 1, 'amet eros suspendisse accumsan', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed', '2021-10-15', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(11, 1, 1, 'accumsan tortor quis turpis sed', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean', '2021-12-11', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(12, 4, 5, 'lobortis sapien sapien non', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', '2021-10-06', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(13, 3, 4, 'congue etiam justo etiam', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', '2021-11-06', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(14, 4, 3, 'id justo sit amet sapien dignissim', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', '2021-12-12', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(15, 2, 3, 'tortor quis turpis sed', 'integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', '2021-10-04', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(16, 2, 2, 'enim sit amet nunc', 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', '2021-12-13', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(17, 4, 1, 'blandit ultrices enim lorem ipsum dolor', 'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', '2022-01-08', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(18, 1, 4, 'montes nascetur ridiculus mus vivamus', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', '2021-10-18', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(19, 1, 4, 'in purus eu magna vulputate luctus', 'semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at', '2021-10-30', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(20, 2, 5, 'cras non velit', 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', '2021-12-07', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(21, 2, 2, 'molestie lorem quisque ut', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', '2021-11-12', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(22, 4, 3, 'purus sit amet nulla quisque', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a', '2021-10-06', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(23, 1, 1, 'quisque erat eros', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis', '2021-12-29', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(24, 4, 5, 'magnis dis parturient montes', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius', '2021-10-17', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(25, 3, 4, 'elit ac nulla sed vel enim', 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula', '2021-12-01', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(26, 2, 5, 'vulputate nonummy maecenas', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a', '2021-12-02', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(27, 1, 3, 'duis mattis egestas metus aenean fermentum', 'quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis', '2021-11-02', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(28, 3, 2, 'donec dapibus duis at velit', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', '2021-11-17', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(29, 3, 1, 'sem fusce consequat', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', '2021-12-16', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(30, 2, 1, 'pede venenatis non sodales sed tincidunt', 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', '2021-10-17', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(31, 1, 2, 'dapibus at diam nam tristique tortor', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non', '2021-12-26', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(32, 4, 2, 'ut massa quis augue luctus', 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia', '2021-11-16', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(33, 3, 5, 'eleifend quam a odio in', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', '2021-10-19', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(34, 1, 5, 'tincidunt lacus at velit', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', '2022-01-07', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(35, 2, 2, 'ac neque duis', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius', '2021-12-08', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(36, 4, 2, 'metus sapien ut', 'nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', '2021-10-24', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(37, 4, 4, 'eros vestibulum ac est', 'sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur', '2021-10-29', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(38, 3, 3, 'vulputate nonummy maecenas', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', '2021-10-13', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(39, 4, 4, 'vel nisl duis', 'ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla', '2021-11-29', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(40, 3, 4, 'quis odio consequat varius', 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', '2021-10-16', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(41, 3, 4, 'lorem quisque ut', 'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', '2021-12-10', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(42, 1, 5, 'ac consequat metus sapien', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', '2021-10-29', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(43, 3, 1, 'ultrices phasellus id sapien in sapien', 'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', '2021-10-04', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(44, 3, 4, 'quis tortor id nulla ultrices aliquet', 'pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', '2021-11-06', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(45, 4, 4, 'pretium quis lectus suspendisse potenti', 'primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', '2021-11-04', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(46, 4, 4, 'porttitor lacus at turpis', 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede', '2021-10-21', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(47, 1, 1, 'et magnis dis parturient', 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', '2021-10-27', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(48, 3, 2, 'sapien cum sociis natoque', 'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', '2021-11-12', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(49, 1, 2, 'nunc commodo placerat praesent', 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', '2021-11-06', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(50, 1, 1, 'justo nec condimentum neque sapien', 'cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse', '2021-11-25', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(51, 2, 3, 'in felis eu sapien cursus', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', '2022-01-03', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(52, 4, 2, 'erat vestibulum sed magna at nunc', 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '2021-12-02', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(53, 4, 3, 'luctus ultricies eu', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu', '2021-10-29', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(54, 2, 4, 'dui nec nisi volutpat', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', '2022-01-07', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(55, 1, 5, 'a libero nam dui proin leo', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', '2021-11-13', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(56, 1, 2, 'in tempor turpis', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', '2021-10-11', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(57, 1, 2, 'nibh in quis justo', 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci', '2021-11-09', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(58, 4, 2, 'luctus cum sociis natoque penatibus', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', '2021-11-09', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(59, 2, 4, 'sed magna at nunc commodo', 'pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer', '2021-11-05', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(60, 2, 4, 'nunc viverra dapibus nulla suscipit ligula', 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', '2021-10-17', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(61, 3, 5, 'justo lacinia eget tincidunt', 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', '2021-11-11', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(62, 3, 5, 'porttitor id consequat in consequat ut', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', '2021-10-09', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(63, 3, 5, 'justo sit amet sapien dignissim', 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', '2021-10-07', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(64, 2, 1, 'sapien iaculis congue vivamus metus arcu', 'feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget', '2021-10-17', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(65, 3, 3, 'pulvinar lobortis est phasellus sit amet', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', '2021-11-05', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(66, 3, 5, 'commodo vulputate justo in', 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', '2022-01-03', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(67, 2, 5, 'at ipsum ac tellus semper', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus', '2021-12-16', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(68, 2, 4, 'at turpis a pede', 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt', '2021-12-29', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(69, 3, 3, 'morbi ut odio', 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', '2021-12-22', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(70, 3, 2, 'duis faucibus accumsan odio curabitur', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', '2021-11-25', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(71, 4, 1, 'donec pharetra magna', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', '2022-01-05', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(72, 2, 2, 'feugiat non pretium quis lectus suspendisse', 'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat', '2021-10-22', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(73, 1, 5, 'quisque erat eros viverra eget', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', '2021-12-05', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(74, 2, 3, 'ipsum primis in', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', '2021-11-04', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(75, 2, 2, 'nulla ac enim', 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut', '2021-10-24', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(76, 1, 2, 'dolor vel est donec odio', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', '2021-11-29', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(77, 3, 4, 'fusce posuere felis sed lacus morbi', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', '2021-12-28', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(78, 3, 1, 'cubilia curae donec', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', '2021-12-20', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(79, 1, 1, 'pede lobortis ligula', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', '2021-11-23', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(80, 4, 2, 'amet erat nulla', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', '2021-12-23', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(81, 2, 4, 'purus eu magna vulputate luctus cum', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', '2021-12-27', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(82, 1, 5, 'libero quis orci nullam molestie', 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu', '2021-10-20', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(83, 2, 3, 'duis bibendum morbi non', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', '2021-12-23', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(84, 1, 2, 'ligula vehicula consequat morbi a ipsum', 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', '2021-10-15', 'http://dummyimage.com/750x600.png/dddddd/000000');
INSERT INTO `myblog` (`id`, `categorie_id`, `auteur_id`, `titre`, `description`, `date_creation`, `img`) VALUES
(85, 1, 3, 'integer tincidunt ante vel ipsum praesent', 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', '2021-12-16', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(86, 2, 3, 'cum sociis natoque penatibus et', 'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac', '2021-10-24', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(87, 4, 1, 'faucibus orci luctus et ultrices posuere', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra', '2021-11-01', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(88, 1, 2, 'luctus et ultrices posuere cubilia curae', 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis', '2021-11-01', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(89, 2, 4, 'lectus suspendisse potenti', 'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', '2021-11-03', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(90, 3, 2, 'turpis nec euismod scelerisque quam', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', '2021-11-28', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(91, 1, 5, 'placerat praesent blandit nam nulla integer', 'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', '2021-12-03', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(92, 3, 4, 'ac nulla sed', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', '2021-12-20', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(93, 1, 1, 'morbi sem mauris laoreet ut', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac', '2021-12-03', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(94, 3, 4, 'a suscipit nulla elit ac nulla', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat', '2021-10-25', 'http://dummyimage.com/750x600.png/dddddd/000000'),
(95, 3, 3, 'ut mauris eget massa tempor', 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', '2022-01-08', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(96, 4, 5, 'odio odio elementum eu interdum', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet', '2021-12-13', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(97, 3, 3, 'arcu sed augue aliquam erat volutpat', 'diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', '2021-10-31', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(98, 4, 3, 'ac nulla sed vel enim', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', '2021-10-23', 'http://dummyimage.com/750x600.png/5fa2dd/ffffff'),
(99, 4, 3, 'nulla tempus vivamus in', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel', '2021-10-24', 'http://dummyimage.com/750x600.png/ff4444/ffffff'),
(100, 2, 1, 'nam congue risus semper porta volutpat', 'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet', '2021-11-20', 'http://dummyimage.com/750x600.png/cc0000/ffffff'),
(101, 1, 54, 'My first blog insertion', 'my description', '2022-01-10', 'https://dummyimage.com/750x600.png/5fa2dd/ffffff');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `label`) VALUES
(1, 'Czech Republic'),
(2, 'Togo'),
(3, 'France'),
(4, 'Kenya'),
(5, 'Philippines'),
(6, 'Mozambique'),
(7, 'Colombia'),
(8, 'Indonesia'),
(9, 'Bulgaria'),
(10, 'Portugal'),
(11, 'Iran'),
(12, 'Portugal'),
(13, 'Philippines'),
(14, 'China'),
(15, 'Poland'),
(16, 'United States'),
(17, 'Albania'),
(18, 'Thailand'),
(19, 'Pakistan'),
(20, 'Morocco');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_naiss` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `sexe`, `date_naiss`, `active`, `email`) VALUES
(1, 'Modestia', 'Stelfox', 'Homme', '2014-02-10', 1, 'mstelfox0@about.com'),
(2, 'Fremont', 'O\'Garmen', 'Femme', '1970-03-07', 0, 'fogarmen1@istockphoto.com'),
(3, 'Byrom', 'Marvel', 'Femme', '1986-02-25', 0, 'bmarvel2@topsy.com'),
(4, 'Hildagard', 'Meeke', 'Femme', '2004-07-26', 0, 'hmeeke3@amazon.com'),
(5, 'Emery', 'Newson', 'Femme', '1972-07-04', 1, 'enewson4@cbslocal.com'),
(6, 'Tull', 'Marrett', 'Femme', '1970-06-01', 1, 'tmarrett5@rediff.com'),
(7, 'Kelwin', 'Rowaszkiewicz', 'Femme', '1990-11-15', 1, 'krowaszkiewicz6@ebay.co.uk'),
(8, 'Camala', 'Partleton', 'Femme', '2004-09-18', 1, 'cpartleton7@cisco.com'),
(9, 'Vidovik', 'Okeshott', 'Femme', '2011-04-29', 0, 'vokeshott8@hud.gov'),
(10, 'Heda', 'Geere', 'Femme', '2001-11-22', 1, 'hgeere9@usa.gov'),
(11, 'Craggie', 'Foakes', 'Homme', '1975-11-10', 1, 'cfoakesa@narod.ru'),
(12, 'Celestyn', 'Sorrie', 'Femme', '1976-05-10', 0, 'csorrieb@w3.org'),
(13, 'Antonina', 'Parlour', 'Homme', '1972-11-07', 1, 'aparlourc@webnode.com'),
(14, 'Hanna', 'Djorevic', 'Homme', '1978-07-08', 0, 'hdjorevicd@desdev.cn'),
(15, 'Farand', 'Sexton', 'Homme', '2010-06-04', 1, 'fsextone@ca.gov'),
(16, 'Dix', 'Storrie', 'Femme', '1971-06-13', 1, 'dstorrief@clickbank.net'),
(17, 'Catherin', 'Bramich', 'Homme', '1977-04-06', 1, 'cbramichg@t-online.de'),
(18, 'Parke', 'Eminson', 'Femme', '1994-01-25', 1, 'peminsonh@cafepress.com'),
(19, 'Myrtie', 'Gress', 'Homme', '1976-11-12', 1, 'mgressi@slideshare.net'),
(20, 'Gwynne', 'Klimek', 'Femme', '2000-11-17', 0, 'gklimekj@spotify.com'),
(21, 'Jo-ann', 'Mercer', 'Homme', '2003-08-20', 1, 'jmercerk@nyu.edu'),
(22, 'Daren', 'Twinberrow', 'Homme', '1987-03-21', 1, 'dtwinberrowl@apple.com'),
(23, 'Morna', 'Perroni', 'Homme', '1983-12-27', 0, 'mperronim@nba.com'),
(24, 'Butch', 'Gaskal', 'Homme', '1994-05-06', 0, 'bgaskaln@youtu.be'),
(25, 'Augy', 'Romera', 'Femme', '2011-07-24', 1, 'aromerao@census.gov'),
(26, 'Aldis', 'Sliman', 'Homme', '1974-12-26', 0, 'aslimanp@soup.io'),
(27, 'Napoleon', 'Giffaut', 'Femme', '1983-11-04', 0, 'ngiffautq@army.mil'),
(28, 'Verney', 'Piner', 'Femme', '1973-09-23', 0, 'vpinerr@comcast.net'),
(29, 'Wendy', 'Copes', 'Femme', '1997-04-30', 0, 'wcopess@instagram.com'),
(30, 'Job', 'Notman', 'Femme', '2012-05-05', 0, 'jnotmant@prnewswire.com'),
(31, 'Lucio', 'Naile', 'Homme', '1972-09-09', 0, 'lnaileu@example.com'),
(32, 'Roddie', 'Kerfut', 'Homme', '2021-03-05', 0, 'rkerfutv@freewebs.com'),
(33, 'Carmelia', 'Docksey', 'Femme', '1976-10-03', 0, 'cdockseyw@meetup.com'),
(34, 'Leontyne', 'Corrett', 'Homme', '1975-02-07', 1, 'lcorrettx@yellowpages.com'),
(35, 'Laurella', 'Belward', 'Femme', '1973-10-01', 0, 'lbelwardy@businesswire.com'),
(36, 'Bard', 'Likly', 'Homme', '2004-03-16', 1, 'bliklyz@slideshare.net'),
(37, 'Johnnie', 'Abbots', 'Homme', '1990-04-22', 1, 'jabbots10@github.io'),
(38, 'Huntlee', 'Hancell', 'Femme', '2021-01-02', 1, 'hhancell11@geocities.com'),
(39, 'Lacie', 'Torbet', 'Femme', '2016-12-12', 1, 'ltorbet12@google.de'),
(40, 'Kali', 'Clery', 'Homme', '1986-12-30', 1, 'kclery13@360.cn'),
(41, 'Hobart', 'Davidy', 'Homme', '1979-03-10', 1, 'hdavidy14@census.gov'),
(42, 'Chance', 'Smithend', 'Femme', '2017-04-14', 1, 'csmithend15@posterous.com'),
(43, 'Reba', 'Goring', 'Femme', '1971-09-05', 1, 'rgoring16@webs.com'),
(44, 'Binni', 'Faill', 'Femme', '1991-09-21', 0, 'bfaill17@ocn.ne.jp'),
(45, 'Alain', 'Stuttard', 'Homme', '1996-09-13', 1, 'astuttard18@springer.com'),
(46, 'Forster', 'Trenholme', 'Femme', '1996-03-22', 0, 'ftrenholme19@facebook.com'),
(47, 'Aurelie', 'Side', 'Homme', '1986-10-18', 0, 'aside1a@china.com.cn'),
(48, 'Stanly', 'Reuter', 'Femme', '2011-04-18', 0, 'sreuter1b@qq.com'),
(49, 'Rosabelle', 'Larkin', 'Femme', '1995-04-24', 1, 'rlarkin1c@irs.gov'),
(50, 'Tressa', 'Ivory', 'Homme', '2016-11-07', 1, 'tivory1d@oaic.gov.au'),
(54, 'testNom', 'testPrenom', 'Homme', '2017-01-01', 1, 'admin1234@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `pays_id` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `pays_id`, `label`) VALUES
(1, 6, 'Vizal San Pablo'),
(2, 2, 'La Eduvigis'),
(3, 5, 'Baolong'),
(4, 5, 'Robertsport'),
(5, 2, 'Gorki Vtoryye'),
(6, 2, 'Amieira do Tejo'),
(7, 6, 'Kouango'),
(8, 6, 'Ccuntuma'),
(9, 6, 'Orekhovo-Borisovo Severnoye'),
(10, 7, 'Zhijiang'),
(11, 2, 'Daruoyan'),
(12, 6, 'San Narciso'),
(13, 2, 'Fengshan'),
(14, 3, 'Mudon'),
(15, 6, 'Magepanda'),
(16, 7, 'Mjölby'),
(17, 5, 'Lere'),
(18, 9, 'Camingawan'),
(19, 1, 'Zaysan'),
(20, 2, 'San Simon'),
(21, 14, 'hong kong'),
(22, 3, 'Nice'),
(23, 4, 'testVille');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `article_avance`
--
ALTER TABLE `article_avance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `myblog`
--
ALTER TABLE `myblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_103BB1C6BCF5E72D` (`categorie_id`),
  ADD KEY `IDX_103BB1C660BB6FE6` (`auteur_id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_43C3D9C3A6E44244` (`pays_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `article_avance`
--
ALTER TABLE `article_avance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `myblog`
--
ALTER TABLE `myblog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `myblog`
--
ALTER TABLE `myblog`
  ADD CONSTRAINT `FK_103BB1C660BB6FE6` FOREIGN KEY (`auteur_id`) REFERENCES `personne` (`id`),
  ADD CONSTRAINT `FK_103BB1C6BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `ville`
--
ALTER TABLE `ville`
  ADD CONSTRAINT `FK_43C3D9C3A6E44244` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
