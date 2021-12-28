-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 15 déc. 2021 à 15:23
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phpcrud`
--

-- --------------------------------------------------------

--
-- Structure de la table `contacts2`
--

CREATE TABLE `contacts2` (
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `contacts2`
--

INSERT INTO `contacts2` (`prenom`, `nom`) VALUES
('truc', 'Papin'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Truc', 'Troc'),
('Trac', 'Truc'),
('', ''),
('Truc TRuhdcnbzd', 'déré\"ré\"r\"é'),
('Test 1', 'ttghnh'),
('Vincent', 'truc'),
('eéeée', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
