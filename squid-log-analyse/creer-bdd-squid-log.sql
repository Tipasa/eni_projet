-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 15 Janvier 2015 à 15:13
-- Version du serveur: 5.6.12-log
-- Version de PHP: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `squid-log`
--
CREATE DATABASE IF NOT EXISTS `squid-log` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `squid-log`;

-- --------------------------------------------------------

--
-- Structure de la table `squid-access.log`
--

CREATE TABLE IF NOT EXISTS `squid-access.log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `time` char(14) COLLATE utf8_unicode_ci NOT NULL,
  `duration` char(7) COLLATE utf8_unicode_ci NOT NULL,
  `client-address` int(11) NOT NULL,
  `result-codes` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `bytes` int(11) NOT NULL,
  `request-method` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(2083) COLLATE utf8_unicode_ci NOT NULL,
  `rfc931` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `hierarchy-code` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `type` tinytext COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
