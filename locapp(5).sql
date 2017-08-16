-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 11, 2017 at 10:40 
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `locapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
`id` int(11) NOT NULL,
  `logo_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `logo_id`, `company_name`, `address`, `city`, `area`, `zip`, `date_add`, `date_upd`) VALUES
(1, 1, 'AGENCE IMMOBILIERE WASSA', 'BACO-DJOCORONI', 'Bamako', 'BACO-DJOCORONI', '151', '2016-04-19 15:10:43', '2016-02-15 10:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
`id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `montant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_paiement` date NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `libelle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `type`, `montant`, `date_paiement`, `date_add`, `date_upd`, `libelle`) VALUES
(1, 'chambre reparer', '15020', '2017-02-11', '2017-02-11 10:14:02', '2017-02-11 10:14:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Images`
--

CREATE TABLE IF NOT EXISTS `Images` (
`id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Images`
--

INSERT INTO `Images` (`id`, `url`, `alt`) VALUES
(1, 'eaeed2330d37dc4ee91df72d766bef0d.jpeg', 'eaeed2330d37dc4ee91df72d766bef0d.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `impaye`
--

CREATE TABLE IF NOT EXISTS `impaye` (
`id` int(11) NOT NULL,
  `payments_id` int(11) DEFAULT NULL,
  `Montant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `impaye`
--

INSERT INTO `impaye` (`id`, `payments_id`, `Montant`, `date_debut`, `date_fin`, `date_add`, `date_upd`) VALUES
(1, 2, '100000', '2016-02-15', '2016-03-15', '2016-02-15 11:13:41', '2016-02-15 11:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `leases`
--

CREATE TABLE IF NOT EXISTS `leases` (
`id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `tenants_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paiment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `debut_du_bail` date NOT NULL,
  `fin_du_bail` date DEFAULT NULL,
  `date_quittancement` int(11) DEFAULT NULL,
  `loyer_hc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `charges` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frais_de_retard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `depot_de_garanti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `autres_depot` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commentaires` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_premiere_quittancement` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `leases`
--

INSERT INTO `leases` (`id`, `property_id`, `tenants_id`, `type`, `paiment`, `debut_du_bail`, `fin_du_bail`, `date_quittancement`, `loyer_hc`, `charges`, `frais_de_retard`, `depot_de_garanti`, `autres_depot`, `commentaires`, `date_premiere_quittancement`, `active`, `date_add`, `date_upd`) VALUES
(1, 1, 2, 'Bail d''habitation meublé', 'Mensuel', '2016-02-02', '2017-03-02', 7, '150000', '400000', '0', '540000', NULL, 'mk', '2015-03-05', 1, '2016-03-14 01:48:09', '2016-03-14 01:48:09'),
(2, 3, 3, 'Bail d''habitation vide', 'Mensuel', '2016-05-01', '2017-05-01', 5, '150000', '0', '0', '300000', '0', 'CJ', '2016-05-01', 1, '2016-03-12 15:42:52', '2016-03-12 15:42:52'),
(3, 3, 4, 'Bail d''habitation vide', 'Mensuel', '2016-01-05', '2017-01-05', 5, '120000', '0', '20000', '0', NULL, 'ci', '2016-03-05', 1, '2016-03-12 15:56:11', '2016-03-12 15:56:11'),
(4, 1, 2, 'Bail d''habitation vide', 'Mensuel', '2016-04-01', '2018-04-01', 5, '150000', '400000', NULL, '8000000', NULL, NULL, NULL, 1, '2016-03-14 08:59:45', '2016-03-14 08:59:45'),
(5, 5, 5, 'Bail d''habitation vide', 'Mensuel', '2016-02-12', '2017-02-12', 5, '50000', '0', NULL, '100000', NULL, 'kklnk;bjjk;hhiukgghjj,', NULL, 1, '2016-04-14 10:23:38', '2016-04-14 10:23:38'),
(6, 6, 6, 'Bail d''habitation vide', 'Mensuel', '2016-03-10', '2017-03-10', 5, '50000', '0', NULL, '100000', NULL, NULL, NULL, 1, '2016-04-25 12:12:39', '2016-04-25 12:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
`id` int(11) NOT NULL,
  `leases_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rappel` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `frequency` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `leases_id`, `subject`, `rappel`, `date_add`, `date_upd`, `frequency`) VALUES
(1, 1, 'yfjhfjkhg', '<p>Bonjour Kassim Ballo,<br />\r\n<br />\r\nVous n&rsquo;avez pas encore r&eacute;gl&eacute; votre loyer d&ucirc; le <strong>7.02.2016</strong> Veuillez nous adresser votre r&egrave;glement dans les plus brefs d&eacute;lais s&#39;il vous plait.<br />\r\n<br />\r\nDate limite: 7.02.2016<br />\r\nMontant du loyer: 550000 FCFA<br />\r\nFrais de retard: 0FCFA<br />\r\n<br />\r\nNous vous prions d&#39;agr&eacute;er, nos salutations distingu&eacute;es.<br />\r\n<br />\r\nS&eacute;kou Assane Sidib&eacute;</p>', '2016-02-15 10:18:50', '2016-02-15 10:18:50', '5 jours de retard');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE IF NOT EXISTS `owners` (
`id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `door` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `firstname`, `lastname`, `company_name`, `dob`, `email`, `phone`, `city`, `area`, `sex`, `street`, `door`, `date_add`, `date_upd`, `comments`) VALUES
(2, 'Moussa', 'Camara', NULL, '1991-10-01', 'moroski22@gmail.com', '77320574', 'Bamako', 'Kalaban Coura ACI', 'm', '77320', '74584', '2016-02-13 04:40:14', '2016-02-13 04:40:11', NULL),
(3, 'Sekk', 'Camara', NULL, '1991-10-01', 'moroski22@gmail.com', '77320574', 'Bamako', 'Kalaban Coura ACI', 'm', '77320', '74584', '2016-02-13 04:40:14', '2016-02-14 23:24:26', NULL),
(4, 'DEMBELE', 'SAFI', NULL, '1992-02-01', NULL, '77320574', 'Bamako', 'Kalaban Coura ACI', 'f', '77320', '74584', '2016-03-12 15:34:45', '2016-03-12 15:34:45', NULL),
(5, 'Traore', 'Moussa', NULL, '1992-10-11', 'admin@gmail.com', '66763384', 'BAMAKO', 'SEBENIKORO', 'm', '12', '465', '2016-04-14 10:17:39', '2016-04-14 10:17:39', 'CLIENT'),
(6, 'cfgg', 'ddgggg', NULL, '1980-02-02', NULL, '98868779', 'BAMAKO', 'SEBENIKORO', 'm', '55', '55', '2016-04-25 12:07:06', '2016-04-25 12:07:06', 'client'),
(7, 'Traore', 'gggvfggff', NULL, '1995-02-02', 'admin@gmail.com', '66763384', 'BAMAKO', 'SEBENIKORO', 'm', '55', '465', '2016-05-10 13:11:16', '2016-05-10 13:11:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
`id` int(11) NOT NULL,
  `leases_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `montant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_paiement` date NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `leases_id`, `type`, `montant`, `date_paiement`, `date_debut`, `date_fin`, `notes`, `message`) VALUES
(1, 1, '1', '340000', '2016-02-15', '2016-02-15', '2016-03-15', NULL, NULL),
(2, 1, '2', '20000', '2016-02-15', '2016-02-15', '2016-03-15', NULL, NULL),
(3, 1, '2', '150000', '2016-02-16', '2016-02-15', '2016-03-15', NULL, NULL),
(4, 1, '2', '450000', '2016-02-11', '2016-02-15', '2016-03-15', NULL, NULL),
(5, 1, '2', '45000', '2016-02-15', '2016-02-15', '2016-03-15', NULL, NULL),
(6, 2, '1', '300000', '2016-03-12', '2016-03-12', '2016-04-12', NULL, NULL),
(7, 2, '2', '150000', '2016-03-12', '2016-03-12', '2016-04-12', NULL, NULL),
(8, 3, '1', '0', '2016-03-12', '2016-03-12', '2016-04-12', NULL, NULL),
(9, 3, '2', '120000', '2016-03-12', '2016-03-12', '2016-04-12', NULL, NULL),
(10, 1, '2', '550000', '2016-03-18', '2016-03-18', '2016-04-18', NULL, NULL),
(11, 1, '2', '550000', '2016-03-26', '2016-03-26', '2016-04-26', NULL, NULL),
(12, 5, '2', '50000', '2016-04-14', '2016-04-14', '2016-05-14', NULL, NULL),
(13, 1, '2', '550000', '2016-04-19', '2016-04-19', '2016-05-19', NULL, NULL),
(14, 1, '2', '550000', '2016-04-19', '2016-04-19', '2016-05-19', NULL, NULL),
(15, 6, '2', '50000', '2016-04-25', '2016-04-25', '2016-05-25', NULL, NULL),
(16, 6, '1', '100000', '2016-04-25', '2016-04-25', '2016-05-25', NULL, NULL),
(17, 1, '1', '540000', '2016-05-10', '2016-05-10', '2016-06-10', NULL, NULL),
(18, 1, '2', '550000', '2016-05-10', '2016-05-10', '2016-06-10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
`id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifiant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `batiment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `escalier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `etage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ville` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surface` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nb_piece` int(11) DEFAULT NULL,
  `nb_chambres` int(11) DEFAULT NULL,
  `annee_construction` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `notes` longtext COLLATE utf8_unicode_ci,
  `type_location_propose` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charges` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation_parties_equipements` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `owner_id`, `type`, `identifiant`, `address`, `batiment`, `escalier`, `etage`, `ville`, `surface`, `nb_piece`, `nb_chambres`, `annee_construction`, `description`, `notes`, `type_location_propose`, `loyer`, `charges`, `designation_parties_equipements`, `date_add`, `date_upd`) VALUES
(1, 2, 'Appartement', 'Maison de Kalaban', 'dhjgjs jh johsfjo', '1', '5', '1', 'Bamako', '12', 5, 3, '2010', NULL, NULL, 'Meublé', '150000', '400000', 'a:3:{i:0;s:7:"Parking";i:1;s:6:"Balcon";i:2;s:6:"Jardin";}', '2016-02-14 23:34:24', '2016-02-14 23:34:24'),
(2, 2, 'Appartement', 'Maison de Kalaban', 'dhjgjs jh johsfjo', '1', '5', '1', 'Bamako', '12', 5, 3, '2010', NULL, NULL, 'Meublé', '150000', '400000', 'a:3:{i:0;s:7:"Parking";i:1;s:6:"Balcon";i:2;s:6:"Jardin";}', '2016-02-14 23:34:24', '2016-02-14 23:34:24'),
(3, 4, 'Appartement', 'MAISON', 'SEBENIKORO', 'A1', '2', '2', 'BAMAKO', '12/32', 25, 25, '2014', 'STUDIO', 'CLIENT', 'Meublé', NULL, NULL, 'a:0:{}', '2016-03-12 15:38:04', '2016-03-12 15:38:04'),
(4, 2, 'Appartement', 'dfgfg', 'fsdghfdg', NULL, NULL, NULL, 'dfhgfdh', NULL, 5, 5, NULL, NULL, NULL, 'Meublé', '1452154', '54556', 'a:0:{}', '2016-06-09 15:06:14', '2016-06-09 15:06:14'),
(5, 5, 'Appartement', 'ffghegn', 'bffllf', NULL, NULL, NULL, 'vbvb,vb;v', NULL, 155, 22, NULL, 'vfhjglmv:', 'client', 'Meublé', '50000', '0', 'a:0:{}', '2016-04-14 10:19:53', '2016-04-14 10:19:53'),
(6, 6, 'Appartement', 'ma meublle', 'bamgvl', NULL, NULL, NULL, 'dvlgdgg', NULL, 10, 8, NULL, 'dk', 'dldll', 'Meublé', '50000', '0', 'a:0:{}', '2016-04-25 12:08:57', '2016-04-25 12:08:57'),
(7, 7, 'Appartement', 'ma meublle ghl', 'bamako', NULL, NULL, NULL, 'bamako', NULL, 12, 8, NULL, 'jhgg', 'ghghggjj', 'Meublé', '50000', '0', 'a:0:{}', '2016-05-10 13:12:39', '2016-05-10 13:12:39');

-- --------------------------------------------------------

--
-- Table structure for table `properties_images`
--

CREATE TABLE IF NOT EXISTS `properties_images` (
  `properties_id` int(11) NOT NULL,
  `images_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE IF NOT EXISTS `tenants` (
`id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `lieu_naissance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sci` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_tva` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_exerce_dans_le_bien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession_locataire` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `revenus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situation_prof` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info_complementaire` longtext COLLATE utf8_unicode_ci,
  `code_banque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_guichet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numero_compte` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cle_rib` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banque` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swift` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `type`, `sexe`, `firstname`, `lastname`, `dob`, `lieu_naissance`, `email`, `telephone`, `sci`, `no_tva`, `profession_exerce_dans_le_bien`, `profession_locataire`, `revenus`, `situation_prof`, `info_complementaire`, `code_banque`, `code_guichet`, `numero_compte`, `cle_rib`, `banque`, `swift`, `date_add`, `date_upd`) VALUES
(2, 'Particulier', 'm', 'Kassim', 'Ballo', '1991-04-01', 'Bamako', 'ksjfjk@kfjhkg.com', '7511', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-02-15 10:09:14', '2016-02-15 10:09:14'),
(3, 'Particulier', 'm', 'Kassim', 'Ballo', '1983-02-01', 'Bamako', NULL, '7854546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-12 15:39:07', '2016-03-12 15:39:07'),
(4, 'Particulier', 'm', 'tierno', 'didier', '1986-05-22', 'lome', NULL, '78565632', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-03-12 15:52:20', '2016-03-12 15:52:20'),
(5, 'Particulier', 'm', 'sfkvjipsj', 'kdvknjkj', '2016-01-12', 'kdhvii', 'ipjipiphpiiph', '966666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-14 10:21:13', '2016-04-14 10:21:13'),
(6, 'Particulier', 'm', 'frv', 'rggg', '1985-01-02', 'bamako', 'ad@vv.com', '75555', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-04-25 12:11:08', '2016-04-25 12:11:08'),
(7, 'Particulier', 'm', 'fffmffl', 'fglfk', '1952-05-02', 'bamako', 'ad@vv.com', '9988888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-05-10 13:13:33', '2016-05-10 13:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `firstname` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'admin@immoapi.com', 'admin@immoapi.com', 1, 'tqxr4ue6pk0k0cwk4ogsc8wswgkkwgc', 'WZQTzfzw3RAY7Rq9A+iqtwzoEtrunKCtkz1KcbogFPWHHjSH1fkWyZniS8d90q3LL8V2sUUH7C8Im2wdzdN6Yw==', '2017-04-06 23:35:54', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_A5E2A5D7F98F144A` (`logo_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Images`
--
ALTER TABLE `Images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `impaye`
--
ALTER TABLE `impaye`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_1E941A2EBBC61482` (`payments_id`);

--
-- Indexes for table `leases`
--
ALTER TABLE `leases`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_9B8D6FB4549213EC` (`property_id`), ADD KEY `IDX_9B8D6FB43C5A47D2` (`tenants_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_6E2C61D2D57A1B92` (`leases_id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_65D29B32D57A1B92` (`leases_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
 ADD PRIMARY KEY (`id`), ADD KEY `IDX_87C331C77E3C61F9` (`owner_id`);

--
-- Indexes for table `properties_images`
--
ALTER TABLE `properties_images`
 ADD PRIMARY KEY (`properties_id`,`images_id`), ADD KEY `IDX_18B306D3691D1CA` (`properties_id`), ADD KEY `IDX_18B306DD44F05E5` (`images_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`), ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Images`
--
ALTER TABLE `Images`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `impaye`
--
ALTER TABLE `impaye`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `leases`
--
ALTER TABLE `leases`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `configuration`
--
ALTER TABLE `configuration`
ADD CONSTRAINT `FK_A5E2A5D7F98F144A` FOREIGN KEY (`logo_id`) REFERENCES `Images` (`id`);

--
-- Constraints for table `impaye`
--
ALTER TABLE `impaye`
ADD CONSTRAINT `FK_1E941A2EBBC61482` FOREIGN KEY (`payments_id`) REFERENCES `payments` (`id`);

--
-- Constraints for table `leases`
--
ALTER TABLE `leases`
ADD CONSTRAINT `FK_9B8D6FB43C5A47D2` FOREIGN KEY (`tenants_id`) REFERENCES `tenants` (`id`),
ADD CONSTRAINT `FK_9B8D6FB4549213EC` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
ADD CONSTRAINT `FK_6E2C61D2D57A1B92` FOREIGN KEY (`leases_id`) REFERENCES `leases` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
ADD CONSTRAINT `FK_65D29B32D57A1B92` FOREIGN KEY (`leases_id`) REFERENCES `leases` (`id`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
ADD CONSTRAINT `FK_87C331C77E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`id`);

--
-- Constraints for table `properties_images`
--
ALTER TABLE `properties_images`
ADD CONSTRAINT `FK_18B306D3691D1CA` FOREIGN KEY (`properties_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `FK_18B306DD44F05E5` FOREIGN KEY (`images_id`) REFERENCES `Images` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
