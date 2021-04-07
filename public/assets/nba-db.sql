-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 07 avr. 2021 à 09:29
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nba`
--

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

DROP TABLE IF EXISTS `player`;
CREATE TABLE IF NOT EXISTS `player` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(26) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points_avg` float DEFAULT NULL,
  `assists_avg` float DEFAULT NULL,
  `rebounds_avg` float DEFAULT NULL,
  `blocks_avg` float DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `player`
--

INSERT INTO `player` (`id`, `position`, `name`, `points_avg`, `assists_avg`, `rebounds_avg`, `blocks_avg`, `photo`, `team_id`) VALUES
(1, 'F-G', 'Luka DONCIC', 29.1, 9.4, 8.6, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629029.png', 1),
(2, 'G', 'Josh RICHARDSON', 12.5, 2.7, 2.9, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626196.png', 1),
(3, 'F', 'Dorian FINNEY-SMITH', 9.1, 1.2, 4.8, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627827.png', 1),
(4, 'G-F', 'Tim HARDAWAY JR.', 16.7, 1.6, 3.2, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203501.png', 1),
(5, 'F-C', 'Kristaps PORZINGIS', 20.5, 1.3, 8.2, 1.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/204001.png', 1),
(7, 'G', 'Trae YOUNG', 26.5, 9.3, 3.8, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629027.png', 2),
(8, 'F-G', 'De\'Andre HUNTER', 17.2, 2.2, 5.4, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629631.png', 2),
(9, 'G-F', 'Kevin HUERTER', 12, 3.8, 3.6, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628989.png', 2),
(10, 'F-C', 'John COLLINS', 18.2, 1.6, 7.6, 1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628381.png', 2),
(11, 'C', 'Clint CAPELA', 14.3, 1, 14, 2.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203991.png', 2);

-- --------------------------------------------------------

--
-- Structure de la table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
CREATE TABLE IF NOT EXISTS `ranking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `conf_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ranking`
--

INSERT INTO `ranking` (`id`, `team_id`, `conf_rank`) VALUES
(1, 1, 7),
(2, 2, 4),
(3, 3, 4),
(4, 4, 7),
(5, 5, 10),
(6, 6, 10),
(7, 7, 14),
(8, 8, 6),
(9, 9, 15),
(10, 10, 1),
(11, 11, 3),
(12, 12, 12),
(13, 13, 8),
(14, 14, 5),
(15, 15, 13),
(16, 16, 8),
(17, 17, 5),
(18, 18, 15),
(19, 19, 11),
(20, 20, 14),
(21, 21, 6),
(22, 22, 2),
(23, 23, 2),
(24, 24, 9),
(25, 25, 9),
(26, 26, 13),
(27, 27, 1),
(28, 28, 11),
(29, 29, 3),
(30, 30, 12);

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `champ_nbr` int(11) DEFAULT NULL,
  `victories` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `conference` tinyint(1) NOT NULL,
  `color` varchar(26) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `name`, `logo`, `champ_nbr`, `victories`, `defeats`, `conference`, `color`) VALUES
(1, 'DALLAS MAVERICKS', 'https://fr.global.nba.com/media/img/teams/00/logos/DAL_logo.svg', 1, 28, 21, 1, '0064B1'),
(2, 'ATLANTA HAWKS', 'https://fr.global.nba.com/media/img/teams/00/logos/ATL_logo.svg', 1, 26, 24, 0, 'E03A3E'),
(3, 'DENVER NUGGETS', 'https://fr.global.nba.com/media/img/teams/00/logos/DEN_logo.svg', 0, 31, 18, 1, '0D2240'),
(4, 'BOSTON CELTICS', 'https://fr.global.nba.com/media/img/teams/00/logos/BOS_logo.svg', 17, 25, 25, 0, '008248'),
(5, 'GOLDEN STATE WARRIORS', 'https://fr.global.nba.com/media/img/teams/00/logos/GSW_logo.svg', 6, 23, 27, 1, '1D428A'),
(6, 'CHICAGO BULLS', 'https://fr.global.nba.com/media/img/teams/00/logos/CHI_logo.svg', 6, 20, 28, 0, 'EF0B16'),
(7, 'HOUSTON ROCKETS', 'https://fr.global.nba.com/media/img/teams/00/logos/HOU_logo.svg', 2, 13, 37, 1, 'CE1141'),
(8, 'CHARLOTTE HORNETS', 'https://fr.global.nba.com/media/img/teams/00/logos/CHA_logo.svg', 0, 25, 24, 0, '0D89A5'),
(9, 'MINNESOTA TIMBERWOLVES', 'https://fr.global.nba.com/media/img/teams/00/logos/MIN_logo.svg', 0, 13, 38, 1, '0D2240'),
(10, 'BROOKLYN NETS', 'https://fr.global.nba.com/media/img/teams/00/logos/BKN_logo.svg', 0, 35, 16, 0, '000000'),
(11, 'L.A. CLIPPERS', 'https://fr.global.nba.com/media/img/teams/00/logos/LAC_logo.svg', 0, 33, 18, 1, '006BB5'),
(12, 'CLEVELAND CAVALIERS', 'https://fr.global.nba.com/media/img/teams/00/logos/CLE_logo.svg', 1, 18, 32, 0, '6F263D'),
(13, 'MEMPHIS GRIZZLIES', 'https://fr.global.nba.com/media/img/teams/00/logos/MEM_logo.svg', 0, 24, 23, 1, '5D76A9'),
(14, 'MIAMI HEAT', 'https://fr.global.nba.com/media/img/teams/00/logos/MIA_logo.svg', 3, 26, 24, 0, '8B2332'),
(15, 'OKLAHOMA CITY THUNDER', 'https://fr.global.nba.com/media/img/teams/00/logos/OKC_logo.svg', 1, 20, 30, 1, '0071CE'),
(16, 'NEW YORK KNICKS', 'https://fr.global.nba.com/media/img/teams/00/logos/NYK_logo.svg', 2, 25, 26, 0, '003DA6'),
(17, 'LOS ANGELES LAKERS', 'https://fr.global.nba.com/media/img/teams/00/logos/LAL_logo.svg', 17, 31, 19, 1, 'FDB927'),
(18, 'DETROIT PISTONS', 'https://fr.global.nba.com/media/img/teams/00/logos/DET_logo.svg', 3, 15, 35, 0, 'DD0031'),
(19, 'NEW ORLEANS PELICANS', 'https://fr.global.nba.com/media/img/teams/00/logos/NOP_logo.svg', 0, 22, 27, 1, 'B4975A'),
(20, 'ORLANDO MAGIC', 'https://fr.global.nba.com/media/img/teams/00/logos/ORL_logo.svg', 0, 17, 33, 0, '0055B8'),
(21, 'PORTLAND TRAILBLAZERS', 'https://fr.global.nba.com/media/img/teams/00/logos/POR_logo.svg', 1, 30, 19, 1, '000000'),
(22, 'PHILADELPHIA 76ERS', 'https://fr.global.nba.com/media/img/teams/00/logos/PHI_logo.svg', 3, 34, 16, 0, '006BB5'),
(23, 'PHOENIX SUNS', 'https://fr.global.nba.com/media/img/teams/00/logos/PHX_logo.svg', 0, 35, 14, 1, 'E56020'),
(24, 'INDIANA PACERS', 'https://fr.global.nba.com/media/img/teams/00/logos/IND_logo.svg', 0, 22, 26, 0, 'FDBB30'),
(25, 'SAN ANTONIO SPURS', 'https://fr.global.nba.com/media/img/teams/00/logos/SAS_logo.svg', 5, 24, 24, 1, 'C4CED4'),
(26, 'WASHINGTON WIZARDS', 'https://fr.global.nba.com/media/img/teams/00/logos/WAS_logo.svg', 1, 17, 32, 0, 'CF0A2C'),
(27, 'UTAH JAZZ', 'https://fr.global.nba.com/media/img/teams/00/logos/UTA_logo.svg', 0, 38, 12, 1, '0D2240'),
(28, 'TORONTO RAPTORS', 'https://fr.global.nba.com/media/img/teams/00/logos/TOR_logo.svg', 1, 20, 30, 0, 'CD1141'),
(29, 'MILWAUKEE BUCKS', 'https://fr.global.nba.com/media/img/teams/00/logos/MIL_logo.svg', 1, 32, 17, 0, '00471A'),
(30, 'SACRAMENTO KINGS', 'https://fr.global.nba.com/media/img/teams/00/logos/SAC_logo.svg', 1, 22, 29, 1, '5B2B82');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
