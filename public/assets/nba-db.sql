-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 07 avr. 2021 à 13:37
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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, 'C', 'Clint CAPELA', 14.3, 1, 14, 2.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203991.png', 2),
(12, 'G', 'Jamal MURRAY', 21.3, 4.8, 4.1, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627750.png', 3),
(13, 'C', 'Nikola JOKIC', 26.4, 8.6, 10.9, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203999.png', 3),
(14, 'G', 'Will BARTON', 12.7, 3.2, 4.2, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203115.png', 3),
(15, 'F', 'Aaron GORDON', 14.3, 3.9, 6.3, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203932.png', 3),
(16, 'F', 'Michael PORTER JR.', 16.9, 1, 7.5, 0.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629008.png', 3),
(17, 'F-G', 'Jayson TATUM', 25.1, 4.2, 6.9, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628369.png', 4),
(18, 'G-F', 'Jaylen BROWN', 24.1, 3.5, 5.6, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627759.png', 4),
(19, 'G', 'Marcus SMART', 12.9, 5.4, 2.9, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203935.png', 4),
(20, 'G', 'Kemba WALKER', 17.8, 4.8, 3.6, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202689.png', 4),
(21, 'G-F', 'Evan FOURNIER', 18.6, 3.4, 2.7, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203095.png', 4),
(22, 'G', 'Stephen CURRY', 29.7, 6, 5.5, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201939.png', 5),
(23, 'F', 'Andrew WIGGINS', 18, 2.3, 4.8, 1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203952.png', 5),
(24, 'F-G', 'Kelly OUBRE JR.', 15.1, 1.4, 6.1, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626162.png', 5),
(25, 'F', 'Draymond GREEN', 6.4, 8.5, 6.5, 2.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203110.png', 5),
(26, 'C', 'James WISEMAN', 11.5, 0.7, 6, 1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630164.png', 5),
(27, 'G-F', 'Zach LAVINE', 27.2, 4.8, 5, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203897.png', 6),
(28, 'C', 'Nikola VUCEVIC', 24.3, 3.8, 11.7, 1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202696.png', 6),
(29, 'G', 'Coby WHITE', 14.8, 4.6, 4.5, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629632.png', 6),
(30, 'F-C', 'Lauri MARKKANEN', 16.3, 0.9, 5.8, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628374.png', 6),
(31, 'F', 'Patrick WILLIAMS', 9.8, 1.3, 4.7, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630172.png', 6),
(32, 'G', 'John WALL', 20.2, 6.8, 3.4, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202322.png', 7),
(33, 'F', 'Whristian WOOD', 20.9, 1.4, 9.6, 1.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626174.png', 7),
(34, 'G-F', 'Kevin PORTER JR.', 15.6, 6.1, 3.6, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629645.png', 7),
(35, 'G', 'Eric GORDON', 17.8, 2.6, 2.2, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201569.png', 7),
(36, 'F', 'Jae\'Sean TATE', 10.9, 2, 5.4, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630256.png', 7),
(37, 'F', 'Gordon HAYWARD', 19.6, 4.1, 5.8, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202330.png', 8),
(38, 'G', 'Terry ROZIER', 20.4, 3.4, 4.2, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626179.png', 8),
(39, 'G', 'Devonte\' GRAHAM', 13.8, 5.1, 2.7, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628984.png', 8),
(40, 'F', 'P.J. WHASHINGTON', 11.5, 2.7, 6.5, 1.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629023.png', 8),
(41, 'G', 'Lamelo BALL', 15.9, 6.1, 5.9, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630163.png', 8),
(42, 'C-F', 'Karl Anthony TOWNS', 24.5, 4.3, 11.1, 1.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626157.png', 9),
(43, 'G', 'Malik BEASLEY', 19.6, 2.4, 4.4, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627736.png', 9),
(44, 'G', 'Anthony EDWARDS', 17.6, 2.6, 4.4, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630162.png', 9),
(45, 'G', 'D\'Angelo RUSSEL', 19.5, 5, 2.7, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626156.png', 9),
(46, 'G', 'Ricky RUBIO', 8.3, 6.8, 3.1, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201937.png', 9),
(47, 'G', 'James HARDEN', 25.2, 10.9, 8, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201935.png', 10),
(48, 'F', 'Kevin DURANT', 29, 5.3, 7.3, 1.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201142.png', 10),
(49, 'G', 'Kyrie IRVING', 28, 6.2, 4.9, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202681.png', 10),
(50, 'G-F', 'Joe HARRIS', 14.2, 1.8, 3.6, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203925.png', 10),
(51, 'C-F', 'Lamarcus ALDRIDGE', 13.3, 1.9, 4.7, 2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/200746.png', 10),
(52, 'F', 'Kawhi LEONARD', 25.8, 5, 6.7, 1.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202695.png', 11),
(53, 'F', 'Paul GEORGE', 22.5, 5.4, 6.3, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202331.png', 11),
(54, 'G-F', 'Nicolas BATUM', 8.3, 2.4, 4.9, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201587.png', 11),
(55, 'F', 'Marcus MORRIS SR.', 12.6, 1, 3.9, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202694.png', 11),
(56, 'G', 'Patrick BEVERLEY', 8.3, 2.1, 3.7, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201976.png', 11),
(57, 'G', 'Collin SEXTON', 23.9, 4.2, 2.9, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629012.png', 12),
(58, 'G', 'Darius GARLAND', 16.7, 5.9, 2.4, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629636.png', 12),
(59, 'F-C', 'Larry NANCE JR.', 10.1, 3.1, 7, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626204.png', 12),
(60, 'F-G', 'Isaac OKORO', 8.1, 1.7, 2.8, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630171.png', 12),
(61, 'C', 'Jarrett ALLEN', 13.1, 1.7, 9.9, 1.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628386.png', 12),
(62, 'G', 'Ja MORANT', 18.8, 7.4, 3.4, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629630.png', 13),
(63, 'G-F', 'Dillon BROOKS', 16.3, 2.4, 2.9, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628415.png', 13),
(64, 'C', 'Jonas VALANCIUNAS', 16.3, 1.7, 12.5, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202685.png', 13),
(65, 'F-G', 'Kyle ANDERSON ', 12.5, 3.4, 5.8, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203937.png', 13),
(66, 'F', 'Brandon CLARKE', 11.7, 1.7, 5.5, 0.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629634.png', 13),
(67, 'F', 'Jimmy BUTLER', 21.4, 7.3, 7.4, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202710.png', 14),
(68, 'C-F', 'Bam ADEBAYO', 19.2, 5.4, 9.6, 1.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628389.png', 14),
(69, 'F', 'Duncan ROBINSON', 13.1, 1.7, 3.8, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629130.png', 14),
(70, 'G', 'Tyler HERRO', 15.6, 3.5, 5.1, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629639.png', 14),
(71, 'G', 'Victor OLADIPO', 19.8, 4.7, 4.9, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203506.png', 14),
(72, 'G-F', 'Shai GILGEOUS-ALEXANDER', 13.7, 5.9, 4.7, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628983.png', 15),
(73, 'F-G', 'Darius BAZLEY', 11.9, 1.5, 7.5, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629647.png', 15),
(74, 'G', 'Luguentz DORT', 12.6, 1.6, 3.5, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629652.png', 15),
(75, 'C-F', 'Al HORFORD', 14.2, 3.4, 6.7, 0.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201143.png', 15),
(76, 'G', 'Theo MALEDON', 9.4, 3.3, 3.5, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630177.png', 15),
(77, 'F-C', 'Julius RANDLE', 22.9, 6, 10.7, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203944.png', 16),
(78, 'F-G', 'RJ BARRETT', 17.3, 3, 5.9, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629628.png', 16),
(79, 'G-F', 'Reggie BULLOCK', 9.8, 1.4, 3.4, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203493.png', 16),
(80, 'C-F', 'Mitchell ROBINSON', 8.3, 0.5, 8.1, 1.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629011.png', 16),
(81, 'G', 'Elfrid PAYTON', 11.9, 3.5, 3.8, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203901.png', 16),
(82, 'F', 'Lebron JAMES', 25.4, 7.9, 7.9, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/2544.png', 17),
(83, 'F-C', 'Anthony DAVIS', 22.5, 3, 8.3, 1.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203076.png', 17),
(84, 'G', 'Dennis SCHRODER', 15.2, 5.2, 3.5, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203471.png', 17),
(85, 'F', 'Kyle KUZMA', 12.6, 1.7, 6.7, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628398.png', 17),
(86, 'G', 'Kentavious CALDWELL-POPE', 8.5, 1.5, 2.6, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203484.png', 17),
(87, 'F', 'Jerami GRANT', 22.5, 2.9, 4.8, 1.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203924.png', 18),
(88, 'F-C', 'Mason PLUMLEE', 10.3, 3.5, 9.2, 0.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203486.png', 18),
(89, 'F', 'Saddiq BEY', 10.8, 1.3, 3.9, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630180.png', 18),
(90, 'G-F', 'Josh JACKSON', 12.7, 2.1, 4.1, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628367.png', 18),
(91, 'G', 'Hamidou DIALLO', 12.1, 2.3, 5.2, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628977.png', 18),
(92, 'F', 'Brandon INGRAM', 23.8, 4.7, 4.9, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627742.png', 19),
(93, 'F', 'Zion WILLIAMSON', 26.5, 3.5, 7, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629627.png', 19),
(94, 'G', 'Lonzo BALL', 14.5, 5.8, 4.3, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628366.png', 19),
(95, 'G', 'Eric BLEDSOE', 11.8, 3.9, 3.4, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202339.png', 19),
(96, 'C', 'Steven ADAMS', 7.9, 2, 9, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203500.png', 19),
(97, 'G-F', 'Terrence ROSS', 16, 2.4, 3.4, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203082.png', 20),
(98, 'C-F', 'Wendell CARTER JR.', 11.4, 2.1, 8, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628976.png', 20),
(99, 'G', 'Markelle FULTZ', 12.9, 5.4, 3.1, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628365.png', 20),
(100, 'G', 'Cole ANTHONY', 11, 3.8, 4.4, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630175.png', 20),
(101, 'G', 'Michael  CARTER-WILLIAMS', 8.7, 4.4, 4.6, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203487.png', 20),
(102, 'G', 'Damian LILLARD', 29.2, 7.7, 4.2, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203081.png', 21),
(103, 'G', 'CJ MCCOLLUM', 23.8, 4.8, 3.7, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203468.png', 21),
(104, 'F', 'Robert COVINGTON', 9.3, 1.7, 6.8, 1.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203496.png', 21),
(105, 'G', 'Norman POWELL', 19.4, 1.8, 3, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626181.png', 21),
(106, 'C', 'Enes KANTER', 12, 1.3, 11.7, 0.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202683.png', 21),
(107, 'G-F', 'Ben SIMMONS', 15.2, 7.2, 7.8, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627732.png', 22),
(108, 'F', 'Tobias HARRIS', 20.5, 3.6, 7.4, 0.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202699.png', 22),
(109, 'C-F', 'Joel EMBIID', 29.9, 3.2, 11.1, 1.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203954.png', 22),
(110, 'G', 'Seth CURRY', 12.6, 2.8, 2.1, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203552.png', 22),
(111, 'G', 'Danny GREEN', 9.8, 1.7, 3.6, 0.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201980.png', 22),
(112, 'G', 'Devin BOOKER', 25.9, 4.6, 4.2, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626164.png', 23),
(113, 'F', 'mikal BRIDGES', 13.4, 2.3, 4.7, 0.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628969.png', 23),
(114, 'G', 'Chris PAUL', 16, 8.8, 4.7, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/101108.png', 23),
(115, 'C', 'Deandre AYTON', 14.8, 1.5, 10.8, 1.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629028.png', 23),
(116, 'F', 'Jae CROWDER', 10.3, 2.1, 4.9, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203109.png', 23),
(117, 'F-C', 'Domantas SABONIS', 19.9, 6, 11.4, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627734.png', 24),
(118, 'G', 'Malcolm BROGDON', 21.2, 5.9, 4.7, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627763.png', 24),
(119, 'G', 'Caris LEVERT', 17.3, 5.3, 4.3, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627747.png', 24),
(120, 'F-G', 'Justin HOLIDAY', 11.1, 1.6, 3.7, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203200.png', 24),
(121, 'C-F', 'Myles TURNER', 12.7, 1, 6.4, 3.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626167.png', 24),
(122, 'G-F', 'Demar DEROZAN', 21, 7, 4.4, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201942.png', 25),
(123, 'G', 'Dejounte MURRAY', 15.7, 5.2, 7, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627749.png', 25),
(124, 'G', 'Derrick WHITE', 14.2, 3.4, 2.8, 1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628401.png', 25),
(125, 'F-G', 'Keldon JOHNSON', 13.2, 1.8, 6.5, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629640.png', 25),
(126, 'G-F', 'Lonnie WALKER IV', 11.5, 1.6, 2.7, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629022.png', 25),
(127, 'G', 'Bradley BEAL', 31.3, 4.8, 5, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203078.png', 26),
(128, 'G', 'Russel WESTBROOK', 21.8, 10.5, 10.4, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201566.png', 26),
(129, 'F', 'Rui HACHIMURA', 14.2, 1.6, 5.9, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629060.png', 26),
(130, 'C-F', 'Thomas BRYANT', 14.3, 1.5, 6.1, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628418.png', 26),
(131, 'F', 'Davis BERTRANS', 11, 0.9, 2.9, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202722.png', 26),
(132, 'G', 'Donovan MITCHELL', 25.4, 5.4, 4.4, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628378.png', 27),
(133, 'F', 'Royce O\'NEALE', 7.1, 2.5, 6.6, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626220.png', 27),
(134, 'C', 'Rudy GOBERT', 14.6, 1.3, 13.2, 2.9, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203497.png', 27),
(135, 'F', 'Bojan BOGDANOVIC', 14.8, 1.9, 3.9, 0.1, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/202711.png', 27),
(136, 'G', 'Mike CONLEY', 16.6, 5.5, 3.5, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201144.png', 27),
(137, 'G', 'Fred VANVLEET', 19.8, 6.1, 4.2, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627832.png', 28),
(138, 'F', 'Pascal SIAKAM', 20.6, 4.6, 7.3, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627783.png', 28),
(139, 'G', 'Kyle LOWRY', 17, 7.3, 5.4, 0.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/200768.png', 28),
(140, 'F', 'OG ANUNOBY', 14.6, 1.9, 5.8, 0.8, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628384.png', 28),
(141, 'G-F', 'Gary TRENT JR.', 15.1, 1.4, 2.4, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1629018.png', 28),
(142, 'F', 'Giannis ANTETOKOUMPO', 28.8, 6.2, 11.4, 1.3, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203507.png', 29),
(143, 'F', 'Khris MIDDLETON', 20.4, 5.5, 6, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203114.png', 29),
(144, 'G', 'Jrue HOLIDAY', 17.3, 5.4, 4.6, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201950.png', 29),
(145, 'G', 'Donte DIVICENZO', 10.5, 3.1, 5.6, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628978.png', 29),
(146, 'C', 'Brook LOPEZ', 11.3, 0.8, 4.9, 1.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/201572.png', 29),
(147, 'F', 'Harrison BARNES', 15.7, 3.6, 6.7, 0.2, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/203084.png', 30),
(148, 'G', 'De\'Aaron FOX', 24.6, 7.1, 3.3, 0.5, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1628368.png', 30),
(149, 'G', 'Buddy HIELD', 16.5, 3.2, 4.5, 0.4, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1627741.png', 30),
(150, 'G', 'Tyrese HALIBURTON', 13.1, 5.1, 3.3, 0.6, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1630169.png', 30),
(151, 'F', 'Richaun HOLMES', 14.2, 1.7, 9, 1.7, 'https://ak-static.cms.nba.com/wp-content/uploads/headshots/nba/latest/260x190/1626158.png', 30);

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
