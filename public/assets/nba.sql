-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 22 fév. 2021 à 11:20
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nba`
--

-- --------------------------------------------------------

--
-- Structure de la table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `position` varchar(26) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points_avg` float DEFAULT NULL,
  `assists_avg` float DEFAULT NULL,
  `rebounds_avg` float DEFAULT NULL,
  `blocks_avg` float DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `ranking` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `global_rank` int(11) DEFAULT NULL,
  `conf_rank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `champ_nbr` int(11) DEFAULT NULL,
  `victories` int(11) DEFAULT NULL,
  `defeats` int(11) DEFAULT NULL,
  `conference` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `team`
--

INSERT INTO `team` (`id`, `name`, `logo`, `champ_nbr`, `victories`, `defeats`, `conference`) VALUES
(1, 'DALLAS MAVERICKS', 'https://fr.global.nba.com/media/img/teams/00/logos/DAL_logo.svg', 1, 13, 15, 1),
(2, 'ATLANTA HAWKS', 'https://fr.global.nba.com/media/img/teams/00/logos/ATL_logo.svg', 1, 12, 16, 0),
(3, 'DENVER NUGGETS', 'https://fr.global.nba.com/media/img/teams/00/logos/DEN_logo.svg', 0, 15, 13, 1),
(4, 'BONSTON CELTICS', 'https://fr.global.nba.com/media/img/teams/00/logos/BOS_logo.svg', 17, 14, 14, 0),
(5, 'GOLDEN STATE WARRIORS', 'https://fr.global.nba.com/media/img/teams/00/logos/GSW_logo.svg', 6, 16, 13, 1),
(6, 'CHICAGO BULLS', 'https://fr.global.nba.com/media/img/teams/00/logos/CHI_logo.svg', 6, 12, 15, 0),
(7, 'HOUSTON ROCKETS', 'https://fr.global.nba.com/media/img/teams/00/logos/HOU_logo.svg', 2, 11, 17, 1),
(8, 'CHARLOTTE HORNETS', 'https://fr.global.nba.com/media/img/teams/00/logos/CHA_logo.svg', 0, 13, 15, 0),
(9, 'MINNESOTA TIMBERWOLVES', 'https://fr.global.nba.com/media/img/teams/00/logos/MIN_logo.svg', 0, 7, 22, 1),
(10, 'BROOKLYN NETS', 'https://fr.global.nba.com/media/img/teams/00/logos/BKN_logo.svg', 0, 19, 12, 0),
(11, 'L.A. CLIPPERS', 'https://fr.global.nba.com/media/img/teams/00/logos/LAC_logo.svg', 0, 21, 9, 1),
(12, 'CLEVELAND CAVALIERS', 'https://fr.global.nba.com/media/img/teams/00/logos/CLE_logo.svg', 1, 10, 19, 0),
(13, 'MEMPHIS GRIZZLIES', 'https://fr.global.nba.com/media/img/teams/00/logos/MEM_logo.svg', 0, 12, 12, 1),
(14, 'MIAMI HEAT', 'https://fr.global.nba.com/media/img/teams/00/logos/MIA_logo.svg', 3, 12, 17, 0),
(15, 'OKLAHOMA CITY THUNDER', 'https://fr.global.nba.com/media/img/teams/00/logos/OKC_logo.svg', 1, 11, 17, 1),
(16, 'NEW YORK KNICKS', 'https://fr.global.nba.com/media/img/teams/00/logos/NYK_logo.svg', 2, 14, 16, 0),
(17, 'LOS ANGELES LAKERS', 'https://fr.global.nba.com/media/img/teams/00/logos/LAL_logo.svg', 17, 22, 8, 1),
(18, 'DETROIT PISTONS', 'https://fr.global.nba.com/media/img/teams/00/logos/DET_logo.svg', 3, 8, 20, 0),
(19, 'NEW ORLEANS PELICANS', 'https://fr.global.nba.com/media/img/teams/00/logos/NOP_logo.svg', 0, 12, 16, 1),
(20, 'ORLANDO MAGIC', 'https://fr.global.nba.com/media/img/teams/00/logos/ORL_logo.svg', 0, 11, 18, 0),
(21, 'PORTLAND TRAILBLAZERS', 'https://fr.global.nba.com/media/img/teams/00/logos/POR_logo.svg', 1, 18, 10, 1),
(22, 'PHILADELPHIA 76ERS', 'https://fr.global.nba.com/media/img/teams/00/logos/PHI_logo.svg', 3, 19, 10, 0),
(23, 'PHOENIX SUNS', 'https://fr.global.nba.com/media/img/teams/00/logos/PHX_logo.svg', 0, 17, 10, 1),
(24, 'INDIANA PACERS', 'https://fr.global.nba.com/media/img/teams/00/logos/IND_logo.svg', 0, 15, 14, 0),
(25, 'SAN ANTONIO SPURS', 'https://fr.global.nba.com/media/img/teams/00/logos/SAS_logo.svg', 5, 16, 11, 1),
(26, 'WASHINGTON WIZARDS', 'https://fr.global.nba.com/media/img/teams/00/logos/WAS_logo.svg', 1, 9, 17, 0),
(27, 'UTAH JAZZ', 'https://fr.global.nba.com/media/img/teams/00/logos/UTA_logo.svg', 0, 24, 5, 1),
(28, 'TORONTO RAPTORS', 'https://fr.global.nba.com/media/img/teams/00/logos/TOR_logo.svg', 1, 14, 15, 0),
(29, 'MILWAUKEE BUCKS', 'https://fr.global.nba.com/media/img/teams/00/logos/MIL_logo.svg', 1, 16, 13, 0),
(30, 'SACRAMENTO KINGS', 'https://fr.global.nba.com/media/img/teams/00/logos/SAC_logo.svg', 1, 12, 16, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
