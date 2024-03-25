-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : alliagjsecond.mysql.db
-- Généré le : lun. 25 mars 2024 à 13:01
-- Version du serveur : 5.7.42-log
-- Version de PHP : 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `alliagjsecond`
--

-- --------------------------------------------------------

--
-- Structure de la table `abscences`
--

CREATE TABLE `abscences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `inscription_id` int(11) NOT NULL DEFAULT '0',
  `jour` date DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `programme_ecole_ligne_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `annee_acads`
--

CREATE TABLE `annee_acads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `annee1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annee2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dtrentree` date DEFAULT NULL,
  `actif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annee_acads`
--

INSERT INTO `annee_acads` (`id`, `annee1`, `annee2`, `dtrentree`, `actif`, `created_at`, `updated_at`) VALUES
(1, '2022', '2023', '2022-10-04', 0, NULL, NULL),
(2, '2023', '2024', '2023-10-02', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `appuie_cours`
--

CREATE TABLE `appuie_cours` (
  `id` int(11) NOT NULL,
  `objet` varchar(255) DEFAULT NULL,
  `cours` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `programme_ecole_ligne_id` int(11) NOT NULL,
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `categories_depenses`
--

CREATE TABLE `categories_depenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecole_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories_depenses`
--

INSERT INTO `categories_depenses` (`id`, `name`, `ecole_id`, `created_at`, `updated_at`) VALUES
(1, 'Achat du matériel', 5, '2023-07-01 08:18:54', '2023-07-01 08:18:54'),
(2, 'Achat-produits', 5, '2023-10-11 12:12:26', '2023-10-11 12:12:26'),
(3, 'Acomptes', 5, '2023-10-11 12:15:11', '2023-10-11 12:15:11');

-- --------------------------------------------------------

--
-- Structure de la table `categories_entrees`
--

CREATE TABLE `categories_entrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecole_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serie_id` bigint(20) NOT NULL,
  `niveau_id` bigint(20) NOT NULL,
  `enseignement_id` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `serie_id`, `niveau_id`, `enseignement_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, '2022-09-23 09:43:06', '2022-09-23 09:43:06'),
(2, 5, 2, 1, '2022-09-23 09:43:18', '2022-09-23 09:43:18'),
(3, 5, 3, 1, '2022-09-23 09:43:32', '2022-09-23 09:43:32'),
(4, 5, 4, 1, '2022-09-23 09:43:46', '2022-09-23 09:43:46'),
(5, 1, 5, 1, '2022-09-23 09:44:32', '2022-09-23 09:44:32'),
(6, 2, 5, 1, '2022-09-23 09:45:07', '2022-09-23 09:45:07'),
(7, 1, 6, 1, '2022-09-23 09:45:38', '2022-09-23 09:45:38'),
(8, 3, 6, 1, '2022-09-23 09:45:54', '2022-09-23 09:45:54'),
(9, 2, 6, 1, '2022-09-23 09:46:13', '2022-09-23 09:46:13'),
(10, 1, 7, 1, '2022-09-23 09:47:29', '2022-09-23 09:47:29'),
(11, 2, 7, 1, '2022-09-23 09:47:49', '2022-09-23 09:47:49'),
(12, 3, 7, 1, '2022-09-23 09:48:21', '2022-09-23 09:48:21'),
(13, 4, 7, 1, '2022-09-23 09:48:59', '2022-09-23 09:48:59');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` bigint(20) NOT NULL,
  `matiere_id` bigint(20) NOT NULL,
  `coefficient` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `days`
--

CREATE TABLE `days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abv` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `days`
--

INSERT INTO `days` (`id`, `name`, `abv`, `created_at`, `updated_at`) VALUES
(1, 'Lundi', 'Lun', NULL, NULL),
(2, 'Mardi', 'Mar', NULL, NULL),
(3, 'Mercredi', 'Mer', NULL, NULL),
(4, 'Jeudi', 'Jeu', NULL, NULL),
(5, 'Vendredi', 'Ven', NULL, NULL),
(6, 'Samedi', 'Sam', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `depenses`
--

CREATE TABLE `depenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecole_id` bigint(20) NOT NULL DEFAULT '0',
  `categorie_id` bigint(20) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `montant` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `semaine` int(11) NOT NULL DEFAULT '0',
  `mois` int(11) NOT NULL DEFAULT '0',
  `annee` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `diplomes`
--

CREATE TABLE `diplomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diplomes`
--

INSERT INTO `diplomes` (`id`, `ecole_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Baccalauréat', '2022-11-11 10:33:31', '2022-11-11 10:33:31'),
(2, 1, 'BTS', '2022-11-11 10:33:41', '2022-11-11 10:33:41'),
(3, 1, 'Licence', '2022-11-11 10:33:51', '2022-11-11 10:33:51'),
(4, 1, 'Master', '2022-11-11 10:34:07', '2022-11-11 10:34:07'),
(5, 5, 'CEPE', '2022-12-05 05:34:52', '2022-12-05 05:34:52'),
(6, 5, 'BEPC', '2022-12-05 05:35:08', '2022-12-05 05:35:08'),
(7, 5, 'BAC', '2022-12-05 05:35:27', '2022-12-05 05:35:27'),
(8, 5, 'BET', '2022-12-05 05:35:34', '2022-12-05 05:35:34'),
(9, 5, 'CAP', '2022-12-05 05:35:43', '2022-12-05 05:35:43'),
(10, 5, 'BTS', '2022-12-05 05:35:49', '2022-12-05 05:35:49'),
(11, 5, 'LICENCE', '2022-12-05 05:35:57', '2022-12-05 05:35:57'),
(12, 5, 'MASTER', '2022-12-05 05:36:05', '2022-12-05 05:36:05'),
(13, 11, 'BET', '2023-08-14 08:16:09', '2023-08-14 08:16:09'),
(14, 11, 'BAC', '2023-08-14 08:16:15', '2023-08-14 08:16:15'),
(15, 11, 'BTS', '2023-08-14 08:16:20', '2023-08-14 08:16:20'),
(16, 11, 'LICENCE', '2023-08-14 08:16:32', '2023-08-14 08:16:32'),
(17, 11, 'CAPEPS', '2023-09-06 16:10:08', '2023-09-06 16:10:08'),
(18, 11, 'DEUG', '2023-09-06 20:54:28', '2023-09-06 20:54:28'),
(19, 11, 'DUT', '2023-09-06 21:05:01', '2023-09-06 21:05:01'),
(20, 12, 'BAC TECHNIQUE', '2023-12-14 09:03:31', '2023-12-14 09:03:31'),
(21, 12, 'BTS', '2023-12-14 09:08:03', '2023-12-14 09:08:03'),
(22, 12, 'BEPC', '2023-12-14 09:08:49', '2023-12-14 09:08:49'),
(23, 12, 'BAC A4', '2023-12-14 09:09:27', '2023-12-14 09:09:27'),
(24, 12, 'BAC C', '2023-12-14 09:09:45', '2023-12-14 09:09:45'),
(25, 12, 'BAC D', '2023-12-14 09:10:03', '2023-12-14 09:10:03'),
(26, 12, 'BET', '2023-12-14 09:12:32', '2023-12-14 09:12:32'),
(27, 12, 'LICENCE', '2023-12-14 09:12:50', '2023-12-14 09:12:50'),
(28, 12, 'DEUG', '2023-12-14 09:13:29', '2023-12-14 09:13:29'),
(29, 12, 'MAITRISE', '2023-12-14 09:13:51', '2023-12-14 09:13:51'),
(30, 12, 'BAC+2', '2024-01-15 15:14:33', '2024-01-15 15:14:33');

-- --------------------------------------------------------

--
-- Structure de la table `ecolages`
--

CREATE TABLE `ecolages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `inscription_id` bigint(20) NOT NULL DEFAULT '0',
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `montant` double NOT NULL DEFAULT '0',
  `moi_id` bigint(20) NOT NULL DEFAULT '0',
  `semaine` int(11) NOT NULL DEFAULT '0',
  `mois` int(11) NOT NULL DEFAULT '0',
  `annee` int(11) NOT NULL DEFAULT '0',
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ecolages`
--

INSERT INTO `ecolages` (`id`, `ecole_id`, `inscription_id`, `salle_id`, `montant`, `moi_id`, `semaine`, `mois`, `annee`, `annee_id`, `created_at`, `updated_at`) VALUES
(1, 5, 149, 10, 5000, 4, 15, 1, 1, 0, '2023-04-14 07:30:44', '2023-04-14 07:30:44'),
(2, 11, 251, 36, 25000, 8, 34, 9, 2, 0, '2023-08-23 07:13:24', '2023-08-23 07:13:24'),
(3, 11, 251, 36, 25000, 8, 34, 10, 2, 0, '2023-08-23 07:13:51', '2023-08-23 07:13:51'),
(5, 11, 251, 36, 25000, 8, 34, 6, 2, 0, '2023-08-23 07:40:36', '2023-08-23 07:40:36'),
(6, 5, 270, 11, 8000, 10, 40, 10, 2, 0, '2023-10-03 13:18:14', '2023-10-03 13:18:14'),
(7, 5, 270, 11, 8000, 10, 40, 11, 2, 0, '2023-10-03 13:25:26', '2023-10-03 13:25:26'),
(8, 5, 270, 11, 8000, 10, 40, 12, 2, 0, '2023-10-03 13:41:05', '2023-10-03 13:41:05'),
(9, 5, 270, 11, 8000, 10, 40, 1, 2, 0, '2023-10-03 13:41:48', '2023-10-03 13:41:48'),
(10, 5, 255, 10, 10000, 10, 43, 10, 2, 0, '2023-10-27 09:39:14', '2023-10-27 09:39:14'),
(11, 5, 268, 10, 9000, 10, 44, 10, 2, 0, '2023-10-30 08:04:57', '2023-10-30 08:04:57'),
(12, 5, 319, 11, 9000, 10, 44, 10, 2, 0, '2023-10-30 08:21:08', '2023-10-30 08:21:08'),
(13, 5, 260, 10, 8750, 11, 44, 10, 2, 0, '2023-11-02 12:07:20', '2023-11-02 12:07:20'),
(14, 5, 261, 10, 8750, 11, 44, 10, 2, 0, '2023-11-02 12:07:54', '2023-11-02 12:07:54'),
(15, 5, 262, 13, 8750, 11, 44, 10, 2, 0, '2023-11-02 12:08:21', '2023-11-02 12:08:21'),
(16, 5, 263, 13, 8750, 11, 44, 10, 2, 0, '2023-11-02 12:08:46', '2023-11-02 12:08:46'),
(17, 5, 258, 12, 8000, 11, 45, 10, 2, 0, '2023-11-06 09:55:25', '2023-11-06 09:55:25'),
(18, 5, 277, 12, 10000, 11, 45, 10, 2, 0, '2023-11-06 10:09:44', '2023-11-06 10:09:44'),
(19, 5, 296, 10, 8500, 11, 45, 10, 2, 0, '2023-11-06 12:30:41', '2023-11-06 12:30:41'),
(20, 5, 297, 10, 8500, 11, 45, 10, 2, 0, '2023-11-06 12:31:09', '2023-11-06 12:31:09'),
(21, 5, 289, 11, 9000, 11, 45, 10, 2, 0, '2023-11-06 12:31:52', '2023-11-06 12:31:52'),
(22, 5, 299, 10, 7500, 11, 45, 10, 2, 0, '2023-11-11 13:50:35', '2023-11-11 13:50:35'),
(23, 5, 290, 11, 7500, 11, 45, 10, 2, 0, '2023-11-11 13:53:35', '2023-11-11 13:53:35'),
(24, 5, 252, 11, 0, 11, 45, 10, 2, 0, '2023-11-11 13:59:04', '2023-11-11 13:59:04'),
(25, 5, 274, 10, 10000, 11, 45, 10, 2, 0, '2023-11-11 14:21:02', '2023-11-11 14:21:02'),
(26, 5, 323, 11, 9000, 11, 45, 10, 2, 0, '2023-11-11 14:27:51', '2023-11-11 14:27:51');

-- --------------------------------------------------------

--
-- Structure de la table `ecoles`
--

CREATE TABLE `ecoles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slogan` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `token` varchar(150) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image_uri` varchar(100) DEFAULT NULL,
  `bg_uri` varchar(100) DEFAULT NULL,
  `color_1` varchar(10) DEFAULT NULL,
  `color_2` varchar(10) DEFAULT NULL,
  `color_3` varchar(10) DEFAULT NULL,
  `plateform_id` int(11) DEFAULT '0',
  `groupe_id` int(11) DEFAULT '0',
  `is_private` int(11) NOT NULL DEFAULT '0',
  `pay_id` int(11) NOT NULL DEFAULT '0',
  `revendeur_id` int(11) NOT NULL DEFAULT '0',
  `enseignement_id` int(11) NOT NULL DEFAULT '0',
  `coordonnees` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ecoles`
--

INSERT INTO `ecoles` (`id`, `name`, `slogan`, `address`, `email`, `phone`, `active`, `token`, `created_at`, `updated_at`, `image_uri`, `bg_uri`, `color_1`, `color_2`, `color_3`, `plateform_id`, `groupe_id`, `is_private`, `pay_id`, `revendeur_id`, `enseignement_id`, `coordonnees`) VALUES
(1, 'Complexe Scolaire Les Amis d\'Exaucé', NULL, 'PN / A1 : Avenue PEMBA à 150km de 05 Février', 'dany.akiele@gmail.com', '068081504', 1, 'TokeNecOlE2022092820220928120912', '2022-09-28 12:37:12', '2022-10-05 23:40:52', 'images/ecoles/05102022114052.jpeg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'Aucun'),
(2, 'Complexe Scolaire PIERRE & MARIE CURIE', NULL, 'PN / A1 : 23, Rue Bernard MAKOSSO, Matendé vers ITORO', 'porianabre@gmail.com', '066256596', 1, 'TokeNecOlE2022100520221005111059', '2022-10-05 11:19:59', '2022-10-05 23:37:12', 'images/ecoles/05102022113712.jpeg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, '23, Rue Bernard MAKOSSO'),
(3, 'CENTRE SCOLAIRE LE VERSEAU', NULL, 'PN / A5 : TCHIALI', 'lcentrescolaireleverseau@gmail.com', '066378270', 1, 'TokeNecOlE2022100520221005121019', '2022-10-05 12:38:19', '2022-10-05 12:38:19', 'images/ecoles/05102022123819.jpeg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'TCHIALI'),
(5, 'Ecole Privée VICTOR MABOUNDOU ', NULL, 'Mpaka 120', 'g.victormaboundou@gmail.com', '066711775', 1, 'TokeNecOlE2022103120221031111013', '2022-10-31 11:27:13', '2022-10-31 11:27:13', 'images/ecoles/31102022112713.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'Mpaka 120'),
(6, 'Le Jade (Collège)', NULL, 'Ngoyo (Station Puma)', 'bangadonatien773@gmail.com', '066740647', 1, 'TokeNecOlE2022110720221107111111', '2022-11-07 11:10:11', '2022-11-07 11:10:11', 'images/ecoles/07112022111011.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'Ngoyo (Station Puma)'),
(7, 'LES DAUPHINS', NULL, 'Centre-Ville', 'steve.akoula@gmail.com', '068770404', 1, 'TokeNecOlE2022111920221119091130', '2022-11-19 09:49:30', '2022-11-19 09:49:30', 'images/ecoles/19112022094930.jpeg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'Centre-Ville'),
(8, 'Jewels International School (General)', NULL, 'Tchimbamba (arret ABOU)', 'jewels.inter2023@gmail.com', '069782223', 1, 'TokeNecOlE2023052020230520010518', '2023-05-20 13:45:18', '2023-05-24 13:13:18', 'images/ecoles/24052023011318.jpeg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'Tchimbamba (arret ABOU)'),
(9, 'Centre d\'Enseignement Privée de Loandjili \"CEPL\"', NULL, 'Loandjili-Faubourg', 'cepl1pn@gmail.com', '066310817', 1, 'TokeNecOlE2023053120230531040553', '2023-05-31 16:46:53', '2023-05-31 16:46:53', 'images/ecoles/31052023044653.png', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'Loandjili-Faubourg'),
(10, 'Elites de la Nation', NULL, 'Tchimbamba', 'elitesdelanation@gmail.com', '044822272', 1, 'TokeNecOlE2023072920230729100740', '2023-07-29 10:57:40', '2023-07-29 10:57:40', 'images/ecoles/29072023105740.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'Tchimbamba'),
(11, 'ECOLE INTERNATIONALE JULES FERRY', NULL, 'Tchimbamba', 'armellebouanga74@gmail.com', '055670591', 1, 'TokeNecOlE2023081420230814090851', '2023-08-14 09:40:51', '2023-08-14 09:40:51', 'images/ecoles/14082023094051.png', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'X'),
(12, 'LA MYRIADE DE SAINT-LOUIS (Ecole Internationale d’excellence)', NULL, 'VINDOULOU derrière le PSP', 'lamyriadedestlouis@gmail.com', '069585995', 1, 'TokeNecOlE2023120720231207081218', '2023-12-07 08:13:18', '2023-12-14 09:36:02', 'images/ecoles/14122023093602.jpg', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 'VINDOULOU derrière le PSP');

-- --------------------------------------------------------

--
-- Structure de la table `eleves`
--

CREATE TABLE `eleves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naiss` date DEFAULT NULL,
  `lieu_naiss` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_pere` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_pere` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_mere` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_mere` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_tuteur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_tuteur` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_tuteur` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'aucune image',
  `sexe_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `eleves`
--

INSERT INTO `eleves` (`id`, `nom`, `prenom`, `date_naiss`, `lieu_naiss`, `adresse`, `nom_pere`, `tel_pere`, `nom_mere`, `tel_mere`, `nom_tuteur`, `tel_tuteur`, `email_tuteur`, `image_uri`, `sexe_id`, `created_at`, `updated_at`) VALUES
(1, 'MBOUMA APENDI', 'Belenge', '2009-11-11', 'XXXX', 'XXXX', 'XXXX', NULL, 'XXXX', NULL, 'XXXX', NULL, NULL, 'aucune image', 2, '2022-11-11 21:29:22', '2022-11-11 21:29:22'),
(2, 'ESSOULI MEGOALA', 'GUY Marie', '2005-11-11', 'Pointe-Noire', 'XXXX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:33:02', '2022-11-11 21:33:02'),
(3, 'MAMBOULI', 'Rofina derene', '2005-08-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 21:34:58', '2022-11-11 21:34:58'),
(4, 'BONGO', 'HAOUNA', '2005-11-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:36:37', '2022-11-11 21:36:37'),
(5, 'NJONGANG BILALA', 'XXXX', '2016-12-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:38:28', '2022-11-11 21:38:28'),
(6, 'ANDELY', 'ELKANA', '2005-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:40:41', '2022-11-11 21:40:41'),
(7, 'MASSANGA', 'CURTIS', '2005-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:42:20', '2022-11-11 21:42:20'),
(8, 'DISULIGALI', 'ABDEL Andy', '2005-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:43:45', '2022-11-11 21:43:45'),
(9, 'MC MEKOYO', 'PRINCE', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:46:45', '2022-11-11 21:46:45'),
(10, 'MOULENGO', 'xxxx', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:49:05', '2022-11-11 21:49:05'),
(11, 'DEFOUMBOU', 'KELY', '2005-11-11', 'xxxx', 'xxxx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 21:50:33', '2022-11-11 21:51:10'),
(12, 'BITEMO', 'GLEN ARSSELLE', '2008-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 21:52:40', '2022-11-11 21:52:40'),
(13, 'EKOUYA LOTABEKA', 'ELIE C', '2010-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 21:54:08', '2022-11-11 21:54:08'),
(14, 'AKONDZO', 'MICHEL GASTON', '2010-12-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:55:19', '2022-11-11 21:55:19'),
(15, 'DZAMBA LOUNDOU', 'PRECIEUX', '2010-11-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 21:57:36', '2022-11-11 21:57:36'),
(16, 'D’ALMEIDA FOUTI', 'SORAYA', '2010-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 21:59:02', '2022-11-11 21:59:02'),
(17, 'NGASSA-MBAMA', 'WALITONE', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:01:49', '2022-11-11 22:01:49'),
(18, 'MBOULA', 'DANIEL', '2022-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:03:22', '2022-11-11 22:03:22'),
(19, 'IBAYIBE', 'ARIANE', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:04:17', '2022-11-11 22:04:17'),
(20, 'BOULALA MOUKOKI', 'ALICIA', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:05:22', '2022-11-11 22:05:22'),
(21, 'MPELE NGOMA', 'PRINCE', '2022-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:06:50', '2022-11-11 22:06:50'),
(22, 'MAVOUNGOU', 'GLENNE', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:08:51', '2022-11-11 22:08:51'),
(23, 'HOUBOUKOULOU', 'DORCAS', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:10:26', '2022-11-11 22:10:26'),
(24, 'SABOUKOULOU', 'JEREMY', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:12:47', '2022-11-11 22:12:47'),
(25, 'INIAKA', 'RUTH VICTORIA', '2022-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:14:03', '2022-11-11 22:14:03'),
(26, 'NGAMBOU', 'xxxx', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:15:40', '2022-11-11 22:15:40'),
(27, 'MAKITA', 'NAVELY', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:17:52', '2022-11-11 22:17:52'),
(28, 'MATSILA KOULOUKA', 'xxxx', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:18:45', '2022-11-11 22:18:45'),
(29, 'MATSILA', 'BONHEUR', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:19:42', '2022-11-11 22:19:42'),
(30, 'NGOMA MOUKOUARI', 'DARCY', '2022-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:20:39', '2022-11-11 22:20:39'),
(31, 'NGUIE', 'DANIELLA', '2022-11-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:22:11', '2022-11-11 22:22:11'),
(32, 'BIGALA', 'GUY DIEUVEIL', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:23:59', '2022-11-11 22:23:59'),
(33, 'ELENGA KANOHA', 'xxxx', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:24:54', '2022-11-11 22:24:54'),
(34, 'NZOUELE', 'EMMANUELLE', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:25:54', '2022-11-11 22:25:54'),
(35, 'BADOU', 'LAURIANA', '2022-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:27:41', '2022-11-11 22:27:41'),
(36, 'LOEMBA TCHITAMBOU', 'XXXX', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:28:37', '2022-11-11 22:28:37'),
(37, 'PAUBATH', 'EMMANUEL', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:29:38', '2022-11-11 22:29:38'),
(38, 'MOKE', 'PARI AISSATA', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:30:58', '2022-11-11 22:30:58'),
(39, 'HIMA MOUANDA', 'LOUANGE', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:32:26', '2022-11-11 22:32:26'),
(40, 'MAHOUNGA', 'Elvira', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:33:32', '2022-11-11 22:33:32'),
(41, 'MBERI', 'ESPOIR DARJUL', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:34:43', '2022-11-11 22:34:43'),
(42, 'BATANGOUNA', 'HENRIETTA', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:36:06', '2022-11-11 22:36:06'),
(43, 'OKIE ANKISSA', 'PREFINA', '2022-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:37:16', '2022-11-11 22:37:16'),
(44, 'FAYETTE', 'MAEVA', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:38:02', '2022-11-11 22:38:02'),
(45, 'ANDELY', 'SAMUELLE', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:39:29', '2022-11-11 22:39:29'),
(46, 'MOUYOYI MBOU', 'FLAVY', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:40:28', '2022-11-11 22:40:28'),
(47, 'KOUMBA NDENGUE', 'xxxx', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:41:30', '2022-11-11 22:41:30'),
(48, 'MAVOUNGOU', 'ROCHELVIE', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:42:22', '2022-11-11 22:42:22'),
(49, 'MAMBO MALA', 'xxxx', '2022-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:43:17', '2022-11-11 22:43:17'),
(50, 'TOUANAPOU', 'DAVID', '2022-11-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:44:02', '2022-11-11 22:44:02'),
(51, 'TOUANAPOU', 'MOISE', '2022-12-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:44:59', '2022-11-11 22:44:59'),
(52, 'TCHITEMBO', 'ALASSANE', '2022-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:46:07', '2022-11-11 22:46:07'),
(53, 'EKOUYA LOTABEKA', 'PRINCE', '2022-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:47:27', '2022-11-11 22:47:27'),
(54, 'MABENGUE ABAMBILA', 'xxxx', '2022-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:48:12', '2022-11-11 22:48:12'),
(55, 'MABENGUE AKIOUE', 'xxxx', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:49:07', '2022-11-11 22:49:07'),
(56, 'BIBALOU', 'KETIA', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxx', NULL, NULL, 'aucune image', 2, '2022-11-11 22:50:22', '2022-11-11 22:50:22'),
(57, 'GOMA', 'PRECIEUX YVES MATH', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:52:27', '2022-11-11 22:52:27'),
(58, 'MOUYE KOYO OBINDI', 'MICHEE', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:53:32', '2022-11-11 22:53:32'),
(59, 'EGNARI-BOU', 'SERAPHIN DIVINE', '2022-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:54:23', '2022-11-11 22:54:23'),
(60, 'KOUMBA PAMBOU', 'HALICIA', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:57:09', '2022-11-11 22:57:09'),
(61, 'OLINGOUKOUTOUPO', 'kenane', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 22:58:02', '2022-11-11 22:58:02'),
(62, 'MOUELE TSATSA', 'NICHELLE', '2022-11-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 22:59:36', '2022-11-11 22:59:36'),
(63, 'TELEMINE', 'PRECIEUX', '2022-12-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:00:58', '2022-11-11 23:00:58'),
(64, 'MBEMBA', 'GEORNIDE', '2022-12-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:02:43', '2022-11-11 23:02:43'),
(65, 'JUSTIN DE ZABENO', 'BIENHEU', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:04:28', '2022-11-11 23:04:28'),
(66, 'MISSATOU', 'ANNIE KOUKER', '2022-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:06:29', '2022-11-11 23:06:29'),
(67, 'BATINI', 'AICHA', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:07:32', '2022-11-11 23:07:32'),
(68, 'NZOMAMBOU', 'JESSY GLOIRE', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:08:52', '2022-11-11 23:08:52'),
(69, 'BOUNGOU MAKITA', 'HERIA', '2022-11-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:10:03', '2022-11-11 23:10:03'),
(70, 'SIASIA', 'HAROLD', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:11:14', '2022-11-11 23:11:14'),
(71, 'YANDZA', 'MELVINA', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:12:16', '2022-11-11 23:12:16'),
(72, 'AMONA MIOKO', 'ALANH', '2022-11-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:13:11', '2022-11-11 23:13:11'),
(73, 'AKOULI', 'DIVINE', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:14:17', '2022-11-11 23:14:17'),
(74, 'MAKAYA', 'GLOIRE', '2022-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:15:07', '2022-11-11 23:15:07'),
(75, 'MOUSSABOU', 'GLENN BONHEUR', '2022-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:15:52', '2022-11-11 23:15:52'),
(76, 'MASSIDISSOUA', 'EXAUCE', '2022-11-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:16:48', '2022-11-11 23:16:48'),
(77, 'TATY', 'SAIRA', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:18:32', '2022-11-11 23:18:32'),
(78, 'BIKOUMOU', 'SAMUEL', '2022-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:19:21', '2022-11-11 23:19:21'),
(79, 'KIATOMBO', 'COLOMBE', '2022-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:20:51', '2022-11-11 23:20:51'),
(80, 'BONGO', 'ABBAS', '2022-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:23:01', '2022-11-11 23:23:01'),
(81, 'BOMONGA', 'ASNATHE', '2022-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:23:55', '2022-11-11 23:23:55'),
(82, 'DIABIROU', 'YOUSSEF', '2022-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:24:50', '2022-11-11 23:24:50'),
(83, 'EBIOU', 'MONICA', '2022-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:25:41', '2022-11-11 23:25:41'),
(84, 'EKAMBA ELOMBE', 'GLOIRE', '2022-11-26', NULL, NULL, NULL, NULL, NULL, NULL, 'xxxx', NULL, NULL, 'aucune image', 1, '2022-11-11 23:26:42', '2022-11-11 23:26:42'),
(85, 'ENGAMBE', 'DARVEL DIEUVEIL', '2022-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:27:29', '2022-11-11 23:27:29'),
(86, 'EVANS', 'PAUL AREL', '2022-11-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:28:36', '2022-11-11 23:28:36'),
(87, 'BATHILA', 'FATOU', '2022-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:29:28', '2022-11-11 23:29:28'),
(88, 'IKETE', 'BENJAMINE', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:30:30', '2022-11-11 23:30:30'),
(89, 'MIDEPE MAKITA', 'LAUCLADIN', '2022-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:31:26', '2022-11-11 23:31:26'),
(90, 'MAVOUNGOU', 'ENOCK', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:40:10', '2022-11-11 23:40:10'),
(91, 'MAKANA LODJO', 'VENELLE', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:41:07', '2022-11-11 23:41:07'),
(92, 'MOULANDOU MIENANDI', 'BENE', '2022-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:42:38', '2022-11-11 23:42:38'),
(93, 'MASSAMBA', 'GILDAVIE', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:46:16', '2022-11-11 23:46:16'),
(94, 'MBE', 'LAURINAH JY EUNICE', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:48:26', '2022-11-11 23:48:26'),
(95, 'MBETE', 'ISRAEL ALVARESSE', '2022-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:49:28', '2022-11-11 23:49:28'),
(96, 'MAMPOUYA', 'CLAUDE', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:50:58', '2022-11-11 23:50:58'),
(97, 'MAMPOLO NZOUMBA', 'DIVINE', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:52:00', '2022-11-11 23:52:00'),
(98, 'MABIALA', 'DUBIEN SYLVERLON', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:53:41', '2022-11-11 23:53:41'),
(99, 'MC MEKOYO', 'MESSIE', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:54:49', '2022-11-11 23:54:49'),
(100, 'NGATSEBE', 'GLOIRE NANCY', '2022-11-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:56:01', '2022-11-11 23:56:01'),
(101, 'OKANA', 'TRUDE BONHEUR', '2022-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:56:58', '2022-11-11 23:56:58'),
(102, 'NZUMBA', 'SINDANI EXAUCE', '2022-11-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-11 23:58:02', '2022-11-11 23:58:02'),
(103, 'NKOU IKAMA', 'XXXX', '2022-11-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-11 23:59:05', '2022-11-11 23:59:05'),
(104, 'OKO-BONGO', 'MARISSA', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:00:38', '2022-11-12 00:00:38'),
(105, 'ONIANGUE', 'CHANDREL', '2022-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:01:46', '2022-11-12 00:01:46'),
(106, 'OSSETE', 'RUTH', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:02:49', '2022-11-12 00:02:49'),
(107, 'KOUALI YALESH', 'SHEKINA', '2022-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:04:00', '2022-11-12 00:04:00'),
(108, 'LASSA TSENGUI', 'GRACE', '2022-11-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:05:01', '2022-11-12 00:05:01'),
(109, 'SAYA LUC', 'EMMANUEL', '2022-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:06:00', '2022-11-12 00:06:00'),
(110, 'MOUDOUYI', 'DAVID', '2022-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:07:22', '2022-11-12 00:07:22'),
(111, 'YOKELE', 'CLAUDERYLLE RENELLE', '2022-11-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:08:46', '2022-11-12 00:08:46'),
(112, 'PANGOU BOUANGA', 'OSNELLE', '2022-11-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:09:55', '2022-11-12 00:09:55'),
(113, 'NGAKOSSO', 'SAIRA', '2022-12-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:11:09', '2022-11-12 00:11:09'),
(114, 'MOUNDANGA', 'KEVINE', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:12:01', '2022-11-12 00:12:01'),
(115, 'BOUANGA', 'DANIELA ERICKA', '2022-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:13:10', '2022-11-12 00:13:10'),
(116, 'KANDA', 'GERVAIS FABRICE', '2022-11-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:14:45', '2022-11-12 00:14:45'),
(117, 'MALONGA', 'xxxx', '2022-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:15:43', '2022-11-12 00:15:43'),
(118, 'ETOU MENGUI', 'XXXX', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:17:44', '2022-11-12 00:17:44'),
(119, 'MATONDO', 'ROLY SANDERSON', '2022-12-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:19:34', '2022-11-12 00:19:34'),
(120, 'MBEMBA', 'STEPHANE', '2022-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:20:51', '2022-11-12 00:20:51'),
(121, 'BOUSSINGU', 'GLOIRE', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:22:30', '2022-11-12 00:22:30'),
(122, 'BIKOUMOU', 'MESSIA TRESSY', '2022-12-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:23:38', '2022-11-12 00:23:38'),
(123, 'MOUANDZA', 'GERME', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:25:10', '2022-11-12 00:25:10'),
(124, 'MASSOUANGUI', 'FLORIDA', '2022-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:26:29', '2022-11-12 00:26:29'),
(125, 'MAMPOUYA', 'CHERITA', '2022-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:27:31', '2022-11-12 00:27:31'),
(126, 'MBANI', 'PREJULIA NAOMIE', '2022-11-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:29:13', '2022-11-12 00:29:13'),
(127, 'WADA LOUBONDO', 'SYNT', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:30:22', '2022-11-12 00:30:22'),
(128, 'IKOUANI MOUNDANGA', 'XXXX', '2022-11-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:31:43', '2022-11-12 00:31:43'),
(129, 'EVANS', 'JERIEL CHANCY', '2022-11-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:33:22', '2022-11-12 00:33:22'),
(130, 'MINGA', 'GERTIGRA PRUDANY', '2022-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:34:39', '2022-11-12 00:34:39'),
(131, 'NGOKO', 'FRANCISCA', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:35:57', '2022-11-12 00:35:57'),
(132, 'MOUINDA', 'TINA DANNICIA', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:36:49', '2022-11-12 00:36:49'),
(133, 'MOUINDA', 'TINA DANNICIA', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:37:18', '2022-11-12 00:37:18'),
(134, 'MOUINDA', 'TINA DANNICIA', '2022-11-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:37:42', '2022-11-12 00:37:42'),
(135, 'MAHOUNKOU', 'CECILIA', '2022-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:39:26', '2022-11-12 00:39:26'),
(136, 'MAHOUNGOU MOKONO', 'CA.', '2022-11-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:40:46', '2022-11-12 00:40:46'),
(137, 'BAVA NGUILA', 'BRICHEL', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:42:15', '2022-11-12 00:42:15'),
(138, 'OBA MOUKABIBENIE', 'xxxxx', '2022-11-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:43:00', '2022-11-12 00:43:00'),
(139, 'MAKITA-MFOUTOU', 'PAVIE YA.', '2022-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:44:08', '2022-11-12 00:44:08'),
(140, 'ANDZOUANA', 'ERICKA', '2022-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:44:59', '2022-11-12 00:44:59'),
(141, 'MITSINGOU', 'PRICILE', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:46:09', '2022-11-12 00:46:09'),
(142, 'WADA MAHOUNA', 'DELICIA', '2022-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:47:28', '2022-11-12 00:47:28'),
(143, 'NSIMBA', 'JONATHAN', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:48:54', '2022-11-12 00:48:54'),
(144, 'BALOSSA', 'CLAUDE', '2022-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:50:35', '2022-11-12 00:50:35'),
(145, 'GOH', 'KADIDJA', '2022-11-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:52:48', '2022-11-12 00:52:48'),
(146, 'MOSSANGUE', 'MORIA', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:53:43', '2022-11-12 00:53:43'),
(147, 'MOKOULA', 'SABY JOLLYCIN', '2022-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:54:55', '2022-11-12 00:54:55'),
(148, 'OKILASSALI', 'RONIL', '2022-11-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:56:25', '2022-11-12 00:56:25'),
(149, 'LIKABENDOLO MONDZO', 'xxxx', '2022-11-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 1, '2022-11-12 00:58:25', '2022-11-12 00:58:25'),
(150, 'OSSEBI', 'VICTOIRE', '2022-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aucune image', 2, '2022-11-12 00:59:37', '2022-11-12 00:59:37'),
(151, 'MBOUTOU', 'Eloime', '2011-12-19', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '435', 'p435@mail.com', 'images/membres/15122022033236.png', 2, '2022-12-15 14:32:36', '2022-12-15 14:32:36'),
(152, 'PAMBOU SITOU', 'Gracia', '2009-09-25', 'Pointe-Noire', '0', 'x', '0', 'x', '0', 'x', '436', 'p436@mail.com', 'images/membres/15122022034034.png', 2, '2022-12-15 14:40:34', '2022-12-15 14:40:34'),
(153, 'MAPAKOU', 'Jessie Urbain', '2010-05-03', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '437', 'p437@mail.com', 'images/membres/15122022034152.png', 2, '2022-12-15 14:41:52', '2022-12-15 14:41:52'),
(154, 'BAVOUINDIKANDA', 'Gloire', '2007-05-21', 'Brazzaville', 'x', 'x', '0', 'x', '0', 'x', '438', NULL, 'images/membres/15122022034303.png', 1, '2022-12-15 14:43:03', '2022-12-15 14:43:03'),
(155, 'MIALEBAMA', 'Paul Sephora', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '439', 'p439@mail.com', 'images/membres/15122022035119.png', 2, '2022-12-15 14:51:19', '2022-12-15 14:51:19'),
(156, 'BIBILA', 'Jeansyly Wilton', '2011-08-02', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '440', 'p440@mail.com', 'images/membres/15122022035234.png', 1, '2022-12-15 14:52:34', '2022-12-15 14:52:34'),
(157, 'BISSILA', 'Pichelvie', '2010-11-10', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '441', 'p441@mail.com', 'images/membres/15122022035340.png', 2, '2022-12-15 14:53:40', '2022-12-15 14:53:40'),
(158, 'NDAMBA', 'Christ Gerdy', '2008-06-14', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '442', 'p442@mail.com', 'images/membres/15122022035454.png', 1, '2022-12-15 14:54:54', '2022-12-15 14:54:54'),
(159, 'MENOUANA', 'Gaissina', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '443', 'p443@mail.com', 'images/membres/15122022035608.png', 2, '2022-12-15 14:56:08', '2022-12-15 14:56:08'),
(160, 'YENGO', 'Juliana', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '444', 'p444@mail.com', 'images/membres/15122022035716.png', 2, '2022-12-15 14:57:16', '2022-12-15 14:57:16'),
(161, 'SAMBA', 'Floridha Fanny', '2010-08-02', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '445', 'p445@mail.com', 'images/membres/15122022035822.png', 2, '2022-12-15 14:58:22', '2022-12-15 14:58:22'),
(162, 'NGOUALANIA', 'Claudany', '2011-06-27', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '446', 'p446@mail.com', 'images/membres/15122022035932.png', 1, '2022-12-15 14:59:32', '2022-12-15 14:59:32'),
(163, 'DIAFOUKA', 'Predruche', '2010-08-24', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '447', 'p447@mail.com', 'images/membres/15122022040102.png', 1, '2022-12-15 15:01:02', '2022-12-15 15:02:33'),
(164, 'MAVOUNGOU', 'Dolvin', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '448', 'p448@mail.com', 'images/membres/15122022040205.png', 1, '2022-12-15 15:02:05', '2022-12-15 15:02:05'),
(165, 'MAVOUNGOU', 'Chris', '2011-07-04', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '449', 'p449@mail.com', 'images/membres/15122022040350.png', 1, '2022-12-15 15:03:50', '2022-12-15 15:03:50'),
(166, 'KIFALA', 'Andrech Dalmich', '2009-02-27', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '450', 'p450@mail.com', 'images/membres/15122022040516.png', 1, '2022-12-15 15:05:16', '2022-12-15 15:05:16'),
(167, 'TATY BOUYOU', 'Guynol', '2009-03-15', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '451', 'p451@mail.com', 'images/membres/15122022040650.png', 1, '2022-12-15 15:06:50', '2022-12-15 15:06:50'),
(168, 'MAMPASSI', 'Oscar Exaucé', '2009-05-02', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '452', 'p452@mail.com', 'images/membres/15122022040758.png', 1, '2022-12-15 15:07:58', '2022-12-15 15:07:58'),
(169, 'MAHOUNGOU', 'Grace', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '453', 'p453@mail.com', 'images/membres/15122022040857.png', 1, '2022-12-15 15:08:57', '2022-12-15 15:08:57'),
(170, 'MOUKOKO', 'Mignon Edvin', '2010-09-21', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '454', 'p454@mail.com', 'images/membres/15122022041015.png', 1, '2022-12-15 15:10:15', '2022-12-15 15:10:15'),
(171, 'NGAMBI', 'David', '2010-09-02', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '455', 'p455@mail.com', 'images/membres/15122022041111.png', 1, '2022-12-15 15:11:11', '2022-12-15 15:12:41'),
(172, 'BIANGOU', 'Daverly Rolney', '2011-06-18', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '456', 'p456@mmail.com', 'images/membres/15122022041221.png', 1, '2022-12-15 15:12:21', '2022-12-15 15:12:21'),
(173, 'MILEBE', 'Arsene', '2009-11-26', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '457', 'p457@mail.com', 'images/membres/15122022041403.png', 1, '2022-12-15 15:14:03', '2022-12-15 15:14:03'),
(174, 'LOUBACKY', 'Exaucée', '2009-04-23', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '458', 'p458@mail.com', 'images/membres/15122022041509.png', 2, '2022-12-15 15:15:09', '2022-12-15 15:15:09'),
(175, 'MATA', 'Dieuveil Profeland', '2009-11-20', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '459', 'p459@mail.com', 'images/membres/15122022041627.png', 1, '2022-12-15 15:16:27', '2022-12-15 15:16:27'),
(176, 'BABELA', 'Japhet Christy', '2010-02-10', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '460', 'p460@mail.com', 'images/membres/15122022041750.png', 2, '2022-12-15 15:17:50', '2022-12-15 15:17:50'),
(177, 'BIZINGA', 'Jinelda', '2011-08-10', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '461', 'p461@mail.com', 'images/membres/15122022041903.png', 2, '2022-12-15 15:19:03', '2022-12-15 15:19:03'),
(178, 'CUMBA PEDRO', 'Maravilha', '2009-11-16', 'Cabinda', 'x', 'x', '0', 'x', '0', 'x', '462', 'p462@mail.com', 'images/membres/15122022042023.png', 2, '2022-12-15 15:20:23', '2022-12-15 15:20:23'),
(179, 'HOUNANA', 'Christ Delor', '2011-05-09', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '463', 'p463@mail.com', 'images/membres/15122022042154.png', 1, '2022-12-15 15:21:54', '2022-12-15 15:21:54'),
(180, 'NKOUKOU', 'Varnel', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '464', 'p464@mail.com', 'images/membres/15122022042312.png', 1, '2022-12-15 15:23:12', '2022-12-15 15:23:12'),
(181, 'MBOUMINA', 'Ghyslain', '2011-03-20', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '465', 'p465@mail.com', 'images/membres/15122022042426.png', 1, '2022-12-15 15:24:26', '2022-12-15 15:24:26'),
(182, 'IKOBI', 'Grace', '2010-04-21', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '466', 'p466@mail.com', 'images/membres/15122022042528.png', 2, '2022-12-15 15:25:28', '2022-12-15 15:25:28'),
(183, 'MANTSA', 'Dopate', '2008-03-20', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '467', 'p467@mail.com', 'images/membres/15122022042629.png', 2, '2022-12-15 15:26:29', '2022-12-15 15:26:29'),
(184, 'MOUTSOUMOU', 'Cedicia', '2009-12-03', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '468', 'p468@mail.com', 'images/membres/15122022042739.png', 2, '2022-12-15 15:27:39', '2022-12-15 15:27:39'),
(185, 'BADIEKOUAHOU', 'Nuptia', '2010-08-05', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '469', 'p469@mail.com', 'images/membres/15122022042857.png', 2, '2022-12-15 15:28:57', '2022-12-15 15:28:57'),
(186, 'MBOUKADIDI', 'Juste', '2010-06-10', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '470', 'p470@mail.com', 'images/membres/15122022043023.png', 1, '2022-12-15 15:30:23', '2022-12-15 15:30:23'),
(187, 'BABINDAMANA', 'Gedeon', '2009-05-02', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '471', 'p471@mail.com', 'images/membres/15122022043219.png', 1, '2022-12-15 15:32:19', '2022-12-15 15:32:19'),
(188, 'SITA', 'Valgrech Bertron', '2007-09-01', 'Nkayi', 'x', 'x', '0', 'x', '0', 'x', '472', 'p472@mail.com', 'images/membres/15122022043338.png', 1, '2022-12-15 15:33:38', '2022-12-15 15:33:38'),
(189, 'MASSALA', 'Sephora', '2009-04-23', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '473', 'p473@mail.com', 'images/membres/15122022043438.png', 2, '2022-12-15 15:34:38', '2022-12-15 15:34:38'),
(190, 'NDALA', 'Tressy Dom', '2011-03-09', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '474', 'p474@mail.com', 'images/membres/15122022043539.png', 2, '2022-12-15 15:35:39', '2022-12-15 15:35:39'),
(191, 'TOGANOU', 'Loven Ossias', '2010-05-14', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '475', 'p475@mail.com', 'images/membres/15122022043651.png', 1, '2022-12-15 15:36:51', '2022-12-15 15:36:51'),
(192, 'NZAKOU', 'Helena', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '476', 'p476@mail.com', 'images/membres/15122022043750.png', 2, '2022-12-15 15:37:50', '2022-12-15 15:37:50'),
(193, 'MBHALAT', 'Divin', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '477', 'p477@mail.com', 'images/membres/15122022043905.png', 1, '2022-12-15 15:39:05', '2022-12-15 15:39:05'),
(194, 'BITOUTILA', 'Naomie', '2009-07-03', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '478', 'p478@mail.com', 'images/membres/15122022044007.png', 2, '2022-12-15 15:40:07', '2022-12-15 15:40:07'),
(195, 'MASSENGO', 'Ismail', '2010-05-11', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '479', 'p479@mail.com', 'images/membres/15122022044108.png', 1, '2022-12-15 15:41:08', '2022-12-15 15:41:08'),
(196, 'LIELE', 'Livinda', '2010-02-14', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '480', 'p480@mail.com', 'images/membres/15122022044211.png', 2, '2022-12-15 15:42:11', '2022-12-15 15:42:11'),
(197, 'MAKOYO', 'Dominique', '2010-06-27', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '481', 'p481@mail.com', 'images/membres/15122022044307.png', 1, '2022-12-15 15:43:07', '2022-12-15 15:44:46'),
(198, 'MASSAMBA', 'Mardochelle', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '482', 'p482@mail.com', 'images/membres/15122022044418.png', 2, '2022-12-15 15:44:18', '2022-12-15 15:44:18'),
(199, 'NKODILANDOU', 'Andress', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '483', 'p483@mail.com', 'images/membres/15122022044553.png', 2, '2022-12-15 15:45:53', '2022-12-15 15:45:53'),
(200, 'MAKOUMBOU', 'Marcel', '2012-03-03', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '484', 'p484@mail.com', 'images/membres/15122022044651.png', 1, '2022-12-15 15:46:51', '2022-12-15 15:46:51'),
(201, 'BALABANKAZI', 'Artinez', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '485', 'p485@mail.com', 'images/membres/15122022044820.png', 1, '2022-12-15 15:48:20', '2022-12-15 15:48:20'),
(202, 'TSEMI', 'Andres Dorcelia', '2007-08-02', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '486', 'p486@mail.com', 'images/membres/15122022044925.png', 2, '2022-12-15 15:49:25', '2022-12-15 15:49:25'),
(203, 'TAMOUNSOUKA', 'Leticia', '2007-05-07', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '487', 'p487@mail.com', 'images/membres/15122022045046.png', 2, '2022-12-15 15:50:46', '2022-12-15 15:50:46'),
(204, 'KAY', 'Junior Chanel', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '488', 'p488@mail.com', 'images/membres/15122022051131.png', 1, '2022-12-15 16:11:31', '2022-12-15 16:11:31'),
(205, 'TCHISSAMBOU', 'Rephine', '2009-06-30', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '489', 'p489@mail.com', 'images/membres/15122022051242.png', 2, '2022-12-15 16:12:42', '2022-12-15 16:12:42'),
(206, 'NTOUNTA', 'Plessy Rayane', '2009-09-12', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '490', 'p490@mail.com', 'images/membres/15122022051408.png', 1, '2022-12-15 16:14:08', '2022-12-15 16:14:08'),
(207, 'BABAKISSA', 'Prince', '2007-01-29', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '491', 'p491@mail.com', 'images/membres/15122022051511.png', 1, '2022-12-15 16:15:11', '2022-12-15 16:15:11'),
(208, 'IPOUNA MENGO', 'Louise', '2010-05-12', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '492', 'p492@mail.com', 'images/membres/15122022051611.png', 2, '2022-12-15 16:16:11', '2022-12-15 16:16:11'),
(209, 'MAVOUNGOU', 'Michelle', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '493', 'p493@mail.com', 'images/membres/15122022051751.png', 2, '2022-12-15 16:17:51', '2022-12-15 16:17:51'),
(210, 'LANGA', 'Hervina', '2009-02-07', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '494', 'p494@mail.com', 'images/membres/15122022051856.png', 2, '2022-12-15 16:18:56', '2022-12-15 16:18:56'),
(211, 'MABIKA NTSALA', 'Idalvie', '2008-01-25', 'Bouanssa', 'x', 'x', '0', 'x', '0', 'x', '495', 'p495@mail.com', 'images/membres/15122022052011.png', 2, '2022-12-15 16:20:11', '2022-12-15 16:20:11'),
(212, 'BATALAMIO', 'Bradvy', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '496', 'p496@mail.com', 'images/membres/15122022052107.png', 1, '2022-12-15 16:21:07', '2022-12-15 16:21:07'),
(213, 'NTONTOLO', 'Gloire', '2009-03-25', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '497', 'p497@mail.com', 'images/membres/15122022052226.png', 1, '2022-12-15 16:22:26', '2022-12-15 16:22:26'),
(214, 'MAVOUNGOU', 'Lyod Lydie', '2006-10-30', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '498', 'p498@mail.com', 'images/membres/15122022052350.png', 2, '2022-12-15 16:23:50', '2022-12-15 16:23:50'),
(215, 'MATANGOUNA', 'Junior', '2007-11-23', 'Brazzaville', 'x', 'x', '0', 'x', '0', 'x', '499', 'p499@mail.com', 'images/membres/15122022052451.png', 1, '2022-12-15 16:24:51', '2022-12-15 16:24:51'),
(216, 'BIZINGA', 'Leocadie', '2009-07-06', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '500', 'p500@mail.com', 'images/membres/15122022052556.png', 2, '2022-12-15 16:25:56', '2022-12-15 16:25:56'),
(217, 'SONGOLA', 'Christ', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '501', 'p501@mail.com', 'images/membres/15122022052653.png', 1, '2022-12-15 16:26:53', '2022-12-15 16:26:53'),
(218, 'KIBINZA', 'Stevie Florelle', '2009-04-17', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '502', 'p502@mail.com', 'images/membres/15122022052832.png', 2, '2022-12-15 16:28:32', '2022-12-15 16:28:32'),
(219, 'KAMIHOUAKO', 'Carene', '2007-11-22', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '503', 'p503@mail.com', 'images/membres/15122022052938.png', 2, '2022-12-15 16:29:38', '2022-12-15 16:29:38'),
(220, 'TSOLANI', 'Paulcy', '2009-09-30', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '504', 'p504@mail.com', 'images/membres/15122022053059.png', 1, '2022-12-15 16:30:59', '2022-12-15 16:30:59'),
(221, 'MIENAHATA', 'Claude Enna', '2009-10-02', 'p4', 'x', 'x', '0', 'x', '0', 'x', '505', 'p505@mail.com', 'images/membres/15122022053437.png', 2, '2022-12-15 16:34:37', '2022-12-15 16:34:37'),
(222, 'GANGA', 'Audrey', '2005-12-05', 'Brazzaville', 'x', 'x', '0', 'x', '0', 'x', '506', 'p506@mail.com', 'images/membres/15122022054715.png', 2, '2022-12-15 16:47:15', '2022-12-15 16:47:15'),
(223, 'MBONAZEBI', 'Jessica', '2008-02-01', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '507', 'p507@mail.com', 'images/membres/15122022054833.png', 2, '2022-12-15 16:48:33', '2022-12-15 16:48:33'),
(224, 'MALANDA', 'Felicia Marthe', '2007-12-27', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '508', 'p508@mail.com', 'images/membres/15122022054942.png', 2, '2022-12-15 16:49:42', '2022-12-15 16:49:42'),
(225, 'MIKAMOUNA', 'Ken', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '509', 'p509@mail.com', 'images/membres/15122022055040.png', 1, '2022-12-15 16:50:40', '2022-12-15 16:50:40'),
(226, 'TCHIMBALA', 'Rolcia Chino', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '510', 'p510@mail.com', 'images/membres/15122022055149.png', 2, '2022-12-15 16:51:49', '2022-12-15 16:51:49'),
(227, 'MOUANDA', 'Flodecia', '2009-06-28', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '511', 'p511@mail.com', 'images/membres/15122022055321.png', 2, '2022-12-15 16:53:21', '2022-12-15 16:53:21'),
(228, 'BIYOUDI', 'Merci Sarah', '2007-11-27', 'Brazzaville', 'x', 'x', '0', 'x', '0', 'x', '512', 'p512@mail.com', 'images/membres/15122022055433.png', 2, '2022-12-15 16:54:33', '2022-12-15 16:54:33'),
(229, 'MBOUMINA', 'Junior', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '513', 'p513@mail.com', 'images/membres/15122022055531.png', 1, '2022-12-15 16:55:31', '2022-12-15 16:55:31'),
(230, 'ILOUNGA', 'Samuel', '2005-11-21', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '514', 'p514@mail.com', 'images/membres/15122022055634.png', 1, '2022-12-15 16:56:34', '2022-12-15 16:56:34'),
(231, 'MVILA ZOUNGANI', 'Gerby', '2008-05-21', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '515', 'p515@mail.com', 'images/membres/15122022055755.png', 1, '2022-12-15 16:57:55', '2022-12-15 16:57:55'),
(232, 'MASSALA', 'Loïc Tresor', '2007-06-13', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '516', 'p516@mail.com', 'images/membres/15122022055919.png', 1, '2022-12-15 16:59:19', '2022-12-15 16:59:19'),
(233, 'IOUANGOU', 'Klesia Osia', '2006-04-02', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '517', 'p517@mail.com', 'images/membres/15122022060056.png', 2, '2022-12-15 17:00:56', '2022-12-15 17:00:56'),
(234, 'KIKALA', 'Yves Urdin', '2006-10-04', 'Dolisie', 'x', 'x', '0', 'x', '0', 'x', '518', 'p518@mail.com', 'images/membres/15122022060203.png', 1, '2022-12-15 17:02:03', '2022-12-15 17:02:03'),
(235, 'WOUAMBA', 'Naomie', '2007-04-13', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '519', 'p519@mail.com', 'images/membres/15122022060336.png', 2, '2022-12-15 17:03:36', '2022-12-15 17:03:36'),
(236, 'BAKALA', 'Salomon Jhovani', '2007-04-30', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '520', 'p520@mail.com', 'images/membres/15122022060441.png', 1, '2022-12-15 17:04:41', '2022-12-15 17:04:41'),
(237, 'KAYA PAMPOU', 'Mavie', '2007-01-01', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '521', 'p521@mail.com', 'images/membres/15122022060617.png', 2, '2022-12-15 17:06:17', '2022-12-15 17:06:17'),
(238, 'OUAMBA', 'Jevcy', '2005-09-13', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '522', 'p522@mail.com', 'images/membres/15122022062057.png', 1, '2022-12-15 17:20:57', '2022-12-15 17:20:57'),
(239, 'BITOUTILA', 'Thedorcia', '2005-06-09', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '523', 'p523@mail.com', 'images/membres/15122022062208.png', 2, '2022-12-15 17:22:08', '2022-12-15 17:22:08'),
(240, 'MASSAMBA', 'Cardochelle', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '524', 'p524@mail.com', 'images/membres/15122022062310.png', 2, '2022-12-15 17:23:10', '2022-12-15 17:23:10'),
(241, 'ZEBELE', 'Manassé', '1900-01-01', 'x', 'x', 'x', '0', 'x', '0', 'x', '525', 'p525@mail.com', 'images/membres/15122022062407.png', 1, '2022-12-15 17:24:07', '2022-12-15 17:24:07'),
(242, 'BIANGOU', 'Celina Josias', '2008-03-16', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '526', 'p526@mail.com', 'images/membres/15122022062517.png', 2, '2022-12-15 17:25:17', '2022-12-15 17:25:17'),
(243, 'NDEWA', 'Ferlyche Belgis', '2005-05-25', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '527', 'p527@mail.com', 'images/membres/15122022062632.png', 2, '2022-12-15 17:26:32', '2022-12-15 17:26:32'),
(244, 'NKOUSSOU', 'Ruth', '2002-06-29', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '528', 'p528@mail.com', 'images/membres/15122022062722.png', 2, '2022-12-15 17:27:22', '2022-12-15 17:27:22'),
(245, 'SSEMBO', 'Jad Carmelia', '2008-01-01', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '529', 'p529@mail.com', 'images/membres/15122022062900.png', 2, '2022-12-15 17:29:00', '2022-12-15 17:29:00'),
(246, 'NGOUARI', 'Vierra', '2009-01-07', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '530', 'p530@mail.com', 'images/membres/15122022063005.png', 2, '2022-12-15 17:30:05', '2022-12-15 17:30:05'),
(247, 'MBOUKOU', 'Christevie', '2006-10-15', 'Angola', 'x', 'x', '0', 'x', '0', 'x', '531', 'p531@mail.com', 'images/membres/15122022063110.png', 2, '2022-12-15 17:31:10', '2022-12-15 17:31:10'),
(248, 'MBAYE', 'Mignon', '2007-02-12', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '532', 'p532@mail.com', 'images/membres/15122022063218.png', 1, '2022-12-15 17:32:18', '2022-12-15 17:32:18'),
(249, 'BAKEKOLO', 'Florine', '2007-04-16', 'Brazzaville', 'x', 'x', '0', 'x', '0', 'x', '533', 'p533@mail.com', 'images/membres/15122022063336.png', 2, '2022-12-15 17:33:36', '2022-12-15 17:33:36'),
(250, 'BOUTSANA', 'Myro Irex', '2004-12-19', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '534', 'p534@mail.com', 'images/membres/15122022063441.png', 1, '2022-12-15 17:34:41', '2022-12-15 17:34:41'),
(251, 'BITOUMOU', 'Divine Exaucée', '2008-02-12', 'Pointe-Noire', 'x', 'x', '0', 'x', '0', 'x', '535', 'p535@mail.com', 'images/membres/15122022063540.png', 2, '2022-12-15 17:35:40', '2022-12-15 17:35:40'),
(252, 'BOUANGA KEKOLO', 'Seth Athais', '2010-05-16', 'Pointe-Noire', 'Tchimbamba', 'BOUANGA  Teddys', '057143142', 'xxxxxx', '0', 'BASSOUKIDI Roland', '055359501', 'tbouang@expressafrique-congo.com', 'aucune image', 1, '2023-08-23 06:43:56', '2023-08-23 06:43:56'),
(253, 'KOUBAKA TOUNDA', 'Joana', '2010-01-18', 'Pointe-Noire', 'Tchimbamba', 'xxxxxx', '0', 'KOUBAKA Arielle', '068909125', 'KOUBAKA Arielle', '068909125', 'koubakaarielle@gmail.com', 'aucune image', 2, '2023-08-23 06:55:01', '2023-08-23 06:55:01'),
(254, 'MBOUMINA', 'Ghyslain', '2011-03-20', 'Pointe-Noire', 'Louessi', 'MILANDOU MBOUMINA Ghyslain', '056604433', 'NSIKA Ines Christelle', '066616764', 'MILANDOU MBOUMINA Ghyslain', '056604433', 'ghysmboumina@gmail', 'aucune image', 1, '2023-09-16 08:21:52', '2023-09-16 08:21:52'),
(255, 'NDAMBA', 'Christ Gerdy Richi', '2008-06-14', 'Pointe Noire', 'Mpaka XOR', 'NDAMBA  Christophe', '0', 'KISSOUESSOUE Germaine', '0', 'NDAMBA Taylor', '069397242', 'ndambataylor@gmail.com', 'aucune image', 1, '2023-09-16 10:07:38', '2023-09-16 10:07:38'),
(256, 'MAZIKOU', 'Sagesse Archimede', '2009-04-18', 'Brazzaville', 'Mpaka marché', 'MAZIKOU  Justard', '0', 'MAKOLO  Chantal', '066729424', 'MAKOYO   Jolida', '065624813', 'makolojolida@gmail.com', 'aucune image', 2, '2023-09-19 09:21:09', '2023-09-19 09:21:09'),
(257, 'KOUKA', 'Michelle  Delcy', '2012-07-22', 'Pointe Noire', 'Mpaka marché', 'KOUKA  Channel  Delhynn', '0', 'MALANDA  Gassye', '0', 'KOUKA  Channel  Delhynn', '0', 'koukachannel@gmail.com', 'aucune image', 2, '2023-09-19 10:37:14', '2023-09-19 10:37:14'),
(258, 'BIBILA', 'Jeansly wilton', '2012-08-02', 'Pointe-Noire', 'Mpaka marché', 'BIBILA Jeancil Wilton', '068774277', 'MBOUKY Myria Cheryl Aharmelia', '066683506', 'BIBILA Jeansly Wilton', '068774277', 'bibila@gmail.com', 'aucune image', 2, '2023-09-26 13:16:42', '2023-09-26 13:16:42'),
(259, 'PAMBOU  SITOU', 'Gracia', '2009-09-25', 'Pointe Noire', 'Mpaka marché', 'PAMBOU  Novy', '0', 'POUAPOUA  BRINDA', '069234512', 'POUAPOUA  BRINDA', '069234512', 'pouapoua@gmail.com', 'aucune image', 2, '2023-09-26 13:25:19', '2023-09-26 13:25:19'),
(260, 'BABINDAMANA', 'Gédéon Jérémie Divin', '2009-05-02', 'Brazzaville', 'Mpaka marché', '0', '0', 'MABIKA  Nelly', '055536022', 'MABIKA  Nelly', '055536022', 'mabika@gmail.com', 'aucune image', 2, '2023-09-26 13:34:16', '2023-09-26 13:34:16'),
(261, 'MATOKO', 'Mignon  Maurice', '2008-01-25', 'Pointe-Noire', 'Mpaka marché', NULL, NULL, 'LIPOUANGA  Ginette', '053637770', 'LIPOUANGA  Ginette', '050856090', 'lipouangaginette@gmail', 'aucune image', 1, '2023-09-28 11:53:50', '2023-09-28 11:53:50'),
(262, 'NZIHOU  BOUANGA', 'Gloire', '2009-08-12', 'MOSSENDJO', 'Mpaka marché', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', 'NIRANATEMO  Temsi', '065180452', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', 'bouetoumoussapatrick@gmail', 'aucune image', 2, '2023-09-28 12:09:01', '2023-09-28 12:09:01'),
(263, 'BOUETOUMOUSSA', 'Benicia Cleves Jadelia', '2012-06-30', 'Brazzaville', 'Mpaka marché', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', 'NIRANATEMO  Temsi', '065180452', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', NULL, 'aucune image', 2, '2023-09-28 12:16:17', '2023-09-28 12:16:17'),
(264, 'BOUETOUMOUSSA', 'Joas  Ruddy  Archiley', '2009-11-02', 'Brazzaville', 'Mpaka marché', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', 'NIRANATEMO  Temsi', '065180452', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', NULL, 'aucune image', 1, '2023-09-28 12:20:37', '2023-09-28 12:20:37'),
(265, 'BOUETOUMOUSSA', 'Stanley  Nohaa', '2008-06-07', 'Brazzaville', 'Mpaka marché', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', 'NIRANATEMO  Temsi', '065180452', 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', NULL, 'aucune image', 1, '2023-09-28 12:38:08', '2023-09-28 12:38:08'),
(266, 'LOUBAYI', 'Rock  Varnel', '2012-08-20', 'Pointe Noire', 'Mpaka marché', 'NGOUMA  TSATY  Stirn', '069275042', '0', '0', 'NGOUMA TSATY  Stirn', '069275042', 'ngoumatsaty@gmail', 'aucune image', 1, '2023-09-28 12:50:20', '2023-09-28 12:50:20'),
(267, 'SAMBA', 'Floricha  Fanny', '2010-08-02', 'Pointe-Noire', 'Mpaka marché', 'TAMBA  MBOUNGOU', '068448093', 'FILAKEMBO  Rancia  Phalonie', '067127682', 'TAMBA MBOUNGOU Malcom Hernan', '068448093', 'hermatamba@gmail', 'aucune image', 2, '2023-09-28 14:18:46', '2023-10-05 10:06:04'),
(268, 'CUMBA  PEDRO', 'Maravilha', '2009-11-16', 'Cabinda', 'Mpaka', 'PEDRO  Joao', '02244922993954', 'xxx', '0', 'PEDRO  Joao', '02244922993954', 'pedrojoao@gmail.com', 'aucune image', 2, '2023-10-02 12:37:52', '2023-10-02 12:37:52'),
(269, 'KOUKA', 'Michelle  Delcy', '2012-07-22', 'Pointe Noire', 'Mpaka marché', 'KOUKA  Channel  Delhynn', '0', 'MALANDA  Gassye Berfantie', '0', 'KOUKA  Channel  Delhynn', '0', NULL, 'aucune image', 2, '2023-10-03 06:33:10', '2023-10-03 06:33:10'),
(270, 'MAPAKOU  SIEFO', 'Joyce  Maissa', '2013-07-19', 'Pointe Noire', 'Mpaka', 'MAPAKOU  Grace', '050040974', 'MOUSSOUAMOU  MBOYO  Cardiss', '057542530', 'MAPAKOU  Grace', '050040974', 'mapakou@gmail.com', 'aucune image', 2, '2023-10-03 06:56:21', '2023-10-03 06:56:21'),
(271, 'BISSILA', 'Prichelvie', '2010-11-10', 'Pointe Noire', 'Mpaka', 'xxx', '0', 'TATANGA  Puchella', '064409995', 'TATANGA  Puchella', '064409995', 'tatngapuchella@gmail.com', 'aucune image', 2, '2023-10-03 07:07:05', '2023-10-03 07:07:05');
INSERT INTO `eleves` (`id`, `nom`, `prenom`, `date_naiss`, `lieu_naiss`, `adresse`, `nom_pere`, `tel_pere`, `nom_mere`, `tel_mere`, `nom_tuteur`, `tel_tuteur`, `email_tuteur`, `image_uri`, `sexe_id`, `created_at`, `updated_at`) VALUES
(272, 'NGAMBI', 'David', '2010-09-02', 'Pointe Noire', 'Mpaka', 'NGAMBI  MAMA', '064112300', 'xxx', '0', 'NGAMBI  MAMA', '064112300', 'ngambimama@gmail.com', 'aucune image', 1, '2023-10-03 07:33:45', '2023-10-03 07:33:45'),
(273, 'MBOUTOU  SILULU', 'Eloime  De  Magdala', '2011-12-19', 'Pointe Noire', 'Mpaka', 'xxx', '0', 'NSIKA  Arlette  Ghislaine', '057162628', 'NSIKA  Arlette  Ghislaine', '057162628', 'nsikaarlette@gmail.com', 'aucune image', 2, '2023-10-03 07:45:07', '2023-10-03 07:45:07'),
(274, 'MIALEBAMA', 'Paule  Sephora', '2011-12-03', 'Pointe Noire', 'Mpaka', 'MPIAYA  Friday', '066690529', 'NGOMA  Carnath', '066819451', 'MPIAYA  Friday', '066690529', 'mpiayafriday@gmail.com', 'aucune image', 2, '2023-10-03 07:51:10', '2023-10-03 07:51:10'),
(275, 'DIAFOUKA', 'Pedruche', '2010-04-28', 'Pointe Noire', 'Mpaka', 'DIAFOUKA  Pedruche', '064960488', 'NGOMA  Dorela', '068116934', 'DIAFOUKA  Pedruche', '064960488', 'diafoukapedruche@g', 'aucune image', 2, '2023-10-03 08:03:00', '2023-10-03 08:03:00'),
(276, 'NSOUMBOU', 'Béni  Francis', '2011-04-16', 'Brazzaville', 'Mpaka', 'NSOUMBOU Aude', '069333139', 'KOURISSA  Rockgepha', '041090959', 'NSOUMBOU Aude', '069333139', 'nsoumbouaude@gmail.com', 'aucune image', 1, '2023-10-05 08:24:10', '2023-10-05 08:24:10'),
(277, 'NIAKATIBILA', 'Emmanuelle', '2010-05-26', 'Pointe Noire', 'Mpaka marché', 'NIAKATIBILA', '057500941', 'MAFOUTA Jessica', '0', 'NIAKATIBILA', '057500941', 'niakatibila@gmail.com', 'aucune image', 2, '2023-10-05 09:29:34', '2023-10-05 09:29:34'),
(278, 'MABOUNGOU', 'Daniel  Ismael', '2009-10-16', 'Pointe Noire', 'Mpaka', 'MABOUNGOU  Droctové', '044497040', 'BOUKAKA  Malyse', '067208122', 'MABOUNGOU  Droctové', '044497040', 'maboungoudroctove@gmail.com', 'aucune image', 1, '2023-10-05 10:03:01', '2023-10-05 10:03:01'),
(279, 'BAY', 'Ahyreis', '2019-10-05', 'Brazzaville', 'Mpaka', 'BAY  Ahreis', '069514444', 'KOBA  Helga', '066236555', 'BAY  Ahreis', '069514444', 'bayahreis@gmail.com', 'aucune image', 1, '2023-10-05 10:27:23', '2023-11-06 08:17:07'),
(280, 'MBHALAT', 'Divin  Merveil', '2008-01-25', 'Pointe Noire', 'Mpaka', 'BABINGUI  Natacha', '068563086', 'xxx', '0', 'BABINGUI  Natacha', '068563086', 'babinguinatacha@gmail.com', 'aucune image', 1, '2023-10-05 10:35:08', '2023-10-05 10:35:08'),
(281, 'NDALA', 'Tressy  Don  Merveil', '2011-03-09', 'Pointe Noire', 'Mpaka', 'NDALA  Firma', '055703092', 'BOUKAKA  Bertille', '055251419', 'NDALA  Firma', '055703092', 'ndalafirma@gmail.com', 'aucune image', 1, '2023-10-05 11:09:28', '2023-10-05 11:09:28'),
(282, 'NTOUNTA  MILANDOU', 'Plessy  Rayanne', '2009-09-12', 'Pointe Noire', 'Mpaka marché', 'NTOUNTA  MBEMBA  Sylvain', '066546320', 'MASSAMBA  Juneltie styven', '069294183', 'NTOUNTA  MBEMBA  Sylvain', '066546320', 'ntountasylvain@gmail.com', 'aucune image', 2, '2023-10-05 11:54:41', '2023-10-05 11:54:41'),
(283, 'TCHIMBAKALA', 'Rolcia  Merveille  Chimelia', '2008-07-30', 'Pointe Noire', 'Mpaka marché', 'TCHIMBAKALA  Roland   Rodrigue', '066263999', 'YANDE  Fatou', '066846253', 'TCHIMBAKALA  Roland   Rodrigue', '066263999', 'tchimbakalaroland@gmail.com', 'aucune image', 2, '2023-10-05 12:00:50', '2023-10-05 12:00:50'),
(284, 'MIAYILAMANA', 'Jacques  Marielle', '2006-05-26', 'Pointe Noire', 'Mpaka', 'MIAYILAMANA  Alphonse', '057290366', 'BIBILA  Florine  Laure', '055174310', 'MIAYILAMANA  Alphonse', '057290366', 'miayilamanaalphonse@gmail.com', 'aucune image', 2, '2023-10-05 12:29:06', '2023-10-05 12:29:06'),
(285, 'MABOUNGOU  NESTA', 'Ange  Gabriel', '2008-06-06', 'Pointe Noire', 'Mpaka', 'MABOUNGOU Droctové', '044497040', 'BOUKAKA   Marlyse', '067208122', 'MABOUNGOU Droctové', '044497040', 'mahoungoudroctove@gmail.com', 'aucune image', 1, '2023-10-05 12:37:06', '2023-10-05 12:37:06'),
(286, 'TCHISSAMBOU', 'Delphaeda  Rephine', '2009-06-30', 'Pointe Noire', 'Mpaka marché', 'xxx', '0', 'PAMBOU  Noa', '066654198', 'PAMBOU  Noa', '066654198', 'pambounoa@gmail.com', 'aucune image', 2, '2023-10-05 12:45:38', '2023-10-05 12:47:23'),
(287, 'NTONTOLO', 'Gloire  Emery', '2009-03-25', 'Pointe Noire', 'Mpaka  5 Chemins', 'xxx', '0', 'MALONGA  Chardelle', '067861695', 'MALONGA  Chardelle', '067861695', 'malongachardelle@gmail.com', 'aucune image', 1, '2023-10-06 12:45:04', '2023-10-06 12:45:04'),
(288, 'MANTSA  DOPATE', 'Dieugrace', '2008-03-20', 'Pointe Noire', 'Mpaka', 'MANTSA  Marcelain', '069685368', 'DOPATE  Gladyss', '068012120', 'MANTSA  Marcelain', '069685368', 'mantsamarcelain@gmail.com', 'aucune image', 1, '2023-10-09 12:34:17', '2023-10-09 12:34:17'),
(289, 'POMPA', 'Landry  Brelove', '2012-06-21', 'Pointe Noire', 'Mpaka 120', 'NSANA  Francky', '069595402', 'DIALOOUNDA  Davina', '068251370', 'NSANA  Francky', '069595402', 'nsanafrancky@gmail.com', 'aucune image', 1, '2023-10-09 12:49:44', '2023-10-09 12:49:44'),
(290, 'TSEKE', 'Deo Gracias Chanceley Manassé', '2011-03-07', 'Pointe Noire', 'Mpaka 120', 'NGOULOU  TSEKE Franck Eric', '057750823', 'BACKALA  Triphène', '056001312', 'NGOULOU  TSEKE Franck Eric', '057750823', 'ngouloufranck@gmail.com', 'aucune image', 1, '2023-10-09 13:10:46', '2023-10-09 13:10:46'),
(291, 'LOUBACKY', 'Exaucée  marlaine', '2009-04-23', 'Pointe Noire', 'Mpaka', 'LOUBACKY  Jean  Sylvain', '055402909', 'xxx', '0', 'LOUBACKY  Jean  Sylvain', '055402909', 'loubackyjean@gmail.com', 'aucune image', 2, '2023-10-09 13:19:33', '2023-10-09 13:19:33'),
(292, 'MBAMA', 'Justin  Dieuvie', '2008-06-08', 'Pointe Noire', 'Mpaka Marien  Ngouabi', 'MBAMA  Justin', '064686763', 'MALONGA  Pamela', '0', 'MBAMA  Justin', '064686763', 'mbamajustin@gmail.com', 'aucune image', 1, '2023-10-09 13:30:52', '2023-10-09 13:30:52'),
(293, 'MATA', 'Dieuveil   Profeland', '2009-11-20', 'Pointe Noire', 'Mpaka', 'xxx', '0', 'NGUIMBI  Ketty', '065523919', 'NGUIMBI  Ketty', '065523919', 'nguimbiketty@gmail.com', 'aucune image', 1, '2023-10-09 13:35:35', '2023-10-09 13:35:35'),
(294, 'KANI', 'Grace  Jade Jemima', '2010-04-27', 'Pointe Noire', 'Mpaka', 'KANI  Idricha', '055073895', 'KOUMBA  TSONGA  Prine Chanelle', '053929166', 'KANI  Idricha', '055073895', 'kaniidricha@gmail.com', 'aucune image', 2, '2023-10-09 13:58:42', '2023-10-09 13:58:42'),
(295, 'IPOUNA  MENGO', 'Louise De Kevinchie', '2010-05-12', 'Brazzaville', 'Mpaka marché', 'IPOUNA  MENGO  Kevin Gildas', '066353157', 'xxx', '0', 'IPOUNA  MENGO  Kevin Gildas', '066353157', 'ipounamengokevin@gmail.com', 'aucune image', 2, '2023-10-09 14:04:32', '2023-10-09 14:04:32'),
(296, 'NGOUNDOU', 'Venicia  Fox', '2008-05-09', 'Pointe Noire', 'Mpaka', 'xxx', '057205608', 'NGOUNDOU  juverline', '068848385', 'NGOUNDOU  juverline', '068848385', 'ngoundoujuverline@gmail', 'aucune image', 2, '2023-10-09 14:14:27', '2023-11-08 15:46:11'),
(297, 'MABIKA', 'Sephora', '2007-02-01', NULL, 'Mpaka', 'xxx', '0', 'MANGOFO  Rachelle', '065151911', 'MANGOFO  Rachalle', '065151911', 'mangoforachelle@gmail.com', 'aucune image', 2, '2023-10-09 14:24:00', '2023-10-09 14:24:00'),
(298, 'LOUBACKY', 'Djenie  Asnath', '2013-01-13', 'Pointe Noire', 'Mpaka', 'LOUBACKY  Jean  Sylvain', '055402909', 'xxx', '0', 'LOUBACKY  Jean  Sylvain', '055402909', NULL, 'aucune image', 2, '2023-10-09 14:38:07', '2023-10-09 14:38:07'),
(299, 'LOUBACKY', 'Benie  Cecilia', '2011-12-10', 'Pointe Noire', 'Mpaka', 'LOUBACKY  Jean  Sylvain', '055402909', 'xxx', '0', 'LOUBACKY  Jean  Sylvain', '055402909', NULL, 'aucune image', 2, '2023-10-09 14:47:52', '2023-10-09 14:47:52'),
(300, 'MASSAMBA', 'Nancy  Samarange', '2010-04-23', 'Pointe Noire', 'Mpaka', 'MASSAMBA  Davy', '065758919', 'PAMBOU  Claudia', '055465012', 'MASSAMBA  Davy', '065758919', 'massambadavy@gmail.com', 'aucune image', 1, '2023-10-09 14:56:11', '2023-10-09 14:56:11'),
(301, 'MALONGA', 'Durche  Darluche', '2011-06-09', 'Pointe Noire', 'Mpaka Marien  Ngouabi', 'MALONGA  Guch', '064686763', 'xxx', '0', 'MALONGA  Guch', '064686763', 'malongaguch@gmail.com', 'aucune image', 1, '2023-10-09 15:01:46', '2023-10-09 15:01:46'),
(302, 'KOUPITA', 'Lydie Ghislaine', '2011-10-16', 'Pointe Noire', 'Mpaka 120', 'KOURITA Antoine', '0', 'KATOUDI Brigitte Aline', '065935046', 'KATOUDI Brigitte Aline', '065935046', 'katoudibrigitte@mail.com', 'aucune image', 2, '2023-10-10 08:09:15', '2023-10-10 08:09:15'),
(303, 'FROY KOUMALA', 'Farley', '2012-05-20', 'Pointe Noire', 'Mpaka marché', 'BIBILA', '068774277', 'MBOUKI Myria', '066683506', 'MBOUKI Myria', '066683506', 'mboukimyria@gmail.com', 'aucune image', 1, '2023-10-10 08:13:32', '2023-10-10 08:13:32'),
(304, 'TSOLANI  BANTSIMBA', 'Paulnicia', '2009-09-30', 'Brazzaville', 'Mpaka 120', 'TSOLANI  Paul', '0', 'NKEA  Lucie', '066685535', 'TSOLANI  Paul', '066685535', 'tsolanipaul@gmail.com', 'aucune image', 2, '2023-10-11 12:11:36', '2023-10-11 12:44:58'),
(305, 'KIFALA', 'Andrech  Dalmich', '2009-03-27', 'Pointe Noire', 'Mpaka', 'KIFALA  André', '069442463', 'KIFALA  Danielle', '053420934', 'KIFALA  André', '069442463', 'kifalaandre@gmail.com', 'aucune image', 1, '2023-10-11 12:31:11', '2023-10-11 12:31:11'),
(306, 'MAVOUNGOU   BATOUMENT', 'Chris  Fadriche', '2011-07-04', 'Pointe Noire', 'Mpaka', 'MAVOUNGOU  Justice', '065632976', 'MASSIVIE  Idrine', '066949544', 'MAVOUNGOU  Justice', '065632976', 'mavoungoujustice@gmail.com', 'aucune image', 1, '2023-10-11 12:52:16', '2023-10-11 12:52:16'),
(307, 'THIMDILA', 'Valriche', '2007-02-08', 'Pointe Noire', 'Mpaka 120', 'THINDILA  Valda', '067820849', 'KOKOLO  Ardelle', '050783462', 'THINDILA  Valda', '067820849', 'thindilavalva@gmail.com', 'aucune image', 2, '2023-10-11 13:26:17', '2023-10-11 13:26:17'),
(308, 'NDEWA', 'Ferlyche  Belgis', '2005-05-25', 'Pointe Noire', 'Mpaka', 'NDEWA  Regis', '064470170', 'MILANDOU  Emmanuelle', '067568061', 'NDEWA  Regis', '064470170', 'ndewaregis@gmail.com', 'aucune image', 2, '2023-10-11 13:52:05', '2023-10-11 13:52:05'),
(309, 'TSOLANI  BANZOUZI', 'Paulcy', '2009-09-30', 'Brazzaville', 'Mpaka 120', 'TSOLANI  Paul', '0', 'NKEA  Lucie', '066685535', 'TSOLANI  Paul', '066685535', NULL, 'aucune image', 1, '2023-10-12 08:30:44', '2023-10-12 08:30:44'),
(310, 'LANGA', 'Hervina', '2009-02-07', 'Brazzaville', 'Mpaka', 'LANGA  Hermeland', '065058272', 'BIMANGOU  Hémérance', '068919534', 'LANGA  Hermeland', '065058272', 'langahermeland@gmail.com', 'aucune image', 2, '2023-10-12 08:51:45', '2023-10-12 08:51:45'),
(311, 'OKEMBA', 'André  Duval', '2009-09-22', 'Brazzaville', 'Mpaka', 'OKEMBA  Dally', '044317570', 'POBA  LOUEYI  Pamela', '068434044', 'OKEMBA  Dally', '044317570', 'okembadally@gmail.com', 'aucune image', 1, '2023-10-14 08:27:58', '2023-10-14 08:27:58'),
(312, 'MAOUNGOU', 'Harnovy  Wesley', '2012-12-12', 'Pointe Noire', 'Mpaka', 'MAOUNGOU Eude  Harnot', '068203334', 'NKAYA  Nadège', '055429884', 'MAOUNGOU Eude  Harnot', '068203334', 'maoungoueude@gmail.com', 'aucune image', 1, '2023-10-16 11:11:05', '2023-10-16 11:11:05'),
(313, 'MAKOUMBOU', 'Marcel', '2012-03-03', 'Pointe Noire', 'Mpaka', 'xx', '00', 'KOUTOTOUKILA  Josline  Grace', '064582946', 'KOUTOTOUKILA  Josline  Grace', '064582946', 'koutotoukilajosline@gmail.com', 'aucune image', 2, '2023-10-18 11:07:23', '2023-10-18 11:07:23'),
(314, 'KOUHOUNANA', 'Chris  Delor', '2011-05-09', 'Pointe Noire', 'Mpaka', 'xxx', '00', 'KOUTOTOUKILA  Josline  Grace', '064582946', 'KOUTOTOUKILA  Josline  Grace', '064582946', NULL, 'aucune image', 1, '2023-10-18 11:12:20', '2023-10-18 11:12:20'),
(315, 'YEMBI  YEMBI', 'Rosney  Francklin', '2010-07-05', 'Pointe Noire', 'Mpaka', 'YEMBI  YEMBI  Jean  Rufin', '050977286', 'TCHITEMBO  NZINZI  Valentine', '055240186', 'YEMBI  YEMBI  Jean  Rufin', '050977286', 'yembijean@gmail', 'aucune image', 1, '2023-10-18 11:19:27', '2023-10-18 11:19:27'),
(316, 'DIABOUNA', 'Reine  Brisnavie', '2008-11-04', 'Pointe Noire', 'Mpaka', 'DIABOUNA  Brice', '057246475', 'BOUKAKA  Gladyys', '057030793', 'DIABOUNA  Brice', '057246475', 'diabounabrice@gmail.com', 'aucune image', 2, '2023-10-18 11:24:53', '2023-10-18 11:24:53'),
(317, 'NGANGA', 'Ambre  Elohime', '2009-05-30', 'Pointe Noire', 'Kinkala', 'NGANGA  Alexia', '050989920', 'MOUNDELE  Lydie', '040452880', 'NGANGA  Alexia', '050989920', 'ngangaalexia@gmail', 'aucune image', 2, '2023-10-24 10:49:26', '2023-10-24 10:49:26'),
(318, 'IKOMBI', 'Grace', '2010-04-21', 'Pointe Noire', 'Mpaka marché', 'BOUYOU  Odrique', '068803615', 'xxx', '00', 'BOUYOU  Odrique', '068803615', 'bouyouodrique@gmail', 'aucune image', 2, '2023-10-24 10:56:44', '2023-10-24 10:56:44'),
(319, 'TOGANOU', 'Loven  Osias', '2010-05-14', 'Pointe Noire', 'Mpaka km8', 'TOGANOU  Chavel', '064249518', 'MASSAMBA  Isis', '065969797', 'TOGANOU  Chavel', '064249518', 'toganouchavel@gmail', 'aucune image', 1, '2023-10-27 14:26:04', '2023-10-27 14:26:04'),
(320, 'MFOUTOU  BATANGOUNA', 'Onesime  Ferdely', '2008-11-11', 'Pointe Noire', 'Mpaka km8', 'xxx', '00', 'BATANGOUNA  Lydia', '065771493', 'BATANGOUNA  Lydia', '065771493', 'batangounalydia@gmail', 'aucune image', 1, '2023-10-27 14:32:37', '2023-10-27 14:32:37'),
(321, 'MAPAKOU', 'Jessie  Urbaine', '2010-05-03', 'Pointe Noire', 'Mpaka', 'MAPAKOU  Grace', '050040974', 'xxx', '00', 'MAPAKOU  Grace', '050040974', NULL, 'aucune image', 2, '2023-10-30 08:20:12', '2023-10-30 08:20:12'),
(322, 'MAOUNGOU', 'Grace  Chancelvie', '2010-10-03', 'NKAYI', 'Mpaka marché', 'MAOUNGOU  Eude  Harnot', '068203334', 'NKAYA  Nadège', '055429884', 'MAOUNGOU  Eude  Harnot', '068203334', 'maoungoueude@gmail', 'aucune image', 2, '2023-11-02 12:45:54', '2023-11-02 12:45:54'),
(323, 'DEMBE', 'Amoz  Antoinette  Belvina', '2006-06-29', 'Pointe Noire', 'Mpaka', 'DEMBE  Amédé', '055330397', 'MIENASSA  NZAMBI  Urmelle', '055454523', 'DEMBE  Amédé', '055330397', 'dembeamede@gmail', 'aucune image', 2, '2023-11-02 12:53:40', '2023-11-02 12:53:40'),
(324, 'DEMBE', 'Amog  Laurentine  Urdell', '2010-07-09', 'Pointe Noire', 'Mpaka marché', 'DEMBE  Amédé', '055330397', 'MIENASSA  NZAMBI  Urmelle', '055454523', 'DEMBE  Amédé', '055330397', NULL, 'aucune image', 2, '2023-11-02 13:00:32', '2023-11-02 13:00:32'),
(325, 'BIBILA', 'Jeansly Wilton', '2012-08-02', 'Pointe Noire', 'Mpaka marché', 'BIBILA  Jeancil  Wilton', '068774277', 'MBOUKI  Myria', '066683506', 'BIBILA  Jeancil  Wilton', '068774277', 'jeansilwilton@gmail', 'aucune image', 2, '2023-11-09 07:00:56', '2023-11-09 07:00:56'),
(326, 'NIMI MOUANOU', 'Amour', '2008-12-06', 'Mossendjo', 'Vindoulou', 'NIMI Blanchard B', '055808347', 'NIMI TSOUMOU Ferte', '069742225', 'NIMI Blanchard B', '055808347', 'nimiblanchardB@gmail', 'aucune image', 1, '2024-01-13 13:11:30', '2024-01-13 13:11:30'),
(327, 'BOUBANGA', 'Monica Andresse', '2011-09-16', 'Pointe-Noire', 'Nkouikou', 'BOUBANGA Henri', '068992363', 'BOUBANGA Henri', '068992363', 'BOUBANGA Henri', '068992363', NULL, 'aucune image', 2, '2024-01-13 13:57:19', '2024-01-13 13:57:19'),
(328, 'BOUBANGA', 'Marcel N.', '2013-09-15', 'Pointe-Noire', 'NKOUIKOU', 'BOUBANGA Henri', '068992363', 'BOUBANGA Henri', '069730122', 'BOUBANGA Henri', '068992363', NULL, 'aucune image', 1, '2024-01-13 14:02:05', '2024-01-13 14:02:05'),
(329, 'YACOUBOU', 'Nawwar', '2009-05-20', 'Porto novo', 'Vindoulou', 'YACOUBOU', '066525951', 'YACOUBOU', '066525951', 'YACOUBOU', '066525951', NULL, 'aucune image', 2, '2024-01-13 14:06:37', '2024-01-13 14:06:37'),
(330, 'YACOUBOU', 'El-Moutessir', '2011-06-17', 'Porto novo', 'Vindoulou', 'YACOUBOU', '066525951', 'YACOUBOU', '066525951', 'YACOUBOU', '066525951', NULL, 'aucune image', 1, '2024-01-13 14:10:33', '2024-01-13 14:10:33'),
(331, 'TATHY MABIALA', 'Phoncia', '2008-12-12', 'BRAZZAVILLE', 'VINDOULOU', 'MOUSSOUAMI', '055590678', 'Mme Moussouami', '066000399', 'MOUSSOUAMI', '055590678', NULL, 'aucune image', 2, '2024-01-13 14:15:36', '2024-01-13 14:15:36'),
(332, 'MAVOUNGOU', 'Daniel G.', '2005-03-27', 'Pointe-Noire', 'Mont Kamba', 'MAVOUNGOU', '065910116', 'MAVOUNGOU', '065910116', 'MAVOUNGOU', '065910116', NULL, 'aucune image', 1, '2024-01-13 14:20:51', '2024-01-13 14:20:51'),
(333, 'MABIALA MBOUNGOU', 'Divin Précieux', '2013-04-17', 'BRAZZAVILLE', 'VINDOULOU', 'Pandzou Babela', '040364061', 'Pandzou Babela', '040364061', 'Pandzou Babela', '040364061', NULL, 'aucune image', 1, '2024-01-13 14:27:14', '2024-01-13 14:27:14'),
(334, 'BANVI MOUHOUEMBE', 'Clème Harcy', '2008-06-06', 'Pointe-Noire', 'VINDOULOU', 'BANVI Jean Pierre', '064386417', 'BANVI Jean Pierre', '064386417', 'BANVI Jean Pierre', '064386417', NULL, 'aucune image', 1, '2024-01-13 14:32:56', '2024-01-13 14:32:56'),
(335, 'MADOUKOU', 'Jonathan', '2009-08-19', 'Pointe-Noire', 'VINDOULOU', 'MADOUKOU', '068171489', 'MADOUKOU', '068171489', 'MADOUKOU', '068171489', NULL, 'aucune image', 1, '2024-01-13 14:36:19', '2024-01-13 14:36:19'),
(336, 'MADOUKOU', 'Vangsy  Jude Olsen', '2005-12-24', 'BRAZZAVILLE', 'VINDOULOU', 'MADOUKOU GUY', '068171489', 'MADOUKOU GUY', '068171489', 'MADOUKOU GUY', '068171489', NULL, 'aucune image', 1, '2024-01-13 14:47:26', '2024-01-13 14:47:26'),
(337, 'NGANDZIAMI', 'Danielle', '2010-04-20', 'Pointe-Noire', 'VINDOULOU', 'NGANDZIAMI', '050751078', 'NGANDZIAMI', '050751078', 'NGANDZIAMI', '050751078', NULL, 'aucune image', 2, '2024-01-13 15:01:28', '2024-01-13 15:01:28'),
(338, 'MBELE', 'Christ Ginold', '2012-01-02', 'Pointe-Noire', 'VINDOULOU', 'MBELE Christiane', '066684905', 'MBELE Christiane', '066684905', 'MBELE Christiane', '066684905', NULL, 'aucune image', 1, '2024-01-13 15:28:44', '2024-01-13 15:28:44'),
(339, 'BOUEKASSA', 'Antonny Sosten', '2011-11-11', 'BRAZZAVILLE', 'VINDOULOU', 'NDALA Nuffel', '068594142', 'NDALA Nuffel', '055901948', 'NDALA Nuffel', '068594142', NULL, 'aucune image', 1, '2024-01-13 15:35:15', '2024-01-13 15:35:15'),
(340, 'GOLION AMBONG', 'Boris P.', '2009-04-13', 'Pointe-Noire', 'VINDOULOU', 'GOLION AMBONG', '069342404', 'GOLION AMBONG', '057205138', 'GOLION AMBONG', '057205138', NULL, 'aucune image', 1, '2024-01-13 15:48:24', '2024-01-13 15:48:24'),
(341, 'GOLION AMBONG', 'Dove  A.', '2012-08-08', 'Pointe-Noire', 'VINDOULOU', 'GOLION AMBONG', '069342404', 'GOLION AMBONG', '069342404', 'GOLION AMBONG', '069342404', NULL, 'aucune image', 2, '2024-01-13 15:54:01', '2024-01-13 15:54:01'),
(342, 'MIKISSI', 'Bryann', '2010-01-12', 'Pointe-Noire', 'VINDOULOU', 'MIKISSI Brice', '066513398', 'MIKISSI', '044396118', 'MIKISSI', '066513398', NULL, 'aucune image', 1, '2024-01-13 16:19:25', '2024-01-13 16:19:25'),
(343, 'MAYOUMA MBOUMBOU', 'Joifeelie-Trifene', '2004-12-21', 'Pointe-Noire', 'VINDOULOU', 'MAYOUMA MBOUMBOU', '068660017', 'MAYOUMA MBOUMBOU', '055983751', 'MAYOUMA MBOUMBOU', '068660017', NULL, 'aucune image', 2, '2024-01-13 16:26:55', '2024-01-13 16:26:55'),
(344, 'MISSIE', 'Jireh Précieux', '2012-12-08', 'Pointe-Noire', 'VINDOULOU', 'MISSIE', '053289191', 'MISSIE', '055723095', 'MISSIE', '053289191', NULL, 'aucune image', 1, '2024-01-13 16:31:35', '2024-01-13 16:31:35'),
(345, 'MISSIE', 'Farège Junior R', '2005-11-11', 'Pointe-Noire', 'VINDOULOU', 'MISSIE', '053289191', 'MISSIE', '055723095', 'MISSIE', '055723095', NULL, 'aucune image', 1, '2024-01-13 16:35:57', '2024-01-13 16:35:57'),
(346, 'MBANGO', 'Marlyse Préfina', '2010-01-26', 'Pointe-Noire', 'VINDOULOU', 'MBANGO Anicet', '066562338', 'MBANGO', '055427541', 'MBANGO', '066562338', NULL, 'aucune image', 2, '2024-01-13 16:39:58', '2024-01-13 16:39:58'),
(347, 'MABIALA', 'Gloire Bénicia', '2009-11-11', 'Pointe-Noire', 'VINDOULOU', 'MABIALA', '066549240', 'MABIALA', '055339838', 'MABIALA', '066549240', NULL, 'aucune image', 2, '2024-01-13 17:19:40', '2024-01-13 17:19:40'),
(348, 'LITINGUI NDOMBE', 'Mignon', '2012-05-12', 'Pointe-Noire', 'VINDOULOU', 'litingui', '069336648', 'litingui', '069336648', 'Lingui', '069336648', NULL, 'aucune image', 1, '2024-01-13 17:37:21', '2024-01-13 17:37:21'),
(349, 'SAMBA', 'Victoire Clarissia', '2009-12-12', 'Pointe-Noire', 'VINDOULOU', 'SAMBA', '066839564', 'SAMBA', '066839564', 'SAMBA', '066839564', NULL, 'aucune image', 2, '2024-01-13 17:45:01', '2024-01-13 17:45:01'),
(350, 'NGOYILA', 'Junior Johis C.', '2008-07-16', 'Pointe-Noire', 'VINDOULOU', 'NGOYILA', '066905448', 'NGOYILA', '067790604', 'NGOYILA', '066905448', NULL, 'aucune image', 1, '2024-01-13 17:49:18', '2024-01-13 17:49:18'),
(351, 'AMBIERO AMPHA', 'Joyce A.', '2007-03-29', 'Pointe-Noire', 'VINDOULOU', 'AMBIERO', '069634091', 'AMBIERO', '069634091', 'AMBIERO', '069634091', NULL, 'aucune image', 2, '2024-01-13 17:53:13', '2024-01-13 17:53:13'),
(352, 'LELO', 'Mavina', '2008-08-30', 'Pointe-Noire', 'VINDOULOU', 'LELO Antoine', '068156422', 'LELO Antoine', '055505918', 'LELO Antoine', '068156422', NULL, 'aucune image', 2, '2024-01-13 17:56:44', '2024-01-13 17:56:44'),
(353, 'NGANIAMA', 'Bien Aimé J.', '2007-03-18', 'Pointe-Noire', 'VINDOULOU', 'NGANIAMA', '066748718', 'NGANIAMA', '066748718', 'NGANIAMA', '066748718', NULL, 'aucune image', 1, '2024-01-13 18:00:23', '2024-01-13 18:00:23'),
(354, 'BOUANGA', 'La Sagesse Hope', '2005-01-03', 'Pointe-Noire', 'VINDOULOU', 'BOUANGA Arnaud', '069145515', 'BOUANGA Arnaud', '066453715', 'BOUANGA Arnaud', '069145515', NULL, 'aucune image', 2, '2024-01-13 18:26:51', '2024-01-13 18:26:51'),
(355, 'MAKOSSO', 'Monica Precieux', '2008-09-27', 'Pointe-Noire', 'VINDOULOU', 'MAKOSSO Ange', '069200916', 'MAKOSSO Ange', '066053518', 'MAKOSSO Ange', '069200916', NULL, 'aucune image', 2, '2024-01-13 18:30:25', '2024-01-13 18:30:25'),
(356, 'MAVOUNGOU', 'Adele Bercia', '2009-12-11', 'Pointe-Noire', 'VINDOULOU', 'MAKOSSO Ange', '068973722', 'MAKOSSO Ange', '069278356', 'MAKOSSO Ange', '068973722', NULL, 'aucune image', 2, '2024-01-13 18:35:44', '2024-01-13 18:35:44'),
(357, 'ATSONO KAMBALI', 'Beni', '2008-12-11', 'Pointe-Noire', 'VINDOULOU', 'ATSONO', '066580851', 'ATSONO', '055515929', 'ATSONO', '066580891', NULL, 'aucune image', 1, '2024-01-13 18:40:47', '2024-01-13 18:40:47'),
(358, 'EYANBA APEDI', 'Amour', '2007-05-16', 'Pointe-Noire', 'VINDOULOU', 'EYAMBA Narcisse', '066353496', 'EYAMBA', '066808130', 'EYAMBA Narcisse', '066353496', NULL, 'aucune image', 1, '2024-01-13 18:47:32', '2024-01-13 18:47:32'),
(359, 'MBERI', 'Prince Richard', '2008-10-25', 'Pointe-Noire', 'VINDOULOU', 'ALELI Charlène', '068077722', 'ALELI Charlène', '068077722', 'ALELI Charlène', '068077722', NULL, 'aucune image', 1, '2024-01-13 18:52:02', '2024-01-13 18:52:02'),
(360, 'IBOUANGA', 'Owen Gloire', '2007-06-23', 'Pointe-Noire', 'VINDOULOU', 'IBOUANGA Igor', '066278736', 'IBOUANGA Igor', '053666586', 'IBOUANGA Igor', '066278736', NULL, 'aucune image', 1, '2024-01-13 18:56:06', '2024-01-13 18:56:06'),
(361, 'TSATI', 'Joie Comblée', '2008-12-11', 'Pointe-Noire', 'VINDOULOU', 'TSATY Jacques', '069022025', 'TSATY Jacques', '040166072', 'TSATY Jacques', '069022085', NULL, 'aucune image', 1, '2024-01-13 18:59:55', '2024-01-13 18:59:55'),
(362, 'IBOUANGA', 'Emilia Christie', '2008-12-11', 'Pointe-Noire', 'VINDOULOU', 'IBOUANGA', '066821658', 'IBOUANGA', '066821658', 'IBOUANGA', '066821658', NULL, 'aucune image', 2, '2024-01-13 19:03:47', '2024-01-13 19:03:47'),
(363, 'FOUNGA', 'Gloire Thède Dorcas', '2008-11-30', 'Pointe-Noire', 'VINDOULOU', 'Founga Jerimoth', '050203022', 'Founga Jerimoth', '069743546', 'Founga Jerimoth', '050203022', NULL, 'aucune image', 2, '2024-01-13 19:09:18', '2024-01-13 19:09:18'),
(364, 'CYR TCHIKAYA', 'Joelis', '2008-05-03', 'Pointe-Noire', 'VINDOULOU', 'TCHIKAYA', '055811593', 'TCHIKAYA', '055811593', 'TCHIKAYA', '055811593', NULL, 'aucune image', 1, '2024-01-13 19:13:19', '2024-01-13 19:13:19'),
(365, 'KOUEMISS EMEKA', 'Pedro M.', '2011-11-20', 'Pointe-Noire', 'VINDOULOU', 'KOUEMISS', '064120578', 'KOUEMISS', '040641388', 'KOUEMISS', '064120578', NULL, 'aucune image', 1, '2024-01-14 14:47:00', '2024-01-14 14:47:00'),
(366, 'ONINA MANCY LOUBA', 'Win', '2011-12-27', 'BRAZZAVILLE', 'VINDOULOU', 'ONINA', '068883855', 'ONINA', '055519102', 'ONINA', '068883855', NULL, 'aucune image', 1, '2024-01-14 14:51:08', '2024-01-14 14:51:08'),
(367, 'OBOUNGA', 'Jessica Mimie', '2009-11-23', 'Pointe-Noire', 'VINDOULOU', 'NGALESSAMI', '055811593', 'NGALESSAMI', '055811593', 'NGALESSAMI', '055811593', NULL, 'aucune image', 2, '2024-01-14 14:55:42', '2024-01-14 14:55:42'),
(368, 'CYR  TCHIKAYA NGATSE', 'Alph', '2012-07-11', 'Pointe-Noire', 'VINDOULOU', 'NGALESSAMI', '055811593', 'NGALESSAMI', '055811593', 'NGALESSAMI', '055811593', NULL, 'aucune image', 1, '2024-01-14 14:59:12', '2024-01-14 14:59:12'),
(369, 'OBOUNGA', 'Nedule Francis', '2011-06-23', 'Pointe-Noire', 'VINDOULOU', 'mimi', '055811593', 'MIMI', '055811593', 'MIMI', '055811593', NULL, 'aucune image', 1, '2024-01-14 15:02:50', '2024-01-14 15:02:50'),
(370, 'LOEMBA', 'Eloeïth  Dalin', '2012-03-29', 'Pointe-Noire', 'VINDOULOU', 'LOEMBA Hortense', '055338411', 'LOEMBA Hortense', '055338411', 'LOEMBA Hortense', '055338411', NULL, 'aucune image', 2, '2024-01-14 15:07:03', '2024-01-14 15:07:03'),
(371, 'AMEBI', 'Rose', '2011-04-03', 'Pointe-Noire', 'VINDOULOU', 'AMEBI CHRISTIAN', '068310707', 'AMEBI CHRISTIAN', '065609950', 'AMEBI CHRISTIAN', '068310707', NULL, 'aucune image', 2, '2024-01-14 15:13:44', '2024-01-14 15:13:44'),
(372, 'KILOKO', 'Dorcas Philomene', '2011-04-24', 'Pointe-Noire', 'VINDOULOU', 'KILOKO IDRIS', '055906319', 'KILOKO IDRIS', '055906319', 'KILOKO IDRIS', '055906319', NULL, 'aucune image', 2, '2024-01-14 15:17:02', '2024-01-14 15:17:02'),
(373, 'MBONZI', 'Jonathan', '2010-05-10', 'BRAZZAVILLE', 'VINDOULOU', 'MBONZI DESTAIN', '069271320', 'MBONZI DESTAIN', '069271320', 'MBONZI DESTAIN', '069271320', NULL, 'aucune image', 1, '2024-01-14 15:20:07', '2024-01-14 15:20:07'),
(374, 'ONKA', 'Amos Manasse Gogel', '2010-03-12', 'Pointe-Noire', 'VINDOULOU', 'NGAKOMONO GOGEL', '069829221', 'NGAKOMONO GOGEL', '069829221', 'NGAKOMONO GOGEL', '069829221', NULL, 'aucune image', 1, '2024-01-14 15:24:46', '2024-01-14 15:24:46'),
(375, 'MATSONI', 'Martha', '2011-12-18', 'Pointe-Noire', 'VINDOULOU', 'MATSONI JEAN', '066742618', 'MATSONI JEAN', '066742618', 'MATSONI JEAN', '066742618', NULL, 'aucune image', 2, '2024-01-14 15:28:51', '2024-01-14 15:28:51'),
(376, 'KIMBEMBE', 'Esther', '2011-11-19', 'Pointe-Noire', 'VINDOULOU', 'KIMBMBE JUDACE', '066562675', 'KIMBMBE JUDACE', '066562675', 'KIMBMBE JUDACE', '066562675', NULL, 'aucune image', 2, '2024-01-14 15:32:07', '2024-01-14 15:32:07'),
(377, 'KIMBEMBE KINDOU', 'Exaucée', '2013-03-18', 'Pointe-Noire', 'VINDOULOU', 'KIMBEMBE', '066562665', 'KIMBEMBE', '066562665', 'KIMBEMBE', '066562665', NULL, 'aucune image', 2, '2024-01-14 15:35:53', '2024-01-14 15:35:53'),
(378, 'NGANGA BOUTANDOU', 'Rojnie', '2011-04-27', 'Pointe-Noire', 'VINDOULOU', 'NGANGA BEN', '066984498', 'NGANGA BEN', '066984498', 'NGANGA BEN', '066984498', NULL, 'aucune image', 2, '2024-01-14 15:39:56', '2024-01-14 15:39:56'),
(379, 'NGUIE', 'Dalph', '2011-04-29', 'Pointe-Noire', 'VINDOULOU', 'NGUIE CRHIST', '066747579', 'NGUIE CRHIST', '066747579', 'NGUIE CRHIST', '066747579', NULL, 'aucune image', 1, '2024-01-14 15:43:19', '2024-01-14 15:43:19'),
(380, 'BOUANGA KOUANGA', 'Tésor  T.', '2011-10-09', 'Pointe-Noire', 'VINDOULOU', 'BOUANGA', '055624046', 'BOUANGA', '064017665', 'BOUANGA', '055624046', NULL, 'aucune image', 1, '2024-01-14 15:47:24', '2024-01-14 15:47:24'),
(381, 'LOCKO', 'Theresa Lauriana', '2011-03-22', 'Pointe-Noire', 'VINDOULOU', 'MOUNGALA GUY', '066252531', 'MOUNGALA GUY', '066252531', 'MOUNGALA GUY', '066252531', NULL, 'aucune image', 2, '2024-01-14 15:51:06', '2024-01-14 15:51:06'),
(382, 'MISSAMOU', 'Geoffray  Bonnheur', '2011-08-21', 'Pointe-Noire', 'VINDOULOU', 'MISSAMOU', '055141658', 'MISSAMOU', '055141658', 'MISSAMOU', '055141658', NULL, 'aucune image', 1, '2024-01-14 15:54:29', '2024-01-14 15:54:29'),
(383, 'ADOU', 'Urbain Jacques J.', '2012-02-11', 'Pointe-Noire', 'VINDOULOU', 'ADOU', '069084301', 'ADOU', '069084301', 'ADOU', '069084301', NULL, 'aucune image', 1, '2024-01-14 15:58:57', '2024-01-14 15:58:57'),
(384, 'MBOUKA', 'Jonathan', '2012-02-11', 'Pointe-Noire', 'VINDOULOU', 'MBOUKA', '065671615', 'MBOUKA', '065671615', 'MBOUKA', '065671615', NULL, 'aucune image', 1, '2024-01-14 16:01:59', '2024-01-14 16:01:59'),
(385, 'MARTHY', 'Eureka', '2011-03-18', 'Pointe-Noire', 'VINDOULOU', 'MARTHY', '068168452', 'MARTHY', '068168452', 'MARTHY', '068168452', NULL, 'aucune image', 2, '2024-01-14 16:05:22', '2024-01-14 16:05:22'),
(386, 'NKAYA  FOUTI', 'Christany', '2011-05-01', 'BRAZZAVILLE', 'VINDOULOU', 'NKAYA DIEUDONNE', '064002522', 'NKAYA DIEUDONNE', '068742384', 'NKAYA DIEUDONNE', '064002522', NULL, 'aucune image', 1, '2024-01-14 16:08:57', '2024-01-14 16:08:57'),
(387, 'NIMI TSATY', 'Prince  E.', '2011-04-11', 'Pointe-Noire', 'VINDOULOU', 'NIMI ARISTIDE', '065805572', 'NIMI ARISTIDE', '064002522', 'NIMI ARISTIDE', '064002522', NULL, 'aucune image', 1, '2024-01-14 16:20:02', '2024-01-14 16:20:02'),
(388, 'NGUILA LEMBE', 'Precieuse', '2011-02-21', 'Pointe-Noire', 'VINDOULOU', 'NGUILA', '069539147', 'NGUILA', '069539147', 'NGUILA', '069539147', NULL, 'aucune image', 2, '2024-01-14 16:24:25', '2024-01-14 16:24:25'),
(389, 'KETTY  SONI', 'Claude', '2011-02-11', 'Pointe-Noire', 'VINDOULOU', 'KETTY', '067141841', 'KETTY', '067141841', 'KETTY', '067141841', NULL, 'aucune image', 1, '2024-01-14 16:28:37', '2024-01-14 16:28:37'),
(390, 'NGOKA WANDE', 'Marie  P.', '2010-11-11', NULL, 'VINDOULOU', 'NGOKA', '0', 'V', '0', 'V', '0', NULL, 'aucune image', 1, '2024-01-14 16:39:45', '2024-01-14 16:39:45'),
(391, 'MALONDA', 'Defi Laurencia', '2010-03-10', 'Pointe-Noire', 'VINDOULOU', 'MALONGA CHRISTIAN', '068978722', 'MALONGA CHRISTIAN', '068978722', 'MALONGA CHRISTIAN', '068978722', NULL, 'aucune image', 2, '2024-01-14 16:43:34', '2024-01-14 16:43:34'),
(392, 'OMBOMI', 'Louise De-Louisa', '2011-11-11', 'V', 'VINDOULOU', 'OMBOMI', '069383719', 'OMBOMI', '069383719', 'OMBOMI', '069383719', NULL, 'aucune image', 2, '2024-01-14 16:59:54', '2024-01-14 16:59:54'),
(393, 'KIBAMBA  MAKAYA', 'Lior', '2010-05-30', 'BRAZZAVILLE', 'VINDOULOU', 'KIBAMBA', '057478703', 'KIBAMBA', '053983031', 'KIBAMBA', '057478703', NULL, 'aucune image', 2, '2024-01-14 17:04:42', '2024-01-14 17:04:42'),
(394, 'BAKAMBIDILA MBALOULA', 'Prefina', '2010-04-17', 'Pointe-Noire', 'VINDOULOU', 'BATELA', '069456295', 'BATELA', '069456295', 'BATELA', '069456295', NULL, 'aucune image', 2, '2024-01-14 17:07:57', '2024-01-14 17:07:57'),
(395, 'M\'FOUNA', 'Christian', '2010-02-02', 'Pointe-Noire', 'VINDOULOU', 'M\'FOUNA', '066643645', 'M\'FOUNA', '066643645', 'M\'FOUNA', '066643645', NULL, 'aucune image', 1, '2024-01-14 17:11:20', '2024-01-14 17:11:20'),
(396, 'KOMBO', 'Wisdom  Victoire', '2011-09-10', 'Pointe-Noire', 'VINDOULOU', 'KOMBO  Arnaud', '066386714', 'KOMBO  Arnaud', '066386714', 'KOMBO  Arnaud', '066386714', NULL, 'aucune image', 2, '2024-01-14 17:16:12', '2024-01-14 17:16:12'),
(397, 'TSAPI DYMINAT', 'George  E.', '2010-05-21', 'Pointe-Noire', 'VINDOULOU', 'TSAPI', '055538027', 'TSAPI', '066383340', 'TSAPI', '066383340', NULL, 'aucune image', 1, '2024-01-14 17:20:00', '2024-01-14 17:20:00'),
(398, 'PONABIA', 'Nicole  Romance', '2010-04-01', 'Pointe-Noire', 'VINDOULOU', 'MAKAYA PLACIDE', '053718989', 'MAKAYA PLACIDE', '053718989', 'MAKAYA PLACIDE', '053718989', NULL, 'aucune image', 2, '2024-01-14 17:24:51', '2024-01-14 17:24:51'),
(399, 'PEMBELE', 'Anges  Raphaëlle', '2011-02-05', 'Pointe-Noire', 'Qtier Culotte', 'PEMBELE Rapaël', '066711328', 'KILONDA Judith', '066711328', 'PEMBELE Rapaël', '066711328', NULL, 'aucune image', 2, '2024-01-14 17:29:30', '2024-01-14 17:29:30'),
(400, 'DABIRA', 'Ruth Rachelle', '2010-04-19', 'BRAZZAVILLE', 'VINDOULOU', 'DABIRA', '069604615', 'DABIRA', '066009760', 'DABIRA', '066009760', NULL, 'aucune image', 2, '2024-01-14 17:33:13', '2024-01-14 17:33:13'),
(401, 'ATSOUTSOULA', 'Zoé  AnaÏs', '2010-03-19', 'BRAZZAVILLE', 'VINDOULOU', 'ATSOUTSOULA', '069604615', 'ATSOUTSOULA', '066009760', 'ATSOUTSOULA', '069604615', NULL, 'aucune image', 2, '2024-01-14 17:37:07', '2024-01-14 17:37:07'),
(402, 'BAMBAGHA', 'Juste Nobel', '2010-05-02', 'Pointe-Noire', 'VINDOULOU', 'BAMBAGHA', '069949493', 'BAMBAGHA', '069949493', 'BAMBAGHA', '069949493', NULL, 'aucune image', 1, '2024-01-14 17:40:49', '2024-01-14 17:40:49'),
(403, 'KIZIBOUKOU', 'Destinée Céleste', '2011-05-01', 'Pointe-Noire', 'VINDOULOU', 'KIZIBOUKOU DESTIN', '069565437', 'LOUSSIEMO NELLA', '044106303', 'KIZIBOUKOU DESTIN', '069565437', NULL, 'aucune image', 2, '2024-01-14 17:44:42', '2024-01-14 17:44:42'),
(404, 'POATY', 'Nel Messy', '2010-07-11', 'Pointe-Noire', 'VINDOULOU', 'POATY  ANICET', '065239197', 'POATY', '065239197', 'POATY  ANICET', '065239197', NULL, 'aucune image', 1, '2024-01-14 17:49:08', '2024-01-14 17:49:08'),
(405, 'EWAKE', 'Euge  Péa', '2008-09-30', 'Pointe-Noire', 'VINDOULOU', 'EWAKE', '066026251', 'EWAKE', '066026251', 'EWAKE', '066026251', NULL, 'aucune image', 2, '2024-01-14 17:53:22', '2024-01-14 17:53:22'),
(406, 'EWAKE  KOUMOU', 'Harry', '2010-09-30', 'Pointe-Noire', 'VINDOULOU', 'EWAKE BRIEL', '066026251', 'EWAKE BRIEL', '066026251', 'EWAKE BRIEL', '066026251', NULL, 'aucune image', 1, '2024-01-14 17:56:26', '2024-01-14 17:56:26'),
(407, 'MATSONI  BADI', 'Amour', '2010-11-14', 'Pointe-Noire', 'VINDOULOU', 'MATSONI JEAN', '066742618', 'MATSONI JEAN', '066742618', 'MATSONI JEAN', '066742618', NULL, 'aucune image', 1, '2024-01-14 17:59:42', '2024-01-14 17:59:42'),
(408, 'MITORY', 'Aïcha', '2010-11-11', 'Pointe-Noire', 'VINDOULOU', 'MITORY', '069633878', 'MITORY', '050512602', 'MITORY', '069633878', NULL, 'aucune image', 2, '2024-01-14 18:04:25', '2024-01-14 18:04:25'),
(409, 'BAKALA NDZABA', 'Emmanuel', '2010-10-30', 'Pointe-Noire', 'VINDOULOU', 'NGOUONIMBA', '069561695', 'NGOUONIMBA', '069561695', 'NGOUONIMBA', '069561695', NULL, 'aucune image', 1, '2024-01-14 18:07:45', '2024-01-14 18:07:45'),
(410, 'ATSONO  OPOUKOUTSI', 'Draulin  Armely', '2009-10-04', 'Pointe-Noire', 'VINDOULOU', 'ATSONO', '055515929', 'ATSONO', '066580891', 'ATSONO', '055515929', NULL, 'aucune image', 1, '2024-01-14 18:13:18', '2024-01-14 18:13:18'),
(411, 'MIKISSI', 'Bryann  Férémy', '2010-01-12', 'Pointe-Noire', 'VINDOULOU', 'MIKISSI Brice', '066513398', 'MIKISSI Brice', '044396118', 'MIKISSI Brice', '066513398', NULL, 'aucune image', 1, '2024-01-14 18:21:58', '2024-01-14 18:21:58'),
(412, 'BOUBANGA', 'Monica Andresse', '2011-09-16', 'Pointe-Noire', 'VINDOULOU', 'BOUBANGA Henri', '068993308', 'BOUBANGA', '069730122', 'BOUBANGA Henri', '069730122', NULL, 'aucune image', 2, '2024-01-14 18:26:44', '2024-01-14 18:26:44');

-- --------------------------------------------------------

--
-- Structure de la table `emploie_temps`
--

CREATE TABLE `emploie_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `emploie_temps`
--

INSERT INTO `emploie_temps` (`id`, `name`, `salle_id`, `ecole_id`, `token`, `annee_id`, `created_at`, `updated_at`) VALUES
(1, 'EMP-TEMP20221111191126582658', 1, 1, '219ce00febd6c95ce2f7392e8b6f030574ecb0c0', 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(2, 'EMP-TEMP20221111191135013501', 1, 1, '9475cb560c19b1c2cc5acca6630f8817a180d69c', 1, '2022-11-11 18:35:01', '2022-11-11 18:35:01'),
(3, 'EMP-TEMP20221111191138223822', 1, 1, 'a4c12d5fe3ed5051c4da4724bcf7b407a5a4c925', 1, '2022-11-11 18:38:22', '2022-11-11 18:38:22'),
(4, 'EMP-TEMP20221111191141034103', 1, 1, 'f35b5f44db90d3bcb00bfa933ad3efc6237bad33', 1, '2022-11-11 18:41:03', '2022-11-11 18:41:03'),
(5, 'EMP-TEMP20221111191145174517', 1, 1, 'f0792f10cf235ba620362deb2d10bb7af3df143d', 1, '2022-11-11 18:45:17', '2022-11-11 18:45:17'),
(6, 'EMP-TEMP20221111191146024602', 1, 1, '1534f037c1d74129f25b2e0f89b160e36aef7e3c', 1, '2022-11-11 18:46:02', '2022-11-11 18:46:02'),
(7, 'EMP-TEMP20221111201137513751', 3, 1, '9475c47837d6b9e47df3ec61dc777e97da37f0d4', 1, '2022-11-11 19:37:51', '2022-11-11 19:37:51'),
(8, 'EMP-TEMP20221111201139193919', 3, 1, '3335f83b8fe832c69676b2b03c87aca15862e0ab', 1, '2022-11-11 19:39:19', '2022-11-11 19:39:19'),
(9, 'EMP-TEMP20221111201140264026', 3, 1, 'abe607e00a3e2803aa95c52a7dff77f199c9e63b', 1, '2022-11-11 19:40:26', '2022-11-11 19:40:26'),
(10, 'EMP-TEMP20221111201143414341', 3, 1, 'e639a2ddbc351e4c1552483123d8803ab240c91f', 1, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(11, 'EMP-TEMP20221111201147034703', 3, 1, 'c58f68a574de7305564b8afe29dd38c39789e36f', 1, '2022-11-11 19:47:03', '2022-11-11 19:47:03'),
(12, 'EMP-TEMP20221111201148324832', 3, 1, 'f36856baf63f98048e86dfde4e987c4203cbc93d', 1, '2022-11-11 19:48:32', '2022-11-11 19:48:32'),
(13, 'EMP-TEMP20221111201155115511', 4, 1, '03faeb0f75235347bf934bde636c4881619d4824', 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(14, 'EMP-TEMP20221111201157415741', 4, 1, 'e28b5c8c6f294a53579dbe06749e84c089fd30aa', 1, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(15, 'EMP-TEMP20221111201159025902', 4, 1, '78e05bf647c745bd118674bba505e6f7aff85364', 1, '2022-11-11 19:59:02', '2022-11-11 19:59:02'),
(16, 'EMP-TEMP20221111211103420342', 4, 1, 'a667e9c143313355087515ea423e262f70d164e8', 1, '2022-11-11 20:03:42', '2022-11-11 20:03:42'),
(17, 'EMP-TEMP20221111211106250625', 4, 1, 'ae9226c4b86cc657f58e963e3ccbe2dd35e9980d', 1, '2022-11-11 20:06:25', '2022-11-11 20:06:25'),
(18, 'EMP-TEMP20221111211108130813', 4, 1, '9f5e9291137f3281a356ff17ccdc151057cccbb5', 1, '2022-11-11 20:08:13', '2022-11-11 20:08:13'),
(19, 'EMP-TEMP20221111211113471347', 5, 1, 'fced3eddff856d4ef08e59ead0d92d75cdc90eb5', 1, '2022-11-11 20:13:47', '2022-11-11 20:13:47'),
(20, 'EMP-TEMP20221111211116261626', 5, 1, '0f00889387df880e7230a4501a6985e5b0e1902d', 1, '2022-11-11 20:16:26', '2022-11-11 20:16:26'),
(21, 'EMP-TEMP20221111211119171917', 5, 1, '516a474eccffe5804cdc4be0c9bcd2913f8bdf82', 1, '2022-11-11 20:19:17', '2022-11-11 20:19:17'),
(22, 'EMP-TEMP20221111211121302130', 5, 1, 'c4e2d8a2fbed26512641144f097f5376d4207dc4', 1, '2022-11-11 20:21:30', '2022-11-11 20:21:30'),
(23, 'EMP-TEMP20221111211123532353', 5, 1, '2b93a8adcd7e82ad918825bba01cc2802f77a586', 1, '2022-11-11 20:23:53', '2022-11-11 20:23:53'),
(24, 'EMP-TEMP20221111211129432943', 6, 1, '591204157d619a79c2e74af21826923b39f9ed5b', 1, '2022-11-11 20:29:43', '2022-11-11 20:29:43'),
(25, 'EMP-TEMP20221111211134543454', 6, 1, 'b6597551e36ee0df75d32a3eb56868ceebb01b18', 1, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(26, 'EMP-TEMP20221111211139193919', 6, 1, 'dc142f636fd60ae5c745b1dceb5940eee88f20b3', 1, '2022-11-11 20:39:19', '2022-11-11 20:39:19'),
(27, 'EMP-TEMP20221111211140364036', 6, 1, '021205a4bb2e1649943bbf593685ee7334b1cf2c', 1, '2022-11-11 20:40:36', '2022-11-11 20:40:36'),
(28, 'EMP-TEMP20221111211142374237', 6, 1, '2fa39be3e7ebeeb0703e0fdcdff8eabe7efb551f', 1, '2022-11-11 20:42:37', '2022-11-11 20:42:37'),
(29, 'EMP-TEMP20221111211144514451', 7, 1, '81120241e94af2c876de6272096f610d13966960', 1, '2022-11-11 20:44:51', '2022-11-11 20:44:51'),
(30, 'EMP-TEMP20221111211146474647', 7, 1, '2095368a33b4fef3cadc1fdeba360762753057ff', 1, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(31, 'EMP-TEMP20221111211150515051', 7, 1, 'f9c48ddc31667ba32519bec139d8c50258526253', 1, '2022-11-11 20:50:51', '2022-11-11 20:50:51'),
(32, 'EMP-TEMP20221111211152075207', 7, 1, '3f94f329b47d4216c37319963aa3a0cc604081f4', 1, '2022-11-11 20:52:07', '2022-11-11 20:52:07'),
(33, 'EMP-TEMP20221111211154185418', 7, 1, 'eeeee96886f79888b086cef7499ecb067b0612a8', 1, '2022-11-11 20:54:18', '2022-11-11 20:54:18'),
(34, 'EMP-TEMP20221111211155565556', 8, 1, '29ceafde47a093312f0d1a026f774c24eaed63f0', 1, '2022-11-11 20:55:56', '2022-11-11 20:55:56'),
(35, 'EMP-TEMP20221111211157175717', 8, 1, '03133782391efe38265577ef5bf97fff0c3fa75d', 1, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(36, 'EMP-TEMP20221111221103130313', 8, 1, '49cb64bad5621922b70d2ce8c18f4a5632ec05e4', 1, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(37, 'EMP-TEMP20221111221107290729', 8, 1, '779c57fa2e9612a22fba0b5d46f9b5343f742e78', 1, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(38, 'EMP-TEMP20221111221110141014', 8, 1, 'e43f375b853a9a26f17f9c617bae0f5d6779e57d', 1, '2022-11-11 21:10:14', '2022-11-11 21:10:14'),
(39, 'EMP-TEMP20221111221111081108', 8, 1, '126601a90a8be8faad78985f2d9bd895faa01fb4', 1, '2022-11-11 21:11:08', '2022-11-11 21:11:08'),
(40, 'EMP-TEMP20221115091100260026', 2, 1, 'd21c45cbfa3d78308d5cb3ce3d97cfca0ccbe380', 1, '2022-11-15 08:00:26', '2022-11-15 08:00:26'),
(41, 'EMP-TEMP20221115091101470147', 2, 1, '944fc98078409a02b35559f18104edd92b6ed487', 1, '2022-11-15 08:01:47', '2022-11-15 08:01:47'),
(42, 'EMP-TEMP20221115091102270227', 2, 1, 'bcc0191bba5debc96ea10a6bfcfb4fdc3e2b7c8b', 1, '2022-11-15 08:02:27', '2022-11-15 08:02:27'),
(43, 'EMP-TEMP20221115091103400340', 2, 1, '6113907ca04698628ccd89dd980581a135938926', 1, '2022-11-15 08:03:40', '2022-11-15 08:03:40'),
(44, 'EMP-TEMP20221115091106320632', 2, 1, '1e28fdc362b0a8be964cdcb96a072c3a1a032c34', 1, '2022-11-15 08:06:32', '2022-11-15 08:06:32'),
(45, 'EMP-TEMP20221115091107170717', 2, 1, '78637f28078ae7bf9b869a008738229795957ac6', 1, '2022-11-15 08:07:17', '2022-11-15 08:07:17'),
(46, 'EMP-TEMP20221115091114191419', 9, 1, '7a982fb08af0f6510d23e90f2743c4d78a0946dd', 1, '2022-11-15 08:14:19', '2022-11-15 08:14:19'),
(47, 'EMP-TEMP20221115091115131513', 9, 1, '96a0bee1ddb414416740797aa7baa5e28d2c82de', 1, '2022-11-15 08:15:13', '2022-11-15 08:15:13'),
(48, 'EMP-TEMP20221115091116341634', 9, 1, '2c19159c10d66466a1b4d9b99968834efc0045fb', 1, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(49, 'EMP-TEMP20221115091118041804', 9, 1, '596625a019815878472f394d066b40445ae9e4c6', 1, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(50, 'EMP-TEMP20221115091119051905', 9, 1, '5efd9b656fbb292e8b28b37e8bd63eca4c36167c', 1, '2022-11-15 08:19:05', '2022-11-15 08:19:05'),
(51, 'EMP-TEMP20221115091120182018', 9, 1, 'b33feac622cb72f198a1f89c832273907250a400', 1, '2022-11-15 08:20:18', '2022-11-15 08:20:18'),
(52, 'EMP-TEMP20230120100103550355', 10, 5, '958a1d3ff5926efa5c147b501a5fb1900ac4d116', 1, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(53, 'EMP-TEMP20230120100151325132', 11, 5, '9fafde665c6b64f48846dd39061bacfaf8d7fd99', 1, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(54, 'EMP-TEMP20230120110115141514', 12, 5, '13288fb29a419edb6b3a81b14fa7fe5fd7e354c7', 1, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(55, 'EMP-TEMP20230120110131373137', 13, 5, '8621e702e92fb4b5709744fdb9339a17b69e862b', 1, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(56, 'EMP-TEMP20230823100818531853', 34, 11, '4e398d81c625bf9c5daab4a7d2eb198fe0f16f04', 2, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(57, 'EMP-TEMP20230907060911561156', 34, 11, '4cc0a43f4149c851e7603b8d2c3f0dadba7a65db', 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(58, 'EMP-TEMP20230907060925422542', 34, 11, '2dfcd928339e31bd89a5e9d3120e1459acb797c6', 2, '2023-09-07 04:25:42', '2023-09-07 04:25:42'),
(59, 'EMP-TEMP20230907060927002700', 34, 11, 'd8d8c89965b09cdcf2bd5fb4d8ae8f1065fafcca', 2, '2023-09-07 04:27:00', '2023-09-07 04:27:00'),
(60, 'EMP-TEMP20230907060928512851', 34, 11, 'ce12653ab56a5f15d3306433e4224cc1e501220a', 2, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(61, 'EMP-TEMP20230907060930393039', 35, 11, '161b266a969cde54a19be9596c03ca0d5f0ba3cf', 2, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(62, 'EMP-TEMP20230907060931543154', 35, 11, 'cfed149d8892aef65feb7a00fade4f8c90e4aa34', 2, '2023-09-07 04:31:54', '2023-09-07 04:31:54'),
(63, 'EMP-TEMP20230907060932393239', 35, 11, '90139121e1a4ab20ddc22aac5393c93c77101ef2', 2, '2023-09-07 04:32:39', '2023-09-07 04:32:39'),
(64, 'EMP-TEMP20230907060933463346', 35, 11, 'f6ed407917a4b36b343394c5c9014309a9c2f825', 2, '2023-09-07 04:33:46', '2023-09-07 04:33:46'),
(65, 'EMP-TEMP20230907060935273527', 35, 11, 'f1f87bca62bf9f2872ceb6269278c2489f910d71', 2, '2023-09-07 04:35:27', '2023-09-07 04:35:27'),
(66, 'EMP-TEMP20230907060936593659', 36, 11, '0c3253437c21646fdaa2fc0f4cba89759a4885d4', 2, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(67, 'EMP-TEMP20230907060938383838', 36, 11, 'bf2590e81dfd060dc4108e8de0d510145b941793', 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(68, 'EMP-TEMP20230907060939343934', 36, 11, '6f4071474f355b9d8833a93ca8d4ddae02f39a13', 2, '2023-09-07 04:39:34', '2023-09-07 04:39:34'),
(69, 'EMP-TEMP20230907060940264026', 36, 11, 'b4ca2212655a33a8274e3f2b24ca2add5f8f91cf', 2, '2023-09-07 04:40:26', '2023-09-07 04:40:26'),
(70, 'EMP-TEMP20230907060941394139', 36, 11, '7c8ac1b5665279fc4c1513c5925be65d7d48058a', 2, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(71, 'EMP-TEMP20230907060942564256', 37, 11, '6400edee27f051a9c248b85cbf2b1bc6a9f48fad', 2, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(72, 'EMP-TEMP20230907060943524352', 37, 11, '4b2b625239d2a460064b14358f53676b02922698', 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(73, 'EMP-TEMP20230907060944284428', 37, 11, '264fb7817c89b15e474c258d0f3ee9557fe535fc', 2, '2023-09-07 04:44:28', '2023-09-07 04:44:28'),
(74, 'EMP-TEMP20230907060945274527', 37, 11, 'a4ad68f993e9bd3a03d843a354121e0ee89a5863', 2, '2023-09-07 04:45:27', '2023-09-07 04:45:27'),
(75, 'EMP-TEMP20230907060946334633', 37, 11, '79a0a23f247ebbcb95c1470dd50a260bd059b2de', 2, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(76, 'EMP-TEMP20230922140901090109', 10, 5, '7430cbd6af2d2430f73d363d377f7a3aa60b89c4', 2, '2023-09-22 12:01:09', '2023-09-22 12:01:09'),
(77, 'EMP-TEMP20231010121036183618', 13, 5, 'ad65d03d4fc7aaf75a48bf7e846a8696f399c2cf', 2, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(78, 'EMP-TEMP20231010131008290829', 12, 5, '9d7248dcaee31fa04adb072208ff75d54baf6171', 2, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(79, 'EMP-TEMP20231010131032373237', 11, 5, '8ab07fb66521e0147f161366f1c3de19430010a4', 2, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(80, 'EMP-TEMP20231010131038023802', 10, 5, '303431259226958899428ff84792b94fed31cbea', 2, '2023-10-10 11:38:02', '2023-10-10 11:38:02'),
(81, 'EMP-TEMP20231010131040014001', 10, 5, '9dff85cf348edcd57eea7f8b70c17549200abf84', 2, '2023-10-10 11:40:01', '2023-10-10 11:40:01'),
(82, 'EMP-TEMP20231010131043174317', 10, 5, 'b6aa77e22e7fdf0bc0a29eb9412cb4397d501fa0', 2, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(83, 'EMP-TEMP20231010131045014501', 10, 5, '095a427cb98c4f15ab83546c462098dff65fe761', 2, '2023-10-10 11:45:01', '2023-10-10 11:45:01'),
(84, 'EMP-TEMP20231010131047264726', 10, 5, 'b74f976cc7d14b52662e2ade6111069e5e255ba4', 2, '2023-10-10 11:47:26', '2023-10-10 11:47:26'),
(85, 'EMP-TEMP20231010131048044804', 10, 5, '9b859d8acf69ec6f509bda4bd4628ab672a18820', 2, '2023-10-10 11:48:04', '2023-10-10 11:48:04'),
(86, 'EMP-TEMP20231024141005090509', 10, 5, '8b9c7716d3626e58f0472461fdd0e302fd39cfdb', 2, '2023-10-24 12:05:09', '2023-10-24 12:05:09'),
(87, 'EMP-TEMP20231024141006060606', 10, 5, '274ed75589211c5d06df5e4b9ccfc1e1493826e4', 2, '2023-10-24 12:06:06', '2023-10-24 12:06:06'),
(88, 'EMP-TEMP20231024141006260626', 10, 5, 'db1ddbb124e4fcb905824b50a47469350222d5ee', 2, '2023-10-24 12:06:26', '2023-10-24 12:06:26'),
(89, 'EMP-TEMP20231024141007240724', 10, 5, '979bbcad4517bbf5f853a818ae0f8e81d491d617', 2, '2023-10-24 12:07:24', '2023-10-24 12:07:24'),
(90, 'EMP-TEMP20231024141030083008', 11, 5, '1e98c03ebd194bc24be0841b9eaa83693a3aebac', 2, '2023-10-24 12:30:08', '2023-10-24 12:30:08'),
(91, 'EMP-TEMP20231024141030293029', 11, 5, '88c9ecf7ece2544d25072302f303a683a61a9d49', 2, '2023-10-24 12:30:29', '2023-10-24 12:30:29'),
(92, 'EMP-TEMP20231024151013481348', 12, 5, 'b377940826f93575799bf5b87f6302304a4b2eb2', 2, '2023-10-24 13:13:48', '2023-10-24 13:13:48'),
(93, 'EMP-TEMP20231024151014021402', 12, 5, 'b7769ea0ae6ee766527840fb836800e3ef0fa154', 2, '2023-10-24 13:14:02', '2023-10-24 13:14:02');

-- --------------------------------------------------------

--
-- Structure de la table `entrees`
--

CREATE TABLE `entrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecole_id` bigint(20) NOT NULL DEFAULT '0',
  `categorie_id` bigint(20) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `montant` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `semaine` int(11) NOT NULL DEFAULT '0',
  `mois` int(11) NOT NULL DEFAULT '0',
  `annee` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT NULL,
  `moi_id` int(11) DEFAULT '0',
  `trimestre_id` int(11) DEFAULT '0',
  `classe_id` int(11) DEFAULT '0',
  `ecole_id` int(11) DEFAULT '0',
  `annee_id` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eleve_id` bigint(20) NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `classe_id` bigint(20) NOT NULL,
  `montant_inscri` double NOT NULL DEFAULT '0',
  `montant_frais` double NOT NULL DEFAULT '0',
  `annee_id` bigint(20) NOT NULL,
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `reinscription_id` int(11) NOT NULL DEFAULT '0',
  `pogramme_ecole_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moi_id` bigint(20) NOT NULL,
  `semaine_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `inscriptions`
--

INSERT INTO `inscriptions` (`id`, `eleve_id`, `ecole_id`, `user_id`, `classe_id`, `montant_inscri`, `montant_frais`, `annee_id`, `salle_id`, `parent_id`, `reinscription_id`, `pogramme_ecole_id`, `token`, `moi_id`, `semaine_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '96d8a60287803992c0e07e801309b3dca7d3592f', 11, 45, '2022-11-11 21:29:22', '2022-11-11 21:29:22'),
(2, 2, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'a8b01ff2d292df4dd1f0b6b1b22167d36714cd0a', 11, 45, '2022-11-11 21:33:02', '2022-11-11 21:33:02'),
(3, 3, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'a3b8c3a7eaae5e6a202dc8cba7e82d3a36cdda9d', 11, 45, '2022-11-11 21:34:58', '2022-11-11 21:34:58'),
(4, 4, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '5a4cdf5499f1c014f5d1e5f33a88ccc864f96056', 11, 45, '2022-11-11 21:36:37', '2022-11-11 21:36:37'),
(5, 5, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '6ab4a1232f4135f5e92f8b13e040c1b415c0e0a4', 11, 45, '2022-11-11 21:38:28', '2022-11-11 21:38:28'),
(6, 6, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'ccef082ec8505c6e5f35af87253f92f8ec373b1b', 11, 45, '2022-11-11 21:40:41', '2022-11-11 21:40:41'),
(7, 7, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'bc6bdf7f5f640b295c6e9285c5bff16445bf9575', 11, 45, '2022-11-11 21:42:20', '2022-11-11 21:42:20'),
(8, 8, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'b07f841a44bcd41b48d7859095782f8ab4a07acc', 11, 45, '2022-11-11 21:43:45', '2022-11-11 21:43:45'),
(9, 9, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '5aeaa87aa668ff59c25e332ce0f08e29a0ebd9a6', 11, 45, '2022-11-11 21:46:45', '2022-11-11 21:46:45'),
(10, 10, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'f4594b308ffe2022e6dd1adab3e529072cad79c1', 11, 45, '2022-11-11 21:49:05', '2022-11-11 21:49:05'),
(11, 11, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '660e1f3beeb9fbad9c8029cb1376cffb591bd0bd', 11, 45, '2022-11-11 21:50:33', '2022-11-11 21:50:33'),
(12, 12, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '8f0210831291aa9fbe3f5efc5149cbe0403debca', 11, 45, '2022-11-11 21:52:40', '2022-11-11 21:52:40'),
(13, 13, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '8f89b59867f79be9b79b693be15a4f4438ec8ee4', 11, 45, '2022-11-11 21:54:08', '2022-11-11 21:54:08'),
(14, 14, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '95a89bd1a2c43ce45bbb23a3eb8d4a4da0f82f9b', 11, 45, '2022-11-11 21:55:19', '2022-11-11 21:55:19'),
(15, 15, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '9a87e78950c1d78be1a7afe7847c5f1620698ca1', 11, 45, '2022-11-11 21:57:36', '2022-11-11 21:57:36'),
(16, 16, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'a9e7f01dcf4a095ceecf14360aa46797ef22e7f6', 11, 45, '2022-11-11 21:59:02', '2022-11-11 21:59:02'),
(17, 17, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '6a1f0a7564ccb15e4fe19a7c35829594c84da424', 11, 45, '2022-11-11 22:01:49', '2022-11-11 22:01:49'),
(18, 18, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '0fe3dfdf24dde4cd8402b12e635be0d0f2ea686d', 11, 45, '2022-11-11 22:03:22', '2022-11-11 22:03:22'),
(19, 19, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '0e77f25373fbaf0986c1dd2a1de24d1e43044b56', 11, 45, '2022-11-11 22:04:17', '2022-11-11 22:04:17'),
(20, 20, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, '9cdc8297df81d2f198661535826679c7be795152', 11, 45, '2022-11-11 22:05:22', '2022-11-11 22:05:22'),
(21, 21, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'acb9fbdb50d946bdb6e98229f515f03598200646', 11, 45, '2022-11-11 22:06:50', '2022-11-11 22:06:50'),
(22, 22, 1, 9, 1, 12000, 2000, 1, 1, 0, 0, 0, 'abb3bffd049ee8554fd3dc420ed9f63be7f5e418', 11, 45, '2022-11-11 22:08:51', '2022-11-11 22:08:51'),
(23, 23, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '83cee83584b2173ac679085aa385a9b96ba893fd', 11, 45, '2022-11-11 22:10:26', '2022-11-11 22:10:26'),
(24, 24, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, 'a392dfeb851c1b16c836876b157fda11c44e017d', 11, 45, '2022-11-11 22:12:47', '2022-11-11 22:12:47'),
(25, 25, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '08f5b359cd7e8cd63590f25ae6d24109e8f8d493', 11, 45, '2022-11-11 22:14:03', '2022-11-11 22:14:03'),
(26, 26, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, 'dfe9e737eb0a0af653834ade6a1bd46dd618ef2d', 11, 45, '2022-11-11 22:15:40', '2022-11-11 22:15:40'),
(27, 27, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '1b4c6dbf72b374da3f6994c34049e76716851ad2', 11, 45, '2022-11-11 22:17:52', '2022-11-11 22:17:52'),
(28, 28, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, 'a40c626f11288055567b1d5b9c3c8c3d5e99d096', 11, 45, '2022-11-11 22:18:45', '2022-11-11 22:18:45'),
(29, 29, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '98b0f54a0fb96e93423959447b1745b689ce188e', 11, 45, '2022-11-11 22:19:42', '2022-11-11 22:19:42'),
(30, 30, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '313da0dba7960dc5bede845077282620135dbd57', 11, 45, '2022-11-11 22:20:39', '2022-11-11 22:20:39'),
(31, 31, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, 'bb0927296b516945e3b9e6b8548bf22201a7f304', 11, 45, '2022-11-11 22:22:11', '2022-11-11 22:22:11'),
(32, 32, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '5cd27998459b5dafca1b224fd71f78dfcad024e4', 11, 45, '2022-11-11 22:23:59', '2022-11-11 22:23:59'),
(33, 33, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '0da563539beb8af2d6375a0ff55366521cfa825c', 11, 45, '2022-11-11 22:24:54', '2022-11-11 22:24:54'),
(34, 34, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, 'f34cea39105b31fc75f74e51a3de41688f477f2f', 11, 45, '2022-11-11 22:25:54', '2022-11-11 22:25:54'),
(35, 35, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '575d0bbe35a7156675977384756bfd07c18ccccc', 11, 45, '2022-11-11 22:27:41', '2022-11-11 22:27:41'),
(36, 36, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '1ad023de423e9401746943cedf55a7888b3dbc32', 11, 45, '2022-11-11 22:28:37', '2022-11-11 22:28:37'),
(37, 37, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, 'f8479f9869f3d907a8299341640122ff80d426c3', 11, 45, '2022-11-11 22:29:38', '2022-11-11 22:29:38'),
(38, 38, 1, 9, 2, 12000, 2000, 1, 2, 0, 0, 0, '4d73b34681ac960390ed8356d0cfe276b8241626', 11, 45, '2022-11-11 22:30:58', '2022-11-11 22:30:58'),
(39, 39, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'b4da732945d74c6f0997749c1acb17d6884f8e3a', 11, 45, '2022-11-11 22:32:26', '2022-11-11 22:32:26'),
(40, 40, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'cfeea86803251b8afeefa90c52dbfb0b2640f907', 11, 45, '2022-11-11 22:33:32', '2022-11-11 22:33:32'),
(41, 41, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'c66a80112db7f64e072cf10452982fc56a32d626', 11, 45, '2022-11-11 22:34:43', '2022-11-11 22:34:43'),
(42, 42, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'c62e4ca976e1a2fde7e04e0c68a05bd4c28a6af9', 11, 45, '2022-11-11 22:36:06', '2022-11-11 22:36:06'),
(43, 43, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '3fbf74900c3edda76c1b3f09cf47d204dd509686', 11, 45, '2022-11-11 22:37:16', '2022-11-11 22:37:16'),
(44, 44, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '6a99deb9933162cb7e8a9f0a2daf1e3ed07d060e', 11, 45, '2022-11-11 22:38:02', '2022-11-11 22:38:02'),
(45, 45, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '253b7f275f7597d8a462be45f88ae784b3b447f1', 11, 45, '2022-11-11 22:39:29', '2022-11-11 22:39:29'),
(46, 46, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '5ecbc6981b04e0c2f962ed8996aa3b225fe00dc3', 11, 45, '2022-11-11 22:40:28', '2022-11-11 22:40:28'),
(47, 47, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'aceec8b23d2b08fab86ec741b443d71634d94fed', 11, 45, '2022-11-11 22:41:30', '2022-11-11 22:41:30'),
(48, 48, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'ee088ad5cb7ebc7c20439fd4270214f49d67de39', 11, 45, '2022-11-11 22:42:22', '2022-11-11 22:42:22'),
(49, 49, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '7100787e0f55d8363968a679293bd043f4f06c81', 11, 45, '2022-11-11 22:43:17', '2022-11-11 22:43:17'),
(50, 50, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'bce889f7c3351bbed560a1f952e64d7e8bce525f', 11, 45, '2022-11-11 22:44:02', '2022-11-11 22:44:02'),
(51, 51, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '7ed622abf41f1edb4bb2c2f449d757d899c2159d', 11, 45, '2022-11-11 22:44:59', '2022-11-11 22:44:59'),
(52, 52, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '18b85133eb80c9f0bfc1ac301339ab1af753e220', 11, 45, '2022-11-11 22:46:07', '2022-11-11 22:46:07'),
(53, 53, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '252cb64ef443a548cc3adb72d3ec01adecb38b0d', 11, 45, '2022-11-11 22:47:27', '2022-11-11 22:47:27'),
(54, 54, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'c6bb729e02bac2b151c59eb3545a13d51221c91a', 11, 45, '2022-11-11 22:48:12', '2022-11-11 22:48:12'),
(55, 55, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '996b29cf45c85e875a311d8c08138f6043d00769', 11, 45, '2022-11-11 22:49:07', '2022-11-11 22:49:07'),
(56, 56, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '28525e373732ddc4ee9be023d49d33eb07f02c6d', 11, 45, '2022-11-11 22:50:22', '2022-11-11 22:50:22'),
(57, 57, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '9e7c87212a9641d2604602fb44668b01be66bddd', 11, 45, '2022-11-11 22:52:27', '2022-11-11 22:52:27'),
(58, 58, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '494d22134fc2f46a22fb72ac8ac9101f72b909a4', 11, 45, '2022-11-11 22:53:32', '2022-11-11 22:53:32'),
(59, 59, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '5fa4e4b138b10a4bee11196b2ec67c9720d52a15', 11, 45, '2022-11-11 22:54:23', '2022-11-11 22:54:23'),
(60, 60, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, '3fbe534d59929d749b8c7fd054bff357400d92d5', 11, 45, '2022-11-11 22:57:09', '2022-11-11 22:57:09'),
(61, 61, 1, 9, 3, 12000, 2000, 1, 3, 0, 0, 0, 'e29513e5f241a886a1927132418da99d92233536', 11, 45, '2022-11-11 22:58:02', '2022-11-11 22:58:02'),
(62, 62, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '61c90088ea122f248cda6fc98cedeeb798e56b5a', 11, 45, '2022-11-11 22:59:36', '2022-11-11 22:59:36'),
(63, 63, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, 'c976505bf1a5eda8e25d9a3b7539b55259426368', 11, 45, '2022-11-11 23:00:58', '2022-11-11 23:00:58'),
(64, 64, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '2f90860441dc7479c507c792d1db451c14581a0b', 11, 45, '2022-11-11 23:02:43', '2022-11-11 23:02:43'),
(65, 65, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '33c1990a7d7b53d8b974e57f4f53647cfa13f877', 11, 45, '2022-11-11 23:04:28', '2022-11-11 23:04:28'),
(66, 66, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '71c3c3148b4849815240f9af2a0b35451e4c1754', 11, 45, '2022-11-11 23:06:29', '2022-11-11 23:06:29'),
(67, 67, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, 'f378ebc2e8d84dbc6f95a28076d98f5f7e5266a3', 11, 45, '2022-11-11 23:07:32', '2022-11-11 23:07:32'),
(68, 68, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '53219a325c972f77972948882ae2205150371376', 11, 45, '2022-11-11 23:08:52', '2022-11-11 23:08:52'),
(69, 69, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, 'a02ffb30d678481faca64a10f25b1cb1dfd77f86', 11, 45, '2022-11-11 23:10:03', '2022-11-11 23:10:03'),
(70, 70, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, 'a270ca6a3e11c464bae69de5f7ad261e7aefcc71', 11, 45, '2022-11-11 23:11:14', '2022-11-11 23:11:14'),
(71, 71, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '29ad06a2aa6e1c224d8b47b7b4105b88e6352c42', 11, 45, '2022-11-11 23:12:16', '2022-11-11 23:12:16'),
(72, 72, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '57d44df7f9785abfd96b0f69369f2b4fcc9c7653', 11, 45, '2022-11-11 23:13:11', '2022-11-11 23:13:11'),
(73, 73, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '6569d58fe95ef0b8f0656162197f49e7208e5cc2', 11, 45, '2022-11-11 23:14:17', '2022-11-11 23:14:17'),
(74, 74, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, 'fd7ad078e31632588395e967b49f45834e49da71', 11, 45, '2022-11-11 23:15:07', '2022-11-11 23:15:07'),
(75, 75, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '717f6bfc0f85a4cf96938bf06a722afe732f7e3e', 11, 45, '2022-11-11 23:15:52', '2022-11-11 23:15:52'),
(76, 76, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '9e821ca9b11a2dd887bbdb4498ef1cf8d80d9a7c', 11, 45, '2022-11-11 23:16:48', '2022-11-11 23:16:48'),
(77, 77, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, 'bfc42f87b7332344157008c3179c8635f421c42d', 11, 45, '2022-11-11 23:18:32', '2022-11-11 23:18:32'),
(78, 78, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '6ed2e8ac8d7702cb212c9b6cb4c39ba972c9a36f', 11, 45, '2022-11-11 23:19:21', '2022-11-11 23:19:21'),
(79, 79, 1, 9, 4, 18000, 2000, 1, 4, 0, 0, 0, '6cb6ace302ea46c7d8afb7f69938347be3255f68', 11, 45, '2022-11-11 23:20:51', '2022-11-11 23:20:51'),
(80, 80, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '1b95eb65140c0c7c583954a432680139d81a32d4', 11, 45, '2022-11-11 23:23:01', '2022-11-11 23:23:01'),
(81, 81, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '856956bb331da534337a088f690eeee0ccd27589', 11, 45, '2022-11-11 23:23:55', '2022-11-11 23:23:55'),
(82, 82, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'a7319e8cd7765e623f5e8821a9fa8cf5e67ee454', 11, 45, '2022-11-11 23:24:50', '2022-11-11 23:24:50'),
(83, 83, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '7346a2c22679bfa5fa817d5510156ff6e5a04212', 11, 45, '2022-11-11 23:25:41', '2022-11-11 23:25:41'),
(84, 84, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '51d176f0d7cc5c434606f34619887310a2199d3d', 11, 45, '2022-11-11 23:26:42', '2022-11-11 23:26:42'),
(85, 85, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'ca2c7352eef916105b4ea5a31aa24f916e47370e', 11, 45, '2022-11-11 23:27:29', '2022-11-11 23:27:29'),
(86, 86, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'e72ecfe1440b86081e4d2a663c3ab3c2ef957efa', 11, 45, '2022-11-11 23:28:36', '2022-11-11 23:28:36'),
(87, 87, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '469e2303664ad41b70b7e546c6fa034f70127677', 11, 45, '2022-11-11 23:29:28', '2022-11-11 23:29:28'),
(88, 88, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '197182e7d45956a0847b54ab1e39f641f1f67034', 11, 45, '2022-11-11 23:30:30', '2022-11-11 23:30:30'),
(89, 89, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'e77ca1cc04d7c1625c5f1646b273b821c206225e', 11, 45, '2022-11-11 23:31:26', '2022-11-11 23:31:26'),
(90, 90, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '5e9336041da974b694fbb08c90eaa83f7705a86c', 11, 45, '2022-11-11 23:40:10', '2022-11-11 23:40:10'),
(91, 91, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '11ff251c82de395547ea9761dfcdea233e0da1e6', 11, 45, '2022-11-11 23:41:07', '2022-11-11 23:41:07'),
(92, 92, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '02e65518007f5bd4bc137656150d534aac857f8a', 11, 45, '2022-11-11 23:42:38', '2022-11-11 23:42:38'),
(93, 93, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'db87c341a70cc14081a3de2ca34df4f6fef9f3e7', 11, 45, '2022-11-11 23:46:16', '2022-11-11 23:46:16'),
(94, 94, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '916687460c76cb9ac044434df1d78351509cf06e', 11, 45, '2022-11-11 23:48:26', '2022-11-11 23:48:26'),
(95, 95, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'b3fa9f199185e7a9be85e5f0192fec1cd2e026ff', 11, 45, '2022-11-11 23:49:28', '2022-11-11 23:49:28'),
(96, 96, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'a6a4ec7230532af235dd358afc9e9fb9542f784d', 11, 45, '2022-11-11 23:50:58', '2022-11-11 23:50:58'),
(97, 97, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '98264481103198840ac3fcd3d4cc5effbfe429b7', 11, 45, '2022-11-11 23:52:00', '2022-11-11 23:52:00'),
(98, 98, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'f8c8c5ca2567200a6444fec74276c1ab40b4c93f', 11, 45, '2022-11-11 23:53:41', '2022-11-11 23:53:41'),
(99, 99, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '48d0a3666ddd88f67892ff8c3abcfa666ca1ab13', 11, 45, '2022-11-11 23:54:49', '2022-11-11 23:54:49'),
(100, 100, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'b52c4dfd7c0f3e45916098669bd18e0637bd09a6', 11, 45, '2022-11-11 23:56:01', '2022-11-11 23:56:01'),
(101, 101, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'ee3a828d1a490e71011af9b51232d49773662884', 11, 45, '2022-11-11 23:56:58', '2022-11-11 23:56:58'),
(102, 102, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '5f4fb60c90f133e34af1d885e551b2463a890252', 11, 45, '2022-11-11 23:58:02', '2022-11-11 23:58:02'),
(103, 103, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '482d20ba6d2d64b72b5d8604b0c9281583b0d6e5', 11, 45, '2022-11-11 23:59:05', '2022-11-11 23:59:05'),
(104, 104, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '25ea720af6c047c66b59c4daa75065ca739bb340', 11, 45, '2022-11-12 00:00:38', '2022-11-12 00:00:38'),
(105, 105, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'd04dbdc907ad4b3828b7b7466263f8585032110b', 11, 45, '2022-11-12 00:01:46', '2022-11-12 00:01:46'),
(106, 106, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '4e4c39c9862d35ac0ff54b055c6e725100b2f767', 11, 45, '2022-11-12 00:02:49', '2022-11-12 00:02:49'),
(107, 107, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'b0fbbc9cce57ceeaae2836827c4ef896ff8093db', 11, 45, '2022-11-12 00:04:00', '2022-11-12 00:04:00'),
(108, 108, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'f05935b36ca333e715a98fc891b5e6f2f0faa17d', 11, 45, '2022-11-12 00:05:01', '2022-11-12 00:05:01'),
(109, 109, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'f12c286fdb4f4b7bd0e8b56ca509b397da09a972', 11, 45, '2022-11-12 00:06:00', '2022-11-12 00:06:00'),
(110, 110, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '874dd963e51bc540d4620ae63ce52ad755b48af1', 11, 45, '2022-11-12 00:07:22', '2022-11-12 00:07:22'),
(111, 111, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'baad6d53e8f067c81db814f571b9cb097cbd17a7', 11, 45, '2022-11-12 00:08:46', '2022-11-12 00:08:46'),
(112, 112, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '97b60120f2f918e89e9fdb4086b7f7bad57bda3d', 11, 45, '2022-11-12 00:09:55', '2022-11-12 00:09:55'),
(113, 113, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'e3970f2c3c7bbd49fda8173febe8bc88500b96a7', 11, 45, '2022-11-12 00:11:09', '2022-11-12 00:11:09'),
(114, 114, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, '8aad1da2d2b38625ef181fc27989b6ee1cfa3c93', 11, 45, '2022-11-12 00:12:01', '2022-11-12 00:12:01'),
(115, 115, 1, 9, 6, 16000, 2000, 1, 5, 0, 0, 0, 'ad74a564654685f78ff774fe224b3c3150963068', 11, 45, '2022-11-12 00:13:10', '2022-11-12 00:13:10'),
(116, 116, 1, 9, 7, 16000, 2000, 1, 6, 0, 0, 0, '3b1eb257d9a1eadb702243963eaa937ad4ae068f', 11, 45, '2022-11-12 00:14:45', '2022-11-12 00:14:45'),
(117, 117, 1, 9, 7, 16000, 2000, 1, 6, 0, 0, 0, '33f884d3b228f80bdca3f657f5fb49c34910e42f', 11, 45, '2022-11-12 00:15:43', '2022-11-12 00:15:43'),
(118, 118, 1, 9, 7, 16000, 2000, 1, 6, 0, 0, 0, '7f0ab0609edf5f7954359758cf5c7e8a08c6552b', 11, 45, '2022-11-12 00:17:44', '2022-11-12 00:17:44'),
(119, 119, 1, 9, 7, 16000, 2000, 1, 6, 0, 0, 0, 'e9c7e1ba72e8aead28311045cb654db0cf21a7cf', 11, 45, '2022-11-12 00:19:34', '2022-11-12 00:19:34'),
(120, 120, 1, 9, 7, 16000, 2000, 1, 6, 0, 0, 0, '3f02d678d7581575483735c989e7d24b83abd8f1', 11, 45, '2022-11-12 00:20:51', '2022-11-12 00:20:51'),
(121, 121, 1, 9, 7, 16000, 2000, 1, 6, 0, 0, 0, '24290bf06b8718dc6eab49ee344506468a647ea5', 11, 45, '2022-11-12 00:22:30', '2022-11-12 00:22:30'),
(122, 122, 1, 9, 7, 16000, 2000, 1, 6, 0, 0, 0, 'fd0ec878a4de125b1d380ac3db521d19e3fb301d', 11, 45, '2022-11-12 00:23:38', '2022-11-12 00:23:38'),
(123, 123, 1, 9, 8, 16000, 2000, 1, 7, 0, 0, 0, 'b8e1f1b29cf75a881802cbfacb2a7d9f3c6bf596', 11, 45, '2022-11-12 00:25:10', '2022-11-12 00:25:10'),
(124, 124, 1, 9, 8, 16000, 2000, 1, 7, 0, 0, 0, '6de363a6b25951833b7a4b99aa80a44a85561d40', 11, 45, '2022-11-12 00:26:29', '2022-11-12 00:26:29'),
(125, 125, 1, 9, 8, 16000, 2000, 1, 7, 0, 0, 0, '1af25c8b25f4c73bfd349ec9950a558744a91380', 11, 45, '2022-11-12 00:27:31', '2022-11-12 00:27:31'),
(126, 126, 1, 9, 8, 16000, 2000, 1, 7, 0, 0, 0, '89ba1ecd3b6a18f47db7551b0ae09515f659f909', 11, 45, '2022-11-12 00:29:13', '2022-11-12 00:29:13'),
(127, 127, 1, 9, 8, 16000, 2000, 1, 7, 0, 0, 0, '6204125857ae687a0c8c248ab4fc7a795911bb34', 11, 45, '2022-11-12 00:30:22', '2022-11-12 00:30:22'),
(128, 128, 1, 9, 8, 16000, 2000, 1, 7, 0, 0, 0, '73b863c5b2d3c8f0fc86d45dbccabce22ef4306d', 11, 45, '2022-11-12 00:31:43', '2022-11-12 00:31:43'),
(129, 129, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, '72edd7b2ef3a9e8792ed297b260d38686f22bf4f', 11, 45, '2022-11-12 00:33:22', '2022-11-12 00:33:22'),
(130, 130, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, '58df1b1cd4a4a1e69feb47fd99fa92c0343952b5', 11, 45, '2022-11-12 00:34:39', '2022-11-12 00:34:39'),
(131, 131, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, '93ddaadc4713d17f32614180c745f386c76cc007', 11, 45, '2022-11-12 00:35:57', '2022-11-12 00:35:57'),
(132, 134, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, '7edb4a4c8fb955c3b859fafefd136d99f2ff2e86', 11, 45, '2022-11-12 00:37:42', '2022-11-12 00:37:42'),
(133, 135, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, 'be08bd7970e9e05e288cdba91354cf403f6a2d46', 11, 45, '2022-11-12 00:39:26', '2022-11-12 00:39:26'),
(134, 136, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, '5ca6e5fcad9961e823e78cabe4b3ef878465fbe3', 11, 45, '2022-11-12 00:40:46', '2022-11-12 00:40:46'),
(135, 137, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, 'bff4758677b11d77c6dc7510eb6a5d06acac8f46', 11, 45, '2022-11-12 00:42:15', '2022-11-12 00:42:15'),
(136, 138, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, 'ca07086d8241641b6f3ec310f5240cc7cc918525', 11, 45, '2022-11-12 00:43:00', '2022-11-12 00:43:00'),
(137, 139, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, 'b64ae21e4a9a1e98cd86e3c7ff934b17b3b927ba', 11, 45, '2022-11-12 00:44:08', '2022-11-12 00:44:08'),
(138, 140, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, 'ce486422f5fa5c8de962a0657e8d794b38b39312', 11, 45, '2022-11-12 00:44:59', '2022-11-12 00:44:59'),
(139, 141, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, '353cdfaf2b1807cb7fdc0bc903a96ef0a808460b', 11, 45, '2022-11-12 00:46:09', '2022-11-12 00:46:09'),
(140, 142, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, '032248d1a8d20de6fc8282f4b566001d2e46ce6c', 11, 45, '2022-11-12 00:47:28', '2022-11-12 00:47:28'),
(141, 143, 1, 9, 12, 23000, 2000, 1, 8, 0, 0, 0, 'c1a17a62458eb828feea5b3c5b7df7f44cb33576', 11, 45, '2022-11-12 00:48:54', '2022-11-12 00:48:54'),
(142, 144, 1, 9, 10, 23000, 2000, 1, 9, 0, 0, 0, 'a708566867eeeab7d4429bf653278837b59075fe', 11, 45, '2022-11-12 00:50:35', '2022-11-12 00:50:35'),
(143, 145, 1, 9, 10, 23000, 2000, 1, 9, 0, 0, 0, 'fa9c69462fa667d57dd409072e66ea430aed15aa', 11, 45, '2022-11-12 00:52:48', '2022-11-12 00:52:48'),
(144, 146, 1, 9, 10, 23000, 2000, 1, 9, 0, 0, 0, 'f5813f3182cad370d3b4823c67976dc14d80bab6', 11, 45, '2022-11-12 00:53:43', '2022-11-12 00:53:43'),
(145, 147, 1, 9, 10, 23000, 2000, 1, 9, 0, 0, 0, 'd07e6adffbd5774489af4f343b257e13c0c9e87a', 11, 45, '2022-11-12 00:54:55', '2022-11-12 00:54:55'),
(146, 148, 1, 9, 10, 23000, 2000, 1, 9, 0, 0, 0, '3545e0c3e73c838a23ea1c933aba15247edbaddd', 11, 45, '2022-11-12 00:56:25', '2022-11-12 00:56:25'),
(147, 149, 1, 9, 10, 23000, 2000, 1, 9, 0, 0, 0, '92031e8ae579aa172b717887351986052675a9cb', 11, 45, '2022-11-12 00:58:25', '2022-11-12 00:58:25'),
(148, 150, 1, 9, 10, 23000, 2000, 1, 9, 0, 0, 0, '19429a9d6aa1bcf682a033a424763c79ce21967d', 11, 45, '2022-11-12 00:59:37', '2022-11-12 00:59:37'),
(149, 151, 5, 46, 1, 5000, 0, 1, 10, 62, 0, 0, 'a254652242a3b8831a375eb688b9bead44cc7f67', 12, 50, '2022-12-15 14:32:36', '2022-12-15 14:32:36'),
(150, 152, 5, 46, 1, 6500, 0, 1, 10, 63, 0, 0, '424fe8d6d34aa769616112b4cc6a51d657c942cc', 12, 50, '2022-12-15 14:40:34', '2022-12-15 14:40:34'),
(151, 153, 5, 46, 1, 6500, 0, 1, 10, 64, 0, 0, '51e3e4a6366141e7a456a3d7419201eb5e24f016', 12, 50, '2022-12-15 14:41:52', '2022-12-15 14:41:52'),
(152, 154, 5, 46, 1, 6500, 0, 1, 10, 65, 0, 0, '337d8077569f85f4fc449c4409e71c7f39300987', 12, 50, '2022-12-15 14:43:03', '2022-12-15 14:43:03'),
(153, 155, 5, 46, 1, 6500, 0, 1, 10, 66, 0, 0, 'e3e725c954fcb1f30110e85431b2d6c2a6484ac9', 12, 50, '2022-12-15 14:51:19', '2022-12-15 14:51:19'),
(154, 156, 5, 46, 1, 6500, 0, 1, 10, 67, 0, 0, 'fc4d6e3eb8535dd233de0f58d265d85f7f3decde', 12, 50, '2022-12-15 14:52:34', '2022-12-15 14:52:34'),
(155, 157, 5, 46, 1, 6500, 0, 1, 10, 68, 0, 0, '52b2461b87e08f604f579eb864b28f4a7b13a7c8', 12, 50, '2022-12-15 14:53:40', '2022-12-15 14:53:40'),
(156, 158, 5, 46, 1, 6500, 0, 1, 10, 69, 0, 0, '917e6e47100530d1c5cfb40b04a902552401e306', 12, 50, '2022-12-15 14:54:54', '2022-12-15 14:54:54'),
(157, 159, 5, 46, 1, 6500, 0, 1, 10, 70, 0, 0, 'b058016b01ee8ed10f42d5eed0082a3ed2f581ff', 12, 50, '2022-12-15 14:56:08', '2022-12-15 14:56:08'),
(158, 160, 5, 46, 1, 6500, 0, 1, 10, 71, 0, 0, '9ee4484707e6394f57c4d3c180dd657d4889fb25', 12, 50, '2022-12-15 14:57:16', '2022-12-15 14:57:16'),
(159, 161, 5, 46, 1, 6500, 0, 1, 10, 72, 0, 0, '8c35908f3e5f4a7eb942915718a61a201a041931', 12, 50, '2022-12-15 14:58:22', '2022-12-15 14:58:22'),
(160, 162, 5, 46, 1, 6500, 0, 1, 10, 73, 0, 0, '550ca644fb97ed091feced1c5855aee5295c1aec', 12, 50, '2022-12-15 14:59:32', '2022-12-15 14:59:32'),
(161, 163, 5, 46, 1, 6500, 0, 1, 10, 74, 0, 0, '0004e02a8aaa87116e858cec5c743c25c3365434', 12, 50, '2022-12-15 15:01:02', '2022-12-15 15:01:02'),
(162, 164, 5, 46, 1, 6500, 0, 1, 10, 75, 0, 0, '94a91fc07756c0b1662f93e1752a85f06b03aad4', 12, 50, '2022-12-15 15:02:05', '2022-12-15 15:02:05'),
(163, 165, 5, 46, 1, 6500, 0, 1, 10, 76, 0, 0, 'ce3a72251058ae12188d47b2f3b2f70701ee59c1', 12, 50, '2022-12-15 15:03:50', '2022-12-15 15:03:50'),
(164, 166, 5, 46, 1, 6500, 0, 1, 10, 77, 0, 0, '3c0850f2da048feda2cc8956db2893862d6ed845', 12, 50, '2022-12-15 15:05:16', '2022-12-15 15:05:16'),
(165, 167, 5, 46, 1, 6500, 0, 1, 10, 78, 0, 0, '35558fcc2ed95a7610d3c9e9aa2a74509b155817', 12, 50, '2022-12-15 15:06:50', '2022-12-15 15:06:50'),
(166, 168, 5, 46, 1, 6000, 0, 1, 10, 79, 0, 0, '29feba526c967249197bb9f4b990f02a56ab0dee', 12, 50, '2022-12-15 15:07:58', '2022-12-15 15:07:58'),
(167, 169, 5, 46, 1, 6500, 0, 1, 10, 80, 0, 0, '85a72a2b72c0286e013a4a055da47de7e8ad93ab', 12, 50, '2022-12-15 15:08:57', '2022-12-15 15:08:57'),
(168, 170, 5, 46, 1, 6500, 0, 1, 10, 81, 0, 0, 'cc33b3bd9d8c2bde8ee49713a4b89feb3456a1dd', 12, 50, '2022-12-15 15:10:15', '2022-12-15 15:10:15'),
(169, 171, 5, 46, 1, 6500, 0, 1, 10, 82, 0, 0, '39a1a38c35e1a6a7ed493171380585082a96c305', 12, 50, '2022-12-15 15:11:11', '2022-12-15 15:11:11'),
(170, 172, 5, 46, 1, 6500, 0, 1, 10, 83, 0, 0, 'e2f6cea017c631ca3e0fabdb9a3fde8b80d6bc20', 12, 50, '2022-12-15 15:12:21', '2022-12-15 15:12:21'),
(171, 173, 5, 46, 1, 6500, 0, 1, 10, 84, 0, 0, '59f2f41abe7f963eadc71f108c629642c15fb5d7', 12, 50, '2022-12-15 15:14:03', '2022-12-15 15:14:03'),
(172, 174, 5, 46, 1, 6500, 0, 1, 10, 85, 0, 0, '48a895c6e2d63b4ae6e24df2c0e72b21302ba433', 12, 50, '2022-12-15 15:15:09', '2022-12-15 15:15:09'),
(173, 175, 5, 46, 1, 6500, 0, 1, 10, 86, 0, 0, '31fab9e0cd4428727c9471d6965f4ebee43fba65', 12, 50, '2022-12-15 15:16:27', '2022-12-15 15:16:27'),
(174, 176, 5, 46, 1, 6500, 0, 1, 10, 87, 0, 0, 'e9bbb8091fe985a70c30f6405663a6523ba81a12', 12, 50, '2022-12-15 15:17:50', '2022-12-15 15:17:50'),
(175, 177, 5, 46, 1, 6500, 0, 1, 10, 88, 0, 0, 'dccbff32a4bfce5070531360a78201a188e088fc', 12, 50, '2022-12-15 15:19:03', '2022-12-15 15:19:03'),
(176, 178, 5, 46, 1, 6500, 0, 1, 10, 89, 0, 0, '46b0e8d720112d18b3294c8b15380db64d295bb4', 12, 50, '2022-12-15 15:20:23', '2022-12-15 15:20:23'),
(177, 179, 5, 46, 1, 6500, 0, 1, 10, 90, 0, 0, 'ef0ef8284a9ec6d69a2917139a96a9f8cb36d5e8', 12, 50, '2022-12-15 15:21:54', '2022-12-15 15:21:54'),
(178, 180, 5, 46, 1, 6500, 0, 1, 10, 91, 0, 0, 'a2e2e39050d9fb2684e91c0e05b29a976c51cbe3', 12, 50, '2022-12-15 15:23:12', '2022-12-15 15:23:12'),
(179, 181, 5, 46, 1, 6500, 0, 1, 10, 92, 0, 0, '630287b17e2d3f137f46f90b09f85e110d41415e', 12, 50, '2022-12-15 15:24:26', '2022-12-15 15:24:26'),
(180, 182, 5, 46, 1, 6500, 0, 1, 10, 93, 0, 0, '2debca1b6fac5c5618dfaba2652ca3187cf1b96e', 12, 50, '2022-12-15 15:25:28', '2022-12-15 15:25:28'),
(181, 183, 5, 46, 1, 6500, 0, 1, 10, 94, 0, 0, '93493e8629c937ef0bb1ea375b71842af5789be0', 12, 50, '2022-12-15 15:26:29', '2022-12-15 15:26:29'),
(182, 184, 5, 46, 1, 6500, 0, 1, 10, 95, 0, 0, '2dbb607670187fbd1b642645776bbb92731205ff', 12, 50, '2022-12-15 15:27:39', '2022-12-15 15:27:39'),
(183, 185, 5, 46, 1, 6500, 0, 1, 10, 96, 0, 0, '7adc60debacab97e316558189afd910ba844305b', 12, 50, '2022-12-15 15:28:57', '2022-12-15 15:28:57'),
(184, 186, 5, 46, 1, 6500, 0, 1, 10, 97, 0, 0, '74c2a9e696a33a4cf6422685d5031a427464e02f', 12, 50, '2022-12-15 15:30:23', '2022-12-15 15:30:23'),
(185, 187, 5, 46, 2, 6500, 0, 1, 11, 98, 0, 0, '73cbd70c708260d2d29b62d24a88573db6506fe6', 12, 50, '2022-12-15 15:32:19', '2022-12-15 15:32:19'),
(186, 188, 5, 46, 2, 6500, 0, 1, 11, 99, 0, 0, 'c34f99493aa8f6d7b4a0647e5659f6c79dd62a26', 12, 50, '2022-12-15 15:33:38', '2022-12-15 15:33:38'),
(187, 189, 5, 46, 2, 6500, 0, 1, 11, 100, 0, 0, '87e874b277a8199bbc9384498c4d0b3779c1185f', 12, 50, '2022-12-15 15:34:38', '2022-12-15 15:34:38'),
(188, 190, 5, 46, 2, 6500, 0, 1, 11, 101, 0, 0, '0403e305d83e455b7ca2ad19774f788e7de025c4', 12, 50, '2022-12-15 15:35:39', '2022-12-15 15:35:39'),
(189, 191, 5, 46, 2, 6500, 0, 1, 11, 102, 0, 0, 'bfd95613f34c8650e5612377c300f9e512a7d0ec', 12, 50, '2022-12-15 15:36:51', '2022-12-15 15:36:51'),
(190, 192, 5, 46, 2, 6500, 0, 1, 11, 103, 0, 0, 'ef69e0b9bb9522d8ea0d5593f07e44fd766c524d', 12, 50, '2022-12-15 15:37:50', '2022-12-15 15:37:50'),
(191, 193, 5, 46, 2, 6500, 0, 1, 11, 104, 0, 0, '42f355a1f9d79c34d9b2d47b91843a8796c3023e', 12, 50, '2022-12-15 15:39:05', '2022-12-15 15:39:05'),
(192, 194, 5, 46, 2, 6500, 0, 1, 11, 105, 0, 0, '246adced8533b23663a16d26d8f3d1047c477ca4', 12, 50, '2022-12-15 15:40:07', '2022-12-15 15:40:07'),
(193, 195, 5, 46, 2, 6500, 0, 1, 11, 106, 0, 0, 'e7b8285cddde6e814d5b5172cf73f4a8c3a68fc9', 12, 50, '2022-12-15 15:41:08', '2022-12-15 15:41:08'),
(194, 196, 5, 46, 2, 6500, 0, 1, 11, 107, 0, 0, '07cf01e69a459a6c7e4ef45fd5f8ea3ad9b33621', 12, 50, '2022-12-15 15:42:11', '2022-12-15 15:42:11'),
(195, 197, 5, 46, 2, 6500, 0, 1, 11, 108, 0, 0, '190c00fa343204337acd10142d341980ba29c094', 12, 50, '2022-12-15 15:43:07', '2022-12-15 15:43:07'),
(196, 198, 5, 46, 2, 6500, 0, 1, 11, 109, 0, 0, '8021ffdbf5b9af89a463783a7717c1c43c73db5f', 12, 50, '2022-12-15 15:44:18', '2022-12-15 15:44:18'),
(197, 199, 5, 46, 2, 6500, 0, 1, 11, 110, 0, 0, '364bafaa5803e7b1313a5ea038fca3d5bf0ab257', 12, 50, '2022-12-15 15:45:53', '2022-12-15 15:45:53'),
(198, 200, 5, 46, 2, 6500, 0, 1, 11, 111, 0, 0, '683f107fd375fe7f599565c11c59d1eb62a640da', 12, 50, '2022-12-15 15:46:51', '2022-12-15 15:46:51'),
(199, 201, 5, 46, 2, 6500, 0, 1, 11, 112, 0, 0, '0fccf18ee291144cf3dc1ef08cd5f2159e5893c7', 12, 50, '2022-12-15 15:48:20', '2022-12-15 15:48:20'),
(200, 202, 5, 46, 2, 6500, 0, 1, 11, 113, 0, 0, '5ecee6f9799d6fc75f9b8e457d25a2835e594ba6', 12, 50, '2022-12-15 15:49:25', '2022-12-15 15:49:25'),
(201, 203, 5, 46, 2, 6500, 0, 1, 11, 114, 0, 0, 'cf70b846c6bae1126ed71089d16c79a88b5e154c', 12, 50, '2022-12-15 15:50:46', '2022-12-15 15:50:46'),
(202, 204, 5, 46, 3, 7000, 0, 1, 12, 115, 0, 0, 'b653b00e6a99b9c015854d51fe31d99ec5fd4713', 12, 50, '2022-12-15 16:11:31', '2022-12-15 16:11:31'),
(203, 205, 5, 46, 3, 7000, 0, 1, 12, 116, 0, 0, '5b7133b6e9cdb0850b3a7367685373a70f4a9f6e', 12, 50, '2022-12-15 16:12:42', '2022-12-15 16:12:42'),
(204, 206, 5, 46, 3, 7000, 0, 1, 12, 117, 0, 0, 'c8a29453c05948a52db5909c766d13ffa1e5768f', 12, 50, '2022-12-15 16:14:08', '2022-12-15 16:14:08'),
(205, 207, 5, 46, 3, 7000, 0, 1, 12, 118, 0, 0, '9c3eed8ff10eb10056a8bbdf5f6b166a17fcd54b', 12, 50, '2022-12-15 16:15:11', '2022-12-15 16:15:11'),
(206, 208, 5, 46, 3, 7000, 0, 1, 12, 119, 0, 0, '7c4001f8c96bc5bcee27936359593e2eec7637d4', 12, 50, '2022-12-15 16:16:11', '2022-12-15 16:16:11'),
(207, 209, 5, 46, 3, 7000, 0, 1, 12, 120, 0, 0, '10a2ab56c6f213cee949bb7823e4968d59ba25e8', 12, 50, '2022-12-15 16:17:51', '2022-12-15 16:17:51'),
(208, 210, 5, 46, 3, 7000, 0, 1, 12, 121, 0, 0, '056a5fd41bdd1600b0942a0011e64f00a02ae91c', 12, 50, '2022-12-15 16:18:56', '2022-12-15 16:18:56'),
(209, 211, 5, 46, 3, 7000, 0, 1, 12, 122, 0, 0, '435717936c90f0452af1017358b6a5a25381ef57', 12, 50, '2022-12-15 16:20:11', '2022-12-15 16:20:11'),
(210, 212, 5, 46, 3, 7000, 0, 1, 12, 123, 0, 0, '38eeedbbacc4969e4e2f49895a0c3ac2f246a13c', 12, 50, '2022-12-15 16:21:07', '2022-12-15 16:21:07'),
(211, 213, 5, 46, 3, 7000, 0, 1, 12, 124, 0, 0, '72acb45d34cd2d4c194316ab4f4fa8762d4b7fd0', 12, 50, '2022-12-15 16:22:26', '2022-12-15 16:22:26'),
(212, 214, 5, 46, 3, 7000, 0, 1, 12, 125, 0, 0, 'c9ef555229ecbc974d2a4f3e761500ad332030e0', 12, 50, '2022-12-15 16:23:50', '2022-12-15 16:23:50'),
(213, 215, 5, 46, 3, 7000, 0, 1, 12, 126, 0, 0, '23e55e88018f6d58a7516333e5344b4815b3e91e', 12, 50, '2022-12-15 16:24:51', '2022-12-15 16:24:51'),
(214, 216, 5, 46, 3, 7000, 0, 1, 12, 127, 0, 0, '888e72483103ad02767ae2a07fe318be1e6a3568', 12, 50, '2022-12-15 16:25:56', '2022-12-15 16:25:56'),
(215, 217, 5, 46, 3, 7000, 0, 1, 12, 128, 0, 0, '2796345c84afd58d5c3a147cc9e30b05d21e9353', 12, 50, '2022-12-15 16:26:53', '2022-12-15 16:26:53'),
(216, 218, 5, 46, 3, 7000, 0, 1, 12, 129, 0, 0, 'e1b93c4fb631764a63d6fba773c49028279d0fd4', 12, 50, '2022-12-15 16:28:32', '2022-12-15 16:28:32'),
(217, 219, 5, 46, 3, 7000, 0, 1, 12, 130, 0, 0, '2beb599c260bf29849465f2c7df03f388760e1d9', 12, 50, '2022-12-15 16:29:38', '2022-12-15 16:29:38'),
(218, 220, 5, 46, 3, 7000, 0, 1, 12, 131, 0, 0, 'ea53164670aa6e4b73719c1bdb003ba817344a53', 12, 50, '2022-12-15 16:30:59', '2022-12-15 16:30:59'),
(219, 221, 5, 46, 3, 7000, 0, 1, 12, 132, 0, 0, '8d9aca6c30d6f4bdc7d8ccef9e5d409538403aba', 12, 50, '2022-12-15 16:34:37', '2022-12-15 16:34:37'),
(220, 222, 5, 46, 4, 8500, 0, 1, 13, 133, 0, 0, 'b58ddc04388aa24523a89ff3cbb6b98343d8d59f', 12, 50, '2022-12-15 16:47:15', '2022-12-15 16:47:15'),
(221, 223, 5, 46, 4, 8500, 0, 1, 13, 134, 0, 0, '8ae509d69191334982aace8b9bd827dd7c3a8f1e', 12, 50, '2022-12-15 16:48:33', '2022-12-15 16:48:33'),
(222, 224, 5, 46, 4, 8500, 0, 1, 13, 135, 0, 0, 'dd1be728d2c1299ac711d504cc36bc89f73b6f45', 12, 50, '2022-12-15 16:49:42', '2022-12-15 16:49:42'),
(223, 225, 5, 46, 4, 8500, 0, 1, 13, 136, 0, 0, 'abf24d92c12e4ccc47fe3a1964df4860b9d7bb2e', 12, 50, '2022-12-15 16:50:40', '2022-12-15 16:50:40'),
(224, 226, 5, 46, 4, 8500, 0, 1, 13, 137, 0, 0, '7f1488e5b20dd6f23c4433ec0cb0c0fe677380e2', 12, 50, '2022-12-15 16:51:49', '2022-12-15 16:51:49'),
(225, 227, 5, 46, 4, 8500, 0, 1, 13, 138, 0, 0, '2ab27143eaf352f2bee277ca23b1f06fce102c3f', 12, 50, '2022-12-15 16:53:21', '2022-12-15 16:53:21'),
(226, 228, 5, 46, 4, 8500, 0, 1, 13, 139, 0, 0, 'fcd2cf81e27e20e8b5190c2bbd475fb8a981b697', 12, 50, '2022-12-15 16:54:33', '2022-12-15 16:54:33'),
(227, 229, 5, 46, 4, 0, 0, 1, 13, 140, 0, 0, 'f7f7fe02b1b35ac8f0987448b7a890ac5e5be186', 12, 50, '2022-12-15 16:55:32', '2022-12-15 16:59:32'),
(228, 230, 5, 46, 4, 8500, 0, 1, 13, 141, 0, 0, '77f6a93de716a3fbe6dbac02bf86d863e8f4e5e1', 12, 50, '2022-12-15 16:56:34', '2022-12-15 16:56:34'),
(229, 231, 5, 46, 4, 8500, 0, 1, 13, 142, 0, 0, 'daddb81faf880ee6c34d0ef99244344606cf6c2a', 12, 50, '2022-12-15 16:57:55', '2022-12-15 16:57:55'),
(230, 232, 5, 46, 4, 8500, 0, 1, 13, 143, 0, 0, 'f1cc54ee8a6b57b53bb4f483406473f9f23dd421', 12, 50, '2022-12-15 16:59:19', '2022-12-15 16:59:19'),
(231, 233, 5, 46, 4, 8500, 0, 1, 13, 144, 0, 0, '5fd9c2a8d56fdecc01784ec0c7eea3c5b1eb57e4', 12, 50, '2022-12-15 17:00:56', '2022-12-15 17:00:56'),
(232, 234, 5, 46, 4, 8500, 0, 1, 13, 145, 0, 0, '5f85a4e059847054b0c926f09cb9912e21ef9951', 12, 50, '2022-12-15 17:02:03', '2022-12-15 17:02:03'),
(233, 235, 5, 46, 4, 8500, 0, 1, 13, 146, 0, 0, 'caa36dc7f6dfe827f7742f0871a1bae4c463d475', 12, 50, '2022-12-15 17:03:36', '2022-12-15 17:03:36'),
(234, 236, 5, 46, 4, 8500, 0, 1, 13, 147, 0, 0, '608e7ca5454a2a292b3a6ea97205fa1b4ea1dbf1', 12, 50, '2022-12-15 17:04:41', '2022-12-15 17:04:41'),
(235, 237, 5, 46, 4, 8500, 0, 1, 13, 148, 0, 0, 'bab982191ad8f2071db3e3f68726c55efdec32a8', 12, 50, '2022-12-15 17:06:17', '2022-12-15 17:06:17'),
(236, 238, 5, 46, 4, 8500, 0, 1, 13, 149, 0, 0, 'a2e189160121688e758e783feda96b0044e85be5', 12, 50, '2022-12-15 17:20:57', '2022-12-15 17:20:57'),
(237, 239, 5, 46, 4, 8500, 0, 1, 13, 150, 0, 0, '4d8cb04bc0d1d294edc691cb6add2749b84c7535', 12, 50, '2022-12-15 17:22:08', '2022-12-15 17:22:08'),
(238, 240, 5, 46, 4, 8500, 0, 1, 13, 151, 0, 0, '1f417554d6e31929afc418b5df49f138c9a8e87e', 12, 50, '2022-12-15 17:23:10', '2022-12-15 17:23:10'),
(239, 241, 5, 46, 4, 8500, 0, 1, 13, 152, 0, 0, '485dbf68495d8e33dbd790fc46291b4a7dea80f5', 12, 50, '2022-12-15 17:24:07', '2022-12-15 17:24:07'),
(240, 242, 5, 46, 4, 8500, 0, 1, 13, 153, 0, 0, 'b7f36ffea9b1473132bff02fbb6e2b41ddf0c8cb', 12, 50, '2022-12-15 17:25:17', '2022-12-15 17:25:17'),
(241, 243, 5, 46, 4, 4250, 0, 1, 13, 154, 0, 0, 'a7b3247a53b47c8b2ccb653fb1a5132c229ed409', 12, 50, '2022-12-15 17:26:32', '2022-12-15 17:27:54'),
(242, 244, 5, 46, 4, 8500, 0, 1, 13, 155, 0, 0, '3e01ac2aa920ab4ab9f2bd3959e02e3d62eb3758', 12, 50, '2022-12-15 17:27:22', '2022-12-15 17:27:22'),
(243, 245, 5, 46, 4, 8500, 0, 1, 13, 156, 0, 0, '0cedf20b9cc075a5f1b57bc7573c160a41c496e3', 12, 50, '2022-12-15 17:29:00', '2022-12-15 17:29:00'),
(244, 246, 5, 46, 4, 8500, 0, 1, 13, 157, 0, 0, '977b0547270c4db37676c28d34bb310da4a6354b', 12, 50, '2022-12-15 17:30:05', '2022-12-15 17:30:05'),
(245, 247, 5, 46, 4, 8500, 0, 1, 13, 158, 0, 0, 'fd951f681d3c74a1ff8e35fd7591a060529000a7', 12, 50, '2022-12-15 17:31:10', '2022-12-15 17:31:10'),
(246, 248, 5, 46, 4, 8500, 0, 1, 13, 159, 0, 0, '13d1506f07052fc7b59ed01dab3ef1bd5ac8c26e', 12, 50, '2022-12-15 17:32:18', '2022-12-15 17:32:18'),
(247, 249, 5, 46, 4, 8500, 0, 1, 13, 160, 0, 0, '463829beb2fa7831fdbb0a08b33963c8b5e0b6b3', 12, 50, '2022-12-15 17:33:36', '2022-12-15 17:33:36'),
(248, 250, 5, 46, 4, 8500, 0, 1, 13, 161, 0, 0, '8c54d6308c4b8e4fa4e474501222b823186aa1b1', 12, 50, '2022-12-15 17:34:41', '2022-12-15 17:34:41'),
(249, 251, 5, 46, 4, 8500, 0, 1, 13, 162, 0, 0, '72bc51767f5d3f282c0e537f8ce5f028f9b7392a', 12, 50, '2022-12-15 17:35:40', '2022-12-15 17:35:40'),
(250, 252, 11, 184, 3, 28500, 28000, 2, 36, 186, 0, 0, 'a8ad0bc9b21f3a478f1df0c745829d301cf71124', 8, 34, '2023-08-23 06:43:56', '2023-08-23 06:43:56'),
(251, 253, 11, 184, 3, 25500, 17000, 2, 36, 187, 1, 0, '49e1e19fc19867c9d786663d8a3d5b09cb781246', 8, 34, '2023-08-23 06:55:01', '2023-08-23 06:55:01'),
(252, 254, 5, 173, 2, 0, 0, 2, 11, 204, 0, 0, 'fafad4112ef6c33cf3b06ca86f9a95b1336490e8', 9, 37, '2023-09-16 08:21:52', '2023-09-16 08:21:52'),
(253, 255, 5, 173, 2, 8000, 1000, 2, 11, 205, 1, 0, 'a1ed1827231d5a0e6a38e9d5dd78b14985180a1c', 9, 37, '2023-09-16 10:07:38', '2023-11-13 13:37:43'),
(254, 256, 5, 173, 4, 12500, 1500, 2, 13, 206, 0, 0, '1a0b3b1946ce5700081c3c7819aa23fc27931f33', 9, 38, '2023-09-19 09:21:09', '2023-09-19 09:21:09'),
(255, 257, 5, 173, 1, 10000, 1500, 2, 10, 207, 0, 0, '7c9f26770ce3f33205f326ae944a9d863a09eab5', 9, 38, '2023-09-19 10:37:14', '2023-09-19 10:37:14'),
(256, 258, 5, 173, 2, 9000, 1000, 2, 11, 208, 0, 0, '07fea8fa5ef37275652dbefae0984623343c979a', 9, 39, '2023-09-26 13:16:42', '2023-09-26 13:16:42'),
(257, 259, 5, 173, 2, 10000, 1000, 2, 11, 209, 0, 0, 'dd517277750d162a121746b0f4270fde28bcd1a3', 9, 39, '2023-09-26 13:25:19', '2023-09-26 13:25:19'),
(258, 260, 5, 173, 3, 16000, 1000, 2, 12, 210, 0, 0, '777f7c422196f5b537196e9b94604e8d8fbdecc8', 9, 39, '2023-09-26 13:34:16', '2023-09-26 13:34:16'),
(259, 261, 5, 173, 4, 12500, 1000, 2, 13, 211, 0, 0, 'b00b8b94ed716ef68aa961f1d20fd139de420729', 9, 39, '2023-09-28 11:53:50', '2023-09-28 11:53:50'),
(260, 262, 5, 173, 1, 8750, 1000, 2, 10, 212, 0, 0, '0058e0383f58cf8ad6d59d875aaa1aa8f36bbf4d', 9, 39, '2023-09-28 12:09:01', '2023-09-28 12:09:01'),
(261, 263, 5, 173, 1, 8750, 1000, 2, 10, 0, 0, 0, '9c1aa06041bdb77a46d0b06d23b0f4ce1d0e75ea', 9, 39, '2023-09-28 12:16:17', '2023-09-28 12:16:17'),
(262, 264, 5, 173, 4, 8750, 1000, 2, 13, 0, 0, 0, '9370d58bd00a733e2f786581dfe0a214a7eaa2e9', 9, 39, '2023-09-28 12:20:37', '2023-09-28 12:20:37'),
(263, 265, 5, 173, 4, 8750, 1000, 2, 13, 0, 0, 0, 'f9d6ed3e820b4bd4a6ce895a4092f2eb204e1512', 9, 39, '2023-09-28 12:38:08', '2023-09-28 12:38:08'),
(264, 266, 5, 173, 1, 8750, 3500, 2, 10, 213, 0, 0, 'e6409213c08a0a1b5df3f8057f28b4ad96a29633', 9, 39, '2023-09-28 12:50:20', '2023-09-28 12:50:20'),
(265, 267, 5, 173, 2, 10000, 1000, 2, 11, 214, 0, 0, '262b8f80174283449f2469321dfc362943937c3f', 9, 39, '2023-09-28 14:18:46', '2023-09-28 14:18:46'),
(266, 268, 5, 6, 2, 10000, 1000, 2, 11, 218, 0, 0, '8d30b127cc033f079c1a6612583f0a24f66d3a7c', 10, 40, '2023-10-02 12:37:52', '2023-10-02 12:37:52'),
(267, 269, 5, 6, 1, 10000, 1500, 2, 10, 0, 0, 0, 'aa684ac0b308ee500bcf1e7ad74cac15977fa2e2', 10, 40, '2023-10-03 06:33:10', '2023-10-03 06:33:10'),
(268, 270, 5, 6, 1, 9000, 1500, 2, 10, 221, 0, 0, '8eba1cb9d68b136e8465ff8950143d4ae8f6ea24', 10, 40, '2023-10-03 06:56:21', '2023-10-03 06:56:21'),
(269, 271, 5, 6, 2, 10000, 1000, 2, 11, 222, 0, 0, 'cdbf738aac50983a87ea8e01585a1071e1efb839', 10, 40, '2023-10-03 07:07:05', '2023-10-03 07:07:05'),
(270, 272, 5, 6, 2, 8000, 1000, 2, 11, 224, 0, 0, '5b4b164f74fb95c0994808371c122b0ad7631506', 10, 40, '2023-10-03 07:33:45', '2023-10-03 07:33:45'),
(271, 273, 5, 6, 2, 10000, 1000, 2, 11, 225, 0, 0, '7e3620fa8e58e08e9b97fe75e59dc7e794f9170d', 10, 40, '2023-10-03 07:45:07', '2023-10-03 07:45:07'),
(272, 274, 5, 6, 2, 10000, 1000, 2, 11, 226, 0, 0, '26d84cc0ef28f682dbd1bd4f38b8eeb744116bc4', 10, 40, '2023-10-03 07:51:10', '2023-10-03 07:51:10'),
(273, 275, 5, 6, 2, 10000, 1000, 2, 11, 227, 0, 0, '3e8a3425f3ab282dab9e086d45debe89c56484bc', 10, 40, '2023-10-03 08:03:00', '2023-10-03 08:03:00'),
(274, 276, 5, 173, 1, 10000, 1000, 2, 10, 228, 0, 0, '525de1e782d1c2dc551b20d14a5df96f03362bdc', 10, 40, '2023-10-05 08:24:10', '2023-10-05 08:24:10'),
(275, 277, 5, 173, 2, 10000, 1500, 2, 11, 230, 0, 0, '08cee526a0ba93afd9d1e6389daa1c15528ea79c', 10, 40, '2023-10-05 09:29:34', '2023-10-05 09:29:34'),
(276, 278, 5, 173, 2, 10000, 1500, 2, 11, 231, 0, 0, '7523299c54ce4bbc664569610b7b4115b246caf6', 10, 40, '2023-10-05 10:03:01', '2023-10-05 10:03:01'),
(277, 279, 5, 173, 3, 10000, 1000, 2, 12, 232, 0, 0, '7b5a244980cfef488281dadc71dafe93f7338b7e', 10, 40, '2023-10-05 10:27:23', '2023-10-05 10:27:23'),
(278, 280, 5, 173, 3, 11000, 1000, 2, 12, 233, 0, 0, 'a88bed0eb168b9bc682d9914ef96793aae2b3d9a', 10, 40, '2023-10-05 10:35:08', '2023-10-05 10:35:08'),
(279, 281, 5, 173, 3, 11000, 1000, 2, 12, 234, 0, 0, '3d04d66918164c27888a2b9f9896e80604d0f199', 10, 40, '2023-10-05 11:09:28', '2023-10-05 11:09:28'),
(280, 282, 5, 173, 4, 12500, 1000, 2, 13, 235, 0, 0, 'ad22d2f74cc096f45b537b88ad66d20994043997', 10, 40, '2023-10-05 11:54:41', '2023-10-05 11:54:41'),
(281, 283, 5, 173, 4, 11500, 1000, 2, 13, 236, 0, 0, 'cb8adcd1598660878e5d54433bc9d6c4518183fd', 10, 40, '2023-10-05 12:00:50', '2023-11-20 11:46:38'),
(282, 284, 5, 173, 4, 12500, 1500, 2, 13, 238, 0, 0, '9b7851d9c155a857c78fb4b4eb6e1ffdf705cf0c', 10, 40, '2023-10-05 12:29:06', '2023-10-05 12:29:06'),
(283, 285, 5, 173, 4, 12500, 1500, 2, 13, 239, 0, 0, '217816916d90da2ed8c88f28b2530ed6ac95f9f8', 10, 40, '2023-10-05 12:37:06', '2023-10-05 12:37:06'),
(284, 286, 5, 173, 4, 12500, 1000, 2, 13, 240, 0, 0, '3a113d823d5464b418971b25389d1e39844d0dce', 10, 40, '2023-10-05 12:45:38', '2023-10-05 12:45:38'),
(285, 287, 5, 173, 4, 12500, 1000, 2, 13, 241, 0, 0, 'f00930ac8717f74b665dc053a12d06f8fc312a75', 10, 40, '2023-10-06 12:45:04', '2023-10-06 12:45:04'),
(286, 288, 5, 173, 2, 10000, 1000, 2, 11, 242, 0, 0, '86a3a716fe9533fb892c2489a287187ab8b086b2', 10, 41, '2023-10-09 12:34:17', '2023-10-09 12:34:17'),
(287, 289, 5, 173, 1, 9000, 1000, 2, 10, 243, 0, 0, '799555021660cbc1e575ae7afe2255f3cd872343', 10, 41, '2023-10-09 12:49:44', '2023-10-09 12:49:44'),
(288, 290, 5, 173, 2, 10000, 1500, 2, 11, 244, 0, 0, '8ba85bb4616372495cf4611cadccb74fee1c5ab8', 10, 41, '2023-10-09 13:10:46', '2023-10-09 13:10:46'),
(289, 291, 5, 173, 2, 9000, 1000, 2, 11, 245, 0, 0, '20b72d7358dad42a24fb276497eaadc9d533aa6a', 10, 41, '2023-10-09 13:19:33', '2023-10-09 13:19:33'),
(290, 292, 5, 173, 2, 10000, 1500, 2, 11, 246, 0, 0, '2b5db40e32f0a32088359d399c66fdc291eaf090', 10, 41, '2023-10-09 13:30:52', '2023-10-09 13:30:52'),
(291, 293, 5, 173, 2, 10000, 1000, 2, 11, 247, 0, 0, '3e078958f615b017deb6ccad62bc1f202cd9e7b8', 10, 41, '2023-10-09 13:35:35', '2023-10-09 13:35:35'),
(292, 294, 5, 173, 3, 6500, 1000, 2, 12, 248, 0, 0, '44b4ebf7445bcd5db7fbeea3a6f4a9722f40600d', 10, 41, '2023-10-09 13:58:42', '2023-10-27 14:04:31'),
(293, 295, 5, 173, 4, 11500, 0, 2, 13, 249, 0, 0, '54c24b6f18c83df334e399c6ae918ce026abc73b', 10, 41, '2023-10-09 14:04:32', '2023-11-20 11:47:39'),
(294, 296, 5, 173, 4, 12500, 1500, 2, 13, 250, 0, 0, '8e316f13496d41a78f4aa18969e38bae1b3a4947', 10, 41, '2023-10-09 14:14:27', '2023-10-09 14:14:27'),
(295, 297, 5, 173, 4, 12500, 1500, 2, 13, 251, 0, 0, '995f697d7e33c042e05cb64e9f799f8140cbfad0', 10, 41, '2023-10-09 14:24:00', '2023-10-09 14:24:00'),
(296, 298, 5, 173, 1, 8500, 1000, 2, 10, 0, 0, 0, '1958f39c0458d0f038499f6ed1a1161bd5849a48', 10, 41, '2023-10-09 14:38:07', '2023-10-09 14:38:07'),
(297, 299, 5, 173, 1, 8500, 1000, 2, 10, 0, 0, 0, 'aabec1775dd0413b7eb5f4a443446e3acb4d3137', 10, 41, '2023-10-09 14:47:52', '2023-10-09 14:47:52'),
(298, 300, 5, 173, 1, 10000, 1000, 2, 10, 252, 0, 0, '9bc392454402fefe8a3f209a0f226c65bdb81910', 10, 41, '2023-10-09 14:56:11', '2023-10-09 14:56:11'),
(299, 301, 5, 173, 1, 10000, 1500, 2, 10, 253, 0, 0, '37fb6151b1a166a35824b9dd09a59427a66d66ec', 10, 41, '2023-10-09 15:01:46', '2023-10-09 15:01:46'),
(300, 302, 5, 173, 1, 7500, 1500, 2, 10, 254, 0, 0, 'dd39ecc6a4f13bc4954249fab3845ff5dd6e3af6', 10, 41, '2023-10-10 08:09:15', '2023-10-27 14:02:00'),
(301, 303, 5, 173, 1, 0, 1500, 2, 10, 255, 0, 0, '424afe500d8c22a761e2d878f1265c7b71c6876e', 10, 41, '2023-10-10 08:13:32', '2023-10-10 08:13:32'),
(302, 304, 5, 173, 4, 12500, 1000, 2, 13, 259, 0, 0, '123aa8c2f90c9508c3d9b2500cbb0fddc5c4cd56', 10, 41, '2023-10-11 12:11:36', '2023-10-11 12:11:36'),
(303, 305, 5, 173, 1, 10000, 1000, 2, 10, 260, 0, 0, '43a170d25b0cc1b45005dd05a555249c320829b9', 10, 41, '2023-10-11 12:31:11', '2023-10-11 12:31:11'),
(304, 306, 5, 173, 2, 10000, 1000, 2, 11, 261, 0, 0, '9b2cc0a9672a687ecbb5f3832ced94ab3a66602e', 10, 41, '2023-10-11 12:52:16', '2023-10-11 12:52:16'),
(305, 307, 5, 173, 4, 12500, 1500, 2, 13, 262, 0, 0, '4971d36481a7d1c50db6530770e8121e4fefeadc', 10, 41, '2023-10-11 13:26:17', '2023-10-11 13:26:17'),
(306, 308, 5, 173, 4, 6250, 1000, 2, 13, 265, 0, 0, 'af80e098903c5eee84305b4ff0c234db2fbf38b6', 10, 41, '2023-10-11 13:52:05', '2023-10-27 14:00:52'),
(307, 309, 5, 173, 4, 12500, 1000, 2, 13, 0, 0, 0, 'bc4ad06986fbb1705e03cd315d0af5fbd1758bcd', 10, 41, '2023-10-12 08:30:44', '2023-10-12 08:30:44'),
(308, 310, 5, 173, 4, 10000, 1000, 2, 13, 266, 0, 0, '627f928e0df7815327d52e66c6e319926c29bab6', 10, 41, '2023-10-12 08:51:45', '2023-10-13 09:15:46'),
(309, 311, 5, 173, 3, 11000, 1000, 2, 12, 267, 0, 0, 'd0f3c23e7fe3a135f1ed4ec93fe15e2b46fed79b', 10, 41, '2023-10-14 08:27:58', '2023-10-14 08:29:19'),
(310, 312, 5, 173, 1, 9000, 1000, 2, 10, 268, 0, 0, '0dad2141f143e2cdc80c96577edf3cd56b428290', 10, 42, '2023-10-16 11:11:05', '2023-10-16 11:11:05'),
(311, 313, 5, 173, 3, 10000, 1000, 2, 12, 271, 0, 0, '8b4b3bfb688a8468517cf03d1a9e0c42dd9bd40a', 10, 42, '2023-10-18 11:07:23', '2023-10-18 11:07:23'),
(312, 314, 5, 173, 2, 10000, 1000, 2, 11, 0, 0, 0, 'e286b0fe2c8f9fb37a6084096b2ba0c4573a5b7d', 10, 42, '2023-10-18 11:12:20', '2023-10-18 11:12:20'),
(313, 315, 5, 173, 2, 10000, 1500, 2, 11, 272, 0, 0, '2cd5cd26d2e30b05a140731a95d37568b23409ab', 10, 42, '2023-10-18 11:19:27', '2023-10-18 11:19:27'),
(314, 316, 5, 173, 1, 10000, 1000, 2, 10, 273, 0, 0, '01672d6615eec9eada5cfe9592ea258a77fb5a33', 10, 42, '2023-10-18 11:24:53', '2023-10-18 11:24:53'),
(315, 317, 5, 173, 2, 0, 1500, 2, 11, 274, 0, 0, '990914809bf6fdc7f1eb11ad53e7f3507a7b1ba7', 10, 43, '2023-10-24 10:49:26', '2023-10-24 10:49:26'),
(316, 318, 5, 173, 2, 10000, 1000, 2, 11, 275, 0, 0, '1f92aafa4fcc4741b538e0f9208b348a5b90d3d9', 10, 43, '2023-10-24 10:56:44', '2023-10-24 10:56:44'),
(317, 319, 5, 173, 3, 9500, 1000, 2, 12, 276, 0, 0, '1950924983c6c4b0e5e4bea5d24e74bfff377da9', 10, 43, '2023-10-27 14:26:04', '2023-11-07 16:30:02'),
(318, 320, 5, 173, 4, 11000, 1500, 2, 13, 277, 0, 0, '2cccfd129f27366a85ee03f9f58296e5352fbc8b', 10, 43, '2023-10-27 14:32:37', '2023-11-07 16:31:28'),
(319, 321, 5, 173, 2, 9000, 1000, 2, 11, 0, 0, 0, 'b6d69860197710a1bb3e9f6b00373b97f76f6732', 10, 44, '2023-10-30 08:20:12', '2023-10-30 08:20:12'),
(320, 322, 5, 173, 2, 9000, 1000, 2, 11, 278, 0, 0, '6b8216231f986a9932ac3f9ca9668ea1271f30f4', 11, 44, '2023-11-02 12:45:54', '2023-11-02 12:45:54'),
(321, 323, 5, 173, 4, 12500, 1500, 2, 13, 279, 0, 0, '05d3d404ff5853e448ee443bc7dd9449354b0410', 11, 44, '2023-11-02 12:53:40', '2023-11-02 12:53:40'),
(322, 324, 5, 173, 1, 10000, 1000, 2, 10, 0, 0, 0, 'f2f14043e33609c6ef0f1b352add45b15d68b32d', 11, 44, '2023-11-02 13:00:32', '2023-11-02 13:00:32'),
(323, 325, 5, 173, 2, 9000, 1000, 2, 11, 284, 0, 0, 'a92e9f65cd6087cd48b7d424327f686d36cd1bd9', 11, 45, '2023-11-09 07:00:56', '2023-11-09 07:00:56'),
(324, 326, 12, 286, 6, 16450, 7000, 2, 42, 291, 0, 0, '9498e6f795e8452d6735f08c5fd78a691acd6ba9', 1, 2, '2024-01-13 13:11:30', '2024-01-13 13:11:30'),
(325, 327, 12, 286, 3, 21000, 15000, 2, 40, 292, 0, 0, '9727c4c80bcb67c5900cca034766dfcf01890b64', 1, 2, '2024-01-13 13:57:19', '2024-01-13 13:57:19'),
(326, 328, 12, 286, 1, 21000, 15000, 2, 38, 0, 0, 0, 'eda000852d55f01bf1ff6e1b22ab789ea3d2b955', 1, 2, '2024-01-13 14:02:05', '2024-01-13 14:02:05'),
(327, 329, 12, 286, 4, 22000, 15000, 2, 41, 293, 0, 0, 'd1bc3b751cc14cb55b0109474c05e4b77dd168db', 1, 2, '2024-01-13 14:06:37', '2024-01-13 14:06:37'),
(328, 330, 12, 286, 2, 21000, 15000, 2, 39, 0, 0, 0, '5e74c592f532347766467a7f51f6c383a3cdc4af', 1, 2, '2024-01-13 14:10:34', '2024-01-13 14:10:34'),
(329, 331, 12, 286, 6, 23500, 15000, 2, 42, 294, 0, 0, '662f66eb98fc8704b0784cdf6b3af14df1798e21', 1, 2, '2024-01-13 14:15:36', '2024-01-13 14:15:36'),
(330, 332, 12, 286, 9, 21150, 10000, 2, 44, 295, 0, 0, '6b61da50efac6392f835c451551d3a2bbc3e1540', 1, 2, '2024-01-13 14:20:51', '2024-01-13 14:20:51'),
(331, 333, 12, 286, 1, 21000, 10000, 2, 38, 296, 0, 0, 'a5a384d1b62db80a7b1e49d91b58612c11ce2657', 1, 2, '2024-01-13 14:27:14', '2024-01-13 14:27:14'),
(332, 334, 12, 286, 6, 23500, 10000, 2, 42, 297, 0, 0, '5b571cffe545146bbfae93878021ab1a6b8c55f7', 1, 2, '2024-01-13 14:32:56', '2024-01-13 14:32:56'),
(333, 335, 12, 286, 6, 23500, 1000, 2, 42, 298, 0, 0, '45b6bdeb5d749fbd95be1591332f61295811e634', 1, 2, '2024-01-13 14:36:19', '2024-01-13 14:36:19'),
(334, 336, 12, 286, 11, 25000, 10000, 2, 45, 299, 0, 0, '6ca42a43b167ca80a664a3e75188beef8251045c', 1, 2, '2024-01-13 14:47:26', '2024-01-13 14:47:26'),
(335, 337, 12, 286, 2, 21000, 10000, 2, 39, 300, 0, 0, 'a2f79583ea6b33e46b5a2c805c806f5deb52a2ed', 1, 2, '2024-01-13 15:01:28', '2024-01-13 15:01:28'),
(336, 338, 12, 286, 2, 21000, 10000, 2, 39, 301, 0, 0, '617f1f8e93ae432ede095be1fb512ed4b04db46b', 1, 2, '2024-01-13 15:28:45', '2024-01-13 15:28:45'),
(337, 339, 12, 286, 1, 21000, 10000, 2, 38, 302, 0, 0, '7a5c70df330a17b661560dcc37ca1328a8e2f7b4', 1, 2, '2024-01-13 15:35:15', '2024-01-13 15:35:15'),
(338, 340, 12, 286, 6, 23500, 10000, 2, 42, 303, 0, 0, '32984b6ab89445af7eedb7002aa628e3016b49c3', 1, 2, '2024-01-13 15:48:24', '2024-01-13 15:48:24'),
(339, 341, 12, 286, 1, 21000, 10000, 2, 38, 304, 0, 0, '77aa7cf2e2a48ce68d5fc84191870b2f19591553', 1, 2, '2024-01-13 15:54:01', '2024-01-13 15:54:01'),
(340, 342, 12, 286, 3, 21000, 10000, 2, 40, 305, 0, 0, '9b371775f17aac204d44bacc0725bdb71d50b335', 1, 2, '2024-01-13 16:19:25', '2024-01-13 16:19:25'),
(341, 343, 12, 286, 12, 25000, 10000, 2, 47, 306, 0, 0, '2d1299b160ec7ebb067a4c40e37b5403863de410', 1, 2, '2024-01-13 16:26:55', '2024-01-13 16:26:55'),
(342, 344, 12, 286, 1, 18500, 10000, 2, 38, 307, 0, 0, 'caa3101f6b7205c2ca5e7e156c89c555542f81f5', 1, 2, '2024-01-13 16:31:35', '2024-01-13 16:31:35');
INSERT INTO `inscriptions` (`id`, `eleve_id`, `ecole_id`, `user_id`, `classe_id`, `montant_inscri`, `montant_frais`, `annee_id`, `salle_id`, `parent_id`, `reinscription_id`, `pogramme_ecole_id`, `token`, `moi_id`, `semaine_id`, `created_at`, `updated_at`) VALUES
(343, 345, 12, 286, 9, 21150, 10000, 2, 44, 308, 0, 0, '88182338249e47cb0d343d77f1180ead68909e34', 1, 2, '2024-01-13 16:35:57', '2024-01-13 16:35:57'),
(344, 346, 12, 286, 4, 22000, 10000, 2, 41, 309, 0, 0, '214487cd1f3cf517e07b1b78b368d1faf942339c', 1, 2, '2024-01-13 16:39:58', '2024-01-13 16:39:58'),
(345, 347, 12, 286, 6, 23500, 10000, 2, 42, 310, 0, 0, '8e2fc6694aa4ab277eb90af16a60cb2cda393cbe', 1, 2, '2024-01-13 17:19:40', '2024-01-13 17:19:40'),
(346, 348, 12, 286, 1, 21000, 10000, 2, 38, 311, 0, 0, '6053b29223142d43cf98b47ede83514344a13aef', 1, 2, '2024-01-13 17:37:21', '2024-01-13 17:37:21'),
(347, 349, 12, 286, 6, 23500, 10000, 2, 42, 312, 0, 0, '0e298d1b30731f9d16d4e7173ca5684c610c1f3e', 1, 2, '2024-01-13 17:45:01', '2024-01-13 17:45:01'),
(348, 350, 12, 286, 6, 23500, 10000, 2, 42, 313, 0, 0, '0478a6476b857a953265ea2c8f9b484aac423c6f', 1, 2, '2024-01-13 17:49:18', '2024-01-13 17:49:18'),
(349, 351, 12, 286, 6, 23500, 10000, 2, 42, 314, 0, 0, 'bb1ea300fa5ca34acf1e14c5130316136baf647b', 1, 2, '2024-01-13 17:53:13', '2024-01-13 17:53:13'),
(350, 352, 12, 286, 6, 23500, 10000, 2, 42, 315, 0, 0, 'ec52dabfc630eb29b6a297f8dd7e6d84e217894e', 1, 2, '2024-01-13 17:56:44', '2024-01-13 17:56:44'),
(351, 353, 12, 286, 6, 23500, 10000, 2, 42, 316, 0, 0, 'b4c82dfa01f59258b8196c8c8790882480ce1f3f', 1, 2, '2024-01-13 18:00:23', '2024-01-13 18:00:23'),
(352, 354, 12, 286, 6, 23500, 10000, 2, 42, 317, 0, 0, '30fd6fb06db70db0188908819cfbecdcbeccaf60', 1, 2, '2024-01-13 18:26:51', '2024-01-13 18:26:51'),
(353, 355, 12, 286, 6, 23500, 10000, 2, 42, 318, 0, 0, '523e9d3e4915925753601d04324e5166e54a58e6', 1, 2, '2024-01-13 18:30:25', '2024-01-13 18:30:25'),
(354, 356, 12, 286, 6, 21150, 10000, 2, 42, 319, 0, 0, 'b82c386505424983e3bc5c19ec4b1b6f1a0f5fcf', 1, 2, '2024-01-13 18:35:44', '2024-01-13 18:35:44'),
(355, 357, 12, 286, 6, 20650, 10000, 2, 42, 320, 0, 0, '344926f7e090a2b534458c73720dd7ecc92e4bc2', 1, 2, '2024-01-13 18:40:47', '2024-01-13 18:40:47'),
(356, 358, 12, 286, 6, 23500, 10000, 2, 42, 321, 0, 0, '43e1d05aa1308570f32bbe29df257c23cc1e0930', 1, 2, '2024-01-13 18:47:32', '2024-01-13 18:47:32'),
(357, 359, 12, 286, 6, 23500, 10000, 2, 42, 322, 0, 0, '595dbbf97987eea91e8301ebecf34e564b1932d5', 1, 2, '2024-01-13 18:52:02', '2024-01-13 18:52:02'),
(358, 360, 12, 286, 6, 23500, 10000, 2, 42, 323, 0, 0, 'ef88af604d41e5c54ed986106a86f5b10df958d1', 1, 2, '2024-01-13 18:56:06', '2024-01-13 18:56:06'),
(359, 361, 12, 286, 6, 23500, 10000, 2, 42, 324, 0, 0, '03f004d9c7cc83656a5fbac395f7cd065d39522d', 1, 2, '2024-01-13 18:59:55', '2024-01-13 18:59:55'),
(360, 362, 12, 286, 6, 23500, 10000, 2, 42, 325, 0, 0, '8ef09ba46d9676ddadf7dbc394a19cfcde1883d3', 1, 2, '2024-01-13 19:03:47', '2024-01-13 19:03:47'),
(361, 363, 12, 286, 6, 23500, 10000, 2, 42, 326, 0, 0, '38a661c58c0fbe112292ae348b4eed2d74daf4e1', 1, 2, '2024-01-13 19:09:18', '2024-01-13 19:09:18'),
(362, 364, 12, 286, 6, 21150, 10000, 2, 42, 327, 0, 0, '7ae963aee0208f66e1284ae39087f2eea80d58db', 1, 2, '2024-01-13 19:13:19', '2024-01-13 19:13:19'),
(363, 365, 12, 286, 1, 21000, 10000, 2, 38, 328, 0, 0, '8722fd5b7154343f432c26e24fc51a21e261a66c', 1, 2, '2024-01-14 14:47:00', '2024-01-14 14:47:00'),
(364, 366, 12, 286, 1, 18900, 10000, 2, 38, 329, 0, 0, '1968de81859485a0b74e4fbeeeff5ad37549f6d8', 1, 2, '2024-01-14 14:51:08', '2024-01-14 14:51:08'),
(365, 367, 12, 286, 2, 18900, 10000, 2, 39, 330, 0, 0, 'a003dfb2b20d45fc4321cce5a9ac09a6a1c396f3', 1, 2, '2024-01-14 14:55:42', '2024-01-14 14:55:42'),
(366, 368, 12, 286, 1, 18900, 10000, 2, 38, 0, 0, 0, 'e6f647f084a6693ebd2216abbb2a3282dc59ed18', 1, 2, '2024-01-14 14:59:12', '2024-01-14 14:59:12'),
(367, 369, 12, 286, 1, 18900, 10000, 2, 38, 331, 0, 0, '1d83e956ac1a18471448cd1f3596e8be8fccaae4', 1, 2, '2024-01-14 15:02:50', '2024-01-14 15:02:50'),
(368, 370, 12, 286, 1, 18900, 10000, 2, 38, 332, 0, 0, '259eeadae7ba85b51d10c2c3874dd4088cd3be46', 1, 2, '2024-01-14 15:07:03', '2024-01-14 15:07:03'),
(369, 371, 12, 286, 2, 18900, 10000, 2, 39, 333, 0, 0, '84e769066b5043e6d602f8a56b74fadd32d44fe0', 1, 2, '2024-01-14 15:13:44', '2024-01-14 15:13:44'),
(370, 372, 12, 286, 2, 21000, 10000, 2, 39, 334, 0, 0, 'bd65f9d073819546eea55b31666e03afd6e2333b', 1, 2, '2024-01-14 15:17:02', '2024-01-14 15:17:02'),
(371, 373, 12, 286, 2, 21000, 10000, 2, 39, 335, 0, 0, '0a8bddb76349ce72182b545e9373de7c7731fa68', 1, 2, '2024-01-14 15:20:07', '2024-01-14 15:20:07'),
(372, 374, 12, 286, 2, 21000, 10000, 2, 39, 336, 0, 0, 'a41f6a779c0a91ba40337ae3dcda5555c6bfc625', 1, 2, '2024-01-14 15:24:46', '2024-01-14 15:24:46'),
(373, 375, 12, 286, 2, 19500, 10000, 2, 39, 337, 0, 0, 'acd1cd43c660a3d997a164ab1f41abb25235ead0', 1, 2, '2024-01-14 15:28:51', '2024-01-14 15:28:51'),
(374, 376, 12, 286, 2, 18900, 10000, 2, 39, 338, 0, 0, '65fca60385900dfe62c49f8bed0cc88d4ad1dc04', 1, 2, '2024-01-14 15:32:07', '2024-01-14 15:32:07'),
(375, 377, 12, 286, 1, 18900, 10000, 2, 38, 339, 0, 0, 'b1ef2a534a4b0858fc2ff72e36d4f2052ea267fb', 1, 2, '2024-01-14 15:35:53', '2024-01-14 15:35:53'),
(376, 378, 12, 286, 1, 21000, 10000, 2, 38, 340, 0, 0, 'ba87b5cce088d3b5d8b1f23f7874f0a5285f2adb', 1, 2, '2024-01-14 15:39:56', '2024-01-14 15:39:56'),
(377, 379, 12, 286, 2, 21000, 10000, 2, 39, 341, 0, 0, '3b2b966d17d0312c0f2bbed78d96a45e65a8a842', 1, 2, '2024-01-14 15:43:19', '2024-01-14 15:43:19'),
(378, 380, 12, 286, 2, 21000, 10000, 2, 39, 342, 0, 0, 'e7ebea1ad72feedc5f06c783993a6f80830f53ef', 1, 2, '2024-01-14 15:47:24', '2024-01-14 15:47:24'),
(379, 381, 12, 286, 1, 18900, 10000, 2, 38, 343, 0, 0, 'f2e23687a5ce44a90296c85428d00e8e3e6927f2', 1, 2, '2024-01-14 15:51:06', '2024-01-14 15:51:06'),
(380, 382, 12, 286, 2, 21000, 10000, 2, 39, 344, 0, 0, '2642aa16921dcf77f36c5811a342492fd88a581b', 1, 2, '2024-01-14 15:54:29', '2024-01-14 15:54:29'),
(381, 383, 12, 286, 2, 19950, 10000, 2, 39, 345, 0, 0, '73b1726d7255af7fa1f5569639095431859ab98e', 1, 2, '2024-01-14 15:58:57', '2024-01-14 15:58:57'),
(382, 384, 12, 286, 1, 21000, 10000, 2, 38, 346, 0, 0, 'cd9e706f3973cb10d0d9e71cb7ba320a0d62c1aa', 1, 2, '2024-01-14 16:01:59', '2024-01-14 16:01:59'),
(383, 385, 12, 286, 1, 21000, 10000, 2, 38, 347, 0, 0, 'f1fe3e799b872738f03515f9e720a1bcc1f963bf', 1, 2, '2024-01-14 16:05:22', '2024-01-14 16:05:22'),
(384, 386, 12, 286, 2, 18900, 10000, 2, 39, 348, 0, 0, '2128e99e3d46eadb07b25ba43531188809cb99aa', 1, 2, '2024-01-14 16:08:57', '2024-01-14 16:08:57'),
(385, 387, 12, 286, 2, 14700, 7000, 2, 39, 349, 0, 0, '9ecb8ed38588f562b6c098d23abedc9c8bfc583c', 1, 2, '2024-01-14 16:20:02', '2024-01-14 16:20:02'),
(386, 388, 12, 286, 1, 14700, 7000, 2, 38, 350, 0, 0, '8b63c740c4ba204cbb156a713e20384c31dacbf8', 1, 2, '2024-01-14 16:24:25', '2024-01-14 16:24:25'),
(387, 389, 12, 286, 2, 21000, 10000, 2, 39, 351, 0, 0, '969788d91d677f36adb92960c456abcc08b5104a', 1, 2, '2024-01-14 16:28:37', '2024-01-14 16:28:37'),
(388, 390, 12, 286, 3, 19950, 10000, 2, 40, 352, 0, 0, '6cbab4f6f63d3e9fefbeb96a95192b5e7e5a5f46', 1, 2, '2024-01-14 16:39:45', '2024-01-14 16:39:45'),
(389, 391, 12, 286, 3, 18900, 10000, 2, 40, 353, 0, 0, 'fa18171a2dc8177232c5b097dd7c935f8a74cc90', 1, 2, '2024-01-14 16:43:34', '2024-01-14 16:43:34'),
(390, 392, 12, 286, 3, 21000, 10000, 2, 40, 354, 0, 0, '7240f55f4e82c5b97f4a6ecd70d3b719d0e0f397', 1, 2, '2024-01-14 16:59:54', '2024-01-14 16:59:54'),
(391, 393, 12, 286, 3, 21000, 10000, 2, 40, 355, 0, 0, 'a40ac28b94ad69a8268de9f809cdb672eb025556', 1, 2, '2024-01-14 17:04:42', '2024-01-14 17:04:42'),
(392, 394, 12, 286, 3, 21000, 10000, 2, 40, 356, 0, 0, 'b9340d55c1ceab6c9da44ee6212ef88469a7d5ed', 1, 2, '2024-01-14 17:07:57', '2024-01-14 17:07:57'),
(393, 395, 12, 286, 3, 21000, 10000, 2, 40, 357, 0, 0, '20627cd64447c96baad37320214aea8331439d3a', 1, 2, '2024-01-14 17:11:20', '2024-01-14 17:11:20'),
(394, 396, 12, 286, 3, 21000, 10000, 2, 40, 358, 0, 0, '6efa7eef319dbe4ec8db7a0367167fdccf38a7e4', 1, 2, '2024-01-14 17:16:12', '2024-01-14 17:16:12'),
(395, 397, 12, 286, 3, 21000, 10000, 2, 40, 359, 0, 0, 'bdf2569f198c9d86b2ccfdb10f104344096b8621', 1, 2, '2024-01-14 17:20:00', '2024-01-14 17:20:00'),
(396, 398, 12, 286, 3, 20000, 10000, 2, 40, 360, 0, 0, 'ad06977112009c3e38c66314d8bd6434cfea056b', 1, 2, '2024-01-14 17:24:51', '2024-01-14 17:24:51'),
(397, 399, 12, 286, 3, 14700, 7000, 2, 40, 361, 0, 0, '9bec0534fabcff921b74cd5c23f74b7b21041571', 1, 2, '2024-01-14 17:29:30', '2024-01-14 17:29:30'),
(398, 400, 12, 286, 3, 19950, 10000, 2, 40, 362, 0, 0, '67ee5b550bf8cc9dbe22b7bbdd3e9a9ea26ef2ae', 1, 2, '2024-01-14 17:33:13', '2024-01-14 17:33:13'),
(399, 401, 12, 286, 3, 19950, 10000, 2, 40, 363, 0, 0, '758e5143c504daae4b6890a5b8046d41f2ff107b', 1, 2, '2024-01-14 17:37:07', '2024-01-14 17:37:07'),
(400, 402, 12, 286, 3, 21000, 10000, 2, 40, 364, 0, 0, 'df5acd03bc013d368d670533d9b6d65d2b430a3b', 1, 2, '2024-01-14 17:40:49', '2024-01-14 17:40:49'),
(401, 403, 12, 286, 3, 14700, 10000, 2, 40, 365, 0, 0, 'c6182ad717dc3b6026416dbf760ba053d62e3316', 1, 2, '2024-01-14 17:44:42', '2024-01-14 17:44:42'),
(402, 404, 12, 286, 3, 21000, 10000, 2, 40, 366, 0, 0, 'd395d9071dda29d2b869ff0f26494fcd0b0dd9ca', 1, 2, '2024-01-14 17:49:08', '2024-01-14 17:49:08'),
(403, 405, 12, 286, 3, 18900, 10000, 2, 40, 367, 0, 0, '857325ba220db5a1bf800d8afea8f4566f67c341', 1, 2, '2024-01-14 17:53:22', '2024-01-14 17:53:22'),
(404, 406, 12, 286, 3, 18900, 10000, 2, 40, 368, 0, 0, 'a07ff3ad9afd98a7cb75b0e5aa335ef8997ccccc', 1, 2, '2024-01-14 17:56:26', '2024-01-14 17:56:26'),
(405, 407, 12, 286, 3, 19950, 10000, 2, 40, 0, 0, 0, '5a480e6dd4a2be79222f5565a0b3a61375d97bc3', 1, 2, '2024-01-14 17:59:42', '2024-01-14 17:59:42'),
(406, 408, 12, 286, 3, 18900, 10000, 2, 40, 369, 0, 0, '35aa3b486aab7dcca6c364f99e8db36aa480a5ed', 1, 2, '2024-01-14 18:04:25', '2024-01-14 18:04:25'),
(407, 409, 12, 286, 3, 18900, 10000, 2, 40, 370, 0, 0, '2d4c4c78b968fcd39da48aba1deb5398a7304395', 1, 2, '2024-01-14 18:07:45', '2024-01-14 18:07:45'),
(408, 410, 12, 286, 3, 18900, 10000, 2, 40, 371, 0, 0, 'c321cf739693926012d73f8b4d7dca7f97e6923f', 1, 2, '2024-01-14 18:13:18', '2024-01-14 18:13:18'),
(409, 411, 12, 286, 3, 21000, 10000, 2, 40, 372, 0, 0, 'b6d6dd4420f73315c32861b45168c146a3de9467', 1, 2, '2024-01-14 18:21:58', '2024-01-14 18:21:58'),
(410, 412, 12, 286, 3, 21000, 15000, 2, 40, 373, 0, 0, 'fcb25dd76b1d5770bbbd83ca6de418cdbc06d794', 1, 2, '2024-01-14 18:26:44', '2024-01-14 18:26:44');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_emploi_temps`
--

CREATE TABLE `ligne_emploi_temps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ligne_programme_ecole_id` int(11) NOT NULL DEFAULT '0',
  `tranche_id` int(11) NOT NULL DEFAULT '0',
  `emploi_id` int(11) NOT NULL DEFAULT '0',
  `day_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ligne_emploi_temps`
--

INSERT INTO `ligne_emploi_temps` (`id`, `ligne_programme_ecole_id`, `tranche_id`, `emploi_id`, `day_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(2, 5, 2, 1, 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(3, 3, 3, 1, 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(4, 3, 4, 1, 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(5, 6, 5, 1, 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(6, 1, 7, 1, 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(7, 1, 8, 1, 1, '2022-11-11 18:26:58', '2022-11-11 18:26:58'),
(8, 1, 1, 2, 2, '2022-11-11 18:35:01', '2022-11-11 18:35:01'),
(9, 1, 2, 2, 2, '2022-11-11 18:35:01', '2022-11-11 18:35:01'),
(10, 4, 3, 2, 2, '2022-11-11 18:35:01', '2022-11-11 18:35:01'),
(11, 4, 4, 2, 2, '2022-11-11 18:35:01', '2022-11-11 18:35:01'),
(12, 5, 8, 2, 2, '2022-11-11 18:35:01', '2022-11-11 18:35:01'),
(13, 5, 9, 2, 2, '2022-11-11 18:35:01', '2022-11-11 18:35:01'),
(14, 5, 1, 3, 3, '2022-11-11 18:38:22', '2022-11-11 18:38:22'),
(15, 5, 2, 3, 3, '2022-11-11 18:38:22', '2022-11-11 18:38:22'),
(16, 2, 4, 3, 3, '2022-11-11 18:38:22', '2022-11-11 18:38:22'),
(17, 6, 5, 3, 3, '2022-11-11 18:38:22', '2022-11-11 18:38:22'),
(18, 6, 9, 3, 3, '2022-11-11 18:38:22', '2022-11-11 18:38:22'),
(19, 6, 10, 3, 3, '2022-11-11 18:38:22', '2022-11-11 18:38:22'),
(20, 1, 1, 4, 4, '2022-11-11 18:41:03', '2022-11-11 18:41:03'),
(21, 1, 2, 4, 4, '2022-11-11 18:41:03', '2022-11-11 18:41:03'),
(22, 3, 3, 4, 4, '2022-11-11 18:41:03', '2022-11-11 18:41:03'),
(23, 3, 1, 5, 5, '2022-11-11 18:45:17', '2022-11-11 18:45:17'),
(24, 2, 3, 5, 5, '2022-11-11 18:45:17', '2022-11-11 18:45:17'),
(25, 2, 4, 5, 5, '2022-11-11 18:45:17', '2022-11-11 18:45:17'),
(26, 7, 1, 6, 6, '2022-11-11 18:46:02', '2022-11-11 18:46:02'),
(27, 7, 2, 6, 6, '2022-11-11 18:46:02', '2022-11-11 18:46:02'),
(28, 19, 1, 7, 1, '2022-11-11 19:37:51', '2022-11-11 19:37:51'),
(29, 19, 2, 7, 1, '2022-11-11 19:37:51', '2022-11-11 19:37:51'),
(30, 18, 3, 7, 1, '2022-11-11 19:37:51', '2022-11-11 19:37:51'),
(31, 15, 4, 7, 1, '2022-11-11 19:37:51', '2022-11-11 19:37:51'),
(32, 21, 7, 7, 1, '2022-11-11 19:37:51', '2022-11-11 19:37:51'),
(33, 21, 8, 7, 1, '2022-11-11 19:37:51', '2022-11-11 19:37:51'),
(34, 17, 1, 8, 2, '2022-11-11 19:39:19', '2022-11-11 19:39:19'),
(35, 17, 2, 8, 2, '2022-11-11 19:39:19', '2022-11-11 19:39:19'),
(36, 20, 3, 8, 2, '2022-11-11 19:39:19', '2022-11-11 19:39:19'),
(37, 20, 4, 8, 2, '2022-11-11 19:39:19', '2022-11-11 19:39:19'),
(38, 16, 1, 9, 3, '2022-11-11 19:40:26', '2022-11-11 19:40:26'),
(39, 16, 2, 9, 3, '2022-11-11 19:40:26', '2022-11-11 19:40:26'),
(40, 18, 4, 9, 3, '2022-11-11 19:40:26', '2022-11-11 19:40:26'),
(41, 18, 5, 9, 3, '2022-11-11 19:40:26', '2022-11-11 19:40:26'),
(42, 19, 1, 10, 4, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(43, 19, 2, 10, 4, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(44, 20, 3, 10, 4, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(45, 20, 4, 10, 4, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(46, 16, 5, 10, 4, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(47, 15, 7, 10, 4, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(48, 15, 8, 10, 4, '2022-11-11 19:43:41', '2022-11-11 19:43:41'),
(49, 16, 1, 11, 5, '2022-11-11 19:47:03', '2022-11-11 19:47:03'),
(50, 16, 2, 11, 5, '2022-11-11 19:47:03', '2022-11-11 19:47:03'),
(51, 17, 3, 11, 5, '2022-11-11 19:47:03', '2022-11-11 19:47:03'),
(52, 15, 4, 11, 5, '2022-11-11 19:47:03', '2022-11-11 19:47:03'),
(53, 15, 5, 11, 5, '2022-11-11 19:47:03', '2022-11-11 19:47:03'),
(54, 18, 6, 11, 5, '2022-11-11 19:47:03', '2022-11-11 19:47:03'),
(55, 19, 1, 12, 6, '2022-11-11 19:48:32', '2022-11-11 19:48:32'),
(56, 19, 2, 12, 6, '2022-11-11 19:48:32', '2022-11-11 19:48:32'),
(57, 20, 4, 12, 6, '2022-11-11 19:48:32', '2022-11-11 19:48:32'),
(58, 20, 5, 12, 6, '2022-11-11 19:48:32', '2022-11-11 19:48:32'),
(59, 23, 1, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(60, 23, 2, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(61, 26, 3, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(62, 26, 4, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(63, 25, 5, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(64, 25, 6, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(65, 28, 9, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(66, 28, 10, 13, 1, '2022-11-11 19:55:11', '2022-11-11 19:55:11'),
(67, 27, 1, 14, 2, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(68, 27, 2, 14, 2, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(69, 24, 3, 14, 2, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(70, 24, 4, 14, 2, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(71, 26, 6, 14, 2, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(72, 26, 7, 14, 2, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(73, 26, 8, 14, 2, '2022-11-11 19:57:41', '2022-11-11 19:57:41'),
(74, 25, 1, 15, 3, '2022-11-11 19:59:02', '2022-11-11 19:59:02'),
(75, 25, 2, 15, 3, '2022-11-11 19:59:02', '2022-11-11 19:59:02'),
(76, 22, 4, 15, 3, '2022-11-11 19:59:02', '2022-11-11 19:59:02'),
(77, 22, 5, 15, 3, '2022-11-11 19:59:02', '2022-11-11 19:59:02'),
(78, 27, 1, 16, 4, '2022-11-11 20:03:42', '2022-11-11 20:03:42'),
(79, 27, 2, 16, 4, '2022-11-11 20:03:42', '2022-11-11 20:03:42'),
(80, 23, 3, 16, 4, '2022-11-11 20:03:42', '2022-11-11 20:03:42'),
(81, 23, 4, 16, 4, '2022-11-11 20:03:42', '2022-11-11 20:03:42'),
(82, 26, 5, 16, 4, '2022-11-11 20:03:42', '2022-11-11 20:03:42'),
(83, 26, 6, 16, 4, '2022-11-11 20:03:42', '2022-11-11 20:03:42'),
(84, 22, 1, 17, 5, '2022-11-11 20:06:25', '2022-11-11 20:06:25'),
(85, 22, 2, 17, 5, '2022-11-11 20:06:25', '2022-11-11 20:06:25'),
(86, 24, 4, 17, 5, '2022-11-11 20:06:25', '2022-11-11 20:06:25'),
(87, 24, 5, 17, 5, '2022-11-11 20:06:25', '2022-11-11 20:06:25'),
(88, 22, 7, 17, 5, '2022-11-11 20:06:25', '2022-11-11 20:06:25'),
(89, 22, 8, 17, 5, '2022-11-11 20:06:25', '2022-11-11 20:06:25'),
(90, 27, 1, 18, 6, '2022-11-11 20:08:13', '2022-11-11 20:08:13'),
(91, 27, 2, 18, 6, '2022-11-11 20:08:13', '2022-11-11 20:08:13'),
(92, 25, 4, 18, 6, '2022-11-11 20:08:13', '2022-11-11 20:08:13'),
(93, 25, 5, 18, 6, '2022-11-11 20:08:13', '2022-11-11 20:08:13'),
(94, 30, 1, 19, 1, '2022-11-11 20:13:47', '2022-11-11 20:13:47'),
(95, 30, 2, 19, 1, '2022-11-11 20:13:47', '2022-11-11 20:13:47'),
(96, 29, 3, 19, 1, '2022-11-11 20:13:47', '2022-11-11 20:13:47'),
(97, 29, 4, 19, 1, '2022-11-11 20:13:47', '2022-11-11 20:13:47'),
(98, 32, 5, 19, 1, '2022-11-11 20:13:47', '2022-11-11 20:13:47'),
(99, 35, 6, 19, 1, '2022-11-11 20:13:47', '2022-11-11 20:13:47'),
(100, 34, 1, 20, 2, '2022-11-11 20:16:26', '2022-11-11 20:16:26'),
(101, 34, 2, 20, 2, '2022-11-11 20:16:26', '2022-11-11 20:16:26'),
(102, 33, 3, 20, 2, '2022-11-11 20:16:26', '2022-11-11 20:16:26'),
(103, 33, 4, 20, 2, '2022-11-11 20:16:26', '2022-11-11 20:16:26'),
(104, 36, 7, 20, 2, '2022-11-11 20:16:26', '2022-11-11 20:16:26'),
(105, 36, 8, 20, 2, '2022-11-11 20:16:26', '2022-11-11 20:16:26'),
(106, 29, 1, 21, 3, '2022-11-11 20:19:17', '2022-11-11 20:19:17'),
(107, 29, 2, 21, 3, '2022-11-11 20:19:17', '2022-11-11 20:19:17'),
(108, 32, 3, 21, 3, '2022-11-11 20:19:17', '2022-11-11 20:19:17'),
(109, 32, 4, 21, 3, '2022-11-11 20:19:17', '2022-11-11 20:19:17'),
(110, 34, 1, 22, 4, '2022-11-11 20:21:30', '2022-11-11 20:21:30'),
(111, 34, 2, 22, 4, '2022-11-11 20:21:30', '2022-11-11 20:21:30'),
(112, 33, 3, 22, 4, '2022-11-11 20:21:30', '2022-11-11 20:21:30'),
(113, 33, 4, 22, 4, '2022-11-11 20:21:30', '2022-11-11 20:21:30'),
(114, 35, 5, 22, 4, '2022-11-11 20:21:30', '2022-11-11 20:21:30'),
(115, 35, 6, 22, 4, '2022-11-11 20:21:30', '2022-11-11 20:21:30'),
(116, 31, 1, 23, 5, '2022-11-11 20:23:53', '2022-11-11 20:23:53'),
(117, 31, 2, 23, 5, '2022-11-11 20:23:53', '2022-11-11 20:23:53'),
(118, 68, 4, 23, 5, '2022-11-11 20:23:53', '2022-11-11 20:23:53'),
(119, 68, 5, 23, 5, '2022-11-11 20:23:53', '2022-11-11 20:23:53'),
(120, 42, 1, 24, 1, '2022-11-11 20:29:43', '2022-11-11 20:29:43'),
(121, 42, 2, 24, 1, '2022-11-11 20:29:43', '2022-11-11 20:29:43'),
(122, 40, 3, 24, 1, '2022-11-11 20:29:43', '2022-11-11 20:29:43'),
(123, 40, 1, 25, 2, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(124, 40, 2, 25, 2, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(125, 39, 3, 25, 2, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(126, 43, 5, 25, 2, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(127, 43, 6, 25, 2, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(128, 44, 9, 25, 2, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(129, 44, 10, 25, 2, '2022-11-11 20:34:54', '2022-11-11 20:34:54'),
(130, 41, 1, 26, 3, '2022-11-11 20:39:19', '2022-11-11 20:39:19'),
(131, 41, 2, 26, 3, '2022-11-11 20:39:19', '2022-11-11 20:39:19'),
(132, 38, 3, 26, 3, '2022-11-11 20:39:19', '2022-11-11 20:39:19'),
(133, 37, 5, 26, 3, '2022-11-11 20:39:19', '2022-11-11 20:39:19'),
(134, 37, 6, 26, 3, '2022-11-11 20:39:19', '2022-11-11 20:39:19'),
(135, 39, 1, 27, 4, '2022-11-11 20:40:36', '2022-11-11 20:40:36'),
(136, 39, 2, 27, 4, '2022-11-11 20:40:36', '2022-11-11 20:40:36'),
(137, 37, 5, 27, 4, '2022-11-11 20:40:36', '2022-11-11 20:40:36'),
(138, 37, 6, 27, 4, '2022-11-11 20:40:36', '2022-11-11 20:40:36'),
(139, 38, 1, 28, 5, '2022-11-11 20:42:37', '2022-11-11 20:42:37'),
(140, 38, 2, 28, 5, '2022-11-11 20:42:37', '2022-11-11 20:42:37'),
(141, 41, 3, 28, 5, '2022-11-11 20:42:37', '2022-11-11 20:42:37'),
(142, 41, 4, 28, 5, '2022-11-11 20:42:37', '2022-11-11 20:42:37'),
(143, 40, 6, 28, 5, '2022-11-11 20:42:37', '2022-11-11 20:42:37'),
(144, 49, 1, 29, 1, '2022-11-11 20:44:51', '2022-11-11 20:44:51'),
(145, 49, 2, 29, 1, '2022-11-11 20:44:51', '2022-11-11 20:44:51'),
(146, 48, 4, 29, 1, '2022-11-11 20:44:51', '2022-11-11 20:44:51'),
(147, 48, 5, 29, 1, '2022-11-11 20:44:51', '2022-11-11 20:44:51'),
(148, 45, 1, 30, 2, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(149, 45, 2, 30, 2, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(150, 45, 3, 30, 2, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(151, 50, 4, 30, 2, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(152, 50, 5, 30, 2, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(153, 52, 9, 30, 2, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(154, 52, 10, 30, 2, '2022-11-11 20:46:47', '2022-11-11 20:46:47'),
(155, 51, 1, 31, 3, '2022-11-11 20:50:51', '2022-11-11 20:50:51'),
(156, 51, 2, 31, 3, '2022-11-11 20:50:51', '2022-11-11 20:50:51'),
(157, 46, 4, 31, 3, '2022-11-11 20:50:51', '2022-11-11 20:50:51'),
(158, 46, 5, 31, 3, '2022-11-11 20:50:51', '2022-11-11 20:50:51'),
(159, 51, 1, 32, 4, '2022-11-11 20:52:07', '2022-11-11 20:52:07'),
(160, 51, 2, 32, 4, '2022-11-11 20:52:07', '2022-11-11 20:52:07'),
(161, 50, 3, 32, 4, '2022-11-11 20:52:07', '2022-11-11 20:52:07'),
(162, 50, 4, 32, 4, '2022-11-11 20:52:07', '2022-11-11 20:52:07'),
(163, 47, 1, 33, 5, '2022-11-11 20:54:18', '2022-11-11 20:54:18'),
(164, 47, 2, 33, 5, '2022-11-11 20:54:18', '2022-11-11 20:54:18'),
(165, 47, 3, 33, 5, '2022-11-11 20:54:18', '2022-11-11 20:54:18'),
(166, 49, 4, 33, 5, '2022-11-11 20:54:18', '2022-11-11 20:54:18'),
(167, 49, 5, 33, 5, '2022-11-11 20:54:18', '2022-11-11 20:54:18'),
(168, 49, 6, 33, 5, '2022-11-11 20:54:18', '2022-11-11 20:54:18'),
(169, 54, 1, 34, 1, '2022-11-11 20:55:56', '2022-11-11 20:55:56'),
(170, 54, 2, 34, 1, '2022-11-11 20:55:56', '2022-11-11 20:55:56'),
(171, 54, 3, 34, 1, '2022-11-11 20:55:56', '2022-11-11 20:55:56'),
(172, 59, 1, 35, 2, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(173, 59, 2, 35, 2, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(174, 59, 3, 35, 2, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(175, 58, 4, 35, 2, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(176, 58, 5, 35, 2, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(177, 53, 6, 35, 2, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(178, 53, 7, 35, 2, '2022-11-11 20:57:17', '2022-11-11 20:57:17'),
(179, 58, 1, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(180, 58, 2, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(181, 55, 3, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(182, 57, 4, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(183, 57, 5, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(184, 57, 6, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(185, 59, 7, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(186, 57, 8, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(187, 57, 9, 36, 3, '2022-11-11 21:03:13', '2022-11-11 21:03:13'),
(188, 58, 1, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(189, 58, 2, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(190, 56, 3, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(191, 56, 4, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(192, 56, 5, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(193, 56, 6, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(194, 59, 7, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(195, 59, 8, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(196, 60, 9, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(197, 60, 10, 37, 4, '2022-11-11 21:07:29', '2022-11-11 21:07:29'),
(198, 57, 1, 38, 5, '2022-11-11 21:10:14', '2022-11-11 21:10:14'),
(199, 57, 2, 38, 5, '2022-11-11 21:10:14', '2022-11-11 21:10:14'),
(200, 57, 3, 38, 5, '2022-11-11 21:10:14', '2022-11-11 21:10:14'),
(201, 55, 5, 38, 5, '2022-11-11 21:10:14', '2022-11-11 21:10:14'),
(202, 55, 6, 38, 5, '2022-11-11 21:10:14', '2022-11-11 21:10:14'),
(203, 53, 7, 38, 5, '2022-11-11 21:10:14', '2022-11-11 21:10:14'),
(204, 59, 3, 39, 6, '2022-11-11 21:11:08', '2022-11-11 21:11:08'),
(205, 59, 4, 39, 6, '2022-11-11 21:11:08', '2022-11-11 21:11:08'),
(206, 10, 1, 40, 1, '2022-11-15 08:00:26', '2022-11-15 08:00:26'),
(207, 10, 2, 40, 1, '2022-11-15 08:00:26', '2022-11-15 08:00:26'),
(208, 9, 3, 40, 1, '2022-11-15 08:00:26', '2022-11-15 08:00:26'),
(209, 8, 4, 40, 1, '2022-11-15 08:00:26', '2022-11-15 08:00:26'),
(210, 8, 5, 40, 1, '2022-11-15 08:00:26', '2022-11-15 08:00:26'),
(211, 12, 1, 41, 2, '2022-11-15 08:01:47', '2022-11-15 08:01:47'),
(212, 12, 2, 41, 2, '2022-11-15 08:01:47', '2022-11-15 08:01:47'),
(213, 13, 3, 41, 2, '2022-11-15 08:01:47', '2022-11-15 08:01:47'),
(214, 8, 6, 41, 2, '2022-11-15 08:01:47', '2022-11-15 08:01:47'),
(215, 8, 7, 41, 2, '2022-11-15 08:01:47', '2022-11-15 08:01:47'),
(216, 8, 1, 42, 3, '2022-11-15 08:02:27', '2022-11-15 08:02:27'),
(217, 8, 2, 42, 3, '2022-11-15 08:02:27', '2022-11-15 08:02:27'),
(218, 12, 3, 42, 3, '2022-11-15 08:02:27', '2022-11-15 08:02:27'),
(219, 12, 4, 42, 3, '2022-11-15 08:02:27', '2022-11-15 08:02:27'),
(220, 10, 1, 43, 4, '2022-11-15 08:03:40', '2022-11-15 08:03:40'),
(221, 10, 2, 43, 4, '2022-11-15 08:03:40', '2022-11-15 08:03:40'),
(222, 12, 3, 43, 4, '2022-11-15 08:03:40', '2022-11-15 08:03:40'),
(223, 9, 5, 43, 4, '2022-11-15 08:03:40', '2022-11-15 08:03:40'),
(224, 13, 1, 44, 5, '2022-11-15 08:06:32', '2022-11-15 08:06:32'),
(225, 11, 3, 44, 5, '2022-11-15 08:06:32', '2022-11-15 08:06:32'),
(226, 11, 4, 44, 5, '2022-11-15 08:06:32', '2022-11-15 08:06:32'),
(227, 9, 5, 44, 5, '2022-11-15 08:06:32', '2022-11-15 08:06:32'),
(228, 12, 7, 44, 5, '2022-11-15 08:06:32', '2022-11-15 08:06:32'),
(229, 12, 8, 44, 5, '2022-11-15 08:06:32', '2022-11-15 08:06:32'),
(230, 14, 3, 45, 6, '2022-11-15 08:07:17', '2022-11-15 08:07:17'),
(231, 14, 4, 45, 6, '2022-11-15 08:07:17', '2022-11-15 08:07:17'),
(232, 66, 1, 46, 1, '2022-11-15 08:14:19', '2022-11-15 08:14:19'),
(233, 66, 2, 46, 1, '2022-11-15 08:14:19', '2022-11-15 08:14:19'),
(234, 62, 3, 46, 1, '2022-11-15 08:14:19', '2022-11-15 08:14:19'),
(235, 62, 4, 46, 1, '2022-11-15 08:14:19', '2022-11-15 08:14:19'),
(236, 61, 5, 46, 1, '2022-11-15 08:14:19', '2022-11-15 08:14:19'),
(237, 61, 6, 46, 1, '2022-11-15 08:14:19', '2022-11-15 08:14:19'),
(238, 63, 1, 47, 2, '2022-11-15 08:15:13', '2022-11-15 08:15:13'),
(239, 63, 2, 47, 2, '2022-11-15 08:15:13', '2022-11-15 08:15:13'),
(240, 64, 3, 47, 2, '2022-11-15 08:15:13', '2022-11-15 08:15:13'),
(241, 61, 5, 47, 2, '2022-11-15 08:15:13', '2022-11-15 08:15:13'),
(242, 61, 6, 47, 2, '2022-11-15 08:15:13', '2022-11-15 08:15:13'),
(243, 62, 1, 48, 3, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(244, 62, 2, 48, 3, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(245, 66, 3, 48, 3, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(246, 66, 4, 48, 3, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(247, 64, 6, 48, 3, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(248, 66, 8, 48, 3, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(249, 66, 9, 48, 3, '2022-11-15 08:16:34', '2022-11-15 08:16:34'),
(250, 65, 1, 49, 4, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(251, 65, 2, 49, 4, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(252, 65, 3, 49, 4, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(253, 63, 5, 49, 4, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(254, 63, 6, 49, 4, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(255, 67, 9, 49, 4, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(256, 67, 10, 49, 4, '2022-11-15 08:18:04', '2022-11-15 08:18:04'),
(257, 65, 1, 50, 5, '2022-11-15 08:19:05', '2022-11-15 08:19:05'),
(258, 65, 2, 50, 5, '2022-11-15 08:19:05', '2022-11-15 08:19:05'),
(259, 61, 4, 50, 5, '2022-11-15 08:19:05', '2022-11-15 08:19:05'),
(260, 61, 5, 50, 5, '2022-11-15 08:19:05', '2022-11-15 08:19:05'),
(261, 65, 6, 50, 5, '2022-11-15 08:19:05', '2022-11-15 08:19:05'),
(262, 65, 7, 50, 5, '2022-11-15 08:19:05', '2022-11-15 08:19:05'),
(263, 64, 3, 51, 6, '2022-11-15 08:20:18', '2022-11-15 08:20:18'),
(264, 64, 4, 51, 6, '2022-11-15 08:20:18', '2022-11-15 08:20:18'),
(265, 74, 11, 52, 1, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(266, 72, 12, 52, 1, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(267, 72, 16, 52, 1, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(268, 97, 14, 52, 1, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(269, 73, 11, 52, 2, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(270, 73, 12, 52, 2, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(271, 71, 14, 52, 2, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(272, 71, 15, 52, 2, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(273, 69, 12, 52, 3, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(274, 69, 16, 52, 3, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(275, 70, 14, 52, 3, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(276, 70, 15, 52, 3, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(277, 73, 11, 52, 4, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(278, 73, 12, 52, 4, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(279, 74, 16, 52, 4, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(280, 71, 14, 52, 4, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(281, 70, 15, 52, 4, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(282, 74, 12, 52, 5, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(283, 74, 16, 52, 5, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(284, 72, 11, 52, 6, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(285, 69, 12, 52, 6, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(286, 69, 16, 52, 6, '2023-01-20 09:03:55', '2023-01-20 09:03:55'),
(287, 81, 19, 53, 1, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(288, 81, 19, 53, 1, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(289, 98, 20, 53, 1, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(290, 80, 21, 53, 1, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(291, 80, 22, 53, 1, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(292, 79, 18, 53, 2, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(293, 79, 19, 53, 2, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(294, 76, 20, 53, 2, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(295, 80, 21, 53, 2, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(296, 80, 22, 53, 2, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(297, 76, 18, 53, 3, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(298, 76, 19, 53, 3, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(299, 78, 21, 53, 3, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(300, 78, 22, 53, 3, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(301, 78, 19, 53, 4, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(302, 76, 20, 53, 4, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(303, 77, 21, 53, 4, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(304, 79, 19, 53, 5, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(305, 77, 21, 53, 5, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(306, 77, 22, 53, 5, '2023-01-20 09:51:32', '2023-01-20 09:51:32'),
(307, 84, 18, 54, 1, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(308, 84, 19, 54, 1, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(309, 85, 21, 54, 1, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(310, 85, 22, 54, 1, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(311, 83, 18, 54, 2, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(312, 83, 19, 54, 2, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(313, 86, 20, 54, 2, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(314, 86, 21, 54, 2, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(315, 88, 18, 54, 3, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(316, 83, 20, 54, 3, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(317, 83, 21, 54, 3, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(318, 99, 22, 54, 3, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(319, 85, 18, 54, 4, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(320, 87, 21, 54, 4, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(321, 87, 22, 54, 4, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(322, 86, 18, 54, 5, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(323, 84, 19, 54, 5, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(324, 84, 20, 54, 5, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(325, 88, 21, 54, 5, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(326, 88, 22, 54, 5, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(327, 87, 18, 54, 6, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(328, 87, 19, 54, 6, '2023-01-20 10:15:14', '2023-01-20 10:15:14'),
(329, 92, 11, 55, 1, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(330, 92, 12, 55, 1, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(331, 93, 14, 55, 1, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(332, 93, 15, 55, 1, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(333, 90, 11, 55, 2, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(334, 90, 12, 55, 2, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(335, 91, 14, 55, 2, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(336, 91, 15, 55, 2, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(337, 95, 11, 55, 3, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(338, 95, 12, 55, 3, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(339, 90, 14, 55, 3, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(340, 90, 15, 55, 3, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(341, 94, 11, 55, 4, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(342, 94, 12, 55, 4, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(343, 91, 16, 55, 4, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(344, 91, 14, 55, 4, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(345, 92, 11, 55, 5, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(346, 92, 12, 55, 5, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(347, 95, 14, 55, 5, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(348, 95, 15, 55, 5, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(349, 93, 11, 55, 6, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(350, 93, 12, 55, 6, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(351, 94, 16, 55, 6, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(352, 94, 14, 55, 6, '2023-01-20 10:31:37', '2023-01-20 10:31:37'),
(353, 69, 11, 56, 1, '2023-07-12 08:17:40', '2023-07-12 08:17:40'),
(354, 256, 23, 56, 1, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(355, 256, 24, 56, 1, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(356, 253, 25, 56, 1, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(357, 253, 26, 56, 1, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(358, 251, 27, 56, 1, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(359, 251, 28, 56, 1, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(360, 252, 29, 56, 1, '2023-08-23 08:18:53', '2023-08-23 08:18:53'),
(361, 279, 23, 57, 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(362, 256, 24, 57, 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(363, 281, 25, 57, 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(364, 281, 26, 57, 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(365, 251, 27, 57, 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(366, 251, 28, 57, 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(367, 257, 29, 57, 2, '2023-09-07 04:11:56', '2023-09-07 04:11:56'),
(368, 255, 23, 58, 3, '2023-09-07 04:25:42', '2023-09-07 04:25:42'),
(369, 255, 24, 58, 3, '2023-09-07 04:25:42', '2023-09-07 04:25:42'),
(370, 282, 25, 58, 3, '2023-09-07 04:25:42', '2023-09-07 04:25:42'),
(371, 282, 26, 58, 3, '2023-09-07 04:25:42', '2023-09-07 04:25:42'),
(372, 254, 23, 59, 4, '2023-09-07 04:27:00', '2023-09-07 04:27:00'),
(373, 254, 24, 59, 4, '2023-09-07 04:27:00', '2023-09-07 04:27:00'),
(374, 253, 25, 59, 4, '2023-09-07 04:27:00', '2023-09-07 04:27:00'),
(375, 253, 26, 59, 4, '2023-09-07 04:27:00', '2023-09-07 04:27:00'),
(376, 282, 28, 59, 4, '2023-09-07 04:27:00', '2023-09-07 04:27:00'),
(377, 282, 29, 59, 4, '2023-09-07 04:27:00', '2023-09-07 04:27:00'),
(378, 255, 23, 60, 5, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(379, 255, 24, 60, 5, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(380, 282, 25, 60, 5, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(381, 282, 26, 60, 5, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(382, 252, 27, 60, 5, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(383, 252, 28, 60, 5, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(384, 251, 29, 60, 5, '2023-09-07 04:28:51', '2023-09-07 04:28:51'),
(385, 258, 23, 61, 1, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(386, 258, 24, 61, 1, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(387, 260, 25, 61, 1, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(388, 260, 26, 61, 1, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(389, 259, 27, 61, 1, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(390, 259, 28, 61, 1, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(391, 261, 29, 61, 1, '2023-09-07 04:30:39', '2023-09-07 04:30:39'),
(392, 263, 23, 62, 2, '2023-09-07 04:31:54', '2023-09-07 04:31:54'),
(393, 283, 24, 62, 2, '2023-09-07 04:31:54', '2023-09-07 04:31:54'),
(394, 261, 25, 62, 2, '2023-09-07 04:31:54', '2023-09-07 04:31:54'),
(395, 261, 26, 62, 2, '2023-09-07 04:31:54', '2023-09-07 04:31:54'),
(396, 284, 28, 62, 2, '2023-09-07 04:31:54', '2023-09-07 04:31:54'),
(397, 264, 29, 62, 2, '2023-09-07 04:31:54', '2023-09-07 04:31:54'),
(398, 258, 23, 63, 3, '2023-09-07 04:32:39', '2023-09-07 04:32:39'),
(399, 258, 24, 63, 3, '2023-09-07 04:32:39', '2023-09-07 04:32:39'),
(400, 262, 25, 63, 3, '2023-09-07 04:32:39', '2023-09-07 04:32:39'),
(401, 262, 26, 63, 3, '2023-09-07 04:32:39', '2023-09-07 04:32:39'),
(402, 260, 23, 64, 4, '2023-09-07 04:33:46', '2023-09-07 04:33:46'),
(403, 260, 24, 64, 4, '2023-09-07 04:33:46', '2023-09-07 04:33:46'),
(404, 285, 25, 64, 4, '2023-09-07 04:33:46', '2023-09-07 04:33:46'),
(405, 285, 26, 64, 4, '2023-09-07 04:33:46', '2023-09-07 04:33:46'),
(406, 284, 28, 64, 4, '2023-09-07 04:33:46', '2023-09-07 04:33:46'),
(407, 284, 29, 64, 4, '2023-09-07 04:33:46', '2023-09-07 04:33:46'),
(408, 263, 23, 65, 5, '2023-09-07 04:35:27', '2023-09-07 04:35:27'),
(409, 263, 24, 65, 5, '2023-09-07 04:35:27', '2023-09-07 04:35:27'),
(410, 262, 25, 65, 5, '2023-09-07 04:35:27', '2023-09-07 04:35:27'),
(411, 262, 26, 65, 5, '2023-09-07 04:35:27', '2023-09-07 04:35:27'),
(412, 258, 28, 65, 5, '2023-09-07 04:35:27', '2023-09-07 04:35:27'),
(413, 259, 29, 65, 5, '2023-09-07 04:35:28', '2023-09-07 04:35:28'),
(414, 268, 23, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(415, 268, 24, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(416, 267, 25, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(417, 267, 26, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(418, 269, 27, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(419, 269, 27, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(420, 269, 28, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(421, 266, 29, 66, 1, '2023-09-07 04:36:59', '2023-09-07 04:36:59'),
(422, 270, 23, 67, 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(423, 270, 24, 67, 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(424, 286, 25, 67, 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(425, 265, 26, 67, 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(426, 269, 27, 67, 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(427, 269, 28, 67, 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(428, 266, 29, 67, 2, '2023-09-07 04:38:38', '2023-09-07 04:38:38'),
(429, 265, 23, 68, 3, '2023-09-07 04:39:34', '2023-09-07 04:39:34'),
(430, 265, 24, 68, 3, '2023-09-07 04:39:34', '2023-09-07 04:39:34'),
(431, 270, 25, 68, 3, '2023-09-07 04:39:34', '2023-09-07 04:39:34'),
(432, 270, 26, 68, 3, '2023-09-07 04:39:34', '2023-09-07 04:39:34'),
(433, 267, 23, 69, 4, '2023-09-07 04:40:26', '2023-09-07 04:40:26'),
(434, 267, 24, 69, 4, '2023-09-07 04:40:26', '2023-09-07 04:40:26'),
(435, 268, 25, 69, 4, '2023-09-07 04:40:26', '2023-09-07 04:40:26'),
(436, 268, 26, 69, 4, '2023-09-07 04:40:26', '2023-09-07 04:40:26'),
(437, 266, 28, 69, 4, '2023-09-07 04:40:26', '2023-09-07 04:40:26'),
(438, 266, 29, 69, 4, '2023-09-07 04:40:26', '2023-09-07 04:40:26'),
(439, 265, 23, 70, 5, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(440, 265, 24, 70, 5, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(441, 288, 25, 70, 5, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(442, 288, 26, 70, 5, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(443, 287, 27, 70, 5, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(444, 287, 28, 70, 5, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(445, 271, 29, 70, 5, '2023-09-07 04:41:39', '2023-09-07 04:41:39'),
(446, 276, 23, 71, 1, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(447, 276, 24, 71, 1, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(448, 274, 25, 71, 1, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(449, 274, 26, 71, 1, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(450, 275, 27, 71, 1, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(451, 275, 28, 71, 1, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(452, 277, 29, 71, 1, '2023-09-07 04:42:56', '2023-09-07 04:42:56'),
(453, 275, 23, 72, 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(454, 275, 24, 72, 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(455, 272, 25, 72, 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(456, 272, 26, 72, 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(457, 289, 27, 72, 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(458, 277, 28, 72, 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(459, 277, 29, 72, 2, '2023-09-07 04:43:52', '2023-09-07 04:43:52'),
(460, 272, 23, 73, 3, '2023-09-07 04:44:28', '2023-09-07 04:44:28'),
(461, 272, 24, 73, 3, '2023-09-07 04:44:28', '2023-09-07 04:44:28'),
(462, 273, 25, 73, 3, '2023-09-07 04:44:28', '2023-09-07 04:44:28'),
(463, 273, 26, 73, 3, '2023-09-07 04:44:28', '2023-09-07 04:44:28'),
(464, 277, 23, 74, 4, '2023-09-07 04:45:27', '2023-09-07 04:45:27'),
(465, 277, 24, 74, 4, '2023-09-07 04:45:27', '2023-09-07 04:45:27'),
(466, 276, 25, 74, 4, '2023-09-07 04:45:27', '2023-09-07 04:45:27'),
(467, 276, 26, 74, 4, '2023-09-07 04:45:27', '2023-09-07 04:45:27'),
(468, 274, 28, 74, 4, '2023-09-07 04:45:27', '2023-09-07 04:45:27'),
(469, 274, 29, 74, 4, '2023-09-07 04:45:27', '2023-09-07 04:45:27'),
(470, 276, 23, 75, 5, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(471, 276, 24, 75, 5, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(472, 272, 25, 75, 5, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(473, 272, 26, 75, 5, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(474, 273, 27, 75, 5, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(475, 273, 28, 75, 5, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(476, 278, 29, 75, 5, '2023-09-07 04:46:33', '2023-09-07 04:46:33'),
(478, 93, 11, 77, 1, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(479, 93, 12, 77, 1, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(480, 94, 14, 77, 1, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(481, 94, 15, 77, 1, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(482, 91, 11, 77, 2, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(483, 91, 12, 77, 2, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(484, 90, 11, 77, 3, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(485, 90, 12, 77, 3, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(486, 95, 15, 77, 3, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(487, 91, 11, 77, 4, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(488, 91, 12, 77, 4, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(489, 94, 13, 77, 4, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(490, 94, 14, 77, 4, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(491, 96, 15, 77, 4, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(492, 92, 11, 77, 5, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(493, 92, 12, 77, 5, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(494, 95, 14, 77, 5, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(495, 95, 15, 77, 5, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(496, 90, 11, 77, 6, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(497, 90, 12, 77, 6, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(498, 92, 13, 77, 6, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(499, 93, 14, 77, 6, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(500, 93, 15, 77, 6, '2023-10-10 10:36:18', '2023-10-10 10:36:18'),
(501, 83, 11, 78, 1, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(502, 86, 13, 78, 1, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(503, 84, 14, 78, 1, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(504, 84, 15, 78, 1, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(505, 83, 11, 78, 2, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(506, 83, 12, 78, 2, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(507, 88, 11, 78, 3, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(508, 88, 12, 78, 3, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(509, 84, 13, 78, 3, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(510, 84, 14, 78, 3, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(511, 83, 11, 78, 4, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(512, 85, 13, 78, 5, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(513, 85, 14, 78, 5, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(514, 99, 15, 78, 5, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(515, 85, 11, 78, 6, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(516, 86, 12, 78, 6, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(517, 86, 13, 78, 6, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(518, 88, 14, 78, 6, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(519, 88, 15, 78, 6, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(520, 87, 13, 78, 2, '2023-10-10 11:08:29', '2023-10-10 11:08:29'),
(521, 80, 18, 79, 1, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(522, 80, 19, 79, 1, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(523, 77, 22, 79, 1, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(524, 78, 18, 79, 2, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(525, 76, 19, 79, 2, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(526, 76, 20, 79, 2, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(527, 80, 21, 79, 2, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(528, 80, 22, 79, 2, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(529, 81, 19, 79, 3, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(530, 81, 20, 79, 3, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(531, 76, 21, 79, 3, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(532, 76, 22, 79, 3, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(533, 98, 18, 79, 4, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(534, 79, 20, 79, 4, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(535, 78, 21, 79, 4, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(536, 78, 22, 79, 4, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(537, 77, 19, 79, 5, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(538, 79, 21, 79, 5, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(539, 82, 11, 79, 6, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(540, 82, 12, 79, 6, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(541, 82, 11, 79, 3, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(542, 82, 12, 79, 3, '2023-10-10 11:32:37', '2023-10-10 11:32:37'),
(551, 75, 11, 82, 3, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(552, 75, 12, 82, 3, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(553, 69, 18, 82, 3, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(554, 69, 19, 82, 3, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(555, 71, 20, 82, 3, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(556, 70, 21, 82, 3, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(557, 70, 22, 82, 3, '2023-10-10 11:43:17', '2023-10-10 11:43:17'),
(559, 97, 19, 83, 4, '2023-10-10 11:45:01', '2023-10-10 11:45:01'),
(560, 72, 21, 83, 4, '2023-10-10 11:45:01', '2023-10-10 11:45:01'),
(561, 72, 22, 83, 4, '2023-10-10 11:45:01', '2023-10-10 11:45:01'),
(562, 73, 18, 84, 5, '2023-10-10 11:47:26', '2023-10-10 11:47:26'),
(563, 73, 19, 84, 5, '2023-10-10 11:47:26', '2023-10-10 11:47:26'),
(565, 72, 22, 84, 5, '2023-10-10 11:47:26', '2023-10-10 11:47:26'),
(566, 75, 11, 85, 6, '2023-10-10 11:48:04', '2023-10-10 11:48:04'),
(567, 75, 12, 85, 6, '2023-10-10 11:48:04', '2023-10-10 11:48:04'),
(571, 70, 18, 80, 1, '2023-10-24 12:19:37', '2023-10-24 12:19:37'),
(572, 74, 19, 80, 1, '2023-10-24 12:20:11', '2023-10-24 12:20:11'),
(573, 73, 20, 80, 1, '2023-10-24 12:20:45', '2023-10-24 12:20:45'),
(574, 73, 21, 80, 1, '2023-10-24 12:21:19', '2023-10-24 12:21:19'),
(575, 74, 18, 81, 2, '2023-10-24 12:24:19', '2023-10-24 12:24:19'),
(576, 71, 19, 81, 2, '2023-10-24 12:24:43', '2023-10-24 12:24:43'),
(577, 71, 20, 81, 2, '2023-10-24 12:25:01', '2023-10-24 12:25:01'),
(578, 69, 21, 81, 2, '2023-10-24 12:25:35', '2023-10-24 12:25:35'),
(579, 69, 22, 81, 2, '2023-10-24 12:26:05', '2023-10-24 12:26:05'),
(580, 80, 18, 91, 1, '2023-10-24 12:30:29', '2023-10-24 12:30:29'),
(581, 80, 19, 91, 1, '2023-10-24 12:31:14', '2023-10-24 12:31:14'),
(582, 77, 20, 91, 1, '2023-10-24 12:31:40', '2023-10-24 12:31:40'),
(583, 78, 18, 91, 2, '2023-10-24 12:32:26', '2023-10-24 12:32:26'),
(584, 76, 19, 91, 2, '2023-10-24 12:33:12', '2023-10-24 12:33:12'),
(585, 76, 20, 91, 2, '2023-10-24 12:33:38', '2023-10-24 12:33:38'),
(586, 80, 21, 91, 2, '2023-10-24 12:34:07', '2023-10-24 12:34:07'),
(587, 80, 22, 91, 2, '2023-10-24 12:34:30', '2023-10-24 12:34:30'),
(588, 81, 19, 91, 3, '2023-10-24 12:35:16', '2023-10-24 12:35:16'),
(589, 81, 20, 91, 3, '2023-10-24 12:36:58', '2023-10-24 12:36:58'),
(590, 76, 21, 91, 3, '2023-10-24 12:37:37', '2023-10-24 12:37:37'),
(591, 76, 22, 91, 3, '2023-10-24 12:38:34', '2023-10-24 12:38:34'),
(592, 98, 18, 91, 4, '2023-10-24 12:39:16', '2023-10-24 12:39:16'),
(593, 79, 19, 91, 4, '2023-10-24 12:39:44', '2023-10-24 12:39:44'),
(594, 79, 20, 91, 4, '2023-10-24 12:40:05', '2023-10-24 12:40:05'),
(595, 78, 21, 91, 4, '2023-10-24 12:40:43', '2023-10-24 12:40:43'),
(596, 78, 22, 91, 4, '2023-10-24 12:41:04', '2023-10-24 12:41:04'),
(597, 77, 18, 91, 5, '2023-10-24 12:42:40', '2023-10-24 12:42:40'),
(598, 77, 19, 91, 5, '2023-10-24 12:43:07', '2023-10-24 12:43:07'),
(599, 79, 21, 91, 5, '2023-10-24 12:44:08', '2023-10-24 12:44:08'),
(600, 82, 11, 91, 6, '2023-10-24 12:44:54', '2023-10-24 12:44:54'),
(601, 82, 12, 91, 6, '2023-10-24 12:45:21', '2023-10-24 12:45:21'),
(602, 83, 11, 93, 1, '2023-10-24 13:14:02', '2023-10-24 13:14:02'),
(603, 86, 13, 93, 1, '2023-10-24 13:15:00', '2023-10-24 13:15:00'),
(604, 86, 14, 93, 1, '2023-10-24 13:15:29', '2023-10-24 13:15:29'),
(605, 84, 15, 93, 1, '2023-10-24 13:16:37', '2023-10-24 13:16:37'),
(606, 83, 11, 93, 2, '2023-10-24 13:17:03', '2023-10-24 13:17:03'),
(607, 83, 12, 93, 2, '2023-10-24 13:17:28', '2023-10-24 13:17:28'),
(608, 87, 13, 93, 2, '2023-10-24 13:17:50', '2023-10-24 13:17:50'),
(609, 88, 11, 93, 3, '2023-10-24 13:18:15', '2023-10-24 13:18:15'),
(610, 88, 12, 93, 3, '2023-10-24 13:18:39', '2023-10-24 13:18:39'),
(611, 84, 13, 93, 3, '2023-10-24 13:19:31', '2023-10-24 13:19:31'),
(612, 84, 14, 93, 3, '2023-10-24 13:20:18', '2023-10-24 13:20:18'),
(613, 87, 18, 93, 3, '2023-10-24 13:21:25', '2023-10-24 13:21:25'),
(614, 87, 19, 93, 3, '2023-10-24 13:21:48', '2023-10-24 13:21:48'),
(615, 83, 11, 93, 4, '2023-10-24 13:22:55', '2023-10-24 13:22:55'),
(616, 85, 13, 93, 5, '2023-10-24 13:24:20', '2023-10-24 13:24:20'),
(617, 84, 14, 93, 5, '2023-10-24 13:24:47', '2023-10-24 13:24:47'),
(618, 99, 15, 93, 5, '2023-10-24 13:25:17', '2023-10-24 13:25:17'),
(619, 85, 11, 93, 6, '2023-10-24 13:25:45', '2023-10-24 13:25:45'),
(620, 85, 12, 93, 6, '2023-10-24 13:26:23', '2023-10-24 13:26:23'),
(621, 86, 13, 93, 6, '2023-10-24 13:26:46', '2023-10-24 13:26:46'),
(622, 86, 14, 93, 6, '2023-10-24 13:27:13', '2023-10-24 13:27:13'),
(623, 88, 15, 93, 6, '2023-10-24 13:27:43', '2023-10-24 13:27:43'),
(624, 88, 18, 93, 6, '2023-10-24 13:28:15', '2023-10-24 13:28:15');

-- --------------------------------------------------------

--
-- Structure de la table `ligne_releve_notes`
--

CREATE TABLE `ligne_releve_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `releve_id` int(11) NOT NULL DEFAULT '0',
  `programme_ligne_ecole_id` int(11) NOT NULL DEFAULT '0',
  `note_id` int(11) NOT NULL DEFAULT '0',
  `valeur` double(8,2) NOT NULL DEFAULT '0.00',
  `coefficient` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

CREATE TABLE `matieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abv` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`id`, `name`, `abv`, `ecole_id`, `created_at`, `updated_at`) VALUES
(1, 'Mathématiques', 'Math', 0, '2022-09-23 09:53:40', '2022-09-23 09:53:40'),
(2, 'Physique-Chimie', 'PC', 0, '2022-09-23 09:54:21', '2022-09-23 09:54:21'),
(3, 'Philosophie', 'Fie', 0, '2022-09-23 09:54:48', '2022-09-23 09:54:48'),
(4, 'Anglais', 'Ang', 0, '2022-09-23 09:55:17', '2022-09-23 09:55:17'),
(5, 'Français', 'Fr', 0, '2022-09-23 09:55:33', '2022-09-23 09:55:33'),
(6, 'Histoire-Géographie', 'HG', 0, '2022-09-23 09:55:55', '2022-09-23 09:55:55'),
(7, 'Education Physique et Sportive', 'EPS', 0, '2022-09-23 09:56:20', '2022-09-23 09:56:20'),
(8, 'Sciences de la vie et de la terre', 'SVT', 0, '2022-09-23 09:57:39', '2022-09-23 09:57:39'),
(9, 'Espagnol', 'Esp', 0, '2022-09-28 08:27:21', '2022-09-28 08:27:21'),
(10, 'Espagnol (esp)', 'Esp', 1, '2022-11-11 12:35:56', '2022-11-11 12:35:56'),
(11, 'Espagnol (collège)', 'Esp', 5, '2023-01-20 08:47:25', '2023-01-20 08:47:25'),
(12, 'Art plastique', 'AP', 11, '2023-08-23 08:21:13', '2023-08-23 08:21:13'),
(13, 'Etudes', 'Etd', 11, '2023-08-23 08:31:19', '2023-08-23 08:31:19'),
(14, 'Club d\'Anglais', 'CA', 11, '2023-08-23 08:49:50', '2023-08-23 08:49:50'),
(15, 'Informatique', 'Infor.', 12, '2023-12-14 08:18:59', '2023-12-14 08:18:59'),
(16, 'Dictée et Questions', 'Dic./Qt.', 12, '2023-12-14 08:20:39', '2023-12-14 08:20:39'),
(17, 'Orthographe', 'Ortho.', 12, '2023-12-14 08:23:40', '2023-12-14 08:23:40'),
(18, 'Vocabulaire', 'Voc.', 12, '2023-12-14 08:34:58', '2023-12-14 08:34:58'),
(19, 'Grammaire', 'Gram.', 12, '2023-12-14 08:35:24', '2023-12-14 08:35:24'),
(20, 'Conjugaison', 'Conj.', 12, '2023-12-14 08:35:58', '2023-12-14 08:35:58'),
(21, 'Expression écrite', 'Expr./écr.', 12, '2023-12-14 08:36:59', '2023-12-14 08:36:59');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_05_123140_create_eleves_table', 1),
(5, '2021_04_05_123404_create_inscriptions_table', 1),
(6, '2021_04_05_123421_create_roles_table', 1),
(7, '2021_04_05_123437_create_series_table', 1),
(8, '2021_04_05_123455_create_ecolages_table', 1),
(9, '2021_04_05_123543_create_mois_table', 1),
(10, '2021_04_16_135617_create_cours_table', 1),
(11, '2021_04_16_135651_create_matieres_table', 1),
(12, '2021_04_16_135826_create_tranche_horaires_table', 1),
(13, '2021_04_19_095649_create_annee_acads_table', 1),
(14, '2021_04_26_182741_create_emploie_temps_table', 1),
(15, '2021_04_28_091330_create_profs_table', 1),
(16, '2021_04_28_091350_create_diplomes_table', 1),
(17, '2022_05_01_142311_create_classes_table', 1),
(18, '2022_05_10_134931_create_parent_ecoles_table', 1),
(19, '2022_05_16_100809_create_ligne_emploi_temps_table', 1),
(20, '2022_05_18_092216_create_trimestre_ecoles_table', 1),
(21, '2022_05_20_113622_create_releve_notes_table', 1),
(22, '2022_05_20_114108_create_ligne_releve_notes_table', 1),
(23, '2022_05_28_193725_create_releve_traites_table', 1),
(24, '2022_06_14_072120_create_categories_depenses_table', 1),
(25, '2022_06_14_072455_create_categories_entrees_table', 1),
(26, '2022_06_14_072600_create_depenses_table', 1),
(27, '2022_06_14_073150_create_entrees_table', 1),
(28, '2022_06_14_095455_create_suivi_paiements_table', 1),
(29, '2022_07_15_161242_create_days_table', 1),
(30, '2022_09_22_100643_create_abscences_table', 1),
(31, '2022_09_22_141715_create_pointages_table', 2),
(32, '2022_09_23_104528_create_types_enseignements_table', 2),
(33, '2022_09_23_111921_create_niveaux_table', 3),
(34, '2022_09_23_114917_create_programmes_national_table', 4);

-- --------------------------------------------------------

--
-- Structure de la table `mois`
--

CREATE TABLE `mois` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mois`
--

INSERT INTO `mois` (`id`, `name`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Janvier', 1, NULL, NULL),
(2, 'Février', 1, NULL, NULL),
(3, 'Mars', 1, NULL, NULL),
(4, 'Avril', 1, NULL, NULL),
(5, 'Mai', 1, NULL, NULL),
(6, 'Juin', 1, NULL, NULL),
(7, 'Juillet', 1, NULL, NULL),
(8, 'Aôut', 1, NULL, NULL),
(9, 'Septembre', 1, NULL, NULL),
(10, 'Octobre', 1, NULL, NULL),
(11, 'Novembre', 1, NULL, NULL),
(12, 'Décembre', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `niveaux`
--

CREATE TABLE `niveaux` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `niveaux`
--

INSERT INTO `niveaux` (`id`, `name`, `abb`, `created_at`, `updated_at`, `ecole_id`) VALUES
(1, 'SIXIEME', '6e', '2022-09-23 09:36:44', '2022-09-23 09:36:44', 0),
(2, 'CINQUIEME', '5e', '2022-09-23 09:38:08', '2022-09-23 09:38:08', 0),
(3, 'QUATRIEME', '4e', '2022-09-23 09:38:36', '2022-09-23 09:38:36', 0),
(4, 'TROISIEME', '3e', '2022-09-23 09:38:59', '2022-09-23 09:38:59', 0),
(5, 'SECONDE', '2nde', '2022-09-23 09:39:45', '2022-09-23 09:39:45', 0),
(6, 'PREMIERE', '1ere', '2022-09-23 09:40:14', '2022-09-23 09:40:14', 0),
(7, 'TERMINALE', 'tle', '2022-09-23 09:40:52', '2022-09-23 09:40:52', 0);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `inscription_id` int(11) NOT NULL DEFAULT '0',
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `trimestre_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `valeur` double NOT NULL DEFAULT '0',
  `ligne_ecole_programme_id` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `parent_ecoles`
--

CREATE TABLE `parent_ecoles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parent_ecoles`
--

INSERT INTO `parent_ecoles` (`id`, `parent_id`, `ecole_id`, `created_at`, `updated_at`) VALUES
(1, 43, 1, '2022-11-11 21:25:39', '2022-11-11 21:25:39'),
(2, 62, 5, '2022-12-15 14:32:36', '2022-12-15 14:32:36'),
(3, 63, 5, '2022-12-15 14:40:34', '2022-12-15 14:40:34'),
(4, 64, 5, '2022-12-15 14:41:52', '2022-12-15 14:41:52'),
(5, 65, 5, '2022-12-15 14:43:03', '2022-12-15 14:43:03'),
(6, 66, 5, '2022-12-15 14:51:19', '2022-12-15 14:51:19'),
(7, 67, 5, '2022-12-15 14:52:34', '2022-12-15 14:52:34'),
(8, 68, 5, '2022-12-15 14:53:40', '2022-12-15 14:53:40'),
(9, 69, 5, '2022-12-15 14:54:54', '2022-12-15 14:54:54'),
(10, 70, 5, '2022-12-15 14:56:08', '2022-12-15 14:56:08'),
(11, 71, 5, '2022-12-15 14:57:16', '2022-12-15 14:57:16'),
(12, 72, 5, '2022-12-15 14:58:22', '2022-12-15 14:58:22'),
(13, 73, 5, '2022-12-15 14:59:32', '2022-12-15 14:59:32'),
(14, 74, 5, '2022-12-15 15:01:02', '2022-12-15 15:01:02'),
(15, 75, 5, '2022-12-15 15:02:05', '2022-12-15 15:02:05'),
(16, 76, 5, '2022-12-15 15:03:50', '2022-12-15 15:03:50'),
(17, 77, 5, '2022-12-15 15:05:16', '2022-12-15 15:05:16'),
(18, 78, 5, '2022-12-15 15:06:50', '2022-12-15 15:06:50'),
(19, 79, 5, '2022-12-15 15:07:58', '2022-12-15 15:07:58'),
(20, 80, 5, '2022-12-15 15:08:57', '2022-12-15 15:08:57'),
(21, 81, 5, '2022-12-15 15:10:15', '2022-12-15 15:10:15'),
(22, 82, 5, '2022-12-15 15:11:11', '2022-12-15 15:11:11'),
(23, 83, 5, '2022-12-15 15:12:21', '2022-12-15 15:12:21'),
(24, 84, 5, '2022-12-15 15:14:03', '2022-12-15 15:14:03'),
(25, 85, 5, '2022-12-15 15:15:09', '2022-12-15 15:15:09'),
(26, 86, 5, '2022-12-15 15:16:27', '2022-12-15 15:16:27'),
(27, 87, 5, '2022-12-15 15:17:50', '2022-12-15 15:17:50'),
(28, 88, 5, '2022-12-15 15:19:03', '2022-12-15 15:19:03'),
(29, 89, 5, '2022-12-15 15:20:23', '2022-12-15 15:20:23'),
(30, 90, 5, '2022-12-15 15:21:54', '2022-12-15 15:21:54'),
(31, 91, 5, '2022-12-15 15:23:12', '2022-12-15 15:23:12'),
(32, 92, 5, '2022-12-15 15:24:26', '2022-12-15 15:24:26'),
(33, 93, 5, '2022-12-15 15:25:28', '2022-12-15 15:25:28'),
(34, 94, 5, '2022-12-15 15:26:29', '2022-12-15 15:26:29'),
(35, 95, 5, '2022-12-15 15:27:39', '2022-12-15 15:27:39'),
(36, 96, 5, '2022-12-15 15:28:57', '2022-12-15 15:28:57'),
(37, 97, 5, '2022-12-15 15:30:23', '2022-12-15 15:30:23'),
(38, 98, 5, '2022-12-15 15:32:19', '2022-12-15 15:32:19'),
(39, 99, 5, '2022-12-15 15:33:38', '2022-12-15 15:33:38'),
(40, 100, 5, '2022-12-15 15:34:38', '2022-12-15 15:34:38'),
(41, 101, 5, '2022-12-15 15:35:39', '2022-12-15 15:35:39'),
(42, 102, 5, '2022-12-15 15:36:51', '2022-12-15 15:36:51'),
(43, 103, 5, '2022-12-15 15:37:50', '2022-12-15 15:37:50'),
(44, 104, 5, '2022-12-15 15:39:05', '2022-12-15 15:39:05'),
(45, 105, 5, '2022-12-15 15:40:07', '2022-12-15 15:40:07'),
(46, 106, 5, '2022-12-15 15:41:08', '2022-12-15 15:41:08'),
(47, 107, 5, '2022-12-15 15:42:11', '2022-12-15 15:42:11'),
(48, 108, 5, '2022-12-15 15:43:07', '2022-12-15 15:43:07'),
(49, 109, 5, '2022-12-15 15:44:18', '2022-12-15 15:44:18'),
(50, 110, 5, '2022-12-15 15:45:53', '2022-12-15 15:45:53'),
(51, 111, 5, '2022-12-15 15:46:51', '2022-12-15 15:46:51'),
(52, 112, 5, '2022-12-15 15:48:20', '2022-12-15 15:48:20'),
(53, 113, 5, '2022-12-15 15:49:25', '2022-12-15 15:49:25'),
(54, 114, 5, '2022-12-15 15:50:46', '2022-12-15 15:50:46'),
(55, 115, 5, '2022-12-15 16:11:31', '2022-12-15 16:11:31'),
(56, 116, 5, '2022-12-15 16:12:42', '2022-12-15 16:12:42'),
(57, 117, 5, '2022-12-15 16:14:08', '2022-12-15 16:14:08'),
(58, 118, 5, '2022-12-15 16:15:11', '2022-12-15 16:15:11'),
(59, 119, 5, '2022-12-15 16:16:11', '2022-12-15 16:16:11'),
(60, 120, 5, '2022-12-15 16:17:51', '2022-12-15 16:17:51'),
(61, 121, 5, '2022-12-15 16:18:56', '2022-12-15 16:18:56'),
(62, 122, 5, '2022-12-15 16:20:11', '2022-12-15 16:20:11'),
(63, 123, 5, '2022-12-15 16:21:07', '2022-12-15 16:21:07'),
(64, 124, 5, '2022-12-15 16:22:26', '2022-12-15 16:22:26'),
(65, 125, 5, '2022-12-15 16:23:50', '2022-12-15 16:23:50'),
(66, 126, 5, '2022-12-15 16:24:51', '2022-12-15 16:24:51'),
(67, 127, 5, '2022-12-15 16:25:56', '2022-12-15 16:25:56'),
(68, 128, 5, '2022-12-15 16:26:53', '2022-12-15 16:26:53'),
(69, 129, 5, '2022-12-15 16:28:32', '2022-12-15 16:28:32'),
(70, 130, 5, '2022-12-15 16:29:38', '2022-12-15 16:29:38'),
(71, 131, 5, '2022-12-15 16:30:59', '2022-12-15 16:30:59'),
(72, 132, 5, '2022-12-15 16:34:37', '2022-12-15 16:34:37'),
(73, 133, 5, '2022-12-15 16:47:15', '2022-12-15 16:47:15'),
(74, 134, 5, '2022-12-15 16:48:33', '2022-12-15 16:48:33'),
(75, 135, 5, '2022-12-15 16:49:42', '2022-12-15 16:49:42'),
(76, 136, 5, '2022-12-15 16:50:40', '2022-12-15 16:50:40'),
(77, 137, 5, '2022-12-15 16:51:49', '2022-12-15 16:51:49'),
(78, 138, 5, '2022-12-15 16:53:21', '2022-12-15 16:53:21'),
(79, 139, 5, '2022-12-15 16:54:33', '2022-12-15 16:54:33'),
(80, 140, 5, '2022-12-15 16:55:31', '2022-12-15 16:55:31'),
(81, 141, 5, '2022-12-15 16:56:34', '2022-12-15 16:56:34'),
(82, 142, 5, '2022-12-15 16:57:55', '2022-12-15 16:57:55'),
(83, 143, 5, '2022-12-15 16:59:19', '2022-12-15 16:59:19'),
(84, 144, 5, '2022-12-15 17:00:56', '2022-12-15 17:00:56'),
(85, 145, 5, '2022-12-15 17:02:03', '2022-12-15 17:02:03'),
(86, 146, 5, '2022-12-15 17:03:36', '2022-12-15 17:03:36'),
(87, 147, 5, '2022-12-15 17:04:40', '2022-12-15 17:04:40'),
(88, 148, 5, '2022-12-15 17:06:17', '2022-12-15 17:06:17'),
(89, 149, 5, '2022-12-15 17:20:57', '2022-12-15 17:20:57'),
(90, 150, 5, '2022-12-15 17:22:08', '2022-12-15 17:22:08'),
(91, 151, 5, '2022-12-15 17:23:10', '2022-12-15 17:23:10'),
(92, 152, 5, '2022-12-15 17:24:07', '2022-12-15 17:24:07'),
(93, 153, 5, '2022-12-15 17:25:17', '2022-12-15 17:25:17'),
(94, 154, 5, '2022-12-15 17:26:32', '2022-12-15 17:26:32'),
(95, 155, 5, '2022-12-15 17:27:22', '2022-12-15 17:27:22'),
(96, 156, 5, '2022-12-15 17:29:00', '2022-12-15 17:29:00'),
(97, 157, 5, '2022-12-15 17:30:05', '2022-12-15 17:30:05'),
(98, 158, 5, '2022-12-15 17:31:10', '2022-12-15 17:31:10'),
(99, 159, 5, '2022-12-15 17:32:18', '2022-12-15 17:32:18'),
(100, 160, 5, '2022-12-15 17:33:36', '2022-12-15 17:33:36'),
(101, 161, 5, '2022-12-15 17:34:41', '2022-12-15 17:34:41'),
(102, 162, 5, '2022-12-15 17:35:40', '2022-12-15 17:35:40'),
(103, 186, 11, '2023-08-23 06:43:56', '2023-08-23 06:43:56'),
(104, 187, 11, '2023-08-23 06:55:01', '2023-08-23 06:55:01'),
(105, 204, 5, '2023-09-16 08:21:52', '2023-09-16 08:21:52'),
(106, 205, 5, '2023-09-16 10:07:38', '2023-09-16 10:07:38'),
(107, 206, 5, '2023-09-19 09:21:09', '2023-09-19 09:21:09'),
(108, 207, 5, '2023-09-19 10:37:14', '2023-09-19 10:37:14'),
(109, 208, 5, '2023-09-26 13:16:42', '2023-09-26 13:16:42'),
(110, 209, 5, '2023-09-26 13:25:19', '2023-09-26 13:25:19'),
(111, 210, 5, '2023-09-26 13:34:16', '2023-09-26 13:34:16'),
(112, 211, 5, '2023-09-28 11:53:50', '2023-09-28 11:53:50'),
(113, 212, 5, '2023-09-28 12:09:01', '2023-09-28 12:09:01'),
(114, 213, 5, '2023-09-28 12:50:20', '2023-09-28 12:50:20'),
(115, 214, 5, '2023-09-28 14:18:46', '2023-09-28 14:18:46'),
(116, 218, 5, '2023-10-02 12:37:52', '2023-10-02 12:37:52'),
(117, 221, 5, '2023-10-03 06:56:21', '2023-10-03 06:56:21'),
(118, 222, 5, '2023-10-03 07:07:05', '2023-10-03 07:07:05'),
(119, 224, 5, '2023-10-03 07:33:45', '2023-10-03 07:33:45'),
(120, 225, 5, '2023-10-03 07:45:07', '2023-10-03 07:45:07'),
(121, 226, 5, '2023-10-03 07:51:10', '2023-10-03 07:51:10'),
(122, 227, 5, '2023-10-03 08:03:00', '2023-10-03 08:03:00'),
(123, 228, 5, '2023-10-05 08:24:10', '2023-10-05 08:24:10'),
(124, 230, 5, '2023-10-05 09:29:34', '2023-10-05 09:29:34'),
(125, 231, 5, '2023-10-05 10:03:01', '2023-10-05 10:03:01'),
(126, 232, 5, '2023-10-05 10:27:23', '2023-10-05 10:27:23'),
(127, 233, 5, '2023-10-05 10:35:08', '2023-10-05 10:35:08'),
(128, 234, 5, '2023-10-05 11:09:28', '2023-10-05 11:09:28'),
(129, 235, 5, '2023-10-05 11:54:41', '2023-10-05 11:54:41'),
(130, 236, 5, '2023-10-05 12:00:50', '2023-10-05 12:00:50'),
(131, 238, 5, '2023-10-05 12:29:06', '2023-10-05 12:29:06'),
(132, 239, 5, '2023-10-05 12:37:06', '2023-10-05 12:37:06'),
(133, 240, 5, '2023-10-05 12:45:38', '2023-10-05 12:45:38'),
(134, 241, 5, '2023-10-06 12:45:04', '2023-10-06 12:45:04'),
(135, 242, 5, '2023-10-09 12:34:17', '2023-10-09 12:34:17'),
(136, 243, 5, '2023-10-09 12:49:44', '2023-10-09 12:49:44'),
(137, 244, 5, '2023-10-09 13:10:46', '2023-10-09 13:10:46'),
(138, 245, 5, '2023-10-09 13:19:33', '2023-10-09 13:19:33'),
(139, 246, 5, '2023-10-09 13:30:52', '2023-10-09 13:30:52'),
(140, 247, 5, '2023-10-09 13:35:35', '2023-10-09 13:35:35'),
(141, 248, 5, '2023-10-09 13:58:42', '2023-10-09 13:58:42'),
(142, 249, 5, '2023-10-09 14:04:32', '2023-10-09 14:04:32'),
(143, 250, 5, '2023-10-09 14:14:27', '2023-10-09 14:14:27'),
(144, 251, 5, '2023-10-09 14:24:00', '2023-10-09 14:24:00'),
(145, 252, 5, '2023-10-09 14:56:11', '2023-10-09 14:56:11'),
(146, 253, 5, '2023-10-09 15:01:46', '2023-10-09 15:01:46'),
(147, 254, 5, '2023-10-10 08:09:15', '2023-10-10 08:09:15'),
(148, 255, 5, '2023-10-10 08:13:32', '2023-10-10 08:13:32'),
(149, 259, 5, '2023-10-11 12:11:36', '2023-10-11 12:11:36'),
(150, 260, 5, '2023-10-11 12:31:11', '2023-10-11 12:31:11'),
(151, 261, 5, '2023-10-11 12:52:16', '2023-10-11 12:52:16'),
(152, 262, 5, '2023-10-11 13:26:17', '2023-10-11 13:26:17'),
(153, 265, 5, '2023-10-11 13:52:05', '2023-10-11 13:52:05'),
(154, 266, 5, '2023-10-12 08:51:45', '2023-10-12 08:51:45'),
(155, 267, 5, '2023-10-14 08:27:58', '2023-10-14 08:27:58'),
(156, 268, 5, '2023-10-16 11:11:05', '2023-10-16 11:11:05'),
(157, 271, 5, '2023-10-18 11:07:23', '2023-10-18 11:07:23'),
(158, 272, 5, '2023-10-18 11:19:27', '2023-10-18 11:19:27'),
(159, 273, 5, '2023-10-18 11:24:53', '2023-10-18 11:24:53'),
(160, 274, 5, '2023-10-24 10:49:26', '2023-10-24 10:49:26'),
(161, 275, 5, '2023-10-24 10:56:44', '2023-10-24 10:56:44'),
(162, 276, 5, '2023-10-27 14:26:04', '2023-10-27 14:26:04'),
(163, 277, 5, '2023-10-27 14:32:37', '2023-10-27 14:32:37'),
(164, 278, 5, '2023-11-02 12:45:54', '2023-11-02 12:45:54'),
(165, 279, 5, '2023-11-02 12:53:40', '2023-11-02 12:53:40'),
(166, 284, 5, '2023-11-09 07:00:56', '2023-11-09 07:00:56'),
(167, 291, 12, '2024-01-13 13:11:30', '2024-01-13 13:11:30'),
(168, 292, 12, '2024-01-13 13:57:19', '2024-01-13 13:57:19'),
(169, 293, 12, '2024-01-13 14:06:37', '2024-01-13 14:06:37'),
(170, 294, 12, '2024-01-13 14:15:36', '2024-01-13 14:15:36'),
(171, 295, 12, '2024-01-13 14:20:51', '2024-01-13 14:20:51'),
(172, 296, 12, '2024-01-13 14:27:14', '2024-01-13 14:27:14'),
(173, 297, 12, '2024-01-13 14:32:56', '2024-01-13 14:32:56'),
(174, 298, 12, '2024-01-13 14:36:19', '2024-01-13 14:36:19'),
(175, 299, 12, '2024-01-13 14:47:26', '2024-01-13 14:47:26'),
(176, 300, 12, '2024-01-13 15:01:28', '2024-01-13 15:01:28'),
(177, 301, 12, '2024-01-13 15:28:44', '2024-01-13 15:28:44'),
(178, 302, 12, '2024-01-13 15:35:15', '2024-01-13 15:35:15'),
(179, 303, 12, '2024-01-13 15:48:24', '2024-01-13 15:48:24'),
(180, 304, 12, '2024-01-13 15:54:01', '2024-01-13 15:54:01'),
(181, 305, 12, '2024-01-13 16:19:25', '2024-01-13 16:19:25'),
(182, 306, 12, '2024-01-13 16:26:55', '2024-01-13 16:26:55'),
(183, 307, 12, '2024-01-13 16:31:35', '2024-01-13 16:31:35'),
(184, 308, 12, '2024-01-13 16:35:57', '2024-01-13 16:35:57'),
(185, 309, 12, '2024-01-13 16:39:58', '2024-01-13 16:39:58'),
(186, 310, 12, '2024-01-13 17:19:40', '2024-01-13 17:19:40'),
(187, 311, 12, '2024-01-13 17:37:21', '2024-01-13 17:37:21'),
(188, 312, 12, '2024-01-13 17:45:01', '2024-01-13 17:45:01'),
(189, 313, 12, '2024-01-13 17:49:18', '2024-01-13 17:49:18'),
(190, 314, 12, '2024-01-13 17:53:13', '2024-01-13 17:53:13'),
(191, 315, 12, '2024-01-13 17:56:44', '2024-01-13 17:56:44'),
(192, 316, 12, '2024-01-13 18:00:23', '2024-01-13 18:00:23'),
(193, 317, 12, '2024-01-13 18:26:51', '2024-01-13 18:26:51'),
(194, 318, 12, '2024-01-13 18:30:25', '2024-01-13 18:30:25'),
(195, 319, 12, '2024-01-13 18:35:44', '2024-01-13 18:35:44'),
(196, 320, 12, '2024-01-13 18:40:47', '2024-01-13 18:40:47'),
(197, 321, 12, '2024-01-13 18:47:32', '2024-01-13 18:47:32'),
(198, 322, 12, '2024-01-13 18:52:02', '2024-01-13 18:52:02'),
(199, 323, 12, '2024-01-13 18:56:06', '2024-01-13 18:56:06'),
(200, 324, 12, '2024-01-13 18:59:55', '2024-01-13 18:59:55'),
(201, 325, 12, '2024-01-13 19:03:47', '2024-01-13 19:03:47'),
(202, 326, 12, '2024-01-13 19:09:18', '2024-01-13 19:09:18'),
(203, 327, 12, '2024-01-13 19:13:19', '2024-01-13 19:13:19'),
(204, 328, 12, '2024-01-14 14:47:00', '2024-01-14 14:47:00'),
(205, 329, 12, '2024-01-14 14:51:08', '2024-01-14 14:51:08'),
(206, 330, 12, '2024-01-14 14:55:42', '2024-01-14 14:55:42'),
(207, 331, 12, '2024-01-14 15:02:50', '2024-01-14 15:02:50'),
(208, 332, 12, '2024-01-14 15:07:03', '2024-01-14 15:07:03'),
(209, 333, 12, '2024-01-14 15:13:44', '2024-01-14 15:13:44'),
(210, 334, 12, '2024-01-14 15:17:02', '2024-01-14 15:17:02'),
(211, 335, 12, '2024-01-14 15:20:07', '2024-01-14 15:20:07'),
(212, 336, 12, '2024-01-14 15:24:46', '2024-01-14 15:24:46'),
(213, 337, 12, '2024-01-14 15:28:51', '2024-01-14 15:28:51'),
(214, 338, 12, '2024-01-14 15:32:07', '2024-01-14 15:32:07'),
(215, 339, 12, '2024-01-14 15:35:53', '2024-01-14 15:35:53'),
(216, 340, 12, '2024-01-14 15:39:56', '2024-01-14 15:39:56'),
(217, 341, 12, '2024-01-14 15:43:19', '2024-01-14 15:43:19'),
(218, 342, 12, '2024-01-14 15:47:24', '2024-01-14 15:47:24'),
(219, 343, 12, '2024-01-14 15:51:06', '2024-01-14 15:51:06'),
(220, 344, 12, '2024-01-14 15:54:29', '2024-01-14 15:54:29'),
(221, 345, 12, '2024-01-14 15:58:57', '2024-01-14 15:58:57'),
(222, 346, 12, '2024-01-14 16:01:59', '2024-01-14 16:01:59'),
(223, 347, 12, '2024-01-14 16:05:22', '2024-01-14 16:05:22'),
(224, 348, 12, '2024-01-14 16:08:57', '2024-01-14 16:08:57'),
(225, 349, 12, '2024-01-14 16:20:02', '2024-01-14 16:20:02'),
(226, 350, 12, '2024-01-14 16:24:25', '2024-01-14 16:24:25'),
(227, 351, 12, '2024-01-14 16:28:37', '2024-01-14 16:28:37'),
(228, 352, 12, '2024-01-14 16:39:45', '2024-01-14 16:39:45'),
(229, 353, 12, '2024-01-14 16:43:34', '2024-01-14 16:43:34'),
(230, 354, 12, '2024-01-14 16:59:54', '2024-01-14 16:59:54'),
(231, 355, 12, '2024-01-14 17:04:42', '2024-01-14 17:04:42'),
(232, 356, 12, '2024-01-14 17:07:57', '2024-01-14 17:07:57'),
(233, 357, 12, '2024-01-14 17:11:20', '2024-01-14 17:11:20'),
(234, 358, 12, '2024-01-14 17:16:12', '2024-01-14 17:16:12'),
(235, 359, 12, '2024-01-14 17:20:00', '2024-01-14 17:20:00'),
(236, 360, 12, '2024-01-14 17:24:51', '2024-01-14 17:24:51'),
(237, 361, 12, '2024-01-14 17:29:30', '2024-01-14 17:29:30'),
(238, 362, 12, '2024-01-14 17:33:13', '2024-01-14 17:33:13'),
(239, 363, 12, '2024-01-14 17:37:07', '2024-01-14 17:37:07'),
(240, 364, 12, '2024-01-14 17:40:49', '2024-01-14 17:40:49'),
(241, 365, 12, '2024-01-14 17:44:42', '2024-01-14 17:44:42'),
(242, 366, 12, '2024-01-14 17:49:08', '2024-01-14 17:49:08'),
(243, 367, 12, '2024-01-14 17:53:22', '2024-01-14 17:53:22'),
(244, 368, 12, '2024-01-14 17:56:26', '2024-01-14 17:56:26'),
(245, 369, 12, '2024-01-14 18:04:25', '2024-01-14 18:04:25'),
(246, 370, 12, '2024-01-14 18:07:45', '2024-01-14 18:07:45'),
(247, 371, 12, '2024-01-14 18:13:18', '2024-01-14 18:13:18'),
(248, 372, 12, '2024-01-14 18:21:58', '2024-01-14 18:21:58'),
(249, 373, 12, '2024-01-14 18:26:44', '2024-01-14 18:26:44');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pointages`
--

CREATE TABLE `pointages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `prof_id` int(11) NOT NULL DEFAULT '0',
  `mois_id` int(11) NOT NULL DEFAULT '0',
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `jour` date DEFAULT NULL,
  `nbr_heure` int(11) NOT NULL DEFAULT '0',
  `ligne_programme_ecole_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `profs`
--

CREATE TABLE `profs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_naiss` date DEFAULT NULL,
  `lieu_naiss` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diplome_id` bigint(20) NOT NULL DEFAULT '0',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profs`
--

INSERT INTO `profs` (`id`, `user_id`, `nom`, `prenom`, `date_naiss`, `lieu_naiss`, `adresse`, `telephone`, `diplome_id`, `image`, `token`, `created_at`, `updated_at`) VALUES
(1, 11, 'NDENGUETH', 'Gavel', '1991-06-10', 'Brazzaville', 'Mpaka', '066173257', 3, 'images/profs/11112022113658.png', 'be1394f2d24b56d7992972a0476d050491d0ba8e', '2022-11-11 10:36:58', '2022-11-11 10:36:58'),
(2, 12, 'MBANI', 'Freddy', '1986-10-05', 'Komono', 'La Base', '068444838', 1, 'images/profs/11112022114044.png', '61c0c715559d6f52a38c0fb494f6d1b13ebdfd0d', '2022-11-11 10:40:44', '2022-11-11 10:40:44'),
(3, 13, 'NKITA', 'Jacques Detaud', '1985-05-03', 'Pointe-Noire', 'XXXX', '069886612', 3, 'images/profs/11112022114304.png', 'e989d16c94c59afb770b8be9d9962d436effce5f', '2022-11-11 10:43:04', '2022-11-11 10:43:04'),
(4, 14, 'DOUTABOU MOUYAMA', 'Ivan Yannick', '1990-02-03', 'Banda', 'Mpaka', '068051565', 3, 'images/profs/11112022114532.png', '71f2babaea1846c388ab2b08131347e19e11c01d', '2022-11-11 10:45:32', '2022-11-11 10:45:32'),
(5, 15, 'TOUNTA', 'Jud-Stella', '1989-06-13', 'Pointe-Noire', 'Mpaka', '068661634', 3, 'images/profs/11112022114802.jpg', '7c17f0a5b51478c2f9971f7d8289d58538c5823a', '2022-11-11 10:48:02', '2022-11-11 10:48:02'),
(6, 16, 'SALABANZI', 'Mey', '1987-06-23', 'Brazzaville', 'XXXX', '069275091', 3, 'images/profs/11112022115104.png', '3cd170aa320aa413499e6ff26bf3bb3106255d69', '2022-11-11 10:51:04', '2022-11-11 10:51:04'),
(7, 17, 'OBAME', 'Emmanuel', '1987-05-28', 'Pointe-Noire', 'Ngoyo', '069769652', 3, 'images/profs/11112022115340.png', '3ec7edfe62e83a66199bd4f5fa46ae78f9000896', '2022-11-11 10:53:40', '2022-11-11 10:53:40'),
(8, 18, 'MATOUMOUNA MBOUNGOU', 'Sita Evrad', '1997-03-20', 'Mfouati', 'Mpaka', '064210086', 3, 'images/profs/11112022115644.png', 'd5da302f382115fda9f06a047513e16c724f637c', '2022-11-11 10:56:44', '2022-11-11 10:56:44'),
(9, 19, 'GUETTE', 'Frez Barol', '1993-01-09', 'Dolisie', 'Tchimbamba', '068131059', 3, 'images/profs/11112022115848.png', '99b7c6e645b5ebcb27ed295e51f1a0a51ede5a65', '2022-11-11 10:58:48', '2022-11-11 10:58:48'),
(10, 20, 'NZAMBA', 'Precieux Prince', '1992-04-13', 'Brazzaville', 'Tchister', '069618464', 3, 'images/profs/11112022120057.png', '409f7694713e76ffa35bf13f382437d2aa1bddae', '2022-11-11 11:00:57', '2022-11-11 11:00:57'),
(11, 21, 'MOUKASSA', 'Jeller', '1994-09-01', 'Bambama', 'KM4', '060000001', 3, 'images/profs/11112022120416.png', '9fd3ced5d1b2009e0fb00e15c238b05451818c3a', '2022-11-11 11:04:16', '2022-11-11 11:04:16'),
(12, 22, 'OBAME', 'Emmanuel', '1987-05-28', 'Pointe-Noire', 'Ngoyo', '060000002', 3, 'images/profs/11112022120728.jpg', 'ba7be0df36747bc5ba1fc186b624ff33c8dda343', '2022-11-11 11:07:28', '2022-11-11 11:07:28'),
(13, 23, 'NGOMA-NGUIMBI', 'Charden', '2022-11-11', 'XXXX', 'XXXX', '065836730', 1, 'images/profs/11112022121155.png', '7961a0bbbab27d200ff5d6044eef6136fb666e55', '2022-11-11 11:11:55', '2022-11-11 11:11:55'),
(14, 24, 'IPEMOESSO', 'Eudes', '1980-08-19', 'Divenié', 'Mbota', '066362754', 1, 'images/profs/11112022121431.png', '7ade1f1da5f0c60db9bea1677882078f6fba955e', '2022-11-11 11:14:31', '2022-11-11 11:14:31'),
(15, 25, 'NGOUA', 'Gaston', '1956-03-14', 'Dila', 'Mpaka', '060000003', 1, 'images/profs/11112022121759.png', 'ff3bf9fa04fbf9983c62a74398d096983b359b98', '2022-11-11 11:17:59', '2022-11-11 11:17:59'),
(16, 26, 'NDOMBO', 'Junior', '1991-12-02', 'Pointe-Noire', 'La Base', '064082068', 3, 'images/profs/11112022121952.png', 'edbcfe05e0405774d6e9c3005bffdea4372fc19f', '2022-11-11 11:19:52', '2022-11-11 11:19:52'),
(17, 27, 'NGOSSOKO', 'Darius Saturnin', '2022-11-11', 'XXXX', 'KM4', '068902393', 3, 'images/profs/11112022122346.png', '09c28550b2175a8e5b99edcd540b29ded9955b0e', '2022-11-11 11:23:46', '2022-11-11 11:23:46'),
(18, 28, 'MACKITA-DZONDO', 'Mither Fraland', '2022-11-11', 'xxxx', 'xxxx', '064885599', 3, 'images/profs/11112022122535.png', 'c75394b6768e732eb8b8bd74d3c83e712bcae5aa', '2022-11-11 11:25:35', '2022-11-11 11:25:35'),
(19, 29, 'OYI OYOUA', 'Harnod Mithra', '2022-11-11', 'xxxx', 'xxxx', '069325392', 3, 'images/profs/11112022122752.png', '773946fe1d10695eb94b2d0606b75b670a4a7bf7', '2022-11-11 11:27:52', '2022-11-11 11:27:52'),
(20, 30, 'OYI OYOUA', 'Harnod Mithra', '2022-11-11', 'XXXX', 'XXXX', '060000004', 3, 'images/profs/11112022122939.png', 'f87049051bf328d598dd382bf5098950ee61b43c', '2022-11-11 11:29:39', '2022-11-11 11:29:39'),
(21, 31, 'AKOUE', 'Francis', '2022-11-11', 'XXXX', 'XXXX', '064720034', 3, 'images/profs/11112022123220.png', 'a07076060fad309822ed40b9d67ea81f3accd1b9', '2022-11-11 11:32:20', '2022-11-11 11:32:20'),
(22, 32, 'LOUBAKI', 'Lionel Porcelas', '2022-11-11', 'XXXX', 'XXXX', '064069549', 3, 'images/profs/11112022123429.png', '5e9ee366c0ea235480cbe87959c6cb3d1c3e6b97', '2022-11-11 11:34:29', '2022-11-11 11:34:29'),
(23, 33, 'LOUBAKI', 'Lionel Porcelas', '2022-11-11', 'XXXX', 'XXXX', '060000006', 3, 'images/profs/11112022123617.png', '4dbe1c34568712bc76bbcb65ddc4aaaf9ce55ba3', '2022-11-11 11:36:17', '2022-11-11 11:36:17'),
(24, 34, 'MPASSI', 'Rufin Achille', '2022-11-11', 'XXXX', 'Mpaka', '068048638', 3, 'images/profs/11112022123734.png', '28a3eecd72f042e8bd71c9580258facd21d2af69', '2022-11-11 11:37:34', '2022-11-11 11:37:34'),
(25, 35, 'MFOUKOU', 'Serge', '2022-11-11', 'XXXX', 'Tchimbamba', '064354393', 3, 'images/profs/11112022123937.png', '8ac4b21b38824f7cc83c07cbacceccd1cd502d2c', '2022-11-11 11:39:37', '2022-11-11 11:39:37'),
(26, 36, 'IYEMBI', 'Paterne', '2022-11-11', 'xxxx', 'Socoprise', '066586528', 3, 'images/profs/11112022124153.png', '7f324624d3c12709d88265f3122816cb17a78262', '2022-11-11 11:41:53', '2022-11-11 11:41:53'),
(27, 37, 'IYEMBI', 'Paterne', '2022-11-11', 'XXXX', 'XXXX', '060000007', 3, 'images/profs/11112022124315.png', '81221386bc1edf869fecd80f5068c5cabf837753', '2022-11-11 11:43:15', '2022-11-11 11:43:15'),
(28, 38, 'NGATALI', 'Fabrice', '2022-11-11', 'XXXX', 'Vindoulou', '069262211', 3, 'images/profs/11112022124749.png', '470ff4ffd2dff6f24a7c53d941ed94171977b02b', '2022-11-11 11:47:49', '2022-11-11 11:47:49'),
(29, 39, 'NGATALI', 'Fabrice', '2022-11-11', 'XXXX', 'Vindoulou', '055420111', 3, 'images/profs/11112022124921.png', 'c71ebd3a086112740cbfebad8705015a576fd91a', '2022-11-11 11:49:21', '2022-11-11 11:49:21'),
(30, 40, 'LOEMBHT', 'Belor Joseph', '2022-11-11', 'xxxx', 'Tchister', '065854239', 3, 'images/profs/11112022015115.png', '803ff51af7eeedd78f6d777ce587ef154d94a86b', '2022-11-11 12:51:15', '2022-11-11 12:51:15'),
(31, 41, 'MALONGA', 'Claise', '2022-11-11', 'xxxx', 'Mpaka', '066928287', 1, 'images/profs/11112022015308.png', '0b38b1d7b812166e757baa2efa6a5502b9a50bbd', '2022-11-11 12:53:08', '2022-11-11 12:53:08'),
(32, 42, 'MASSALA', 'Franck', '2022-11-11', 'xxxx', 'Mpaka', '069749367', 3, 'images/profs/11112022015456.png', 'd56e38bb39ba0d7e2a6f642509f3726d51b41614', '2022-11-11 12:54:56', '2022-11-11 12:54:56'),
(33, 47, 'LIKIBI NGOMA', 'Jaudrel Nanouche', '1989-09-19', 'x', 'x', '200', 11, 'images/profs/05122022063919.png', 'e23729f9993da0a7a6641737eaabafe0128f7fa5', '2022-12-05 05:39:19', '2022-12-05 05:39:19'),
(34, 48, 'BOUDZOUMOU LOUKENGO', 'Tana Louise', '1999-05-24', 'x', 'x', '201', 7, 'images/profs/05122022064107.png', 'e6323edf3cfd9f6759bedd136cf34a609a6073bd', '2022-12-05 05:41:07', '2022-12-05 05:41:07'),
(35, 49, 'BETTE TIEMOUNAH', 'Piersie Philippez Prince', '1992-08-17', 'x', 'x', '202', 12, 'images/profs/05122022064340.png', '2be69ec659a94b7614dc7f07c092aef3b8401005', '2022-12-05 05:43:40', '2022-12-05 05:43:40'),
(36, 50, 'NSANGUI', 'Henice Divine', '1994-08-23', 'x', 'x', '204', 2, 'images/profs/05122022064522.png', '8d101ebdc78163d4d3aadca60e40f3ea67c10cbe', '2022-12-05 05:45:22', '2022-12-05 05:45:22'),
(37, 51, 'MAMPOUYA MPAMBOU', 'Dena Reine', '2004-01-09', 'x', 'x', '205', 7, 'images/profs/05122022064648.png', 'b64e8e229ffe71ea15463e6836819ad99d88307d', '2022-12-05 05:46:48', '2022-12-05 05:46:48'),
(38, 52, 'BACKALA NANITELAMIO', 'Judrick Emmany', '1988-05-12', 'x', 'x', '206', 7, 'images/profs/05122022065042.png', '33bdbe0375ab909c965b1186e58c2f87ec30a657', '2022-12-05 05:50:42', '2022-12-05 05:50:42'),
(39, 53, 'MFOULA', 'Froelich Merveil', '1997-08-21', 'x', 'x', '207', 3, 'images/profs/05122022065221.png', 'e4dc88644f34873d820273e2e2edae894200e441', '2022-12-05 05:52:21', '2023-07-01 08:01:24'),
(40, 54, 'NZAZI MAKONDOU', 'Dachy Brunel Clevy', '1985-11-04', 'x', 'x', '208', 7, 'images/profs/05122022065424.png', '504f6ed46957b1f1eeca4a0f75bff29402d56a90', '2022-12-05 05:54:24', '2022-12-05 05:54:24'),
(41, 55, 'MFOULA', 'Michel', '1956-08-20', 'x', 'x', '209', 9, 'images/profs/05122022065621.png', '7eb6bb0b3cbecace8614e457a8b1cf04c997a7bd', '2022-12-05 05:56:21', '2022-12-05 05:56:21'),
(42, 56, 'MAKAYA', 'Fabrice Régis', '1971-05-24', 'x', 'x', '210', 7, 'images/profs/05122022065820.png', '0895817127e05505f4629a6c4b160994f30570ba', '2022-12-05 05:58:20', '2022-12-05 05:58:20'),
(43, 57, 'NZOUSSI MAHINDOU', 'Freilghat', '1990-03-24', 'x', 'x', '211', 7, 'images/profs/05122022065948.png', 'f851cd1f1e14b4825f1f3cdd6ef94237cc3d4873', '2022-12-05 05:59:48', '2022-12-05 05:59:48'),
(44, 58, 'YILA', '-', '2022-12-05', 'x', 'x', '212', 7, 'images/profs/05122022070109.png', 'fc3caff492edd4e3806521437de530c389d0e87f', '2022-12-05 06:01:09', '2022-12-05 06:01:09'),
(45, 59, 'BOUKOUANGOU', 'Claude Jackson', '1983-03-17', 'x', 'x', '213', 11, 'images/profs/05122022070257.png', '8f62ca5e608b5bbcb88c812a51cd08c9da00092c', '2022-12-05 06:02:57', '2022-12-05 06:02:57'),
(46, 175, 'KIDIBA MATASSALA', 'Bienvenu', '1984-01-22', 'x', 'x', '055159890', 3, 'images/profs/01072023095934.png', '21ad2fa4e29cb43f5a123bb8db2f3c56218b74eb', '2023-07-01 07:59:34', '2023-07-01 07:59:34'),
(47, 176, 'MBERI', 'Juslain', '1900-01-01', 'x', 'x', '068396518', 1, 'images/profs/01072023100655.png', 'cd80d4c05a1fc1e4d0b12809c6e23e217ade02e2', '2023-07-01 08:06:55', '2023-07-01 08:06:55'),
(48, 177, 'NDZOUSSI MAYINDOU', 'Freilghat', '1990-03-24', 'x', 'x', '064494161', 1, 'images/profs/01072023100902.png', 'f4da78f13eccea2164f65e85cee2b485f7f78b82', '2023-07-01 08:09:02', '2023-07-01 08:09:02'),
(49, 188, 'DIAMAMBOU', 'Glodi', '1999-07-20', 'Pointe-Noire', 'Ngoyo', '068372999', 6, 'images/profs/23082023104424.png', '640bd3a81acb634c8d3aa893b1ad15e2efba5d1a', '2023-08-23 08:44:24', '2023-08-23 08:44:24'),
(50, 189, 'DAMBA-DAMBA', 'Karl Lezin', '1988-07-26', 'Pointe-Noire', 'Ngoyo péage (ex péage)', '066808810', 17, 'images/profs/06092023061353.png', '11f19538cd5f8bcf8d8646e58e9a0161be1c01cc', '2023-09-06 16:13:53', '2023-09-06 16:13:53'),
(51, 190, 'BATOLA MOULOLO', 'Clauffel Ghrâce', '1992-12-27', 'Pointe-Noire', 'Ngoyo mayinga (arrêt la chine)', '065324345', 10, 'images/profs/06092023061634.png', 'c235baefbdf720d2108631d13e60ba218ef32daa', '2023-09-06 16:16:34', '2023-09-06 16:16:34'),
(52, 191, 'BANZOUZI', 'Alain', '1972-07-20', 'Brazzaville', 'Tchimbamba', '067874809', 7, 'images/profs/06092023104039.png', '55ebcf27a6b73475e4b4429c7d2dd05b5c3fea50', '2023-09-06 20:40:39', '2023-09-06 20:40:39'),
(53, 192, 'BOUALA LOUKOUBAMA', 'Jhostavie Fils Jaspinis', '1995-04-28', 'Pointe-Noire', 'Mpita', '064409287', 3, 'images/profs/06092023104325.png', 'c81d2824b8cb242dddb563d409de001dcf98e9d6', '2023-09-06 20:43:25', '2023-09-06 20:43:25'),
(54, 193, 'KIMBEMBE', 'Andre Brian', '1992-04-07', 'Brazzaville', 'KM4', '066642704', 2, 'images/profs/06092023104541.png', '5a10ea141705fa3ca881482a40e058ef55f982e8', '2023-09-06 20:45:41', '2023-09-06 20:45:41'),
(55, 194, 'MASSAKA', 'Aristide', '1984-01-21', 'Loudima-Gare', 'Tchimbamba', '055641306', 18, 'images/profs/06092023105725.png', 'b01fa2ac54b86f6174a741084c2e41135cc412fb', '2023-09-06 20:57:25', '2023-09-06 20:57:25'),
(56, 195, 'MOUKISSI', 'Bonheur Lidwin', '1982-02-02', 'Sibiti', 'Ngoyo', '066031446', 14, 'images/profs/06092023110013.png', '6a28c04a4cbd16a0da5baac53ce6472d0b597550', '2023-09-06 21:00:13', '2023-09-06 21:00:13'),
(57, 196, 'M\'POUO', 'Bhely Anselme', '1967-05-07', 'Kiboungou', 'OCH, baguette d\'or', '055234483', 18, 'images/profs/06092023110232.png', '672833df464636b13f5515cebf4a7c24cfe5de5d', '2023-09-06 21:02:32', '2023-09-06 21:02:32'),
(58, 197, 'NGOMA WANDO', 'Chela Elven Vanny', '1995-05-09', 'Brazzaville', 'Makayabou', '064195676', 18, 'images/profs/06092023110443.png', '27baca596aba0d1fa33bb97bba30df3ad7e3f620', '2023-09-06 21:04:43', '2023-09-06 21:04:43'),
(59, 198, 'OUADIABANTOU MALONGA', 'Grace Clebi', '1989-02-04', 'Pointe-Noire', 'Ngoyo', '066720957', 11, 'images/profs/06092023110838.png', '6a8bd73169863ccb5b3bf4c8093ccfab8252e60a', '2023-09-06 21:08:38', '2023-09-06 21:08:38'),
(60, 199, 'NTSOUMOU SAYA', 'Chauman Iver', '1986-09-08', 'Léfoutou', 'Tchimagni aéroport', '066289591', 1, 'images/profs/06092023111202.png', '197687501a4bc3262a5b06326e4e4a3f08516450', '2023-09-06 21:12:02', '2023-09-06 21:12:02'),
(61, 200, 'TCHICAMBOU', 'Mauriac', '1985-06-25', 'Lékana', 'Ngoyo puma', '055785228', 11, 'images/profs/06092023111534.png', '7dc854436b078c391df16eb86ce42f65dca80248', '2023-09-06 21:15:34', '2023-09-06 21:15:34'),
(62, 217, 'MALONGUI  LOKO', 'Chris  Emery', '1998-05-16', 'Pointe Noire', 'Mpaka 120', '064771200', 11, 'images/profs/30092023115717.png', '606d15bf2871c679a6773ce33ac2f291d1f5c5b2', '2023-09-30 09:57:17', '2023-09-30 09:57:17'),
(63, 256, 'NGOUARI', 'Gael', '0001-01-01', 'xxx', 'xxx', '065282630', 1, 'images/profs/10102023124216.png', '41c673685d2beeffae73b3f98c6c26e311760071', '2023-10-10 10:42:16', '2023-10-10 10:42:16'),
(64, 257, 'KAYA', 'Victor', '1963-07-18', 'Brazzaville', 'Mpaka KM8', '069963813', 3, 'images/profs/10102023124537.png', '899a74372127365f0cb7e962b3d5a4bc6169ac4b', '2023-10-10 10:45:37', '2023-10-10 10:45:37'),
(65, 258, 'MOUITI', 'Destin', '0001-01-01', 'xxx', 'xxx', '123456789', 1, 'images/profs/10102023124911.png', '3aed6e3607e42dc69f3eab4aedb0b1a4bd5c284a', '2023-10-10 10:49:11', '2023-10-10 10:49:11'),
(66, 287, 'BAHONDA', 'Arsène Hervé Martial', '1974-07-17', 'Brazzaville', 'vindoulou', '064604794', 12, 'images/profs/14122023103415.jpg', '8f3c273031388cb3b8731a294de5b68f8b42da39', '2023-12-14 09:34:15', '2023-12-14 09:34:15'),
(67, 374, 'MBERI  BILONGO', 'Arnold', '1993-12-12', 'Pointe-Noire', 'Voungou', '242068933631', 11, 'images/profs/15012024010731.jpg', '81a371d452e0508afa0d8db8c1d071be6fa80123', '2024-01-15 12:07:31', '2024-01-15 12:07:31'),
(68, 375, 'MAKOSSO', 'Christ Emex', '2000-12-17', 'Pointe-Noire', 'VINDOULOU', '242065524078', 9, 'images/profs/15012024012514.jpg', '2e1677e47822b1be6b72fe4356fb98c9e0974a7e', '2024-01-15 12:25:14', '2024-01-15 12:25:14'),
(69, 376, 'BOULINGUI', 'Abdel', '1998-07-26', 'Pointe-Noire', 'OBAMBI', '242066953496', 11, 'images/profs/15012024012822.jpg', 'c948a12c0db617339ad930c817b29988c523c86c', '2024-01-15 12:28:22', '2024-01-15 12:28:22'),
(70, 377, 'MASSEMBO NGOMA', 'Odilon', '1989-01-01', 'Pointe-Noire', 'MBOTA ROC', '242069116801', 12, 'images/profs/15012024013753.jpg', 'f6ef9df233aca8e4d4f05d42f279d3f6752668e4', '2024-01-15 12:37:53', '2024-01-15 12:37:53'),
(71, 378, 'PAMBOU', 'Cerick', '1997-07-07', 'Pointe-Noire', 'Movis', '242069515867', 12, 'images/profs/15012024015202.jpg', '603f5957ebbc3baf89f27afc9e525f2406570257', '2024-01-15 12:52:02', '2024-01-15 12:52:02'),
(72, 383, 'MIENAHOU', 'Chiria', '1985-11-23', 'Pointe-Noire', 'Movis', '242066664715', 11, 'images/profs/15012024021259.jpg', '2b7b9e05e45f13f040725a8673ba97f36c00542d', '2024-01-15 13:12:59', '2024-01-15 13:12:59'),
(73, 384, 'KENGUET', 'Jean Norbert', '1995-07-18', 'Pointe-Noire', 'VINDOULOU', '242066797907', 12, 'images/profs/15012024021645.jpg', 'd246f524cea74df565a4f9ff68dc0dd504c52a7d', '2024-01-15 13:16:45', '2024-01-15 13:16:45'),
(74, 385, 'NZAOU', 'Armel', '1975-09-20', 'Pointe-Noire', 'VINDOULOU', '242066930095', 11, 'images/profs/15012024021922.jpg', 'acea3ba66017dcb1712e33eab24b53176482238e', '2024-01-15 13:19:22', '2024-01-15 13:19:22'),
(75, 386, 'MAKANI', 'Gildas', '1991-06-17', 'Pointe-Noire', 'VINDOULOU', '242064289012', 12, 'images/profs/15012024022150.jpg', '24278a058198d9d8452074b30565950ae73a0d76', '2024-01-15 13:21:50', '2024-01-15 13:21:50'),
(76, 387, 'DAMBA', 'KIESSE', '1989-04-04', 'Pointe-Noire', 'Base industrielle', '242066217065', 11, 'images/profs/15012024022432.jpg', 'c6b156654a20dd885c60005b58c9d51f0b22e761', '2024-01-15 13:24:32', '2024-01-15 13:24:32'),
(77, 388, 'VOUVOU', 'Serge', '1999-12-15', 'Pointe-Noire', 'OBAMBI', '242056050640', 12, 'images/profs/15012024022734.jpg', '036738451f078142331ad58f17cfbb1338cff0d3', '2024-01-15 13:27:34', '2024-01-15 13:27:34'),
(78, 389, 'MADINGOU', 'Diack  Jalèse', '1976-05-01', 'Dolisie', 'Movis', '066203477', 11, 'images/profs/15012024023236.jpg', '2de16522bd9490dfb0da60b761d1c7c63e962f22', '2024-01-15 13:32:36', '2024-01-15 13:32:36'),
(79, 390, 'KIKOLO', 'Aurelien', '1981-11-14', 'Pointe-Noire', 'VINDOULOU', '242066420375', 11, 'images/profs/15012024033141.jpg', 'c6067652e400428da6e853ad4f463cafd1da5db2', '2024-01-15 14:31:41', '2024-01-15 14:31:41'),
(80, 391, 'BAKANAOKO', 'Pense', '1993-04-16', 'Madingou', 'Movis', '242064875437', 12, 'images/profs/15012024033352.jpg', '09460f8833f3ecfbb8c13bdf358f6971fadcd0cc', '2024-01-15 14:33:52', '2024-01-15 14:33:52'),
(81, 392, 'MABONDZO', 'Chessant', '1998-02-20', 'Pointe-Noire', 'VINDOULOU', '242066283117', 11, 'images/profs/15012024033652.jpg', '90d4b68cfaddb708460e908de7a50c9c4d902866', '2024-01-15 14:36:52', '2024-01-15 14:36:52'),
(82, 393, 'MAKOUANGOU MISSIE', 'R.', '1998-09-24', 'Pointe-Noire', 'NKOUIKOU', '242067530775', 11, 'images/profs/15012024034011.jpg', '361e883a3091428b9db9bfe802df68eb76425037', '2024-01-15 14:40:11', '2024-01-15 14:40:11'),
(83, 394, 'MADINGOU', 'Haudilon', '1989-06-29', 'NKAYI', 'VINDOULOU', '242066446499', 11, 'images/profs/15012024034216.jpg', '986dd16a9c9a226245902bec636d67009ab6e353', '2024-01-15 14:42:16', '2024-01-15 14:42:16'),
(84, 395, 'MISSENGUE', 'Edgard', '1990-07-22', 'Pointe-Noire', 'VINDOULOU', '242069256878', 11, 'images/profs/15012024034416.jpg', '5ee66b216fd96f68b0a9a13606fffbd07cc02d16', '2024-01-15 14:44:16', '2024-01-15 14:44:16'),
(85, 396, 'NGUIMBI', 'Léon M.', '1985-07-27', 'KINSIMBI', 'Mont Nkamba', '242069891602', 14, 'images/profs/15012024034729.jpg', 'e1cf1fbccc41924615790920d35170c75b84ab6a', '2024-01-15 14:47:29', '2024-01-15 14:47:29'),
(86, 397, 'BAWOULA', 'Casimir', '1962-02-05', 'Pointe-Noire', 'VINDOULOU', '242066544658', 25, 'images/profs/15012024034952.jpg', 'f0d8c7479003b82e1f079a522638586be85e94f5', '2024-01-15 14:49:52', '2024-01-15 14:49:52'),
(87, 398, 'BAMBELA LOUKAYA', 'Nazaire', '1974-08-01', 'Madingou', 'Voungou', '242057696677', 11, 'images/profs/15012024035208.jpg', '8ebb06b297bf1501402f18d2ce28be61c21d8c73', '2024-01-15 14:52:08', '2024-01-15 14:52:08'),
(88, 399, 'LOUTOUMENI', 'Mayithé', '1993-07-13', 'Pointe-Noire', 'VINDOULOU', '242068018709', 14, 'images/profs/15012024035503.jpg', '1a1f93c80fbc02bc847f92f8b0d7aa10a4043313', '2024-01-15 14:55:03', '2024-01-15 14:55:03'),
(89, 400, 'TCHILOUEMBA', 'Orphet', '1992-07-20', 'Pointe-Noire', 'VINDOULOU', '242064075501', 11, 'images/profs/15012024035708.jpg', '5107fa08f5839cf31d0b1e6ee0b73be77e9929bf', '2024-01-15 14:57:08', '2024-01-15 14:57:08'),
(90, 401, 'BAZZA', 'Dollestino', '1987-12-25', 'Pointe-Noire', 'MVOU-MVOU', '242068213200', 11, 'images/profs/15012024040028.jpg', '9dab266b0a36e5adb586b546962063078bf43cf3', '2024-01-15 15:00:28', '2024-01-15 15:00:28'),
(91, 402, 'MASSAMBA', 'Destinat  Aristone', '1981-12-11', 'BRAZZAVILLE', 'Mpaka 120', '242068715905', 11, 'images/profs/15012024040613.jpg', '5aad39e485d8f1458fc437cb383b7cd8f1ff5e76', '2024-01-15 15:06:13', '2024-01-15 15:06:13'),
(92, 403, 'BOURAÏMA', 'Islamiath', '1990-12-12', 'porto-novo', 'NKOUIKOU', '242040083810', 12, 'images/profs/15012024041023.jpg', 'c693cc1e8fd857377286c0c8162d480db898a8ee', '2024-01-15 15:10:23', '2024-01-15 15:10:23'),
(93, 404, 'KPANOU', 'Alfred', '1980-12-12', 'porto-novo', 'NKOUIKOU', '242068043884', 12, 'images/profs/15012024041259.jpg', '3847753155dafbd644fd1db0aacbd6b6dfe76b6c', '2024-01-15 15:12:59', '2024-01-15 15:12:59'),
(94, 405, 'LOEMBA', 'Jacques', '1988-12-12', 'Pointe-Noire', 'VINDOULOU', '242064605070', 11, 'images/profs/15012024044112.jpg', 'dba0b77c0499f10f00c9006040d0f8990d96ea31', '2024-01-15 15:41:12', '2024-01-15 15:41:12');

-- --------------------------------------------------------

--
-- Structure de la table `prof_ecole`
--

CREATE TABLE `prof_ecole` (
  `id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `montant` bigint(20) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `prof_ecole`
--

INSERT INTO `prof_ecole` (`id`, `prof_id`, `ecole_id`, `montant`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1600, '2022-11-11 11:36:58', '2022-11-11 11:37:40'),
(2, 2, 1, 1400, '2022-11-11 11:40:44', '2022-11-11 11:40:59'),
(3, 3, 1, 1400, '2022-11-11 11:43:04', '2022-11-11 11:43:21'),
(4, 4, 1, 1600, '2022-11-11 11:45:32', '2022-11-11 11:45:58'),
(5, 5, 1, 1600, '2022-11-11 11:48:02', '2022-11-11 11:48:59'),
(6, 6, 1, 1600, '2022-11-11 11:51:04', '2022-11-11 11:51:17'),
(7, 7, 1, 1600, '2022-11-11 11:53:40', '2022-11-11 11:54:29'),
(8, 8, 1, 1600, '2022-11-11 11:56:44', '2022-11-11 11:56:58'),
(9, 9, 1, 1400, '2022-11-11 11:58:48', '2022-11-11 11:59:00'),
(10, 10, 1, 1600, '2022-11-11 12:00:57', '2022-11-11 12:01:11'),
(11, 11, 1, 1400, '2022-11-11 12:04:16', '2022-11-11 12:04:32'),
(12, 12, 1, 1400, '2022-11-11 12:07:28', '2022-11-11 12:07:50'),
(13, 13, 1, 1400, '2022-11-11 12:11:55', '2022-11-11 12:12:08'),
(14, 14, 1, 1400, '2022-11-11 12:14:31', '2022-11-11 12:14:44'),
(15, 15, 1, 1400, '2022-11-11 12:17:59', '2022-11-11 12:18:13'),
(16, 16, 1, 1600, '2022-11-11 12:19:52', '2022-11-11 12:20:13'),
(17, 17, 1, 1600, '2022-11-11 12:23:46', '2022-11-11 12:23:58'),
(18, 18, 1, 1600, '2022-11-11 12:25:35', '2022-11-11 12:25:48'),
(19, 19, 1, 1600, '2022-11-11 12:27:52', '2022-11-11 12:28:10'),
(20, 20, 1, 1400, '2022-11-11 12:29:39', '2022-11-11 12:30:29'),
(21, 21, 1, 1600, '2022-11-11 12:32:20', '2022-11-11 12:32:45'),
(22, 22, 1, 1600, '2022-11-11 12:34:29', '2022-11-11 12:34:55'),
(23, 23, 1, 0, '2022-11-11 12:36:17', '2022-11-11 12:36:17'),
(24, 24, 1, 1600, '2022-11-11 12:37:34', '2022-11-11 12:37:46'),
(25, 25, 1, 1600, '2022-11-11 12:39:37', '2022-11-11 12:40:11'),
(26, 26, 1, 1600, '2022-11-11 12:41:53', '2022-11-11 12:42:07'),
(27, 27, 1, 1400, '2022-11-11 12:43:15', '2022-11-11 12:43:32'),
(28, 28, 1, 1600, '2022-11-11 12:47:49', '2022-11-11 12:48:13'),
(29, 29, 1, 1400, '2022-11-11 12:49:21', '2022-11-11 12:49:33'),
(30, 30, 1, 1600, '2022-11-11 13:51:15', '2022-11-11 13:51:28'),
(31, 31, 1, 1400, '2022-11-11 13:53:08', '2022-11-11 13:53:22'),
(32, 32, 1, 1400, '2022-11-11 13:54:56', '2022-11-11 13:55:07'),
(33, 33, 5, 0, '2022-12-05 06:39:19', '2022-12-05 06:39:19'),
(34, 34, 5, 0, '2022-12-05 06:41:07', '2022-12-05 06:41:07'),
(35, 35, 5, 0, '2022-12-05 06:43:40', '2022-12-05 06:43:40'),
(36, 36, 5, 0, '2022-12-05 06:45:22', '2022-12-05 06:45:22'),
(37, 37, 5, 0, '2022-12-05 06:46:48', '2022-12-05 06:46:48'),
(38, 38, 5, 0, '2022-12-05 06:50:42', '2022-12-05 06:50:42'),
(39, 39, 5, 0, '2022-12-05 06:52:21', '2022-12-05 06:52:21'),
(40, 40, 5, 0, '2022-12-05 06:54:24', '2022-12-05 06:54:24'),
(41, 41, 5, 0, '2022-12-05 06:56:21', '2022-12-05 06:56:21'),
(42, 42, 5, 0, '2022-12-05 06:58:20', '2022-12-05 06:58:20'),
(43, 43, 5, 0, '2022-12-05 06:59:48', '2022-12-05 06:59:48'),
(44, 44, 5, 0, '2022-12-05 07:01:09', '2022-12-05 07:01:09'),
(45, 45, 5, 0, '2022-12-05 07:02:57', '2022-12-05 07:02:57'),
(46, 46, 5, 0, '2023-07-01 09:59:34', '2023-07-01 09:59:34'),
(47, 47, 5, 0, '2023-07-01 10:06:55', '2023-07-01 10:06:55'),
(48, 48, 5, 0, '2023-07-01 10:09:02', '2023-07-01 10:09:02'),
(49, 49, 11, 0, '2023-08-23 10:44:24', '2023-08-23 10:44:24'),
(50, 50, 11, 0, '2023-09-06 18:13:53', '2023-09-06 18:13:53'),
(51, 51, 11, 0, '2023-09-06 18:16:34', '2023-09-06 18:16:34'),
(52, 52, 11, 0, '2023-09-06 22:40:39', '2023-09-06 22:40:39'),
(53, 53, 11, 0, '2023-09-06 22:43:25', '2023-09-06 22:43:25'),
(54, 54, 11, 0, '2023-09-06 22:45:41', '2023-09-06 22:45:41'),
(55, 55, 11, 0, '2023-09-06 22:57:25', '2023-09-06 22:57:25'),
(56, 56, 11, 0, '2023-09-06 23:00:13', '2023-09-06 23:00:13'),
(57, 57, 11, 0, '2023-09-06 23:02:32', '2023-09-06 23:02:32'),
(58, 58, 11, 0, '2023-09-06 23:04:43', '2023-09-06 23:04:43'),
(59, 59, 11, 0, '2023-09-06 23:08:38', '2023-09-06 23:08:38'),
(60, 60, 11, 0, '2023-09-06 23:12:02', '2023-09-06 23:12:02'),
(61, 61, 11, 0, '2023-09-06 23:15:34', '2023-09-06 23:15:34'),
(62, 62, 5, 0, '2023-09-30 11:57:17', '2023-09-30 11:57:17'),
(63, 63, 5, 0, '2023-10-10 12:42:16', '2023-10-10 12:42:16'),
(64, 64, 5, 0, '2023-10-10 12:45:37', '2023-10-10 12:45:37'),
(65, 65, 5, 0, '2023-10-10 12:49:11', '2023-10-10 12:49:11'),
(66, 66, 12, 1500, '2023-12-14 10:34:15', '2023-12-14 10:41:56'),
(67, 67, 12, 0, '2024-01-15 13:07:31', '2024-01-15 13:07:31'),
(68, 68, 12, 0, '2024-01-15 13:25:14', '2024-01-15 13:25:14'),
(69, 69, 12, 0, '2024-01-15 13:28:22', '2024-01-15 13:28:22'),
(70, 70, 12, 0, '2024-01-15 13:37:53', '2024-01-15 13:37:53'),
(71, 71, 12, 0, '2024-01-15 13:52:02', '2024-01-15 13:52:02'),
(72, 72, 12, 0, '2024-01-15 14:12:59', '2024-01-15 14:12:59'),
(73, 73, 12, 0, '2024-01-15 14:16:45', '2024-01-15 14:16:45'),
(74, 74, 12, 0, '2024-01-15 14:19:22', '2024-01-15 14:19:22'),
(75, 75, 12, 0, '2024-01-15 14:21:50', '2024-01-15 14:21:50'),
(76, 76, 12, 0, '2024-01-15 14:24:32', '2024-01-15 14:24:32'),
(77, 77, 12, 0, '2024-01-15 14:27:34', '2024-01-15 14:27:34'),
(78, 78, 12, 0, '2024-01-15 14:32:36', '2024-01-15 14:32:36'),
(79, 79, 12, 0, '2024-01-15 15:31:41', '2024-01-15 15:31:41'),
(80, 80, 12, 0, '2024-01-15 15:33:52', '2024-01-15 15:33:52'),
(81, 81, 12, 0, '2024-01-15 15:36:52', '2024-01-15 15:36:52'),
(82, 82, 12, 0, '2024-01-15 15:40:11', '2024-01-15 15:40:11'),
(83, 83, 12, 0, '2024-01-15 15:42:16', '2024-01-15 15:42:16'),
(84, 84, 12, 0, '2024-01-15 15:44:16', '2024-01-15 15:44:16'),
(85, 85, 12, 0, '2024-01-15 15:47:29', '2024-01-15 15:47:29'),
(86, 86, 12, 0, '2024-01-15 15:49:52', '2024-01-15 15:49:52'),
(87, 87, 12, 0, '2024-01-15 15:52:08', '2024-01-15 15:52:08'),
(88, 88, 12, 0, '2024-01-15 15:55:03', '2024-01-15 15:55:03'),
(89, 89, 12, 0, '2024-01-15 15:57:08', '2024-01-15 15:57:08'),
(90, 90, 12, 0, '2024-01-15 16:00:28', '2024-01-15 16:00:28'),
(91, 91, 12, 0, '2024-01-15 16:06:13', '2024-01-15 16:06:13'),
(92, 92, 12, 0, '2024-01-15 16:10:23', '2024-01-15 16:10:23'),
(93, 93, 12, 0, '2024-01-15 16:12:59', '2024-01-15 16:12:59'),
(94, 94, 12, 0, '2024-01-15 16:41:12', '2024-01-15 16:41:12');

-- --------------------------------------------------------

--
-- Structure de la table `programmes_ecoles`
--

CREATE TABLE `programmes_ecoles` (
  `id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `programme_national_id` int(11) NOT NULL DEFAULT '0',
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `classe_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `programmes_ecoles`
--

INSERT INTO `programmes_ecoles` (`id`, `annee_id`, `programme_national_id`, `salle_id`, `ecole_id`, `token`, `created_at`, `updated_at`, `active`, `classe_id`) VALUES
(1, 1, 9, 1, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 10:45:24', 0, 0),
(2, 1, 10, 2, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 10:46:37', 0, 0),
(3, 1, 11, 3, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 10:47:01', 0, 0),
(4, 1, 12, 4, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 10:49:36', 0, 0),
(5, 1, 4, 5, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 10:51:22', 0, 0),
(6, 1, 2, 6, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 10:51:59', 0, 0),
(7, 1, 6, 7, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 10:53:39', 0, 0),
(8, 1, 8, 8, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 10:54:21', 0, 0),
(9, 1, 3, 9, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 10:54:46', 0, 0),
(10, 1, 9, 10, 5, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2022-12-08 19:13:48', 0, 0),
(11, 1, 10, 11, 5, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2022-12-08 19:14:32', 0, 0),
(12, 1, 11, 12, 5, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2022-12-08 19:15:03', 0, 0),
(13, 1, 12, 13, 5, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2022-12-08 19:15:30', 0, 0),
(14, 1, 9, 14, 9, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 0, 0),
(15, 1, 10, 15, 9, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 0, 0),
(16, 1, 11, 16, 9, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 0, 0),
(17, 1, 12, 17, 9, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 0, 0),
(18, 1, 4, 18, 9, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 0, 0),
(19, 1, 2, 19, 9, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 0, 0),
(20, 1, 6, 20, 9, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 0, 0),
(21, 1, 3, 21, 9, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 0, 0),
(22, 1, 8, 22, 9, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 0, 0),
(23, 2, 9, 23, 10, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 0, 0),
(24, 2, 10, 24, 10, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 0, 0),
(25, 2, 11, 25, 10, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 0, 0),
(26, 2, 12, 26, 10, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 0, 0),
(27, 2, 1, 27, 10, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 0, 0),
(28, 2, 4, 28, 10, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 0, 0),
(29, 2, 2, 29, 10, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 0, 0),
(30, 2, 5, 30, 10, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 0, 0),
(31, 2, 3, 31, 10, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 0, 0),
(32, 2, 8, 32, 10, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 0, 0),
(33, 2, 7, 33, 10, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 0, 0),
(34, 2, 9, 34, 11, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 0, 0),
(35, 2, 10, 35, 11, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 0, 0),
(36, 2, 11, 36, 11, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 0, 0),
(37, 2, 12, 37, 11, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 0, 0),
(38, 2, 9, 38, 12, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2023-12-14 09:47:24', 0, 0),
(39, 2, 10, 39, 12, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2023-12-14 09:49:39', 0, 0),
(40, 2, 11, 40, 12, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2023-12-14 09:50:59', 0, 0),
(41, 2, 12, 41, 12, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 0, 0),
(42, 2, 4, 42, 12, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 0, 0),
(43, 2, 2, 43, 12, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 0, 0),
(44, 2, 5, 44, 12, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 0, 0),
(45, 2, 7, 45, 12, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 0, 0),
(46, 2, 3, 46, 12, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 0, 0),
(47, 2, 8, 47, 12, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `programmes_ecoles_lignes`
--

CREATE TABLE `programmes_ecoles_lignes` (
  `id` int(11) NOT NULL,
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `programme_ecole_id` int(11) NOT NULL DEFAULT '0',
  `programme_national_ligne_id` int(11) NOT NULL DEFAULT '0',
  `enseignant_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `token` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `matiere_id` int(11) NOT NULL DEFAULT '0',
  `coefficient` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `programmes_ecoles_lignes`
--

INSERT INTO `programmes_ecoles_lignes` (`id`, `annee_id`, `programme_ecole_id`, `programme_national_ligne_id`, `enseignant_id`, `active`, `token`, `created_at`, `updated_at`, `matiere_id`, `coefficient`, `ecole_id`) VALUES
(1, 1, 1, 9, 15, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 13:28:09', 5, 1, 0),
(2, 1, 1, 9, 19, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 13:28:23', 6, 1, 0),
(3, 1, 1, 9, 11, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 13:28:41', 4, 1, 0),
(4, 1, 1, 9, 22, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 13:28:55', 8, 1, 0),
(5, 1, 1, 9, 14, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 13:29:16', 1, 1, 0),
(6, 1, 1, 9, 9, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 13:29:32', 2, 1, 0),
(7, 1, 1, 9, 28, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 13:29:50', 7, 1, 0),
(8, 1, 2, 10, 15, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 13:30:18', 5, 1, 0),
(9, 1, 2, 10, 13, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 13:31:07', 6, 1, 0),
(10, 1, 2, 10, 11, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 13:31:23', 4, 1, 0),
(11, 1, 2, 10, 22, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 13:31:33', 8, 1, 0),
(12, 1, 2, 10, 14, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 13:31:54', 1, 1, 0),
(13, 1, 2, 10, 9, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 13:32:04', 2, 1, 0),
(14, 1, 2, 10, 28, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 13:32:17', 7, 1, 0),
(15, 1, 3, 11, 31, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 13:56:06', 5, 1, 0),
(16, 1, 3, 11, 19, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 13:56:23', 6, 1, 0),
(17, 1, 3, 11, 26, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 13:56:33', 4, 1, 0),
(18, 1, 3, 11, 7, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 13:56:44', 8, 1, 0),
(19, 1, 3, 11, 3, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 13:56:58', 1, 1, 0),
(20, 1, 3, 11, 2, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 13:57:14', 2, 1, 0),
(21, 1, 3, 11, 28, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 13:57:28', 7, 1, 0),
(22, 1, 4, 12, 31, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 13:57:57', 5, 1, 0),
(23, 1, 4, 12, 13, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 13:58:09', 6, 1, 0),
(24, 1, 4, 12, 26, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 13:58:20', 4, 1, 0),
(25, 1, 4, 12, 32, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 13:58:30', 8, 1, 0),
(26, 1, 4, 12, 3, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 13:58:43', 1, 1, 0),
(27, 1, 4, 12, 2, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 13:58:57', 2, 1, 0),
(28, 1, 4, 12, 28, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 13:59:09', 7, 1, 0),
(29, 1, 5, 4, 17, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:32:59', 5, 3, 0),
(30, 1, 5, 4, 8, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:33:26', 6, 2, 0),
(31, 1, 5, 4, 26, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:33:37', 4, 3, 0),
(32, 1, 5, 4, 21, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:33:53', 3, 2, 0),
(33, 1, 5, 4, 16, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:34:08', 1, 4, 0),
(34, 1, 5, 4, 1, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:34:20', 2, 5, 0),
(35, 1, 5, 4, 7, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:34:35', 8, 5, 0),
(36, 1, 5, 4, 28, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 13:34:55', 7, 2, 0),
(37, 1, 6, 2, 17, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:39:35', 5, 4, 0),
(38, 1, 6, 2, 8, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:39:53', 6, 3, 0),
(39, 1, 6, 2, 6, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:40:07', 4, 4, 0),
(40, 1, 6, 2, 24, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:40:24', 9, 3, 0),
(41, 1, 6, 2, 21, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:40:42', 3, 4, 0),
(42, 1, 6, 2, 16, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:40:59', 1, 3, 0),
(43, 1, 6, 2, 7, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:41:13', 8, 2, 0),
(44, 1, 6, 2, 28, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 13:41:28', 7, 2, 0),
(45, 1, 7, 6, 17, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:41:56', 5, 3, 0),
(46, 1, 7, 6, 8, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:42:24', 6, 2, 0),
(47, 1, 7, 6, 5, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:43:01', 4, 3, 0),
(48, 1, 7, 6, 4, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:43:20', 3, 2, 0),
(49, 1, 7, 6, 10, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:43:33', 1, 4, 0),
(50, 1, 7, 6, 1, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:43:47', 2, 5, 0),
(51, 1, 7, 6, 22, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:43:56', 8, 5, 0),
(52, 1, 7, 6, 28, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 13:44:05', 7, 2, 0),
(53, 1, 8, 8, 25, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:44:32', 5, 3, 0),
(54, 1, 8, 8, 4, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:44:47', 3, 3, 0),
(55, 1, 8, 8, 19, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:44:56', 6, 3, 0),
(56, 1, 8, 8, 6, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:45:11', 4, 3, 0),
(57, 1, 8, 8, 10, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:45:24', 1, 4, 0),
(58, 1, 8, 8, 30, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:59:46', 2, 5, 0),
(59, 1, 8, 8, 18, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:45:55', 8, 5, 0),
(60, 1, 8, 8, 28, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 13:46:05', 7, 2, 0),
(61, 1, 9, 3, 25, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 13:46:53', 5, 5, 0),
(62, 1, 9, 3, 8, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 13:47:22', 6, 4, 0),
(63, 1, 9, 3, 5, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 13:47:36', 4, 4, 0),
(64, 1, 9, 3, 24, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 13:47:49', 9, 4, 0),
(65, 1, 9, 3, 4, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 13:48:05', 3, 3, 0),
(66, 1, 9, 3, 30, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 13:59:29', 1, 2, 0),
(67, 1, 9, 3, 28, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 13:48:25', 7, 2, 0),
(68, 1, 5, 0, 24, 1, 'cc9fbb9514903b94aa64284574b1e49e37116186', '2022-11-11 13:38:04', '2022-11-11 13:38:04', 10, 4, 0),
(69, 1, 10, 9, 36, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2023-09-29 10:28:38', 5, 1, 0),
(70, 1, 10, 9, 40, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2023-09-29 10:29:17', 6, 1, 0),
(71, 1, 10, 9, 38, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2023-09-29 10:30:50', 4, 1, 0),
(72, 1, 10, 9, 34, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2023-10-10 12:56:57', 8, 1, 0),
(73, 1, 10, 9, 42, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2023-09-29 10:31:21', 1, 1, 0),
(74, 1, 10, 9, 62, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2023-10-10 12:57:14', 2, 1, 0),
(75, 1, 10, 9, 43, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2023-10-10 12:57:28', 7, 1, 0),
(76, 1, 11, 10, 36, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2023-10-10 12:53:38', 5, 1, 0),
(77, 1, 11, 10, 40, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2023-10-10 12:53:57', 6, 1, 0),
(78, 1, 11, 10, 38, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2023-10-10 12:54:10', 4, 1, 0),
(79, 1, 11, 10, 34, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2023-10-10 12:54:28', 8, 1, 0),
(80, 1, 11, 10, 42, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2023-10-10 12:54:45', 1, 1, 0),
(81, 1, 11, 10, 62, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2023-10-10 12:55:16', 2, 1, 0),
(82, 1, 11, 10, 43, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2023-10-10 12:55:34', 7, 1, 0),
(83, 1, 12, 11, 35, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2023-10-10 12:50:45', 5, 1, 0),
(84, 1, 12, 11, 63, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2023-10-10 12:50:57', 6, 1, 0),
(85, 1, 12, 11, 46, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2023-10-10 12:51:49', 4, 1, 0),
(86, 1, 12, 11, 33, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2023-10-09 11:25:07', 8, 1, 0),
(87, 1, 12, 11, 41, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2023-10-10 12:53:03', 1, 1, 0),
(88, 1, 12, 11, 41, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2023-10-10 12:52:10', 2, 1, 0),
(89, 1, 12, 11, 65, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2023-10-10 12:50:11', 7, 1, 0),
(90, 1, 13, 12, 35, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2023-10-10 12:39:08', 5, 1, 0),
(91, 1, 13, 12, 63, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2023-10-10 12:42:34', 6, 1, 0),
(92, 1, 13, 12, 46, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2023-10-10 12:43:04', 4, 1, 0),
(93, 1, 13, 12, 33, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2023-10-09 11:25:47', 8, 1, 0),
(94, 1, 13, 12, 64, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2023-10-10 12:45:54', 1, 1, 0),
(95, 1, 13, 12, 41, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2023-10-10 12:46:08', 2, 1, 0),
(96, 1, 13, 12, 65, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2023-10-10 12:49:52', 7, 1, 0),
(97, 1, 10, 0, 39, 1, '5a7711b96f6345091230397cb6272aec61020c8f', '2023-01-20 09:48:31', '2023-10-10 12:57:41', 11, 2, 0),
(98, 1, 11, 0, 39, 1, '7a3ce3e11474a61e496b20237f3bc1bf9838b82b', '2023-01-20 10:20:42', '2023-10-10 12:56:06', 11, 2, 0),
(99, 1, 12, 0, 39, 1, '71948556e1f03b47ca1a63342088f5903c735283', '2023-01-20 10:21:02', '2023-10-10 12:48:03', 11, 2, 0),
(100, 1, 13, 0, 39, 1, '25575a86ad2abfc654c5d7ba7ab71e0be00dc658', '2023-01-20 10:21:46', '2023-10-10 12:47:00', 11, 2, 0),
(101, 1, 14, 9, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 5, 1, 0),
(102, 1, 14, 9, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 6, 1, 0),
(103, 1, 14, 9, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 4, 1, 0),
(104, 1, 14, 9, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 8, 1, 0),
(105, 1, 14, 9, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 1, 1, 0),
(106, 1, 14, 9, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 2, 1, 0),
(107, 1, 14, 9, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', 7, 1, 0),
(108, 1, 15, 10, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 5, 1, 0),
(109, 1, 15, 10, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 6, 1, 0),
(110, 1, 15, 10, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 4, 1, 0),
(111, 1, 15, 10, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 8, 1, 0),
(112, 1, 15, 10, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 1, 1, 0),
(113, 1, 15, 10, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 2, 1, 0),
(114, 1, 15, 10, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', 7, 1, 0),
(115, 1, 16, 11, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 5, 1, 0),
(116, 1, 16, 11, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 6, 1, 0),
(117, 1, 16, 11, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 4, 1, 0),
(118, 1, 16, 11, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 8, 1, 0),
(119, 1, 16, 11, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 1, 1, 0),
(120, 1, 16, 11, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 2, 1, 0),
(121, 1, 16, 11, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', 7, 1, 0),
(122, 1, 17, 12, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 5, 1, 0),
(123, 1, 17, 12, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 6, 1, 0),
(124, 1, 17, 12, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 4, 1, 0),
(125, 1, 17, 12, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 8, 1, 0),
(126, 1, 17, 12, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 1, 1, 0),
(127, 1, 17, 12, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 2, 1, 0),
(128, 1, 17, 12, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', 7, 1, 0),
(129, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 5, 3, 0),
(130, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 6, 2, 0),
(131, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 4, 3, 0),
(132, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 3, 2, 0),
(133, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 1, 4, 0),
(134, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 2, 5, 0),
(135, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 8, 5, 0),
(136, 1, 18, 4, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', 7, 2, 0),
(137, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 5, 4, 0),
(138, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 6, 3, 0),
(139, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 4, 4, 0),
(140, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 9, 3, 0),
(141, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 3, 4, 0),
(142, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 1, 3, 0),
(143, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 8, 2, 0),
(144, 1, 19, 2, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', 7, 2, 0),
(145, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 5, 3, 0),
(146, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 6, 2, 0),
(147, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 4, 3, 0),
(148, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 3, 2, 0),
(149, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 1, 4, 0),
(150, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 2, 5, 0),
(151, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 8, 5, 0),
(152, 1, 20, 6, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', 7, 2, 0),
(153, 1, 21, 3, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 5, 5, 0),
(154, 1, 21, 3, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 6, 4, 0),
(155, 1, 21, 3, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 4, 4, 0),
(156, 1, 21, 3, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 9, 4, 0),
(157, 1, 21, 3, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 3, 3, 0),
(158, 1, 21, 3, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 1, 2, 0),
(159, 1, 21, 3, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', 7, 2, 0),
(160, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 5, 3, 0),
(161, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 3, 3, 0),
(162, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 6, 3, 0),
(163, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 4, 3, 0),
(164, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 1, 4, 0),
(165, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 2, 5, 0),
(166, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 8, 5, 0),
(167, 1, 22, 8, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', 7, 2, 0),
(168, 2, 23, 9, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 5, 1, 0),
(169, 2, 23, 9, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 6, 1, 0),
(170, 2, 23, 9, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 4, 1, 0),
(171, 2, 23, 9, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 8, 1, 0),
(172, 2, 23, 9, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 1, 1, 0),
(173, 2, 23, 9, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 2, 1, 0),
(174, 2, 23, 9, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', 7, 1, 0),
(175, 2, 24, 10, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 5, 1, 0),
(176, 2, 24, 10, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 6, 1, 0),
(177, 2, 24, 10, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 4, 1, 0),
(178, 2, 24, 10, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 8, 1, 0),
(179, 2, 24, 10, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 1, 1, 0),
(180, 2, 24, 10, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 2, 1, 0),
(181, 2, 24, 10, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', 7, 1, 0),
(182, 2, 25, 11, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 5, 1, 0),
(183, 2, 25, 11, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 6, 1, 0),
(184, 2, 25, 11, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 4, 1, 0),
(185, 2, 25, 11, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 8, 1, 0),
(186, 2, 25, 11, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 1, 1, 0),
(187, 2, 25, 11, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 2, 1, 0),
(188, 2, 25, 11, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', 7, 1, 0),
(189, 2, 26, 12, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 5, 1, 0),
(190, 2, 26, 12, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 6, 1, 0),
(191, 2, 26, 12, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 4, 1, 0),
(192, 2, 26, 12, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 8, 1, 0),
(193, 2, 26, 12, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 1, 1, 0),
(194, 2, 26, 12, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 2, 1, 0),
(195, 2, 26, 12, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', 7, 1, 0),
(196, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 5, 4, 0),
(197, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 6, 3, 0),
(198, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 4, 4, 0),
(199, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 9, 3, 0),
(200, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 3, 4, 0),
(201, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 1, 3, 0),
(202, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 8, 2, 0),
(203, 2, 27, 1, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', 7, 2, 0),
(204, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 5, 3, 0),
(205, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 6, 2, 0),
(206, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 4, 3, 0),
(207, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 3, 2, 0),
(208, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 1, 4, 0),
(209, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 2, 5, 0),
(210, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 8, 5, 0),
(211, 2, 28, 4, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', 7, 2, 0),
(212, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 5, 4, 0),
(213, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 6, 3, 0),
(214, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 4, 4, 0),
(215, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 9, 3, 0),
(216, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 3, 4, 0),
(217, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 1, 3, 0),
(218, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 8, 2, 0),
(219, 2, 29, 2, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', 7, 2, 0),
(220, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 5, 3, 0),
(221, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 6, 2, 0),
(222, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 4, 3, 0),
(223, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 3, 2, 0),
(224, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 1, 4, 0),
(225, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 2, 5, 0),
(226, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 8, 5, 0),
(227, 2, 30, 5, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', 7, 2, 0),
(228, 2, 31, 3, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 5, 5, 0),
(229, 2, 31, 3, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 6, 4, 0),
(230, 2, 31, 3, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 4, 4, 0),
(231, 2, 31, 3, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 9, 4, 0),
(232, 2, 31, 3, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 3, 3, 0),
(233, 2, 31, 3, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 1, 2, 0),
(234, 2, 31, 3, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', 7, 2, 0),
(235, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 5, 3, 0),
(236, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 3, 3, 0),
(237, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 6, 3, 0),
(238, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 4, 3, 0),
(239, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 1, 4, 0),
(240, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 2, 5, 0),
(241, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 8, 5, 0),
(242, 2, 32, 8, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', 7, 2, 0),
(243, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 5, 3, 0),
(244, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 3, 3, 0),
(245, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 6, 3, 0),
(246, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 4, 3, 0),
(247, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 1, 4, 0),
(248, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 2, 5, 0),
(249, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 8, 5, 0),
(250, 2, 33, 7, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', 7, 2, 0),
(251, 2, 34, 9, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 5, 1, 0),
(252, 2, 34, 9, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 6, 1, 0),
(253, 2, 34, 9, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 4, 1, 0),
(254, 2, 34, 9, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 8, 1, 0),
(255, 2, 34, 9, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 1, 1, 0),
(256, 2, 34, 9, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 2, 1, 0),
(257, 2, 34, 9, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', 7, 1, 0),
(258, 2, 35, 10, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 5, 1, 0),
(259, 2, 35, 10, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 6, 1, 0),
(260, 2, 35, 10, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 4, 1, 0),
(261, 2, 35, 10, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 8, 1, 0),
(262, 2, 35, 10, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 1, 1, 0),
(263, 2, 35, 10, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 2, 1, 0),
(264, 2, 35, 10, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', 7, 1, 0),
(265, 2, 36, 11, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 5, 1, 0),
(266, 2, 36, 11, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 6, 1, 0),
(267, 2, 36, 11, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 4, 1, 0),
(268, 2, 36, 11, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 8, 1, 0),
(269, 2, 36, 11, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 1, 1, 0),
(270, 2, 36, 11, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 2, 1, 0),
(271, 2, 36, 11, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', 7, 1, 0),
(272, 2, 37, 12, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 5, 1, 0),
(273, 2, 37, 12, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 6, 1, 0),
(274, 2, 37, 12, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 4, 1, 0),
(275, 2, 37, 12, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 8, 1, 0),
(276, 2, 37, 12, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 1, 1, 0),
(277, 2, 37, 12, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 2, 1, 0),
(278, 2, 37, 12, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', 7, 1, 0),
(279, 2, 34, 0, 49, 1, '8891c90344277bccab2d5cedbfd772fa8f3bf8e2', '2023-08-23 10:47:26', '2023-09-25 11:57:33', 12, 2, 0),
(281, 2, 34, 0, 51, 1, 'b457a435c39c14d037d3357bed678df7339e1a4f', '2023-09-07 06:09:59', '2023-09-07 06:09:59', 14, 2, 0),
(282, 2, 34, 0, 53, 1, 'f5ffb8065e43e8ddb1e9585c9c028e6f818bc1fd', '2023-09-07 06:21:03', '2023-09-07 06:21:03', 13, 2, 0),
(283, 2, 35, 0, 49, 1, '17674a47341c7280bde7731832bb057aee31ed81', '2023-09-07 06:21:26', '2023-09-07 06:21:26', 12, 2, 0),
(284, 2, 35, 0, 53, 1, 'ebfc219600bb554b6a50520e6f75ea415d8101dd', '2023-09-07 06:21:38', '2023-09-07 06:21:38', 13, 2, 0),
(285, 2, 35, 0, 50, 1, 'b8e2b2dc22dfec6d58e6d3492dc8b61ed3d96a96', '2023-09-07 06:21:58', '2023-09-07 06:21:58', 14, 2, 0),
(286, 2, 36, 0, 49, 1, 'aa21f7dc18a794243a820842129864852abe832b', '2023-09-07 06:23:36', '2023-09-07 06:23:36', 12, 2, 0),
(287, 2, 36, 0, 53, 1, '3dd27042ad44fa5bcd8d89624e0e15cd847d2c14', '2023-09-07 06:23:50', '2023-09-07 06:23:50', 13, 2, 0),
(288, 2, 36, 0, 53, 1, '4523d44159cc980c978369da6cfa2142c7030c12', '2023-09-07 06:24:13', '2023-09-07 06:24:13', 14, 2, 0),
(289, 2, 37, 0, 49, 1, '41a1be5486f6b9413c502768162b49844fb31b78', '2023-09-07 06:24:30', '2023-09-07 06:24:30', 12, 2, 0),
(290, 2, 38, 9, 82, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2024-01-15 16:17:15', 5, 1, 0),
(291, 2, 38, 9, 79, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2024-01-15 16:21:02', 6, 1, 0),
(292, 2, 38, 9, 69, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2024-01-15 16:21:31', 4, 1, 0),
(293, 2, 38, 9, 72, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2024-01-15 16:20:39', 8, 1, 0),
(294, 2, 38, 9, 68, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2024-01-15 16:19:40', 1, 1, 0),
(295, 2, 38, 9, 81, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2024-01-15 16:19:22', 2, 1, 0),
(296, 2, 38, 9, 88, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2024-01-15 16:22:05', 7, 1, 0),
(297, 2, 39, 10, 0, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2023-12-14 09:49:39', 5, 1, 0),
(298, 2, 39, 10, 79, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2024-01-15 16:31:31', 6, 1, 0),
(299, 2, 39, 10, 67, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2024-01-15 16:31:58', 4, 1, 0),
(300, 2, 39, 10, 72, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2024-01-15 16:32:11', 8, 1, 0),
(301, 2, 39, 10, 68, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2024-01-15 16:32:21', 1, 1, 0),
(302, 2, 39, 10, 85, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2024-01-15 16:32:46', 2, 1, 0),
(303, 2, 39, 10, 83, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2024-01-15 16:33:10', 7, 1, 0),
(304, 2, 40, 11, 0, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2023-12-14 09:50:59', 5, 1, 0),
(305, 2, 40, 11, 94, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2024-01-15 16:42:25', 6, 1, 0),
(306, 2, 40, 11, 69, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2024-01-15 16:36:38', 4, 1, 0),
(307, 2, 40, 11, 86, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2024-01-15 16:36:54', 8, 1, 0),
(308, 2, 40, 11, 68, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2024-01-15 16:37:07', 1, 1, 0),
(309, 2, 40, 11, 85, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2024-01-15 16:37:27', 2, 1, 0),
(310, 2, 40, 11, 83, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2024-01-15 16:37:42', 7, 1, 0),
(311, 2, 41, 12, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 5, 1, 0),
(312, 2, 41, 12, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 6, 1, 0),
(313, 2, 41, 12, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 4, 1, 0),
(314, 2, 41, 12, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 8, 1, 0),
(315, 2, 41, 12, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 1, 1, 0),
(316, 2, 41, 12, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 2, 1, 0),
(317, 2, 41, 12, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', 7, 1, 0),
(318, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 5, 3, 0),
(319, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 6, 2, 0),
(320, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 4, 3, 0),
(321, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 3, 2, 0),
(322, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 1, 4, 0),
(323, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 2, 5, 0),
(324, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 8, 5, 0),
(325, 2, 42, 4, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', 7, 2, 0),
(326, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 5, 4, 0),
(327, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 6, 3, 0),
(328, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 4, 4, 0),
(329, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 9, 3, 0),
(330, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 3, 4, 0),
(331, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 1, 3, 0),
(332, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 8, 2, 0),
(333, 2, 43, 2, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', 7, 2, 0),
(334, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 5, 3, 0),
(335, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 6, 2, 0),
(336, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 4, 3, 0),
(337, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 3, 2, 0),
(338, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 1, 4, 0),
(339, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 2, 5, 0),
(340, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 8, 5, 0),
(341, 2, 44, 5, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', 7, 2, 0),
(342, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 5, 3, 0),
(343, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 3, 3, 0),
(344, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 6, 3, 0),
(345, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 4, 3, 0),
(346, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 1, 4, 0),
(347, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 2, 5, 0),
(348, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 8, 5, 0),
(349, 2, 45, 7, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', 7, 2, 0),
(350, 2, 46, 3, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 5, 5, 0),
(351, 2, 46, 3, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 6, 4, 0),
(352, 2, 46, 3, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 4, 4, 0),
(353, 2, 46, 3, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 9, 4, 0),
(354, 2, 46, 3, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 3, 3, 0),
(355, 2, 46, 3, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 1, 2, 0),
(356, 2, 46, 3, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', 7, 2, 0),
(357, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 5, 3, 0),
(358, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 3, 3, 0),
(359, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 6, 3, 0),
(360, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 4, 3, 0),
(361, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 1, 4, 0),
(362, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 2, 5, 0),
(363, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 8, 5, 0),
(364, 2, 47, 8, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', 7, 2, 0),
(365, 2, 38, 0, 66, 1, 'a0e8472ee7bc6ee6cf814ccf809906e8e8649071', '2023-12-14 10:44:16', '2023-12-14 10:44:16', 15, 1, 0),
(366, 2, 38, 0, 82, 1, '1ff27bd4a20f5511b0c8a307324e7a2af56f41ae', '2024-01-15 16:23:53', '2024-01-15 16:23:53', 16, 1, 0),
(367, 2, 38, 0, 82, 1, 'f95c669aeaeb7f047089aead29ba58cef257fc92', '2024-01-15 16:24:14', '2024-01-15 16:24:14', 17, 1, 0),
(368, 2, 38, 0, 82, 1, 'ab5fa3d31f70cd12db52d19bc1092e976976ae4f', '2024-01-15 16:24:32', '2024-01-15 16:24:32', 18, 1, 0),
(369, 2, 38, 0, 82, 1, '16e07568a07377401220346ae3957a02e04f0220', '2024-01-15 16:24:48', '2024-01-15 16:24:48', 19, 1, 0),
(370, 2, 38, 0, 82, 1, '453e781372689492cd387be8f3bc553fde69d74a', '2024-01-15 16:25:09', '2024-01-15 16:25:09', 20, 1, 0),
(371, 2, 38, 0, 82, 1, 'ac90c5d5cc8134febda77588bddd0b4dfe05e427', '2024-01-15 16:25:32', '2024-01-15 16:25:32', 21, 1, 0),
(372, 2, 39, 0, 82, 1, '2620100121c43889d0eab87c6bdd4330fdae5e0e', '2024-01-15 16:27:36', '2024-01-15 16:27:36', 16, 1, 0),
(373, 2, 39, 0, 82, 1, '23946b8ec3f2dc9e2d68cee426f54c4cecd3807f', '2024-01-15 16:27:55', '2024-01-15 16:27:55', 17, 1, 0),
(374, 2, 39, 0, 82, 1, 'b85902a452514108bb576ad6f5494b39b235a087', '2024-01-15 16:29:20', '2024-01-15 16:29:20', 18, 1, 0),
(375, 2, 39, 0, 82, 1, '9fbe8955f5373b5ac2ed10fdc2deab53f9cb97f7', '2024-01-15 16:29:39', '2024-01-15 16:29:39', 19, 1, 0),
(376, 2, 39, 0, 82, 1, 'ab548dd8f4c43201e114ce1e74c06ccb421b6082', '2024-01-15 16:29:53', '2024-01-15 16:29:53', 20, 1, 0),
(377, 2, 39, 0, 82, 1, '2bff0f1d05f15af2873b44cb340b23e3048239ef', '2024-01-15 16:30:18', '2024-01-15 16:30:18', 21, 1, 0),
(378, 2, 40, 0, 74, 1, '8a740b8e242bc1a8870a7c158ec53738d9e47ee6', '2024-01-15 16:34:18', '2024-01-15 16:34:18', 16, 1, 0),
(379, 2, 40, 0, 74, 1, '50431e0a5c0387bf57cca186a0480395a0787f9c', '2024-01-15 16:34:39', '2024-01-15 16:34:39', 17, 1, 0),
(380, 2, 40, 0, 74, 1, '16dc78d2d4bd034320e2e58f31d47078b68a700f', '2024-01-15 16:34:57', '2024-01-15 16:34:57', 18, 1, 0),
(381, 2, 40, 0, 74, 1, '6721c624f874ac1fe644fe5b03f7976751a152cd', '2024-01-15 16:35:17', '2024-01-15 16:35:17', 19, 1, 0),
(382, 2, 40, 0, 74, 1, '6f9162a81cf219038f70198986d5507d766ba453', '2024-01-15 16:35:33', '2024-01-15 16:35:33', 20, 1, 0),
(383, 2, 40, 0, 74, 1, '89db2e420775b267f3af039d87beb91367777d86', '2024-01-15 16:35:56', '2024-01-15 16:35:56', 21, 1, 0),
(384, 2, 39, 0, 66, 1, '24e69adcaab3f05c84a878c3faa3322f68f6d5ad', '2024-01-15 19:20:13', '2024-01-15 19:20:13', 15, 1, 0),
(385, 2, 40, 0, 66, 1, '7a4b7012eb5b2c4762bccd91fb66cd5963a0f764', '2024-01-15 19:20:44', '2024-01-15 19:20:44', 15, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `programmes_national`
--

CREATE TABLE `programmes_national` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `classe_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `enseignement_id` int(11) NOT NULL DEFAULT '0',
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `programmes_national`
--

INSERT INTO `programmes_national` (`id`, `classe_id`, `active`, `enseignement_id`, `annee_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 1, '2022-09-28 09:34:49', '2022-09-28 09:34:49'),
(2, 7, 1, 1, 1, '2022-09-28 09:38:17', '2022-09-28 09:38:17'),
(3, 10, 1, 1, 1, '2022-09-28 09:55:14', '2022-09-28 09:55:14'),
(4, 6, 1, 1, 1, '2022-09-28 10:03:43', '2022-09-28 10:03:43'),
(5, 9, 1, 1, 1, '2022-09-28 10:07:31', '2022-09-28 10:07:31'),
(6, 8, 1, 1, 1, '2022-09-28 10:09:42', '2022-09-28 10:09:42'),
(7, 11, 1, 1, 1, '2022-09-28 10:19:21', '2022-09-28 10:19:21'),
(8, 12, 1, 1, 1, '2022-09-28 10:23:06', '2022-09-28 10:23:06'),
(9, 1, 1, 1, 1, '2022-10-03 11:39:37', '2022-10-03 11:39:37'),
(10, 2, 1, 1, 1, '2022-10-03 11:43:49', '2022-10-03 11:43:49'),
(11, 3, 1, 1, 1, '2022-10-03 11:45:56', '2022-10-03 11:45:56'),
(12, 4, 1, 1, 1, '2022-10-03 11:50:26', '2022-10-03 11:50:26');

-- --------------------------------------------------------

--
-- Structure de la table `programmes_national_lignes`
--

CREATE TABLE `programmes_national_lignes` (
  `id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL DEFAULT '0',
  `national_programme_id` int(11) NOT NULL,
  `coefficient` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `programmes_national_lignes`
--

INSERT INTO `programmes_national_lignes` (`id`, `matiere_id`, `national_programme_id`, `coefficient`, `active`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 4, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(2, 6, 1, 3, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(3, 4, 1, 4, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(4, 9, 1, 3, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(5, 3, 1, 4, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(6, 1, 1, 3, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(7, 8, 1, 2, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(8, 7, 1, 2, 1, '2022-09-28 11:34:49', '2022-09-28 11:34:49'),
(9, 5, 2, 4, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(10, 6, 2, 3, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(11, 4, 2, 4, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(12, 9, 2, 3, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(13, 3, 2, 4, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(14, 1, 2, 3, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(15, 8, 2, 2, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(16, 7, 2, 2, 1, '2022-09-28 11:38:17', '2022-09-28 11:38:17'),
(17, 5, 3, 5, 1, '2022-09-28 11:55:14', '2022-09-28 11:55:14'),
(18, 6, 3, 4, 1, '2022-09-28 11:55:14', '2022-09-28 11:55:14'),
(19, 4, 3, 4, 1, '2022-09-28 11:55:14', '2022-09-28 11:55:14'),
(20, 9, 3, 4, 1, '2022-09-28 11:55:14', '2022-09-28 11:55:14'),
(21, 3, 3, 3, 1, '2022-09-28 11:55:14', '2022-09-28 11:55:14'),
(22, 1, 3, 2, 1, '2022-09-28 11:55:14', '2022-09-28 11:55:14'),
(23, 7, 3, 2, 1, '2022-09-28 11:55:14', '2022-09-28 11:55:14'),
(24, 5, 4, 3, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(25, 6, 4, 2, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(26, 4, 4, 3, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(27, 3, 4, 2, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(28, 1, 4, 4, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(29, 2, 4, 5, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(30, 8, 4, 5, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(31, 7, 4, 2, 1, '2022-09-28 12:03:43', '2022-09-28 12:03:43'),
(32, 5, 5, 3, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(33, 6, 5, 2, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(34, 4, 5, 3, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(35, 3, 5, 2, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(36, 1, 5, 4, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(37, 2, 5, 5, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(38, 8, 5, 5, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(39, 7, 5, 2, 1, '2022-09-28 12:07:31', '2022-09-28 12:07:31'),
(40, 5, 6, 3, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(41, 6, 6, 2, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(42, 4, 6, 3, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(43, 3, 6, 2, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(44, 1, 6, 4, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(45, 2, 6, 5, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(46, 8, 6, 5, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(47, 7, 6, 2, 1, '2022-09-28 12:09:42', '2022-09-28 12:09:42'),
(48, 5, 7, 3, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(49, 3, 7, 3, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(50, 6, 7, 3, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(51, 4, 7, 3, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(52, 1, 7, 4, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(53, 2, 7, 5, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(54, 8, 7, 5, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(55, 7, 7, 2, 1, '2022-09-28 12:19:21', '2022-09-28 12:19:21'),
(56, 5, 8, 3, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(57, 3, 8, 3, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(58, 6, 8, 3, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(59, 4, 8, 3, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(60, 1, 8, 4, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(61, 2, 8, 5, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(62, 8, 8, 5, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(63, 7, 8, 2, 1, '2022-09-28 12:23:06', '2022-09-28 12:23:06'),
(64, 5, 9, 1, 1, '2022-10-03 13:39:37', '2022-10-03 13:39:37'),
(65, 6, 9, 1, 1, '2022-10-03 13:39:37', '2022-10-03 13:39:37'),
(66, 4, 9, 1, 1, '2022-10-03 13:39:37', '2022-10-03 13:39:37'),
(67, 8, 9, 1, 1, '2022-10-03 13:39:37', '2022-10-03 13:39:37'),
(68, 1, 9, 1, 1, '2022-10-03 13:39:37', '2022-10-03 13:39:37'),
(69, 2, 9, 1, 1, '2022-10-03 13:39:37', '2022-10-03 13:39:37'),
(70, 7, 9, 1, 1, '2022-10-03 13:39:37', '2022-10-03 13:39:37'),
(71, 5, 10, 1, 1, '2022-10-03 13:43:49', '2022-10-03 13:43:49'),
(72, 6, 10, 1, 1, '2022-10-03 13:43:49', '2022-10-03 13:43:49'),
(73, 4, 10, 1, 1, '2022-10-03 13:43:49', '2022-10-03 13:43:49'),
(74, 8, 10, 1, 1, '2022-10-03 13:43:49', '2022-10-03 13:43:49'),
(75, 1, 10, 1, 1, '2022-10-03 13:43:49', '2022-10-03 13:43:49'),
(76, 2, 10, 1, 1, '2022-10-03 13:43:49', '2022-10-03 13:43:49'),
(77, 7, 10, 1, 1, '2022-10-03 13:43:49', '2022-10-03 13:43:49'),
(78, 5, 11, 1, 1, '2022-10-03 13:45:56', '2022-10-03 13:45:56'),
(79, 6, 11, 1, 1, '2022-10-03 13:45:56', '2022-10-03 13:45:56'),
(80, 4, 11, 1, 1, '2022-10-03 13:45:56', '2022-10-03 13:45:56'),
(81, 8, 11, 1, 1, '2022-10-03 13:45:56', '2022-10-03 13:45:56'),
(82, 1, 11, 1, 1, '2022-10-03 13:45:56', '2022-10-03 13:45:56'),
(83, 2, 11, 1, 1, '2022-10-03 13:45:56', '2022-10-03 13:45:56'),
(84, 7, 11, 1, 1, '2022-10-03 13:45:56', '2022-10-03 13:45:56'),
(85, 5, 12, 1, 1, '2022-10-03 13:50:26', '2022-10-05 10:59:12'),
(86, 6, 12, 1, 1, '2022-10-03 13:50:26', '2022-10-05 10:59:41'),
(87, 4, 12, 1, 1, '2022-10-03 13:50:26', '2022-10-05 11:00:23'),
(88, 8, 12, 1, 1, '2022-10-03 13:50:26', '2022-10-05 11:01:30'),
(89, 1, 12, 1, 1, '2022-10-03 13:50:26', '2022-10-05 11:01:55'),
(90, 2, 12, 1, 1, '2022-10-03 13:50:26', '2022-10-05 11:02:13'),
(91, 7, 12, 1, 1, '2022-10-03 13:50:26', '2022-10-05 11:02:32');

-- --------------------------------------------------------

--
-- Structure de la table `rapport_cours`
--

CREATE TABLE `rapport_cours` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `name` varchar(255) DEFAULT 'null',
  `appuie_id` int(11) DEFAULT '0',
  `detail` text,
  `prof_id` int(11) DEFAULT '0',
  `programme_ecole_ligne_id` int(11) DEFAULT '0',
  `ecole_id` int(11) DEFAULT '0',
  `salle_id` int(11) DEFAULT '0',
  `tranche_id` int(11) DEFAULT '0',
  `annee_id` int(11) DEFAULT '0',
  `dte` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rapport_jours`
--

CREATE TABLE `rapport_jours` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT 'null',
  `detail` text,
  `user_id` int(11) DEFAULT '0',
  `ecole_id` int(11) DEFAULT '0',
  `annee_id` int(11) DEFAULT '0',
  `dte` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `releve_notes`
--

CREATE TABLE `releve_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inscription_id` int(11) NOT NULL DEFAULT '0',
  `salle_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `trimestre_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moi_id` int(11) NOT NULL DEFAULT '0',
  `semaine_id` int(11) NOT NULL DEFAULT '0',
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `moyenne` double NOT NULL DEFAULT '0',
  `moyenne_annuelle` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `releve_traites`
--

CREATE TABLE `releve_traites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `annee_id` int(11) NOT NULL DEFAULT '0',
  `trimestre_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `token` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SUPER ADMIN', NULL, NULL),
(2, 'DIRECTEUR', NULL, NULL),
(3, 'PROMOTEUR ECOLE', NULL, NULL),
(4, 'GESTIONNAIRE DES FINANCE', NULL, NULL),
(5, 'DIRECTEUR DES ETUDES', NULL, NULL),
(6, 'ENSEIGNANT', NULL, NULL),
(7, 'PARENT', NULL, NULL),
(8, 'SURVEILLANT GENERAL', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `abb` varchar(50) DEFAULT NULL,
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `montant` double NOT NULL DEFAULT '0',
  `site_id` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `token` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_uri` varchar(100) DEFAULT NULL,
  `nombre_places` int(11) NOT NULL DEFAULT '0',
  `classe_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id`, `name`, `abb`, `ecole_id`, `montant`, `site_id`, `active`, `token`, `created_at`, `updated_at`, `image_uri`, `nombre_places`, `classe_id`) VALUES
(1, 'Pointe-Noire', 'PN', 1, 12000, 0, 1, 'a3a0167dfcfcec4a9cbf667a9185479108b78063', '2022-11-11 10:45:24', '2022-11-11 10:45:24', NULL, 25, 1),
(2, 'Ouesso', 'Oue', 1, 12000, 0, 1, '124d9e3c0bc551408ecf85dd544d42d5ea5b4af0', '2022-11-11 10:46:37', '2022-11-11 10:46:37', NULL, 25, 2),
(3, 'Dolisie', 'Dol', 1, 12000, 0, 1, '56090a2d08210c7737ad3c8b54b03e00356ecf90', '2022-11-11 10:47:01', '2022-11-11 10:47:01', NULL, 25, 3),
(4, 'Madingou', 'Mad', 1, 18000, 0, 1, '7283d13250e63d3007386d3e83053b355c768b14', '2022-11-11 10:49:36', '2022-11-11 10:49:36', NULL, 25, 4),
(5, 'Mangue', 'Man', 1, 16000, 0, 1, '3e6c0e8be56cff18c5f2e71a17b3aa8ad22105b3', '2022-11-11 10:51:22', '2022-11-11 10:51:22', NULL, 50, 6),
(6, 'Kinkala', 'Kink', 1, 16000, 0, 1, 'a9c206140d962dbf37360c132af7ac75d01d5713', '2022-11-11 10:51:59', '2022-11-11 10:51:59', NULL, 50, 7),
(7, 'Owando', 'Owa', 1, 16000, 0, 1, 'e6d05a522ffe9c5cf806f9061c4a727f54eb126c', '2022-11-11 10:53:39', '2022-11-11 10:53:39', NULL, 25, 8),
(8, 'Ananas', 'Ana', 1, 23000, 0, 1, '90c3cf3b2a0e34a75e28b36e39d22e1bd63f13d0', '2022-11-11 10:54:21', '2022-11-11 10:54:21', NULL, 25, 12),
(9, 'Avocat', 'Avoc', 1, 23000, 0, 1, 'c9690bf2cf07f685fad3af196c36df98335ba7f4', '2022-11-11 10:54:46', '2022-11-11 10:54:46', NULL, 25, 10),
(10, 'Salle 6e', '6e', 5, 6500, 0, 1, '82eb4d7f1957c54992c5ad45b8cb54ad27a422a2', '2022-12-08 19:13:48', '2022-12-08 19:13:48', NULL, 0, 1),
(11, 'Salle 5e', '5e', 5, 6500, 0, 1, '437567b376d35a38f9a9aebe2497c97103da56f6', '2022-12-08 19:14:32', '2022-12-08 19:14:32', NULL, 0, 2),
(12, 'Salle 4e', '4e', 5, 7000, 0, 1, '5fc1113218e364043cf7dd9d366aeaae9b5665d9', '2022-12-08 19:15:03', '2022-12-08 19:15:03', NULL, 0, 3),
(13, 'Salle 3e', '3e', 5, 8500, 0, 1, '8815ce2452b0b871da8a1a5fda88e6c58c701d8a', '2022-12-08 19:15:30', '2022-12-08 19:15:30', NULL, 0, 4),
(14, 'Salle 1', 'S1', 9, 15000, 0, 1, '357edbbd79c921f5cffd83aeaa1067da4fc34f17', '2023-06-14 08:54:43', '2023-06-14 08:54:43', NULL, 35, 1),
(15, 'Salle 2', 'S2', 9, 15000, 0, 1, '6f32e76cc0041d74563f394115349d9bb2d04fd8', '2023-06-14 08:55:19', '2023-06-14 08:55:19', NULL, 40, 2),
(16, 'Salle 3', 'S3', 9, 16000, 0, 1, 'c21e77a366aa8e9ec48dd8284e76d2f413502d1a', '2023-06-14 08:57:04', '2023-06-14 08:57:04', NULL, 40, 3),
(17, 'Salle 4', 'S4', 9, 18000, 0, 1, 'dfda65efea361340942a65da8bd2e8a1b4ade187', '2023-06-14 08:59:12', '2023-06-14 08:59:12', NULL, 45, 4),
(18, 'Salle STC', 'STC', 9, 24000, 0, 1, 'aed833e52dd3ec6fa19c41b72238304ca2cd197c', '2023-06-14 09:00:31', '2023-06-14 09:00:31', NULL, 50, 6),
(19, 'Salle PA', 'PA', 9, 26000, 0, 1, 'f9bcc1920fb3fa6ba65cae2207a085924360812c', '2023-06-14 09:01:13', '2023-06-14 09:01:13', NULL, 30, 7),
(20, 'Salle PD', 'PD', 9, 26000, 0, 1, 'a36e8bffda5e0b757eab875d361081b1654bd14d', '2023-06-14 09:01:45', '2023-06-14 09:01:45', NULL, 35, 8),
(21, 'Salle TA', 'TA', 9, 28000, 0, 1, '4ace29eeb948786ac3d24130a35f0fac29f668cd', '2023-06-14 09:02:21', '2023-06-14 09:02:21', NULL, 38, 10),
(22, 'Salle TD', 'TD', 9, 28000, 0, 1, '6429e563fedf843a6b50da83fff2fe6aec9d3116', '2023-06-14 09:03:00', '2023-06-14 09:03:00', NULL, 45, 12),
(23, 'Salle 1', 'S1', 10, 16000, 0, 1, 'cc497a0383d7e346844ff544156730fc251b8c68', '2023-07-29 11:16:15', '2023-07-29 11:16:15', NULL, 45, 1),
(24, 'Salle 2', 'S2', 10, 17000, 0, 1, 'a9f3362c4d6705d9fa60e41298769aca458d682c', '2023-07-29 11:21:00', '2023-07-29 11:21:00', NULL, 45, 2),
(25, 'Salle 3', 'S3', 10, 18000, 0, 1, 'a2d70e3cc9ce62058db412bef7841da0e5a947dd', '2023-07-29 11:22:27', '2023-07-29 11:22:27', NULL, 45, 3),
(26, 'Salle 4', 'S4', 10, 23000, 0, 1, '8e0a2d1977eac8e9d641c6c195fcfa981628d903', '2023-07-29 11:23:06', '2023-07-29 11:23:06', NULL, 45, 4),
(27, 'Salle 5', 'S5', 10, 20000, 0, 1, 'c4f7ba997d73f52ee2cec5932dcef44990b9187a', '2023-07-29 11:29:54', '2023-07-29 11:29:54', NULL, 40, 5),
(28, 'Salle 6', 'S6', 10, 20000, 0, 1, '0930bb7ad1cc0adb14e6416a77a41292d06efcd8', '2023-07-29 11:30:32', '2023-07-29 11:30:32', NULL, 40, 6),
(29, 'Salle 7', 'S7', 10, 22000, 0, 1, '6632695b0e3db8c8d039cf2f600a1639a3801db5', '2023-07-29 11:32:17', '2023-07-29 11:32:17', NULL, 40, 7),
(30, 'Salle 8 (Premiere S)', 'S8', 10, 22000, 0, 1, '4af18cb9f2940bea79702417b3e8288982b49b03', '2023-07-29 11:33:46', '2023-07-29 11:33:46', NULL, 40, 9),
(31, 'Salle 9', 'S9', 10, 26000, 0, 1, 'bf5447ce90cbcde2856b8b98d2e4a430e1ddd13d', '2023-07-29 11:34:46', '2023-07-29 11:34:46', NULL, 35, 10),
(32, 'Salle 10', 'S10', 10, 26000, 0, 1, '9ad736aef833ca323c8a7cad324ed43aae84bfa5', '2023-07-29 11:35:35', '2023-07-29 11:35:35', NULL, 35, 12),
(33, 'Salle 11', 'S11', 10, 26000, 0, 1, '6ab51424d18f0c5263705bf9607ac693773b53fa', '2023-07-29 11:36:29', '2023-07-29 11:36:29', NULL, 15, 11),
(34, '6e', '6e', 11, 28500, 0, 1, 'ec0a83fdd8850024a3c713e68b09253275bb88a5', '2023-08-14 09:47:57', '2023-08-14 09:47:57', NULL, 0, 1),
(35, '5e', '5e', 11, 28500, 0, 1, '5cbcfef5cc2aa4564130f7c009fc12ea88064d4e', '2023-08-14 09:49:04', '2023-08-14 09:49:04', NULL, 0, 2),
(36, '4e', '4e', 11, 28500, 0, 1, 'b7fc88e36022a5890687fc5c8387429663ccc7a7', '2023-08-14 09:50:03', '2023-08-14 09:50:03', NULL, 0, 3),
(37, '3e', '3e', 11, 28500, 0, 1, '88baca2a8203e9799b5ccddb3d3c30724e04b0c9', '2023-08-14 09:51:02', '2023-08-14 09:51:02', NULL, 0, 4),
(38, 'SIXIEME', '6ème', 12, 21000, 0, 1, '11c7af6283ebcf5df9cdad7bd2c9188729eebb9b', '2023-12-14 09:47:24', '2023-12-14 09:47:24', NULL, 42, 1),
(39, 'CINQUIEME', '5ème', 12, 21000, 0, 1, '44d512b51bfc23f16fddf9946825f3bddd11e9c2', '2023-12-14 09:49:39', '2023-12-14 09:49:39', NULL, 42, 2),
(40, 'QUATRIEME', '4ème', 12, 21000, 0, 1, '62ca99add0db2d445d90361fe771ae1181f12369', '2023-12-14 09:50:59', '2023-12-14 09:50:59', NULL, 48, 3),
(41, 'TROISIEME', '3ème', 12, 22000, 0, 1, '987cefb78fcda20351227481b161633e1cc1f14a', '2023-12-14 09:51:49', '2023-12-14 09:51:49', NULL, 48, 4),
(42, 'SECONDE TRONC COMMUN', 'STC', 12, 23500, 0, 1, 'c09a6ea0ef98fc7d028c6129191f290ef8718edf', '2023-12-14 09:53:32', '2023-12-14 09:53:32', NULL, 48, 6),
(43, 'PREMIERE LITTERAIRE', 'PL', 12, 23500, 0, 1, 'ac90d16607d38cad5f641ece661943942576e5df', '2023-12-14 09:55:23', '2023-12-14 09:55:23', NULL, 36, 7),
(44, 'PREMIERE  SCIENTIFIQUE', 'PS', 12, 23500, 0, 1, 'acae3f8005c6495f0602774c8bc08461bc3d7185', '2023-12-14 09:56:43', '2023-12-14 09:56:43', NULL, 48, 9),
(45, 'TERMINALE C', 'TC', 12, 25000, 0, 1, '630bebcaf23039dc1f0c558c5ae8fa6f55d0008b', '2023-12-14 09:57:30', '2023-12-14 09:57:30', NULL, 48, 11),
(46, 'TERMINALE LITTERAIRE', 'TL', 12, 25000, 0, 1, 'b40be4195f25d1153a9b2b88f3cba3c51526eea0', '2023-12-14 09:58:23', '2023-12-14 09:58:23', NULL, 42, 10),
(47, 'TERMINALE D', 'TD', 12, 25000, 0, 1, 'c545133b925a5d147c1a9bca8f462098eb4c4ce6', '2023-12-14 09:59:00', '2023-12-14 09:59:00', NULL, 48, 12);

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enseignement_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `series`
--

INSERT INTO `series` (`id`, `name`, `abb`, `enseignement_id`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, 1, '2022-09-23 09:27:54', '2022-09-23 09:27:54'),
(2, 'C', NULL, 1, '2022-09-23 09:28:13', '2022-09-23 09:28:13'),
(3, 'D', NULL, 1, '2022-09-23 09:28:26', '2022-09-23 09:28:26'),
(4, 'S', NULL, 1, '2022-09-23 09:28:38', '2022-09-23 09:28:38'),
(5, 'GENERAL', NULL, 1, '2022-09-23 09:42:15', '2022-09-23 09:42:15'),
(6, 'TECHNIQUE', NULL, 2, '2022-09-23 09:42:35', '2022-09-23 09:42:35');

-- --------------------------------------------------------

--
-- Structure de la table `sexes`
--

CREATE TABLE `sexes` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sexes`
--

INSERT INTO `sexes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Masculin', '2022-10-08 19:29:59', '2022-10-08 19:29:59'),
(2, 'Feminin', '2022-10-08 19:29:59', '2022-10-08 19:29:59');

-- --------------------------------------------------------

--
-- Structure de la table `suivi_paiements`
--

CREATE TABLE `suivi_paiements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paiement_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecole_id` bigint(20) NOT NULL DEFAULT '0',
  `semaine` int(11) NOT NULL DEFAULT '0',
  `mois` int(11) NOT NULL DEFAULT '0',
  `annee` int(11) NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suivi_paiements`
--

INSERT INTO `suivi_paiements` (`id`, `paiement_id`, `type`, `ecole_id`, `semaine`, `mois`, `annee`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, 'INSCRIPTION', 1, 45, 11, 2022, 'bc7bed4a96cb20628ac61ac22c5fdad4b13b75cd', '2022-11-11 21:29:22', '2022-11-11 21:29:22'),
(2, 2, 'INSCRIPTION', 1, 45, 11, 2022, '2b3b77eb5db3d40237e14b49a1a1f873f0bf7c8d', '2022-11-11 21:33:02', '2022-11-11 21:33:02'),
(3, 3, 'INSCRIPTION', 1, 45, 11, 2022, '981cd5faffdf073f0c4f1072f4496926a419e6f8', '2022-11-11 21:34:58', '2022-11-11 21:34:58'),
(4, 4, 'INSCRIPTION', 1, 45, 11, 2022, '9aba82c102919e3edcd0d48e89a184241aca83c4', '2022-11-11 21:36:37', '2022-11-11 21:36:37'),
(5, 5, 'INSCRIPTION', 1, 45, 11, 2022, '2f9265e3e7695ab1bf114e88566512026a71490f', '2022-11-11 21:38:28', '2022-11-11 21:38:28'),
(6, 6, 'INSCRIPTION', 1, 45, 11, 2022, 'e20e8f44f5e4f1a605dc4d71ec3202d502b80272', '2022-11-11 21:40:41', '2022-11-11 21:40:41'),
(7, 7, 'INSCRIPTION', 1, 45, 11, 2022, '072fa45f8d1a7e1d50f031b0fed138a8559197db', '2022-11-11 21:42:20', '2022-11-11 21:42:20'),
(8, 8, 'INSCRIPTION', 1, 45, 11, 2022, '7433c4b97dafef5866129d4087b7b6ffa5ec44b2', '2022-11-11 21:43:45', '2022-11-11 21:43:45'),
(9, 9, 'INSCRIPTION', 1, 45, 11, 2022, 'd23dfb734143be5f374f1db2cfe138b4402baeff', '2022-11-11 21:46:45', '2022-11-11 21:46:45'),
(10, 10, 'INSCRIPTION', 1, 45, 11, 2022, 'ae35e44793264ef87e206906f10a534c8e3fe279', '2022-11-11 21:49:05', '2022-11-11 21:49:05'),
(11, 11, 'INSCRIPTION', 1, 45, 11, 2022, '00bee9ed3436a801e32ad28333b1bc31b83368b6', '2022-11-11 21:50:33', '2022-11-11 21:50:33'),
(12, 12, 'INSCRIPTION', 1, 45, 11, 2022, '76d521c7738a40a14438af74f01b51f3d847fc94', '2022-11-11 21:52:40', '2022-11-11 21:52:40'),
(13, 13, 'INSCRIPTION', 1, 45, 11, 2022, '0467ab8ceb6badedf4a467ff6479adc16d2c1ba2', '2022-11-11 21:54:08', '2022-11-11 21:54:08'),
(14, 14, 'INSCRIPTION', 1, 45, 11, 2022, 'a014d42f59f6d05e48cc00a1585ffd6b25df8d42', '2022-11-11 21:55:19', '2022-11-11 21:55:19'),
(15, 15, 'INSCRIPTION', 1, 45, 11, 2022, '40035000bbb5a53a0f64db48f157c6660a71f884', '2022-11-11 21:57:36', '2022-11-11 21:57:36'),
(16, 16, 'INSCRIPTION', 1, 45, 11, 2022, '8385b0c8fd0ab441721c9e89ae562bdf2216035e', '2022-11-11 21:59:02', '2022-11-11 21:59:02'),
(17, 17, 'INSCRIPTION', 1, 45, 11, 2022, '35ab00c13524f58cd890206b4a29409396cc8234', '2022-11-11 22:01:49', '2022-11-11 22:01:49'),
(18, 18, 'INSCRIPTION', 1, 45, 11, 2022, '7a0ac800fe8237f088de7f3964d3d11bf8f9a133', '2022-11-11 22:03:22', '2022-11-11 22:03:22'),
(19, 19, 'INSCRIPTION', 1, 45, 11, 2022, 'dce8879d9f96bbb2fea091e9953e8445bd1be1bf', '2022-11-11 22:04:17', '2022-11-11 22:04:17'),
(20, 20, 'INSCRIPTION', 1, 45, 11, 2022, '673b016055a9b7db8a1b70638a4fe326599981bf', '2022-11-11 22:05:22', '2022-11-11 22:05:22'),
(21, 21, 'INSCRIPTION', 1, 45, 11, 2022, '2c8a88651a464f65338043a113d2189fe1769f07', '2022-11-11 22:06:50', '2022-11-11 22:06:50'),
(22, 22, 'INSCRIPTION', 1, 45, 11, 2022, '4439286c06f83c3159369f7df1ad03bb53d58cdc', '2022-11-11 22:08:51', '2022-11-11 22:08:51'),
(23, 23, 'INSCRIPTION', 1, 45, 11, 2022, '3f657bdf2795fde7417c178a86d4b634825f7ba7', '2022-11-11 22:10:26', '2022-11-11 22:10:26'),
(24, 24, 'INSCRIPTION', 1, 45, 11, 2022, 'ff09d08ef60e68aeb24d7542e749bd09d73d544a', '2022-11-11 22:12:47', '2022-11-11 22:12:47'),
(25, 25, 'INSCRIPTION', 1, 45, 11, 2022, '8591d2d49a163ab51dd1d514112869fb26a970ae', '2022-11-11 22:14:03', '2022-11-11 22:14:03'),
(26, 26, 'INSCRIPTION', 1, 45, 11, 2022, 'c5c0cc81576a4de035a9d3db9fd42d0db4ac2b56', '2022-11-11 22:15:40', '2022-11-11 22:15:40'),
(27, 27, 'INSCRIPTION', 1, 45, 11, 2022, '8aef2a69640919cc5701f0098b82296bb22656a9', '2022-11-11 22:17:52', '2022-11-11 22:17:52'),
(28, 28, 'INSCRIPTION', 1, 45, 11, 2022, '95e74f2a78a40a1382ec4b9141cf0565304d6948', '2022-11-11 22:18:45', '2022-11-11 22:18:45'),
(29, 29, 'INSCRIPTION', 1, 45, 11, 2022, 'c3a3c2feced47769e49bdfb23f560606218f1e31', '2022-11-11 22:19:42', '2022-11-11 22:19:42'),
(30, 30, 'INSCRIPTION', 1, 45, 11, 2022, '34bfff08add02184b7aac2db7432223d48fdc50f', '2022-11-11 22:20:39', '2022-11-11 22:20:39'),
(31, 31, 'INSCRIPTION', 1, 45, 11, 2022, '7a0408d4b9801fd1cfc04aae406051df08e2c6d1', '2022-11-11 22:22:11', '2022-11-11 22:22:11'),
(32, 32, 'INSCRIPTION', 1, 45, 11, 2022, '81a982d102c6d2a6be3629b80dd34bb5ca2e3166', '2022-11-11 22:23:59', '2022-11-11 22:23:59'),
(33, 33, 'INSCRIPTION', 1, 45, 11, 2022, '1ac24154b712a0223d57720dc27c05c34d06c0fc', '2022-11-11 22:24:54', '2022-11-11 22:24:54'),
(34, 34, 'INSCRIPTION', 1, 45, 11, 2022, 'cfff1757dcfc05112012462e2b7627acb1ce9e01', '2022-11-11 22:25:54', '2022-11-11 22:25:54'),
(35, 35, 'INSCRIPTION', 1, 45, 11, 2022, 'de91c469a87366b9a22922997c344b89397d06a9', '2022-11-11 22:27:41', '2022-11-11 22:27:41'),
(36, 36, 'INSCRIPTION', 1, 45, 11, 2022, '2ab2b82e5ac6b89cf12c6a9cead1490c4a08a27f', '2022-11-11 22:28:37', '2022-11-11 22:28:37'),
(37, 37, 'INSCRIPTION', 1, 45, 11, 2022, '85013203413a3ae9af516fac2dcbd8e68ff66213', '2022-11-11 22:29:38', '2022-11-11 22:29:38'),
(38, 38, 'INSCRIPTION', 1, 45, 11, 2022, '31335d77e00b8e2212ae3009685375273f8fa3e7', '2022-11-11 22:30:58', '2022-11-11 22:30:58'),
(39, 39, 'INSCRIPTION', 1, 45, 11, 2022, 'f1a65c4bff2f9eb9281e1fe9e6dff96e3afc25e7', '2022-11-11 22:32:26', '2022-11-11 22:32:26'),
(40, 40, 'INSCRIPTION', 1, 45, 11, 2022, 'c9a5a1476f8152736ddf1ce8332a8b8726cb3a9e', '2022-11-11 22:33:32', '2022-11-11 22:33:32'),
(41, 41, 'INSCRIPTION', 1, 45, 11, 2022, 'b4a07c125f60e08d01ea2b4fcc73e80dfca114d5', '2022-11-11 22:34:43', '2022-11-11 22:34:43'),
(42, 42, 'INSCRIPTION', 1, 45, 11, 2022, '2ac7b9c341e465d326bcf877e4e939291330aa72', '2022-11-11 22:36:06', '2022-11-11 22:36:06'),
(43, 43, 'INSCRIPTION', 1, 45, 11, 2022, 'b33cad05365d866aea8aa00371b772c0a8870502', '2022-11-11 22:37:16', '2022-11-11 22:37:16'),
(44, 44, 'INSCRIPTION', 1, 45, 11, 2022, '1396ef92938b4dfef7aa59a2333e892ff454e211', '2022-11-11 22:38:02', '2022-11-11 22:38:02'),
(45, 45, 'INSCRIPTION', 1, 45, 11, 2022, '8f9572c4d31fec32aee46cd1d977c0c38ce81c10', '2022-11-11 22:39:29', '2022-11-11 22:39:29'),
(46, 46, 'INSCRIPTION', 1, 45, 11, 2022, '650f73f8e5d910f2aa93575813803953b7db42b6', '2022-11-11 22:40:28', '2022-11-11 22:40:28'),
(47, 47, 'INSCRIPTION', 1, 45, 11, 2022, '9b8aaeb211619fff847b6de554d878b5be879a40', '2022-11-11 22:41:30', '2022-11-11 22:41:30'),
(48, 48, 'INSCRIPTION', 1, 45, 11, 2022, '25bf9d12453babc4955a48ba37ad799c02e71ccb', '2022-11-11 22:42:22', '2022-11-11 22:42:22'),
(49, 49, 'INSCRIPTION', 1, 45, 11, 2022, '5cb090155c1ae336491961ad16f9f94b1af46455', '2022-11-11 22:43:17', '2022-11-11 22:43:17'),
(50, 50, 'INSCRIPTION', 1, 45, 11, 2022, '07745617908457e4cf6d44797160bc8def451e65', '2022-11-11 22:44:02', '2022-11-11 22:44:02'),
(51, 51, 'INSCRIPTION', 1, 45, 11, 2022, '468a7a7fceefa0c22a07fc2f76a4a39b59cf2b38', '2022-11-11 22:44:59', '2022-11-11 22:44:59'),
(52, 52, 'INSCRIPTION', 1, 45, 11, 2022, '2cc9d258f11d228b77a2059de073e36b54f2d32d', '2022-11-11 22:46:07', '2022-11-11 22:46:07'),
(53, 53, 'INSCRIPTION', 1, 45, 11, 2022, '6a5ae4e8d2c13ac9347ba1b7f2e38d36d2f6d8bc', '2022-11-11 22:47:27', '2022-11-11 22:47:27'),
(54, 54, 'INSCRIPTION', 1, 45, 11, 2022, '574a6b0812741318e68f6568b89ab1ea29096301', '2022-11-11 22:48:12', '2022-11-11 22:48:12'),
(55, 55, 'INSCRIPTION', 1, 45, 11, 2022, 'e21d44fd08769cdd7ee3ee2b83481d24315f5551', '2022-11-11 22:49:07', '2022-11-11 22:49:07'),
(56, 56, 'INSCRIPTION', 1, 45, 11, 2022, 'd8b075623a10642dbb06e015c2605a59db759055', '2022-11-11 22:50:22', '2022-11-11 22:50:22'),
(57, 57, 'INSCRIPTION', 1, 45, 11, 2022, 'ff7462f8c3158f57b80a4862d75775163f7b52db', '2022-11-11 22:52:27', '2022-11-11 22:52:27'),
(58, 58, 'INSCRIPTION', 1, 45, 11, 2022, '7e561a6251175c423c42e281680c93f2fd0670fc', '2022-11-11 22:53:33', '2022-11-11 22:53:33'),
(59, 59, 'INSCRIPTION', 1, 45, 11, 2022, '52b85044bf1ad1e79922f94ac7320d2c3c76947e', '2022-11-11 22:54:23', '2022-11-11 22:54:23'),
(60, 60, 'INSCRIPTION', 1, 45, 11, 2022, '9cd3eaa4d67f8d984cf90fc0e733b965341661b8', '2022-11-11 22:57:09', '2022-11-11 22:57:09'),
(61, 61, 'INSCRIPTION', 1, 45, 11, 2022, '74befc841da2c338094abd14099adf5892318ad0', '2022-11-11 22:58:02', '2022-11-11 22:58:02'),
(62, 62, 'INSCRIPTION', 1, 45, 11, 2022, '7a77c33232aa66c6d0fdd1c20548a8efa3e3f6fd', '2022-11-11 22:59:36', '2022-11-11 22:59:36'),
(63, 63, 'INSCRIPTION', 1, 45, 11, 2022, 'ee441c266be0eb805385fe5b66ca402214639a1f', '2022-11-11 23:00:58', '2022-11-11 23:00:58'),
(64, 64, 'INSCRIPTION', 1, 45, 11, 2022, 'de8a3f9dc88c4ac85ea289dc6e06930fe6f2f635', '2022-11-11 23:02:43', '2022-11-11 23:02:43'),
(65, 65, 'INSCRIPTION', 1, 45, 11, 2022, '79d485555129879e095e095de53e4624b2952a1c', '2022-11-11 23:04:28', '2022-11-11 23:04:28'),
(66, 66, 'INSCRIPTION', 1, 45, 11, 2022, '63c07579180fa10ee78a03eed3610ccbf4e6c6b3', '2022-11-11 23:06:29', '2022-11-11 23:06:29'),
(67, 67, 'INSCRIPTION', 1, 45, 11, 2022, 'b0d1e9e7e7336a20c7d217985d73ce4ce273cac6', '2022-11-11 23:07:32', '2022-11-11 23:07:32'),
(68, 68, 'INSCRIPTION', 1, 45, 11, 2022, '2f173bd089c3c2e73ae6a116cfdd57e7a3aa0dbf', '2022-11-11 23:08:52', '2022-11-11 23:08:52'),
(69, 69, 'INSCRIPTION', 1, 45, 11, 2022, 'c247e4d4c00e479e175aa502afffa5bb33ec28a4', '2022-11-11 23:10:03', '2022-11-11 23:10:03'),
(70, 70, 'INSCRIPTION', 1, 45, 11, 2022, '1efbb5587af56b6424b48eede9a3b73b7445ee63', '2022-11-11 23:11:14', '2022-11-11 23:11:14'),
(71, 71, 'INSCRIPTION', 1, 45, 11, 2022, '18719c332b5597080382dc1d4ba578d981728b4c', '2022-11-11 23:12:16', '2022-11-11 23:12:16'),
(72, 72, 'INSCRIPTION', 1, 45, 11, 2022, '939933e4c438d9bf366428ef42c87be4ff6de09b', '2022-11-11 23:13:11', '2022-11-11 23:13:11'),
(73, 73, 'INSCRIPTION', 1, 45, 11, 2022, 'cd133d635ce055ded90c9b0d3bf3e774645ebf72', '2022-11-11 23:14:17', '2022-11-11 23:14:17'),
(74, 74, 'INSCRIPTION', 1, 45, 11, 2022, '4fd395f54fbb7621c4fc3d4a0332cadcb3d1a152', '2022-11-11 23:15:07', '2022-11-11 23:15:07'),
(75, 75, 'INSCRIPTION', 1, 45, 11, 2022, '62cfcbd474e19211f135811e2bbcca1bb70cc91a', '2022-11-11 23:15:52', '2022-11-11 23:15:52'),
(76, 76, 'INSCRIPTION', 1, 45, 11, 2022, '5e1199f8f68f24486ef0e470a7edfb8fbacecf71', '2022-11-11 23:16:48', '2022-11-11 23:16:48'),
(77, 77, 'INSCRIPTION', 1, 45, 11, 2022, '4b48b23a428d2ce28a823eaf513a7ba9d4ef7dd3', '2022-11-11 23:18:32', '2022-11-11 23:18:32'),
(78, 78, 'INSCRIPTION', 1, 45, 11, 2022, '37cbb4d223b7d5dafdf30bbe079e8c3e5305da3a', '2022-11-11 23:19:21', '2022-11-11 23:19:21'),
(79, 79, 'INSCRIPTION', 1, 45, 11, 2022, 'e8d52bf6e4821ab3d241cb1ca58b6b11dd668de7', '2022-11-11 23:20:51', '2022-11-11 23:20:51'),
(80, 80, 'INSCRIPTION', 1, 45, 11, 2022, '12e77dee7898a3bd7284b1e8fd6d8a01767ac924', '2022-11-11 23:23:01', '2022-11-11 23:23:01'),
(81, 81, 'INSCRIPTION', 1, 45, 11, 2022, '1956d28b114c7bcc57adaa58c52ad2230a78c01e', '2022-11-11 23:23:55', '2022-11-11 23:23:55'),
(82, 82, 'INSCRIPTION', 1, 45, 11, 2022, 'cb0f724e8b390d256822e9c87713f2f0932a9021', '2022-11-11 23:24:50', '2022-11-11 23:24:50'),
(83, 83, 'INSCRIPTION', 1, 45, 11, 2022, 'e565973e1d7d58cdd18c9b89f64b4f54e0137818', '2022-11-11 23:25:41', '2022-11-11 23:25:41'),
(84, 84, 'INSCRIPTION', 1, 45, 11, 2022, 'f1e3ee4a80069dc03b9db72f972ac6d6ee61226a', '2022-11-11 23:26:42', '2022-11-11 23:26:42'),
(85, 85, 'INSCRIPTION', 1, 45, 11, 2022, 'bf84b39243f82d11589646be5629a2e630d88e9c', '2022-11-11 23:27:29', '2022-11-11 23:27:29'),
(86, 86, 'INSCRIPTION', 1, 45, 11, 2022, '9e97d7654fbf730c9ea81beb5d329ac38e2f0ecf', '2022-11-11 23:28:36', '2022-11-11 23:28:36'),
(87, 87, 'INSCRIPTION', 1, 45, 11, 2022, '1de70a312828778e44c73a97c23c6e1817282f7d', '2022-11-11 23:29:28', '2022-11-11 23:29:28'),
(88, 88, 'INSCRIPTION', 1, 45, 11, 2022, 'd5017de9da6544c625b4f11bea578384b80189d1', '2022-11-11 23:30:30', '2022-11-11 23:30:30'),
(89, 89, 'INSCRIPTION', 1, 45, 11, 2022, '5ab0de310671364e9a52150e6b22d3436da16de5', '2022-11-11 23:31:26', '2022-11-11 23:31:26'),
(90, 90, 'INSCRIPTION', 1, 45, 11, 2022, '4c5e997bcaa4e1a037d28cd0b9cf3bc091384cf5', '2022-11-11 23:40:10', '2022-11-11 23:40:10'),
(91, 91, 'INSCRIPTION', 1, 45, 11, 2022, '05471cff05ee22fe05faab900f6f434bc61a065b', '2022-11-11 23:41:07', '2022-11-11 23:41:07'),
(92, 92, 'INSCRIPTION', 1, 45, 11, 2022, '75975cbf8aa8cfb9cedd35c4aae848565db8ff15', '2022-11-11 23:42:38', '2022-11-11 23:42:38'),
(93, 93, 'INSCRIPTION', 1, 45, 11, 2022, '6f071a660fa0f937c720f97555160da08261b789', '2022-11-11 23:46:16', '2022-11-11 23:46:16'),
(94, 94, 'INSCRIPTION', 1, 45, 11, 2022, 'f2c6f86a654fcf2f04e37573b8cede2c4bad8300', '2022-11-11 23:48:26', '2022-11-11 23:48:26'),
(95, 95, 'INSCRIPTION', 1, 45, 11, 2022, '87ca32dae22571536ccc060bd10c678874dca9b5', '2022-11-11 23:49:28', '2022-11-11 23:49:28'),
(96, 96, 'INSCRIPTION', 1, 45, 11, 2022, 'fb4de2f62e0f6f18d3ccef0c8249030007b78b1d', '2022-11-11 23:50:58', '2022-11-11 23:50:58'),
(97, 97, 'INSCRIPTION', 1, 45, 11, 2022, 'f02f5fc38fcfa59ed2176979a1f97fe8d05de986', '2022-11-11 23:52:00', '2022-11-11 23:52:00'),
(98, 98, 'INSCRIPTION', 1, 45, 11, 2022, '57fe405aa2301baf8054f71ac24c5e675b0cb4cf', '2022-11-11 23:53:41', '2022-11-11 23:53:41'),
(99, 99, 'INSCRIPTION', 1, 45, 11, 2022, '39ccd94b40deec22c709996b984264c8b27631b0', '2022-11-11 23:54:49', '2022-11-11 23:54:49'),
(100, 100, 'INSCRIPTION', 1, 45, 11, 2022, '84a95a8a133ef31a29633fce910821847e1e6d82', '2022-11-11 23:56:01', '2022-11-11 23:56:01'),
(101, 101, 'INSCRIPTION', 1, 45, 11, 2022, 'fc24cb3bc14c78cbb4bcc3b87b8e650ca5a33959', '2022-11-11 23:56:58', '2022-11-11 23:56:58'),
(102, 102, 'INSCRIPTION', 1, 45, 11, 2022, '6fe2ce4f714d34f82758aa51e080e24cbb07658c', '2022-11-11 23:58:02', '2022-11-11 23:58:02'),
(103, 103, 'INSCRIPTION', 1, 45, 11, 2022, 'ce06690462482bd29213ed3563134a821726c733', '2022-11-11 23:59:05', '2022-11-11 23:59:05'),
(104, 104, 'INSCRIPTION', 1, 45, 11, 2022, 'd59c3e7962ce93fe6942c0add5015f5bfe0e194d', '2022-11-12 00:00:38', '2022-11-12 00:00:38'),
(105, 105, 'INSCRIPTION', 1, 45, 11, 2022, 'e209fa682ce36e2415c7a3e9645af00dc1f278f5', '2022-11-12 00:01:46', '2022-11-12 00:01:46'),
(106, 106, 'INSCRIPTION', 1, 45, 11, 2022, 'f1841a832ea552dd5dd37eed48d46d2ee4f4d438', '2022-11-12 00:02:49', '2022-11-12 00:02:49'),
(107, 107, 'INSCRIPTION', 1, 45, 11, 2022, 'aaf5707a84ed20118de7353f78160fe660ef6da3', '2022-11-12 00:04:00', '2022-11-12 00:04:00'),
(108, 108, 'INSCRIPTION', 1, 45, 11, 2022, '587d54af03cdda47ed3c54169f2e4ac0df1e7b59', '2022-11-12 00:05:01', '2022-11-12 00:05:01'),
(109, 109, 'INSCRIPTION', 1, 45, 11, 2022, '217374a88d9d1b22dc938b9d2d9ad57a3a93c850', '2022-11-12 00:06:00', '2022-11-12 00:06:00'),
(110, 110, 'INSCRIPTION', 1, 45, 11, 2022, 'a372e3ae0f121906b44822312d553ec629215c8a', '2022-11-12 00:07:22', '2022-11-12 00:07:22'),
(111, 111, 'INSCRIPTION', 1, 45, 11, 2022, '951f6e1588ae25133965aa084e91925a6139e88b', '2022-11-12 00:08:46', '2022-11-12 00:08:46'),
(112, 112, 'INSCRIPTION', 1, 45, 11, 2022, '4d08eea5a1b85da2e6d601ce68fb6fff73c91bb6', '2022-11-12 00:09:55', '2022-11-12 00:09:55'),
(113, 113, 'INSCRIPTION', 1, 45, 11, 2022, '6fe4c293fe03dde32730094a003b00cced817cda', '2022-11-12 00:11:09', '2022-11-12 00:11:09'),
(114, 114, 'INSCRIPTION', 1, 45, 11, 2022, 'e7638636c1be177a50c8a3b6db6e741e71f2a822', '2022-11-12 00:12:01', '2022-11-12 00:12:01'),
(115, 115, 'INSCRIPTION', 1, 45, 11, 2022, 'baee810f22a98397a67d0e6c858739b6333d2dd7', '2022-11-12 00:13:10', '2022-11-12 00:13:10'),
(116, 116, 'INSCRIPTION', 1, 45, 11, 2022, '9453fa353484f455c13e23b43eb637a437880311', '2022-11-12 00:14:45', '2022-11-12 00:14:45'),
(117, 117, 'INSCRIPTION', 1, 45, 11, 2022, 'c989427ecad4ab99492f7af502a55396808bab7b', '2022-11-12 00:15:43', '2022-11-12 00:15:43'),
(118, 118, 'INSCRIPTION', 1, 45, 11, 2022, '545bb96e91367df1b3e7355bf151d141446c57d7', '2022-11-12 00:17:44', '2022-11-12 00:17:44'),
(119, 119, 'INSCRIPTION', 1, 45, 11, 2022, '52f530583cd22fad16d2cb0ed1c043de0e8571fb', '2022-11-12 00:19:34', '2022-11-12 00:19:34'),
(120, 120, 'INSCRIPTION', 1, 45, 11, 2022, 'be3b21ac38a7e15cc0d92fc4ee80c38f4f7f9e17', '2022-11-12 00:20:51', '2022-11-12 00:20:51'),
(121, 121, 'INSCRIPTION', 1, 45, 11, 2022, '5e94e72f98d4c1932dd5995cd44b02b44cb1e873', '2022-11-12 00:22:30', '2022-11-12 00:22:30'),
(122, 122, 'INSCRIPTION', 1, 45, 11, 2022, '72080031846ce11e65e2197b31e1ef865f1c7374', '2022-11-12 00:23:38', '2022-11-12 00:23:38'),
(123, 123, 'INSCRIPTION', 1, 45, 11, 2022, '6dc5d957baf2d4bb5bac9ac971382f360a708eb0', '2022-11-12 00:25:10', '2022-11-12 00:25:10'),
(124, 124, 'INSCRIPTION', 1, 45, 11, 2022, '88712b67a044ac5233781a9d5f6f9cab601372c3', '2022-11-12 00:26:29', '2022-11-12 00:26:29'),
(125, 125, 'INSCRIPTION', 1, 45, 11, 2022, 'c2f6a34f80f84b7e99fc6d2448f662774b02ddef', '2022-11-12 00:27:31', '2022-11-12 00:27:31'),
(126, 126, 'INSCRIPTION', 1, 45, 11, 2022, '651722f5bc35686b121d76a08294ccac21ef7708', '2022-11-12 00:29:13', '2022-11-12 00:29:13'),
(127, 127, 'INSCRIPTION', 1, 45, 11, 2022, '561396c34a3526a62857ec9aca018913d26c50be', '2022-11-12 00:30:22', '2022-11-12 00:30:22'),
(128, 128, 'INSCRIPTION', 1, 45, 11, 2022, 'cc0d17bebe43dcf27a9f80f36a966ce8f38039f3', '2022-11-12 00:31:43', '2022-11-12 00:31:43'),
(129, 129, 'INSCRIPTION', 1, 45, 11, 2022, 'f3c73562fc81e52021d61a5efd3c31f5c475d3a1', '2022-11-12 00:33:22', '2022-11-12 00:33:22'),
(130, 130, 'INSCRIPTION', 1, 45, 11, 2022, 'e22dcc44b423cce19a14d7d606ddae4b2fedca75', '2022-11-12 00:34:39', '2022-11-12 00:34:39'),
(131, 131, 'INSCRIPTION', 1, 45, 11, 2022, '15d0363b88a30cdbc69d581d7ce4320534f133b4', '2022-11-12 00:35:57', '2022-11-12 00:35:57'),
(132, 132, 'INSCRIPTION', 1, 45, 11, 2022, '708921c0220ecc195f297c326626e4254b2ee87c', '2022-11-12 00:37:42', '2022-11-12 00:37:42'),
(133, 133, 'INSCRIPTION', 1, 45, 11, 2022, '8c75d384a3ec8359b607c64e8bb4dd28d229be1a', '2022-11-12 00:39:26', '2022-11-12 00:39:26'),
(134, 134, 'INSCRIPTION', 1, 45, 11, 2022, '933ab114c3fad76f4a3b3471f752756c4f8fd231', '2022-11-12 00:40:46', '2022-11-12 00:40:46'),
(135, 135, 'INSCRIPTION', 1, 45, 11, 2022, '55c7443ad9ea8eb70e4f9cc7c92395e936b60f8b', '2022-11-12 00:42:15', '2022-11-12 00:42:15'),
(136, 136, 'INSCRIPTION', 1, 45, 11, 2022, '97d59211dadce2f2748f4fee6822a9ec3212fb3b', '2022-11-12 00:43:00', '2022-11-12 00:43:00'),
(137, 137, 'INSCRIPTION', 1, 45, 11, 2022, '05440577797bd90839c761f56e73daf787c17a46', '2022-11-12 00:44:08', '2022-11-12 00:44:08'),
(138, 138, 'INSCRIPTION', 1, 45, 11, 2022, 'a0d33b66fef8a425d9b98ed57482c041fa9c882c', '2022-11-12 00:44:59', '2022-11-12 00:44:59'),
(139, 139, 'INSCRIPTION', 1, 45, 11, 2022, '8f64c4c0c16b6be0b5df5797ea89687a86a84fdf', '2022-11-12 00:46:09', '2022-11-12 00:46:09'),
(140, 140, 'INSCRIPTION', 1, 45, 11, 2022, 'f9ae78b24fe76079065efd28bfc46a7e41b562ad', '2022-11-12 00:47:28', '2022-11-12 00:47:28'),
(141, 141, 'INSCRIPTION', 1, 45, 11, 2022, '8c5a839f518ace8a2d408a73ffb4383b974ab14a', '2022-11-12 00:48:54', '2022-11-12 00:48:54'),
(142, 142, 'INSCRIPTION', 1, 45, 11, 2022, 'c6d0c60fd2a572d2b79f6cce2c249fb035c783da', '2022-11-12 00:50:35', '2022-11-12 00:50:35'),
(143, 143, 'INSCRIPTION', 1, 45, 11, 2022, '4d11b662d571b53099cbe981b98d48c47c858283', '2022-11-12 00:52:48', '2022-11-12 00:52:48'),
(144, 144, 'INSCRIPTION', 1, 45, 11, 2022, 'ef9a42148f99776ffd2404e2ad7086d61926ca4d', '2022-11-12 00:53:43', '2022-11-12 00:53:43'),
(145, 145, 'INSCRIPTION', 1, 45, 11, 2022, '41c337a6dd8f83dc687ed0bbafc28e8769328321', '2022-11-12 00:54:55', '2022-11-12 00:54:55'),
(146, 146, 'INSCRIPTION', 1, 45, 11, 2022, 'ad985c440c57b59aefe71b5da5cac09f78494bdb', '2022-11-12 00:56:25', '2022-11-12 00:56:25'),
(147, 147, 'INSCRIPTION', 1, 45, 11, 2022, 'e098221c039ecb54a56c9734a27f98bf463929ab', '2022-11-12 00:58:25', '2022-11-12 00:58:25'),
(148, 148, 'INSCRIPTION', 1, 45, 11, 2022, '199bad7b934cd89453702dc46df297146e62ea39', '2022-11-12 00:59:37', '2022-11-12 00:59:37'),
(149, 149, 'INSCRIPTION', 5, 50, 12, 2022, '89b8dfc137492550885f8c619ad8622606bb2d87', '2022-12-15 14:32:36', '2022-12-15 14:32:36'),
(150, 150, 'INSCRIPTION', 5, 50, 12, 2022, '11722b341700e3e70b24e23a93796af73135dba2', '2022-12-15 14:40:34', '2022-12-15 14:40:34'),
(151, 151, 'INSCRIPTION', 5, 50, 12, 2022, '8488eca11db2cb3176d43c482eea13232ae561de', '2022-12-15 14:41:52', '2022-12-15 14:41:52'),
(152, 152, 'INSCRIPTION', 5, 50, 12, 2022, '461758ef0abaef7d7337b5afe157ff3002747d83', '2022-12-15 14:43:03', '2022-12-15 14:43:03'),
(153, 153, 'INSCRIPTION', 5, 50, 12, 2022, 'f33f68c53e0a7b91631c4301f5f3f92e81bd5a6f', '2022-12-15 14:51:19', '2022-12-15 14:51:19'),
(154, 154, 'INSCRIPTION', 5, 50, 12, 2022, '9a851f07751deb2a08c21df6f7d71230837d0221', '2022-12-15 14:52:34', '2022-12-15 14:52:34'),
(155, 155, 'INSCRIPTION', 5, 50, 12, 2022, '1969c145cdd1b54f158f3e1458f35a151ebb7aff', '2022-12-15 14:53:40', '2022-12-15 14:53:40'),
(156, 156, 'INSCRIPTION', 5, 50, 12, 2022, '48204e88ab7ca54106a6ff8fb09bd45d6ead8a5c', '2022-12-15 14:54:54', '2022-12-15 14:54:54'),
(157, 157, 'INSCRIPTION', 5, 50, 12, 2022, '075efb18628e340eeee88d40e4effc1b33a4990a', '2022-12-15 14:56:08', '2022-12-15 14:56:08'),
(158, 158, 'INSCRIPTION', 5, 50, 12, 2022, '924ff09be7e43c37ffbe1cf8f031917dfd347752', '2022-12-15 14:57:16', '2022-12-15 14:57:16'),
(159, 159, 'INSCRIPTION', 5, 50, 12, 2022, 'd5d2b3ff928db3aac070e038a79e776309563c27', '2022-12-15 14:58:22', '2022-12-15 14:58:22'),
(160, 160, 'INSCRIPTION', 5, 50, 12, 2022, 'afc98ba85e85fac73dcf142b3b670e97247b89c1', '2022-12-15 14:59:32', '2022-12-15 14:59:32'),
(161, 161, 'INSCRIPTION', 5, 50, 12, 2022, 'ca086e75d0c23e277acc187adbe11de1fe539acc', '2022-12-15 15:01:02', '2022-12-15 15:01:02'),
(162, 162, 'INSCRIPTION', 5, 50, 12, 2022, 'bbe39806e95cb593bcf536ff90297d53b4f736a6', '2022-12-15 15:02:05', '2022-12-15 15:02:05'),
(163, 163, 'INSCRIPTION', 5, 50, 12, 2022, '4caebdf0f36e70a7a7957435aee0babdc30fac4f', '2022-12-15 15:03:50', '2022-12-15 15:03:50'),
(164, 164, 'INSCRIPTION', 5, 50, 12, 2022, '228aae8fdbaa2e6e09dd90936c5ce5b9beffe483', '2022-12-15 15:05:16', '2022-12-15 15:05:16'),
(165, 165, 'INSCRIPTION', 5, 50, 12, 2022, 'e87f14459ce170d1c24ff131cd810ee644f916dc', '2022-12-15 15:06:50', '2022-12-15 15:06:50'),
(166, 166, 'INSCRIPTION', 5, 50, 12, 2022, 'f1404b9e9c08e522d705133f520956c4db15f259', '2022-12-15 15:07:58', '2022-12-15 15:07:58'),
(167, 167, 'INSCRIPTION', 5, 50, 12, 2022, '40d8c4f906ce1d2b6a790fdda2db23e671590850', '2022-12-15 15:08:57', '2022-12-15 15:08:57'),
(168, 168, 'INSCRIPTION', 5, 50, 12, 2022, '1ef1ecb548f505ab120b0ad034a3ea762c2821c9', '2022-12-15 15:10:15', '2022-12-15 15:10:15'),
(169, 169, 'INSCRIPTION', 5, 50, 12, 2022, '034143fee7e481a7d6c351e2ea90a6248929c0db', '2022-12-15 15:11:11', '2022-12-15 15:11:11'),
(170, 170, 'INSCRIPTION', 5, 50, 12, 2022, 'c933d9477fdccecde24368a2bbc1a04f4599335e', '2022-12-15 15:12:21', '2022-12-15 15:12:21'),
(171, 171, 'INSCRIPTION', 5, 50, 12, 2022, '83fda7943f0747ebb5cc0d0109c935cf226ae081', '2022-12-15 15:14:03', '2022-12-15 15:14:03'),
(172, 172, 'INSCRIPTION', 5, 50, 12, 2022, 'c1225df3c2de8f321e7720d6fe1014931f6f33e4', '2022-12-15 15:15:09', '2022-12-15 15:15:09'),
(173, 173, 'INSCRIPTION', 5, 50, 12, 2022, '34890d4e8447b31b2121ed42102127a3ba1df74a', '2022-12-15 15:16:27', '2022-12-15 15:16:27'),
(174, 174, 'INSCRIPTION', 5, 50, 12, 2022, '12d651133637387a40179f6ef4072e863b62c334', '2022-12-15 15:17:50', '2022-12-15 15:17:50'),
(175, 175, 'INSCRIPTION', 5, 50, 12, 2022, 'db3d38f2f8958270871d52bdfb0cba95265bdf56', '2022-12-15 15:19:03', '2022-12-15 15:19:03'),
(176, 176, 'INSCRIPTION', 5, 50, 12, 2022, '4fb1fc0b133932aea1d934d6c089b477b83ce4ff', '2022-12-15 15:20:23', '2022-12-15 15:20:23'),
(177, 177, 'INSCRIPTION', 5, 50, 12, 2022, '6096fccb6563551383998fd2672f2de6cdcbb833', '2022-12-15 15:21:54', '2022-12-15 15:21:54'),
(178, 178, 'INSCRIPTION', 5, 50, 12, 2022, '0ab079983411e5c99757414f6d1259d3c90c6d5d', '2022-12-15 15:23:12', '2022-12-15 15:23:12'),
(179, 179, 'INSCRIPTION', 5, 50, 12, 2022, '2e5af42dc5d19821381d5b1b13b385284080c971', '2022-12-15 15:24:26', '2022-12-15 15:24:26'),
(180, 180, 'INSCRIPTION', 5, 50, 12, 2022, 'c3e8d6be8c6be8f32e68c6990ad7ba3813d65598', '2022-12-15 15:25:28', '2022-12-15 15:25:28'),
(181, 181, 'INSCRIPTION', 5, 50, 12, 2022, 'c64432534498d7b5f477d35a06786089e8480dc6', '2022-12-15 15:26:29', '2022-12-15 15:26:29'),
(182, 182, 'INSCRIPTION', 5, 50, 12, 2022, '43a61f5b8069a441645f83c60794a59b8d8d94c8', '2022-12-15 15:27:39', '2022-12-15 15:27:39'),
(183, 183, 'INSCRIPTION', 5, 50, 12, 2022, 'b8ad025b41ad3c04f16cdf30a8879ff63991b0b1', '2022-12-15 15:28:57', '2022-12-15 15:28:57'),
(184, 184, 'INSCRIPTION', 5, 50, 12, 2022, 'b3d99b5ba64179756efa5520ef36d632e0cd3436', '2022-12-15 15:30:23', '2022-12-15 15:30:23'),
(185, 185, 'INSCRIPTION', 5, 50, 12, 2022, '4b869138ab1697c926f62312c798bcd4925638f6', '2022-12-15 15:32:20', '2022-12-15 15:32:20'),
(186, 186, 'INSCRIPTION', 5, 50, 12, 2022, 'c7917d6922d73bddb468403b2f345f86ae6fb995', '2022-12-15 15:33:38', '2022-12-15 15:33:38'),
(187, 187, 'INSCRIPTION', 5, 50, 12, 2022, 'e414c6496d79b3fd5b9e0a799ec47da8d7a92193', '2022-12-15 15:34:38', '2022-12-15 15:34:38'),
(188, 188, 'INSCRIPTION', 5, 50, 12, 2022, 'aad12e06269c543b3398cfdc4d4f3820b2b55b57', '2022-12-15 15:35:39', '2022-12-15 15:35:39'),
(189, 189, 'INSCRIPTION', 5, 50, 12, 2022, '05483da06f4022c081019becaa64e2867a60855f', '2022-12-15 15:36:51', '2022-12-15 15:36:51'),
(190, 190, 'INSCRIPTION', 5, 50, 12, 2022, 'b6c63eda9b3026d1e3cc4cd37a6a72b7ca167fd5', '2022-12-15 15:37:50', '2022-12-15 15:37:50'),
(191, 191, 'INSCRIPTION', 5, 50, 12, 2022, 'aeac46ee413be4c2d280a55770f189280e11dc43', '2022-12-15 15:39:05', '2022-12-15 15:39:05'),
(192, 192, 'INSCRIPTION', 5, 50, 12, 2022, '237e38f3dee56e39d0f2087090c7797c6a54af86', '2022-12-15 15:40:07', '2022-12-15 15:40:07'),
(193, 193, 'INSCRIPTION', 5, 50, 12, 2022, 'bea683ecb864f32808f1416270a6d6e635a7e51d', '2022-12-15 15:41:08', '2022-12-15 15:41:08'),
(194, 194, 'INSCRIPTION', 5, 50, 12, 2022, '08162085fdee8b8f719e94e71ba099b47fd85135', '2022-12-15 15:42:11', '2022-12-15 15:42:11'),
(195, 195, 'INSCRIPTION', 5, 50, 12, 2022, '6f7c2c8c77f2ed419c4f7c2fe4ce20ee1768e921', '2022-12-15 15:43:07', '2022-12-15 15:43:07'),
(196, 196, 'INSCRIPTION', 5, 50, 12, 2022, 'a238a7620aaad4cc2a364f8d8ff8b0828d576cac', '2022-12-15 15:44:18', '2022-12-15 15:44:18'),
(197, 197, 'INSCRIPTION', 5, 50, 12, 2022, 'ab6e0ed81afc4e39e796967cd7710982e3fb086f', '2022-12-15 15:45:53', '2022-12-15 15:45:53'),
(198, 198, 'INSCRIPTION', 5, 50, 12, 2022, '26a09d52b8c15a0171b606140161c0023169957e', '2022-12-15 15:46:51', '2022-12-15 15:46:51'),
(199, 199, 'INSCRIPTION', 5, 50, 12, 2022, 'f185847307d22a84e096bb66b45ce0f72fe15f69', '2022-12-15 15:48:20', '2022-12-15 15:48:20'),
(200, 200, 'INSCRIPTION', 5, 50, 12, 2022, '5986892bdebd0b401c8f08f519ed81c27d75f74a', '2022-12-15 15:49:25', '2022-12-15 15:49:25'),
(201, 201, 'INSCRIPTION', 5, 50, 12, 2022, '483a58f008ce024ad4454fa11e5520ff93fcfed3', '2022-12-15 15:50:46', '2022-12-15 15:50:46'),
(202, 202, 'INSCRIPTION', 5, 50, 12, 2022, '4792bed4ef949ceb170ada5280f133caf03b9121', '2022-12-15 16:11:31', '2022-12-15 16:11:31'),
(203, 203, 'INSCRIPTION', 5, 50, 12, 2022, 'f492da7e7fda3258866c06613afdb981fac38c72', '2022-12-15 16:12:42', '2022-12-15 16:12:42'),
(204, 204, 'INSCRIPTION', 5, 50, 12, 2022, '959df11c4a06a7f4ef27559cfc308fb39287bbc2', '2022-12-15 16:14:08', '2022-12-15 16:14:08'),
(205, 205, 'INSCRIPTION', 5, 50, 12, 2022, 'fff58a90c51d9e89f7ed0032278a3e305f79edfc', '2022-12-15 16:15:11', '2022-12-15 16:15:11'),
(206, 206, 'INSCRIPTION', 5, 50, 12, 2022, '2fdf708055cd77c601d7faf34a456ce99775486a', '2022-12-15 16:16:11', '2022-12-15 16:16:11'),
(207, 207, 'INSCRIPTION', 5, 50, 12, 2022, '0ec6f51314b21d0012f78cfe273f79afefa4bed7', '2022-12-15 16:17:51', '2022-12-15 16:17:51'),
(208, 208, 'INSCRIPTION', 5, 50, 12, 2022, '2d91b0cd328a3f1a6a3f9002c31cfe2e67d83343', '2022-12-15 16:18:56', '2022-12-15 16:18:56'),
(209, 209, 'INSCRIPTION', 5, 50, 12, 2022, '675133b5dbd726c892ebed20d2927cdc7b70f277', '2022-12-15 16:20:11', '2022-12-15 16:20:11'),
(210, 210, 'INSCRIPTION', 5, 50, 12, 2022, '6a033eee93459c07199e4f87c0c58303d486fcc9', '2022-12-15 16:21:07', '2022-12-15 16:21:07'),
(211, 211, 'INSCRIPTION', 5, 50, 12, 2022, 'a329ed1e149330ace4bdadd6f298c0077f1032b6', '2022-12-15 16:22:26', '2022-12-15 16:22:26'),
(212, 212, 'INSCRIPTION', 5, 50, 12, 2022, 'b9ca9a7ed31c724f266a7e690e2002ed2485f35f', '2022-12-15 16:23:50', '2022-12-15 16:23:50'),
(213, 213, 'INSCRIPTION', 5, 50, 12, 2022, 'fa4ee32938549c40229b488f17c347a7acb023f9', '2022-12-15 16:24:51', '2022-12-15 16:24:51'),
(214, 214, 'INSCRIPTION', 5, 50, 12, 2022, 'faf053d15cc5a63157805372f60828fe181646e0', '2022-12-15 16:25:56', '2022-12-15 16:25:56'),
(215, 215, 'INSCRIPTION', 5, 50, 12, 2022, '354196fc0658b800345bae2912120c74ebf4c67c', '2022-12-15 16:26:53', '2022-12-15 16:26:53'),
(216, 216, 'INSCRIPTION', 5, 50, 12, 2022, '71adc5ab3f43c8ac22c6f0258514dc3314895d8c', '2022-12-15 16:28:32', '2022-12-15 16:28:32'),
(217, 217, 'INSCRIPTION', 5, 50, 12, 2022, 'a52b24d584f2bdc594fb69a69b7cb266a2138e3e', '2022-12-15 16:29:38', '2022-12-15 16:29:38'),
(218, 218, 'INSCRIPTION', 5, 50, 12, 2022, 'a320701b79884b878f415179e812bd70d99bf3f6', '2022-12-15 16:30:59', '2022-12-15 16:30:59'),
(219, 219, 'INSCRIPTION', 5, 50, 12, 2022, '3411e73649eab95f62617504d3052b8dd85c5856', '2022-12-15 16:34:37', '2022-12-15 16:34:37'),
(220, 220, 'INSCRIPTION', 5, 50, 12, 2022, 'ce97868d6d7df654ba6a56ecf86a100c2fe51b8b', '2022-12-15 16:47:15', '2022-12-15 16:47:15'),
(221, 221, 'INSCRIPTION', 5, 50, 12, 2022, '2a680779b9d791f97baef88628bc55bdf140f88f', '2022-12-15 16:48:33', '2022-12-15 16:48:33'),
(222, 222, 'INSCRIPTION', 5, 50, 12, 2022, '14a32d388645b70820a8550b15e3158e3d84d5c3', '2022-12-15 16:49:42', '2022-12-15 16:49:42'),
(223, 223, 'INSCRIPTION', 5, 50, 12, 2022, '58dbb458c9c10e03ae558a05c88ef029dcae8296', '2022-12-15 16:50:40', '2022-12-15 16:50:40'),
(224, 224, 'INSCRIPTION', 5, 50, 12, 2022, '931be24839bd6c5db961d3f796060644aa18fc44', '2022-12-15 16:51:49', '2022-12-15 16:51:49'),
(225, 225, 'INSCRIPTION', 5, 50, 12, 2022, 'b075ea93c8391bb7cc6a6edfa7513f54c3f9ccaa', '2022-12-15 16:53:21', '2022-12-15 16:53:21'),
(226, 226, 'INSCRIPTION', 5, 50, 12, 2022, '21d835b376a17980afdab650280dde471bb644d2', '2022-12-15 16:54:33', '2022-12-15 16:54:33'),
(227, 227, 'INSCRIPTION', 5, 50, 12, 2022, '41bd276457943086a79866633335ff68511c2385', '2022-12-15 16:55:32', '2022-12-15 16:55:32'),
(228, 228, 'INSCRIPTION', 5, 50, 12, 2022, '445b24d8e74bd36a1dbd2544bd93dd3c92e18af0', '2022-12-15 16:56:34', '2022-12-15 16:56:34'),
(229, 229, 'INSCRIPTION', 5, 50, 12, 2022, '04710b91c7e5a3f16d771449d21434c40b8254a2', '2022-12-15 16:57:55', '2022-12-15 16:57:55'),
(230, 230, 'INSCRIPTION', 5, 50, 12, 2022, 'c2bcb3d89eb803f54e1438998df89bc439281dbb', '2022-12-15 16:59:19', '2022-12-15 16:59:19'),
(231, 231, 'INSCRIPTION', 5, 50, 12, 2022, '6ffd025d39fd2feac1247f4b4620a75c9a1ce709', '2022-12-15 17:00:56', '2022-12-15 17:00:56'),
(232, 232, 'INSCRIPTION', 5, 50, 12, 2022, '6a9af3ef79022cdd505169656e92cbce45fdebfe', '2022-12-15 17:02:03', '2022-12-15 17:02:03'),
(233, 233, 'INSCRIPTION', 5, 50, 12, 2022, '14f157535a87b9a4f6c45d0789865a82904b7028', '2022-12-15 17:03:36', '2022-12-15 17:03:36'),
(234, 234, 'INSCRIPTION', 5, 50, 12, 2022, 'f9711c10da745acb0a9322cd75d1c5d397857cbd', '2022-12-15 17:04:41', '2022-12-15 17:04:41'),
(235, 235, 'INSCRIPTION', 5, 50, 12, 2022, 'aac8819e18d92aa212d3c92aea190f7d11f71fff', '2022-12-15 17:06:17', '2022-12-15 17:06:17'),
(236, 236, 'INSCRIPTION', 5, 50, 12, 2022, '247fc684832ce6fba0470d757d674d70cf3e60e0', '2022-12-15 17:20:57', '2022-12-15 17:20:57'),
(237, 237, 'INSCRIPTION', 5, 50, 12, 2022, '5937294dd73f600160fa32f40276eaebec389cc8', '2022-12-15 17:22:08', '2022-12-15 17:22:08'),
(238, 238, 'INSCRIPTION', 5, 50, 12, 2022, 'b5ae9198202cbecf7c3dbd67518b76a6333d217f', '2022-12-15 17:23:10', '2022-12-15 17:23:10'),
(239, 239, 'INSCRIPTION', 5, 50, 12, 2022, '58b292f0abcf855017d45d993f7eb7666c205fc9', '2022-12-15 17:24:07', '2022-12-15 17:24:07'),
(240, 240, 'INSCRIPTION', 5, 50, 12, 2022, '0e32e5e14fbba9f112c702c74d37b8bb46ff9f85', '2022-12-15 17:25:17', '2022-12-15 17:25:17'),
(241, 241, 'INSCRIPTION', 5, 50, 12, 2022, '3f0c60fa292a77d60a67e7bc2c15675d2a227fa1', '2022-12-15 17:26:32', '2022-12-15 17:26:32'),
(242, 242, 'INSCRIPTION', 5, 50, 12, 2022, '1fbbddbead523931e1212b1306f1a2b56a7d427e', '2022-12-15 17:27:22', '2022-12-15 17:27:22'),
(243, 243, 'INSCRIPTION', 5, 50, 12, 2022, '6339950a2d974fbfa0ba274eafc0d5afdeab1e0b', '2022-12-15 17:29:00', '2022-12-15 17:29:00'),
(244, 244, 'INSCRIPTION', 5, 50, 12, 2022, '0cbf787a4b0f17ca4ebcd7693d2cb0f16ac5f773', '2022-12-15 17:30:05', '2022-12-15 17:30:05'),
(245, 245, 'INSCRIPTION', 5, 50, 12, 2022, '10073d786a05786bb48f1f056e1cdcea253708e3', '2022-12-15 17:31:10', '2022-12-15 17:31:10'),
(246, 246, 'INSCRIPTION', 5, 50, 12, 2022, '53178b0897e1de1f6ce70a7ee7c134d16c06e85f', '2022-12-15 17:32:18', '2022-12-15 17:32:18'),
(247, 247, 'INSCRIPTION', 5, 50, 12, 2022, 'e95d9a3580710e3f9e1bd2ada0202dbc3684d71b', '2022-12-15 17:33:36', '2022-12-15 17:33:36'),
(248, 248, 'INSCRIPTION', 5, 50, 12, 2022, '528076dc2083805157f2141f6c8ce7819694cfc9', '2022-12-15 17:34:41', '2022-12-15 17:34:41'),
(249, 249, 'INSCRIPTION', 5, 50, 12, 2022, 'fb17c531328c2d0aff07c7494934749f5cc6b768', '2022-12-15 17:35:40', '2022-12-15 17:35:40'),
(250, 1, 'ECOLAGE', 5, 15, 4, 2023, 'e24ca37c2bb2976a3958086be83358d0d1ab7da6', '2023-04-14 07:30:44', '2023-04-14 07:30:44'),
(251, 250, 'INSCRIPTION', 11, 34, 8, 2023, 'b57c3336d55248b3a2af8828478b79e9b329a5e8', '2023-08-23 06:43:56', '2023-08-23 06:43:56'),
(252, 251, 'INSCRIPTION', 11, 34, 8, 2023, '8a7fd944e3f973f91ad002e8a41aa28222879003', '2023-08-23 06:55:01', '2023-08-23 06:55:01'),
(253, 2, 'ECOLAGE', 11, 34, 8, 2023, '8dd6820d5165a11db82a0fcc0b6acdfa9ca8a1a0', '2023-08-23 07:13:24', '2023-08-23 07:13:24'),
(254, 3, 'ECOLAGE', 11, 34, 8, 2023, '148361f079c5de1b56fd4a9149fe00f2b6e222cd', '2023-08-23 07:13:51', '2023-08-23 07:13:51'),
(255, 4, 'ECOLAGE', 11, 34, 8, 2023, '79f7ec4308f8a016085c5a5e02ee0c0134473ad6', '2023-08-23 07:14:10', '2023-08-23 07:14:10'),
(256, 5, 'ECOLAGE', 11, 34, 8, 2023, 'd9d276bdfa1fa5521d84ebec9a3efd31ae6f5b68', '2023-08-23 07:40:36', '2023-08-23 07:40:36'),
(257, 252, 'INSCRIPTION', 5, 37, 9, 2023, '95c6b35f8f4dda4025c6a4eccf75fdd20b1afa18', '2023-09-16 08:21:52', '2023-09-16 08:21:52'),
(258, 253, 'INSCRIPTION', 5, 37, 9, 2023, '071105678f39eb7a8ddc8b64c5d7c6aba94d9792', '2023-09-16 10:07:38', '2023-09-16 10:07:38'),
(259, 254, 'INSCRIPTION', 5, 38, 9, 2023, 'bc652dd58cdb3b67bc8324f9d7a09ddc76549dd3', '2023-09-19 09:21:09', '2023-09-19 09:21:09'),
(260, 255, 'INSCRIPTION', 5, 38, 9, 2023, '886faaf82c5f9a9ea864cd5ae66a041f2e743fa5', '2023-09-19 10:37:14', '2023-09-19 10:37:14'),
(261, 256, 'INSCRIPTION', 5, 39, 9, 2023, '266bcf987d5165cc47797bbab9eed0e79c41be67', '2023-09-26 13:16:42', '2023-09-26 13:16:42'),
(262, 257, 'INSCRIPTION', 5, 39, 9, 2023, '6509ff06147a510cbb3ecb23510c67132dcf60b0', '2023-09-26 13:25:19', '2023-09-26 13:25:19'),
(263, 258, 'INSCRIPTION', 5, 39, 9, 2023, '9c02f8ef2b8138faa298af5df59c967e1e09944b', '2023-09-26 13:34:16', '2023-09-26 13:34:16'),
(264, 259, 'INSCRIPTION', 5, 39, 9, 2023, 'e2ca77f81b9073e999855083d97b81b54d6b0d93', '2023-09-28 11:53:50', '2023-09-28 11:53:50'),
(265, 260, 'INSCRIPTION', 5, 39, 9, 2023, 'b173ab1e32a29b5c389c71d84542c5559d6fd852', '2023-09-28 12:09:01', '2023-09-28 12:09:01'),
(266, 261, 'INSCRIPTION', 5, 39, 9, 2023, '4f5258a3f97e373f785bb12ce59cec87d2ff8014', '2023-09-28 12:16:17', '2023-09-28 12:16:17'),
(267, 262, 'INSCRIPTION', 5, 39, 9, 2023, 'ba565c0e3d816373d4788195f0393e8773d80a8d', '2023-09-28 12:20:37', '2023-09-28 12:20:37'),
(268, 263, 'INSCRIPTION', 5, 39, 9, 2023, '9a4de69a0f9030df6dcd401f171f96556de5eb27', '2023-09-28 12:38:08', '2023-09-28 12:38:08'),
(269, 264, 'INSCRIPTION', 5, 39, 9, 2023, '9f4d0ec33aefed38aa0c17b1eab91644a27961eb', '2023-09-28 12:50:20', '2023-09-28 12:50:20'),
(270, 265, 'INSCRIPTION', 5, 39, 9, 2023, '824777429118817c52c7e77f67b7eadbc03f5681', '2023-09-28 14:18:46', '2023-09-28 14:18:46'),
(271, 266, 'INSCRIPTION', 5, 40, 10, 2023, '84cc75b57612d38af01cf9f93ae0d8b70112e64e', '2023-10-02 12:37:52', '2023-10-02 12:37:52'),
(272, 267, 'INSCRIPTION', 5, 40, 10, 2023, '2c6fcf08aeeccee0bb1093b0591918a78b0232f2', '2023-10-03 06:33:10', '2023-10-03 06:33:10'),
(273, 268, 'INSCRIPTION', 5, 40, 10, 2023, 'beaec2633e09525abde5dbf002ba255b98f1c9d4', '2023-10-03 06:56:21', '2023-10-03 06:56:21'),
(274, 269, 'INSCRIPTION', 5, 40, 10, 2023, '9ada5debd3ba85be80c9be2e9ece194298d972f9', '2023-10-03 07:07:05', '2023-10-03 07:07:05'),
(275, 270, 'INSCRIPTION', 5, 40, 10, 2023, '5adffd04b20b12d662a17bd28684f4f9c393b842', '2023-10-03 07:33:45', '2023-10-03 07:33:45'),
(276, 271, 'INSCRIPTION', 5, 40, 10, 2023, '1fea5ba7fa745aa521bd1c1da0078bbde22d4928', '2023-10-03 07:45:07', '2023-10-03 07:45:07'),
(277, 272, 'INSCRIPTION', 5, 40, 10, 2023, 'a136da8ef5b7a614df8bcdb31ceba0571f5eb9a5', '2023-10-03 07:51:10', '2023-10-03 07:51:10'),
(278, 273, 'INSCRIPTION', 5, 40, 10, 2023, '9dcb81a9e2b1bff7b3875ebfb4715392b7e199e7', '2023-10-03 08:03:00', '2023-10-03 08:03:00'),
(279, 6, 'ECOLAGE', 5, 40, 10, 2023, 'bb7c7fc52a9c48330934d679007e43865210f036', '2023-10-03 13:18:14', '2023-10-03 13:18:14'),
(280, 7, 'ECOLAGE', 5, 40, 10, 2023, '5b376039318482858087aeb2ec75c3e4f8e221ee', '2023-10-03 13:25:26', '2023-10-03 13:25:26'),
(281, 8, 'ECOLAGE', 5, 40, 10, 2023, '6312cc30e518b72e4e59d4c0a531a1055ef1f0b3', '2023-10-03 13:41:05', '2023-10-03 13:41:05'),
(282, 9, 'ECOLAGE', 5, 40, 10, 2023, 'fbc7eee3fa0919a88ad3923b85e12f0bef478a86', '2023-10-03 13:41:48', '2023-10-03 13:41:48'),
(283, 274, 'INSCRIPTION', 5, 40, 10, 2023, '2d8cf0973d2b483a9dc9776697aec99d458cc7bf', '2023-10-05 08:24:10', '2023-10-05 08:24:10'),
(284, 275, 'INSCRIPTION', 5, 40, 10, 2023, '825776f47d1fb4888370de5ade9af2b29e43fcaa', '2023-10-05 09:29:34', '2023-10-05 09:29:34'),
(285, 276, 'INSCRIPTION', 5, 40, 10, 2023, '3d6bf259a05c29c1f3fe25152f9991e532473c56', '2023-10-05 10:03:01', '2023-10-05 10:03:01'),
(286, 277, 'INSCRIPTION', 5, 40, 10, 2023, '47a27cadb05084a65610d456958aa2567071ac0f', '2023-10-05 10:27:23', '2023-10-05 10:27:23'),
(287, 278, 'INSCRIPTION', 5, 40, 10, 2023, 'c3c92e3048fff48302fda5bdcf462f45441925cb', '2023-10-05 10:35:08', '2023-10-05 10:35:08'),
(288, 279, 'INSCRIPTION', 5, 40, 10, 2023, 'f784108133f22bedfadca90121ec35d1d488eba0', '2023-10-05 11:09:28', '2023-10-05 11:09:28'),
(289, 280, 'INSCRIPTION', 5, 40, 10, 2023, '0798ed29ce92fc9710e4c1070882a60fe7704030', '2023-10-05 11:54:41', '2023-10-05 11:54:41'),
(290, 281, 'INSCRIPTION', 5, 40, 10, 2023, 'bace295f3515d3ce861ff8b2880f38cc794c7671', '2023-10-05 12:00:50', '2023-10-05 12:00:50'),
(291, 282, 'INSCRIPTION', 5, 40, 10, 2023, '587922244b4aee98cb95e10b01a3db0a19e100bf', '2023-10-05 12:29:06', '2023-10-05 12:29:06'),
(292, 283, 'INSCRIPTION', 5, 40, 10, 2023, '886354d7897618ec07dca07e97aef09d5c328a28', '2023-10-05 12:37:06', '2023-10-05 12:37:06'),
(293, 284, 'INSCRIPTION', 5, 40, 10, 2023, 'b00ed52837b846a2e2effcef3153c310f7f7ce2e', '2023-10-05 12:45:38', '2023-10-05 12:45:38'),
(294, 285, 'INSCRIPTION', 5, 40, 10, 2023, '12dfa6e8a189b82d990f4a51c57dea9a95df6755', '2023-10-06 12:45:04', '2023-10-06 12:45:04'),
(295, 286, 'INSCRIPTION', 5, 41, 10, 2023, 'e542d041aeba1a75285181bf2c58c4658d0d3d84', '2023-10-09 12:34:17', '2023-10-09 12:34:17'),
(296, 287, 'INSCRIPTION', 5, 41, 10, 2023, '4c1f98be1c57fc0923f20bbf6a2554305829d068', '2023-10-09 12:49:44', '2023-10-09 12:49:44'),
(297, 288, 'INSCRIPTION', 5, 41, 10, 2023, 'f97a213623e2569164f9242818df64c6aab258e5', '2023-10-09 13:10:46', '2023-10-09 13:10:46'),
(298, 289, 'INSCRIPTION', 5, 41, 10, 2023, '48a26da767f55026520ae521e69de73510d92295', '2023-10-09 13:19:33', '2023-10-09 13:19:33'),
(299, 290, 'INSCRIPTION', 5, 41, 10, 2023, 'ae016fbb874c2c3336e9fad6c237db538ce4085a', '2023-10-09 13:30:52', '2023-10-09 13:30:52'),
(300, 291, 'INSCRIPTION', 5, 41, 10, 2023, '98dc739de89750f8312fe4c37f6c702c79073d0d', '2023-10-09 13:35:35', '2023-10-09 13:35:35'),
(301, 292, 'INSCRIPTION', 5, 41, 10, 2023, '17eeff03fe2e48d29508e7d5097179d42693e725', '2023-10-09 13:58:42', '2023-10-09 13:58:42'),
(302, 293, 'INSCRIPTION', 5, 41, 10, 2023, '79f2c988228689beccbd02f5b5554e98b0a1e41a', '2023-10-09 14:04:32', '2023-10-09 14:04:32'),
(303, 294, 'INSCRIPTION', 5, 41, 10, 2023, '2f3b162edc336c1a537acabaac57dce7aff0c09b', '2023-10-09 14:14:27', '2023-10-09 14:14:27'),
(304, 295, 'INSCRIPTION', 5, 41, 10, 2023, '380b4a12567466b0affc177ddf51d8849554866a', '2023-10-09 14:24:00', '2023-10-09 14:24:00'),
(305, 296, 'INSCRIPTION', 5, 41, 10, 2023, 'd92295ca2f91bd74614e3630d805e9aa42532c50', '2023-10-09 14:38:07', '2023-10-09 14:38:07'),
(306, 297, 'INSCRIPTION', 5, 41, 10, 2023, '6038c2b2d2a59606fd43d05c7f0e78b9188a565a', '2023-10-09 14:47:52', '2023-10-09 14:47:52'),
(307, 298, 'INSCRIPTION', 5, 41, 10, 2023, '83e0c12093e1060d7e3462c9b73361cef3381a6e', '2023-10-09 14:56:11', '2023-10-09 14:56:11'),
(308, 299, 'INSCRIPTION', 5, 41, 10, 2023, 'd501cbcef772208480b15b2c8f110d6077716926', '2023-10-09 15:01:46', '2023-10-09 15:01:46'),
(309, 300, 'INSCRIPTION', 5, 41, 10, 2023, '832e755d5fbb12b1c2dd8d90cb22a95312665d47', '2023-10-10 08:09:15', '2023-10-10 08:09:15'),
(310, 301, 'INSCRIPTION', 5, 41, 10, 2023, 'b0b91e313c046d3836acf7475cf7f31870f22a97', '2023-10-10 08:13:32', '2023-10-10 08:13:32'),
(311, 302, 'INSCRIPTION', 5, 41, 10, 2023, '90c19fa7f9eb8ba61338c93543952069fae6c222', '2023-10-11 12:11:36', '2023-10-11 12:11:36'),
(312, 303, 'INSCRIPTION', 5, 41, 10, 2023, '97cf1d0149c038a33acfa208332fb241332e3970', '2023-10-11 12:31:11', '2023-10-11 12:31:11'),
(313, 304, 'INSCRIPTION', 5, 41, 10, 2023, 'cec115196106544b9992c2b9aa2c3a2d3e8ef417', '2023-10-11 12:52:16', '2023-10-11 12:52:16'),
(314, 305, 'INSCRIPTION', 5, 41, 10, 2023, '2429d80f4d21e80c59752a68c59ef0deb5988fe9', '2023-10-11 13:26:17', '2023-10-11 13:26:17'),
(315, 306, 'INSCRIPTION', 5, 41, 10, 2023, 'da431842eb5db0406d86678189fd650b22b8eeb7', '2023-10-11 13:52:05', '2023-10-11 13:52:05'),
(316, 307, 'INSCRIPTION', 5, 41, 10, 2023, 'ca97ee3192d3ee9fd5e703d2a26086851c629663', '2023-10-12 08:30:44', '2023-10-12 08:30:44'),
(317, 308, 'INSCRIPTION', 5, 41, 10, 2023, '8a99e7eb0333c661752ec96bffce94aaa87bb430', '2023-10-12 08:51:45', '2023-10-12 08:51:45'),
(318, 309, 'INSCRIPTION', 5, 41, 10, 2023, 'dd0eca7d3608b8df899886085274acc3630f3dda', '2023-10-14 08:27:58', '2023-10-14 08:27:58'),
(319, 310, 'INSCRIPTION', 5, 42, 10, 2023, '457ec9d79dbdcf6cf8305bb292a6acaf75962fe3', '2023-10-16 11:11:05', '2023-10-16 11:11:05'),
(320, 311, 'INSCRIPTION', 5, 42, 10, 2023, '5f95481addf64f896df4dec5262f6e635930158f', '2023-10-18 11:07:23', '2023-10-18 11:07:23'),
(321, 312, 'INSCRIPTION', 5, 42, 10, 2023, 'e9541e0ca4bc170f970e9f8ed91268e2ada13a02', '2023-10-18 11:12:20', '2023-10-18 11:12:20'),
(322, 313, 'INSCRIPTION', 5, 42, 10, 2023, '133d032cf8f6157dfed5f4e0758b6b7a64243da3', '2023-10-18 11:19:27', '2023-10-18 11:19:27'),
(323, 314, 'INSCRIPTION', 5, 42, 10, 2023, 'c36f8eada9a4d9fba4c5faf35c56711cf8c1f762', '2023-10-18 11:24:53', '2023-10-18 11:24:53'),
(324, 315, 'INSCRIPTION', 5, 43, 10, 2023, 'f2c38d29a415ebd35b2e1d20daf7f1bccaf5fc66', '2023-10-24 10:49:26', '2023-10-24 10:49:26'),
(325, 316, 'INSCRIPTION', 5, 43, 10, 2023, 'd62184408b9c861fd40fa4e2a4a72549d3e3d169', '2023-10-24 10:56:44', '2023-10-24 10:56:44'),
(326, 10, 'ECOLAGE', 5, 43, 10, 2023, 'e54ca1c052871b84d26e90e5d883c08e1f10324f', '2023-10-27 09:39:14', '2023-10-27 09:39:14'),
(327, 317, 'INSCRIPTION', 5, 43, 10, 2023, '001d15605fb797e0c479605b9bef89138717a7a0', '2023-10-27 14:26:04', '2023-10-27 14:26:04'),
(328, 318, 'INSCRIPTION', 5, 43, 10, 2023, 'dbaa45b51e5b3152cd6f315d97e20f6d1a5b95f7', '2023-10-27 14:32:37', '2023-10-27 14:32:37'),
(329, 11, 'ECOLAGE', 5, 44, 10, 2023, '7f9432a778f743d27a8e0a2c4f108762de7834c5', '2023-10-30 08:04:57', '2023-10-30 08:04:57'),
(330, 319, 'INSCRIPTION', 5, 44, 10, 2023, 'edd1b61242be865374ecffe0e052ffe2092967cc', '2023-10-30 08:20:12', '2023-10-30 08:20:12'),
(331, 12, 'ECOLAGE', 5, 44, 10, 2023, '2fd34a51b7322b07e65c28421b73d8862c58efcb', '2023-10-30 08:21:08', '2023-10-30 08:21:08'),
(332, 13, 'ECOLAGE', 5, 44, 11, 2023, '453487a14bedb4c7447fafb3d6bba8dc455d8420', '2023-11-02 12:07:20', '2023-11-02 12:07:20'),
(333, 14, 'ECOLAGE', 5, 44, 11, 2023, 'adb48513193f627b188695a4a5aea67728455da6', '2023-11-02 12:07:54', '2023-11-02 12:07:54'),
(334, 15, 'ECOLAGE', 5, 44, 11, 2023, '08ffe0a7cc2a6d087841068f4d3428cdb3320a7c', '2023-11-02 12:08:21', '2023-11-02 12:08:21'),
(335, 16, 'ECOLAGE', 5, 44, 11, 2023, 'b4b7660322847c7567bd4bbf27d7eb917a8bfff0', '2023-11-02 12:08:46', '2023-11-02 12:08:46'),
(336, 320, 'INSCRIPTION', 5, 44, 11, 2023, '6a1dabb3001d1fdb90696eaf51b546ef7ccc7080', '2023-11-02 12:45:54', '2023-11-02 12:45:54'),
(337, 321, 'INSCRIPTION', 5, 44, 11, 2023, '2ec2cf41bd7384a9de9f48ba90e6a04dcbb9fc9d', '2023-11-02 12:53:40', '2023-11-02 12:53:40'),
(338, 322, 'INSCRIPTION', 5, 44, 11, 2023, '0fe615176dc4f760b467c300ee20a1ce5ecb5b8f', '2023-11-02 13:00:32', '2023-11-02 13:00:32'),
(339, 17, 'ECOLAGE', 5, 45, 11, 2023, 'e93df9bf903f2ae2c38540e3620b59896191759c', '2023-11-06 09:55:25', '2023-11-06 09:55:25'),
(340, 18, 'ECOLAGE', 5, 45, 11, 2023, 'cd6578c6293daca9e805d253e1b5674e2aaf41dd', '2023-11-06 10:09:44', '2023-11-06 10:09:44'),
(341, 19, 'ECOLAGE', 5, 45, 11, 2023, '1f08ee8ab9d358512ec821dcdec8218e70cd3698', '2023-11-06 12:30:41', '2023-11-06 12:30:41'),
(342, 20, 'ECOLAGE', 5, 45, 11, 2023, '5fbae8373a4044647d5da92039687c0ed764586e', '2023-11-06 12:31:09', '2023-11-06 12:31:09'),
(343, 21, 'ECOLAGE', 5, 45, 11, 2023, 'e5d1833657d5c435e2a64eb29b86cf417f2c1377', '2023-11-06 12:31:52', '2023-11-06 12:31:52'),
(344, 323, 'INSCRIPTION', 5, 45, 11, 2023, 'af4f61eb8ce7e1d96a5c6f81a0296275ba431c95', '2023-11-09 07:00:56', '2023-11-09 07:00:56'),
(345, 22, 'ECOLAGE', 5, 45, 11, 2023, 'afc0d0058b2c493b3a5fd03eed233702b35a74d2', '2023-11-11 13:50:35', '2023-11-11 13:50:35'),
(346, 23, 'ECOLAGE', 5, 45, 11, 2023, '3f72ac84937c4c3585fc18b495814b4cbe36e92a', '2023-11-11 13:53:35', '2023-11-11 13:53:35'),
(347, 24, 'ECOLAGE', 5, 45, 11, 2023, '427b045dfa82071210b83acad2a170c4db4aa3ae', '2023-11-11 13:59:04', '2023-11-11 13:59:04'),
(348, 25, 'ECOLAGE', 5, 45, 11, 2023, '689d2ed3994bd598a471e24c8de82db7dea52294', '2023-11-11 14:21:02', '2023-11-11 14:21:02'),
(349, 26, 'ECOLAGE', 5, 45, 11, 2023, '98bd2a243b82cccdf19b0fef38270297f592c817', '2023-11-11 14:27:51', '2023-11-11 14:27:51'),
(350, 324, 'INSCRIPTION', 12, 2, 1, 2024, '80f284fe28bf642e422b7bc1f3865f79e1042727', '2024-01-13 13:11:30', '2024-01-13 13:11:30'),
(351, 325, 'INSCRIPTION', 12, 2, 1, 2024, '880650e2850b578c49268fdc7bb23c94f66e3f7c', '2024-01-13 13:57:19', '2024-01-13 13:57:19'),
(352, 326, 'INSCRIPTION', 12, 2, 1, 2024, 'faa2ad5cdae4d4629f48135ff4189fefbe0a9559', '2024-01-13 14:02:05', '2024-01-13 14:02:05'),
(353, 327, 'INSCRIPTION', 12, 2, 1, 2024, '147dd9f0436d59da2e29176ae38bfb3b0c0973bd', '2024-01-13 14:06:37', '2024-01-13 14:06:37'),
(354, 328, 'INSCRIPTION', 12, 2, 1, 2024, 'cbe24136ab371ea0ccf657e8726c3566847f13fc', '2024-01-13 14:10:34', '2024-01-13 14:10:34'),
(355, 329, 'INSCRIPTION', 12, 2, 1, 2024, '4ac70d92ee436842483c06cffae264f54d74c6cc', '2024-01-13 14:15:36', '2024-01-13 14:15:36'),
(356, 330, 'INSCRIPTION', 12, 2, 1, 2024, 'f36d8a61073ea07338eda3b90e9b59fefe899c8a', '2024-01-13 14:20:51', '2024-01-13 14:20:51'),
(357, 331, 'INSCRIPTION', 12, 2, 1, 2024, 'a2c312f54c403a7a67a4eb22b9ae2d4334b0bc54', '2024-01-13 14:27:14', '2024-01-13 14:27:14'),
(358, 332, 'INSCRIPTION', 12, 2, 1, 2024, '4c96122d475158e56e0cadf034af199b4bd25b96', '2024-01-13 14:32:56', '2024-01-13 14:32:56'),
(359, 333, 'INSCRIPTION', 12, 2, 1, 2024, '24f81569bd83f8b19f84f0590ac61f5d8b5abe5f', '2024-01-13 14:36:19', '2024-01-13 14:36:19'),
(360, 334, 'INSCRIPTION', 12, 2, 1, 2024, 'a289701bf729497896d5b101a58fb2aa3d4f3f1c', '2024-01-13 14:47:26', '2024-01-13 14:47:26'),
(361, 335, 'INSCRIPTION', 12, 2, 1, 2024, '3879651bb115ef5f2754684a447ff92ac0fdb054', '2024-01-13 15:01:28', '2024-01-13 15:01:28'),
(362, 336, 'INSCRIPTION', 12, 2, 1, 2024, 'e445633a878c98d636d3f079bc5724b26e7f0473', '2024-01-13 15:28:45', '2024-01-13 15:28:45'),
(363, 337, 'INSCRIPTION', 12, 2, 1, 2024, '5410ba296590448de85c9e63fab9521fb227ab01', '2024-01-13 15:35:15', '2024-01-13 15:35:15'),
(364, 338, 'INSCRIPTION', 12, 2, 1, 2024, '2e24255b379e32988a3c598f8f59e8751218ac38', '2024-01-13 15:48:24', '2024-01-13 15:48:24'),
(365, 339, 'INSCRIPTION', 12, 2, 1, 2024, 'fbf025fd4a853785d93b1e5dc8fd998a8d90e467', '2024-01-13 15:54:01', '2024-01-13 15:54:01'),
(366, 340, 'INSCRIPTION', 12, 2, 1, 2024, '05f14be69cbe14310df5d1ab35937bf5ee7e33fa', '2024-01-13 16:19:25', '2024-01-13 16:19:25'),
(367, 341, 'INSCRIPTION', 12, 2, 1, 2024, '40bf7b83a5f4ef4911ec82ea5230b38a661d4735', '2024-01-13 16:26:55', '2024-01-13 16:26:55'),
(368, 342, 'INSCRIPTION', 12, 2, 1, 2024, 'e36cf4d13719200618327440c433079a3c844089', '2024-01-13 16:31:35', '2024-01-13 16:31:35'),
(369, 343, 'INSCRIPTION', 12, 2, 1, 2024, 'c393eccbedac93ea37b6fda26ecb64db871b62be', '2024-01-13 16:35:57', '2024-01-13 16:35:57'),
(370, 344, 'INSCRIPTION', 12, 2, 1, 2024, 'e93a362595e26344c29a52075ca02a0ac69b24f7', '2024-01-13 16:39:58', '2024-01-13 16:39:58'),
(371, 345, 'INSCRIPTION', 12, 2, 1, 2024, 'f4e6067d5c0cb48d74514d076a7c559fe0f6306a', '2024-01-13 17:19:40', '2024-01-13 17:19:40'),
(372, 346, 'INSCRIPTION', 12, 2, 1, 2024, 'ce753219e5d216bfa71d3acc14884221ec04fe63', '2024-01-13 17:37:21', '2024-01-13 17:37:21'),
(373, 347, 'INSCRIPTION', 12, 2, 1, 2024, '574c792062b940f798e3b50e483b2b1401f86856', '2024-01-13 17:45:01', '2024-01-13 17:45:01'),
(374, 348, 'INSCRIPTION', 12, 2, 1, 2024, 'dfd0ba6ab47632e6b51baad37b00085292e146c8', '2024-01-13 17:49:18', '2024-01-13 17:49:18'),
(375, 349, 'INSCRIPTION', 12, 2, 1, 2024, '694d345bf96343ed2e127af153e450290c3d3bef', '2024-01-13 17:53:13', '2024-01-13 17:53:13'),
(376, 350, 'INSCRIPTION', 12, 2, 1, 2024, '1830e4fee695cdfaa3d3bbf23c32af22a51db15f', '2024-01-13 17:56:44', '2024-01-13 17:56:44'),
(377, 351, 'INSCRIPTION', 12, 2, 1, 2024, '3895226e4339bd1e3ba0744ec472ec04b71431f6', '2024-01-13 18:00:23', '2024-01-13 18:00:23'),
(378, 352, 'INSCRIPTION', 12, 2, 1, 2024, '3b71360cbec478fd4f8619c35b90e820379d5635', '2024-01-13 18:26:51', '2024-01-13 18:26:51'),
(379, 353, 'INSCRIPTION', 12, 2, 1, 2024, 'c59ddfb54cc304cbec6f7ab6118d90f9eab84da7', '2024-01-13 18:30:25', '2024-01-13 18:30:25'),
(380, 354, 'INSCRIPTION', 12, 2, 1, 2024, '5fd09ee58b08369c45284e00a89f309691f6511a', '2024-01-13 18:35:44', '2024-01-13 18:35:44');
INSERT INTO `suivi_paiements` (`id`, `paiement_id`, `type`, `ecole_id`, `semaine`, `mois`, `annee`, `token`, `created_at`, `updated_at`) VALUES
(381, 355, 'INSCRIPTION', 12, 2, 1, 2024, '5f939581355a0c107074acd4f28603921d6d0170', '2024-01-13 18:40:47', '2024-01-13 18:40:47'),
(382, 356, 'INSCRIPTION', 12, 2, 1, 2024, '71ec539f4fd1823a0a7099d3eb9b1a18bf184f41', '2024-01-13 18:47:32', '2024-01-13 18:47:32'),
(383, 357, 'INSCRIPTION', 12, 2, 1, 2024, '23b22518d8b3552149105ad204a528d571cb7802', '2024-01-13 18:52:02', '2024-01-13 18:52:02'),
(384, 358, 'INSCRIPTION', 12, 2, 1, 2024, 'bdde62c9504da7ace402db35038f50225feb3c51', '2024-01-13 18:56:06', '2024-01-13 18:56:06'),
(385, 359, 'INSCRIPTION', 12, 2, 1, 2024, '3afe699c6eda26d7cc12edd3c1f23496791ce2d9', '2024-01-13 18:59:55', '2024-01-13 18:59:55'),
(386, 360, 'INSCRIPTION', 12, 2, 1, 2024, 'd1f09983af6a54db1cf9cd3a4864901612dbba08', '2024-01-13 19:03:47', '2024-01-13 19:03:47'),
(387, 361, 'INSCRIPTION', 12, 2, 1, 2024, '3727672f15a1d877398385a355ff96c480b078a1', '2024-01-13 19:09:18', '2024-01-13 19:09:18'),
(388, 362, 'INSCRIPTION', 12, 2, 1, 2024, '35fd914ca01bbe515b94ffe00a5be7ed0c2d9b94', '2024-01-13 19:13:19', '2024-01-13 19:13:19'),
(389, 363, 'INSCRIPTION', 12, 2, 1, 2024, '7d1f23dc447ab18ad14babe483e0a9e9350e406a', '2024-01-14 14:47:00', '2024-01-14 14:47:00'),
(390, 364, 'INSCRIPTION', 12, 2, 1, 2024, '33c170cad3dcdbcadacc20883d54a186b992c5cb', '2024-01-14 14:51:08', '2024-01-14 14:51:08'),
(391, 365, 'INSCRIPTION', 12, 2, 1, 2024, 'd4b74345afa12e86ea24ae934f480971d506c435', '2024-01-14 14:55:42', '2024-01-14 14:55:42'),
(392, 366, 'INSCRIPTION', 12, 2, 1, 2024, 'c2662604369596e9f1df52f317c6722d620d5c09', '2024-01-14 14:59:12', '2024-01-14 14:59:12'),
(393, 367, 'INSCRIPTION', 12, 2, 1, 2024, '3d21b5aa21ec5e83a75f627c8097f93b286d700b', '2024-01-14 15:02:50', '2024-01-14 15:02:50'),
(394, 368, 'INSCRIPTION', 12, 2, 1, 2024, '35f1ffe3fdc98eda11d1af495c1984aa7050f967', '2024-01-14 15:07:03', '2024-01-14 15:07:03'),
(395, 369, 'INSCRIPTION', 12, 2, 1, 2024, 'c7b4bb0e18a823e66c93de1ba55d825e736b6b41', '2024-01-14 15:13:44', '2024-01-14 15:13:44'),
(396, 370, 'INSCRIPTION', 12, 2, 1, 2024, '4a4c471d746512d7aa20a3d92f9b045b50c2dbc4', '2024-01-14 15:17:02', '2024-01-14 15:17:02'),
(397, 371, 'INSCRIPTION', 12, 2, 1, 2024, '9f6a04a26a57037bbdd3c7ee3289b9a3790f3656', '2024-01-14 15:20:07', '2024-01-14 15:20:07'),
(398, 372, 'INSCRIPTION', 12, 2, 1, 2024, '8e11ffd46a9ed3b9d1f6cec3970ed3ae71768b66', '2024-01-14 15:24:46', '2024-01-14 15:24:46'),
(399, 373, 'INSCRIPTION', 12, 2, 1, 2024, 'ea13ce979fc8893f389630638e2b7396dabf0bb7', '2024-01-14 15:28:51', '2024-01-14 15:28:51'),
(400, 374, 'INSCRIPTION', 12, 2, 1, 2024, 'f12ca1b004d14cf1dd925b17404d02cfed49bcf8', '2024-01-14 15:32:07', '2024-01-14 15:32:07'),
(401, 375, 'INSCRIPTION', 12, 2, 1, 2024, '693bbd1ff3ea2ccac22bdc75fe8f1c90a5d82b28', '2024-01-14 15:35:53', '2024-01-14 15:35:53'),
(402, 376, 'INSCRIPTION', 12, 2, 1, 2024, 'd9a016199f139f415eecadb2827a532d5a064a2f', '2024-01-14 15:39:56', '2024-01-14 15:39:56'),
(403, 377, 'INSCRIPTION', 12, 2, 1, 2024, '279b85fda8bce605bcb59705adfd1b775d34aa14', '2024-01-14 15:43:19', '2024-01-14 15:43:19'),
(404, 378, 'INSCRIPTION', 12, 2, 1, 2024, 'c5677f177a5796872753f39ffcc34b00944dc5f1', '2024-01-14 15:47:24', '2024-01-14 15:47:24'),
(405, 379, 'INSCRIPTION', 12, 2, 1, 2024, '7a56242a19e5ce2ea5a63b26bbde288e4a6ffb35', '2024-01-14 15:51:06', '2024-01-14 15:51:06'),
(406, 380, 'INSCRIPTION', 12, 2, 1, 2024, '38468fc9d8248afad6e6c7515e1c060e13d45875', '2024-01-14 15:54:29', '2024-01-14 15:54:29'),
(407, 381, 'INSCRIPTION', 12, 2, 1, 2024, '1056e844f7780b408e73e686237c08df6e10684d', '2024-01-14 15:58:57', '2024-01-14 15:58:57'),
(408, 382, 'INSCRIPTION', 12, 2, 1, 2024, '4ff24ff61307097f3a73c200ff52f8538acf36d4', '2024-01-14 16:01:59', '2024-01-14 16:01:59'),
(409, 383, 'INSCRIPTION', 12, 2, 1, 2024, 'e650f46f871aea67a3524bf5a6c89f42b069d785', '2024-01-14 16:05:22', '2024-01-14 16:05:22'),
(410, 384, 'INSCRIPTION', 12, 2, 1, 2024, '3ba477ed23d3062bdab85207a1c4bfa552e44f86', '2024-01-14 16:08:57', '2024-01-14 16:08:57'),
(411, 385, 'INSCRIPTION', 12, 2, 1, 2024, '7ce33f9c9622e1f5da6a6ad731066b9ccbc56cc6', '2024-01-14 16:20:02', '2024-01-14 16:20:02'),
(412, 386, 'INSCRIPTION', 12, 2, 1, 2024, 'c16760dc6fada0ba0222b01163365815e5ee5823', '2024-01-14 16:24:25', '2024-01-14 16:24:25'),
(413, 387, 'INSCRIPTION', 12, 2, 1, 2024, '60666e9a7aef7c27bbe9da235eaee6db96474eca', '2024-01-14 16:28:37', '2024-01-14 16:28:37'),
(414, 388, 'INSCRIPTION', 12, 2, 1, 2024, '73188ebfb09e36b96fad2cd3b387859267027a52', '2024-01-14 16:39:45', '2024-01-14 16:39:45'),
(415, 389, 'INSCRIPTION', 12, 2, 1, 2024, '3fe08d39ea3813821de94a4f4906b046db7c21b4', '2024-01-14 16:43:34', '2024-01-14 16:43:34'),
(416, 390, 'INSCRIPTION', 12, 2, 1, 2024, 'f9e17ed9a66ad89b8a2e3b5a0a70f2a94f19da0c', '2024-01-14 16:59:54', '2024-01-14 16:59:54'),
(417, 391, 'INSCRIPTION', 12, 2, 1, 2024, '6f337b6317ed6a5d5b4126da7ddeb8f1a607f878', '2024-01-14 17:04:42', '2024-01-14 17:04:42'),
(418, 392, 'INSCRIPTION', 12, 2, 1, 2024, '3f55a992c2b73271f9139ce7089f1c236318fbaa', '2024-01-14 17:07:57', '2024-01-14 17:07:57'),
(419, 393, 'INSCRIPTION', 12, 2, 1, 2024, 'fc3950056a732fc84c3a3e8ff9994b5b3e7750ce', '2024-01-14 17:11:20', '2024-01-14 17:11:20'),
(420, 394, 'INSCRIPTION', 12, 2, 1, 2024, '2b7ef97185bc9724010f460e38c7bc3fea0e2ea1', '2024-01-14 17:16:12', '2024-01-14 17:16:12'),
(421, 395, 'INSCRIPTION', 12, 2, 1, 2024, '5678dee1904e811ec3b2dc70946fb61c51f29686', '2024-01-14 17:20:00', '2024-01-14 17:20:00'),
(422, 396, 'INSCRIPTION', 12, 2, 1, 2024, 'a6506f5c8da494f45dc2b0231601cc67734ec0d6', '2024-01-14 17:24:51', '2024-01-14 17:24:51'),
(423, 397, 'INSCRIPTION', 12, 2, 1, 2024, 'b66c23b846ee1723646b1ee0ce7117c6aa5f06ce', '2024-01-14 17:29:30', '2024-01-14 17:29:30'),
(424, 398, 'INSCRIPTION', 12, 2, 1, 2024, 'da04cff05a9d488c2f561fa421353562e77e2191', '2024-01-14 17:33:13', '2024-01-14 17:33:13'),
(425, 399, 'INSCRIPTION', 12, 2, 1, 2024, '977a3857527920f114f0d4d16999a0340df2d455', '2024-01-14 17:37:07', '2024-01-14 17:37:07'),
(426, 400, 'INSCRIPTION', 12, 2, 1, 2024, '30852b3846047d7b8c7d75ca7bf4264d7a5f2e0a', '2024-01-14 17:40:49', '2024-01-14 17:40:49'),
(427, 401, 'INSCRIPTION', 12, 2, 1, 2024, '1be0560324fd22f2a0e64d9759558a3018ee158b', '2024-01-14 17:44:42', '2024-01-14 17:44:42'),
(428, 402, 'INSCRIPTION', 12, 2, 1, 2024, '938a8ce1b2acfada11633b11805dc65119748811', '2024-01-14 17:49:08', '2024-01-14 17:49:08'),
(429, 403, 'INSCRIPTION', 12, 2, 1, 2024, '98a492e49c780c76d64f71ff3596ed35ba4c060f', '2024-01-14 17:53:22', '2024-01-14 17:53:22'),
(430, 404, 'INSCRIPTION', 12, 2, 1, 2024, 'c04c151535a0a3e53ea4ee07504d03775a82237d', '2024-01-14 17:56:26', '2024-01-14 17:56:26'),
(431, 405, 'INSCRIPTION', 12, 2, 1, 2024, '4a21f47b4c76537cac9eb704f37ec05d40ede729', '2024-01-14 17:59:42', '2024-01-14 17:59:42'),
(432, 406, 'INSCRIPTION', 12, 2, 1, 2024, 'd741a80d38c088541876fe624d23fa7defb1a8d2', '2024-01-14 18:04:25', '2024-01-14 18:04:25'),
(433, 407, 'INSCRIPTION', 12, 2, 1, 2024, '85b5a286c475711b919842f074bebeba8c16254a', '2024-01-14 18:07:45', '2024-01-14 18:07:45'),
(434, 408, 'INSCRIPTION', 12, 2, 1, 2024, 'dac6a73030b824e7d715f7f54cf0c9ecd0b62beb', '2024-01-14 18:13:18', '2024-01-14 18:13:18'),
(435, 409, 'INSCRIPTION', 12, 2, 1, 2024, '79ef2cb5655a111a05042c60e86d637763adaf29', '2024-01-14 18:21:58', '2024-01-14 18:21:58'),
(436, 410, 'INSCRIPTION', 12, 2, 1, 2024, '48c32a019fb4e5652c6e107c60dc41d5bf8dc6c7', '2024-01-14 18:26:44', '2024-01-14 18:26:44');

-- --------------------------------------------------------

--
-- Structure de la table `tranche_horaires`
--

CREATE TABLE `tranche_horaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heure_debut` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heure_fin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordre` bigint(20) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tranche_horaires`
--

INSERT INTO `tranche_horaires` (`id`, `heure_debut`, `heure_fin`, `ordre`, `ecole_id`, `created_at`, `updated_at`) VALUES
(1, '07:30', '08:30', 0, 1, '2022-11-11 09:56:57', '2022-11-11 09:56:57'),
(2, '08:30', '09:30', 0, 1, '2022-11-11 09:57:12', '2022-11-11 09:57:12'),
(3, '09:30', '10:15', 0, 1, '2022-11-11 09:57:25', '2022-11-11 09:57:25'),
(4, '10:30', '11:30', 0, 1, '2022-11-11 09:57:40', '2022-11-11 09:57:40'),
(5, '11:30', '12:30', 0, 1, '2022-11-11 09:57:52', '2022-11-11 09:57:52'),
(6, '12:30', '13:30', 0, 1, '2022-11-11 09:58:07', '2022-11-11 09:58:07'),
(7, '13:30', '14:30', 0, 1, '2022-11-11 09:58:25', '2022-11-11 09:58:25'),
(8, '14:30', '15:15', 0, 1, '2022-11-11 09:58:42', '2022-11-11 09:58:42'),
(9, '15:30', '16:30', 0, 1, '2022-11-11 09:58:56', '2022-11-11 09:58:56'),
(10, '16:30', '17:30', 0, 1, '2022-11-11 09:59:11', '2022-11-11 09:59:11'),
(11, '07:30', '08:30', 0, 5, '2023-01-11 22:24:43', '2023-01-11 22:24:43'),
(12, '08:30', '09:30', 0, 5, '2023-01-11 22:24:54', '2023-01-11 22:24:54'),
(13, '09:30', '10:30', 0, 5, '2023-01-11 22:25:10', '2023-01-11 22:25:10'),
(14, '10:30', '11:30', 0, 5, '2023-01-11 22:25:20', '2023-01-11 22:25:20'),
(15, '11:30', '12:30', 0, 5, '2023-01-11 22:25:31', '2023-01-11 22:25:31'),
(16, '09:30', '10:15', 0, 5, '2023-01-20 08:55:11', '2023-01-20 08:55:11'),
(18, '12:30', '13:30', 0, 5, '2023-01-20 09:34:14', '2023-01-20 09:34:14'),
(19, '13:30', '14:30', 0, 5, '2023-01-20 09:34:25', '2023-01-20 09:34:25'),
(20, '14:30', '15:15', 0, 5, '2023-01-20 09:35:18', '2023-01-20 09:35:18'),
(21, '15:30', '16:30', 0, 5, '2023-01-20 09:35:36', '2023-01-20 09:35:36'),
(22, '16:30', '17:30', 0, 5, '2023-01-20 09:35:47', '2023-01-20 09:35:47'),
(23, '07:45', '08:45', 0, 11, '2023-08-14 08:30:25', '2023-08-14 08:30:25'),
(24, '08:45', '09:45', 0, 11, '2023-08-14 08:30:38', '2023-08-14 08:30:38'),
(25, '10:15', '11:15', 0, 11, '2023-08-14 08:31:00', '2023-08-14 08:31:00'),
(26, '11:15', '12:15', 0, 11, '2023-08-23 08:12:02', '2023-08-23 08:12:02'),
(27, '13:30', '14:30', 0, 11, '2023-08-23 08:13:48', '2023-08-23 08:13:48'),
(28, '14:30', '15:30', 0, 11, '2023-08-23 08:14:03', '2023-08-23 08:14:03'),
(29, '15:30', '16:30', 0, 11, '2023-08-23 08:14:15', '2023-08-23 08:14:15');

-- --------------------------------------------------------

--
-- Structure de la table `trimestres`
--

CREATE TABLE `trimestres` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `abb` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trimestres`
--

INSERT INTO `trimestres` (`id`, `name`, `abb`, `created_at`, `updated_at`) VALUES
(1, 'PREMIER TRIMESTRE', '1e T', '2022-09-23 16:50:04', '2022-09-23 16:50:04'),
(2, 'DEUXIEME TRIMESTRE', '2e T', '2022-09-23 16:50:04', '2022-09-23 16:50:04'),
(3, 'TROISIEME TRIMESTRE', '3e T', '2022-09-23 16:50:04', '2022-09-23 16:50:04');

-- --------------------------------------------------------

--
-- Structure de la table `trimestre_ecoles`
--

CREATE TABLE `trimestre_ecoles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trimestre_id` int(11) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trimestre_ecoles`
--

INSERT INTO `trimestre_ecoles` (`id`, `trimestre_id`, `ecole_id`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-09-28 10:37:12', '2022-11-11 09:59:36'),
(2, 2, 1, 0, '2022-09-28 10:37:12', '2022-09-28 10:37:12'),
(3, 3, 1, 0, '2022-09-28 10:37:12', '2022-09-28 10:37:12'),
(4, 1, 2, 0, '2022-10-05 09:19:59', '2022-10-05 09:19:59'),
(5, 2, 2, 0, '2022-10-05 09:19:59', '2022-10-05 09:19:59'),
(6, 3, 2, 0, '2022-10-05 09:19:59', '2022-10-05 09:19:59'),
(7, 1, 3, 0, '2022-10-05 10:38:19', '2022-11-08 10:03:33'),
(8, 2, 3, 0, '2022-10-05 10:38:19', '2022-10-05 10:38:19'),
(9, 3, 3, 0, '2022-10-05 10:38:19', '2022-10-05 10:38:19'),
(10, 1, 4, 0, '2022-10-19 12:09:37', '2022-10-19 12:09:37'),
(11, 2, 4, 0, '2022-10-19 12:09:37', '2022-10-19 12:09:37'),
(12, 3, 4, 0, '2022-10-19 12:09:37', '2022-10-19 12:09:37'),
(13, 1, 5, 1, '2022-10-31 10:27:14', '2023-11-11 13:52:42'),
(14, 2, 5, 0, '2022-10-31 10:27:14', '2023-11-11 13:52:42'),
(15, 3, 5, 0, '2022-10-31 10:27:14', '2022-10-31 10:27:14'),
(16, 1, 6, 0, '2022-11-07 10:10:11', '2022-11-07 10:10:11'),
(17, 2, 6, 0, '2022-11-07 10:10:11', '2022-11-07 10:10:11'),
(18, 3, 6, 0, '2022-11-07 10:10:11', '2022-11-07 10:10:11'),
(19, 1, 7, 0, '2022-11-19 08:49:30', '2022-11-19 08:49:30'),
(20, 2, 7, 0, '2022-11-19 08:49:30', '2022-11-19 08:49:30'),
(21, 3, 7, 0, '2022-11-19 08:49:30', '2022-11-19 08:49:30'),
(22, 1, 8, 0, '2023-05-20 11:45:18', '2023-05-20 11:45:18'),
(23, 2, 8, 0, '2023-05-20 11:45:18', '2023-05-20 11:45:18'),
(24, 3, 8, 0, '2023-05-20 11:45:18', '2023-05-20 11:45:18'),
(25, 1, 9, 0, '2023-05-31 14:46:54', '2023-05-31 14:46:54'),
(26, 2, 9, 0, '2023-05-31 14:46:54', '2023-05-31 14:46:54'),
(27, 3, 9, 0, '2023-05-31 14:46:54', '2023-05-31 14:46:54'),
(28, 1, 10, 0, '2023-07-29 08:57:40', '2023-07-29 08:57:40'),
(29, 2, 10, 0, '2023-07-29 08:57:40', '2023-07-29 08:57:40'),
(30, 3, 10, 0, '2023-07-29 08:57:40', '2023-07-29 08:57:40'),
(31, 1, 11, 0, '2023-08-14 07:40:51', '2023-08-14 07:40:51'),
(32, 2, 11, 0, '2023-08-14 07:40:51', '2023-08-14 07:40:51'),
(33, 3, 11, 0, '2023-08-14 07:40:51', '2023-08-14 07:40:51'),
(34, 1, 12, 0, '2023-12-07 07:13:18', '2024-01-15 16:05:09'),
(35, 2, 12, 0, '2023-12-07 07:13:18', '2023-12-07 07:13:18'),
(36, 3, 12, 0, '2023-12-07 07:13:18', '2023-12-07 07:13:18');

-- --------------------------------------------------------

--
-- Structure de la table `types_enseignements`
--

CREATE TABLE `types_enseignements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `types_enseignements`
--

INSERT INTO `types_enseignements` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'GENERAL', '2022-09-23 09:02:44', '2022-09-23 09:02:44'),
(2, 'TECHNIQUE', '2022-09-23 09:03:10', '2022-09-23 09:03:10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  `ecole_id` int(11) NOT NULL DEFAULT '0',
  `actif` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `ecole_id`, `actif`) VALUES
(1, 'GEMANDZE Christopher', NULL, 'onsocongo@gmail.com', NULL, '$2y$10$7BA8nbQS15nWlqLzi735LO2QAP0.grkixeLZSvww9Oa/JAXwMk9ue', NULL, NULL, NULL, 1, 0, 1),
(2, 'AKIELE Danhy', NULL, 'danhy.akiele@gmail.com', NULL, '$2y$10$RrNq4Kb/uxrrBOfZmqQ1f.nG/GkwFJt.f7URUtdBz1KE0ntZDCEiS', NULL, '2022-09-28 10:37:12', '2022-09-28 10:37:12', 2, 1, 1),
(3, 'IBARA Poriana', NULL, 'porianabre@gmail.com', NULL, '$2y$10$BHq0yN14bWEg.C3YvYPHwe4mynbXW02XUpx43GJg9/jDonIurg7am', NULL, '2022-10-05 09:19:59', '2022-10-05 09:19:59', 2, 2, 1),
(4, 'MANZA Patrick Edgar', NULL, 'patrickedgardmanza75@gmail.com', NULL, '$2y$10$OtzZK27tO3Gnb6KFOdC66./zX7yrB2N944cl0Qgk74RMn8/tSvT5a', NULL, '2022-10-05 10:38:19', '2022-10-05 10:38:19', 2, 3, 1),
(6, 'MILANDOU MBOUMINA Ghyslain', NULL, 'ghysmboumina@gmail.com', NULL, '$2y$10$KN5wng5YNb5Gag3hjoLxxu5VyxxiWENc98mYUDXNXRuxqV.52z.6G', NULL, '2022-10-31 10:27:14', '2022-10-31 10:27:14', 2, 5, 1),
(7, 'BANGA Donatien', NULL, 'bangadonatien773@gmail.com', NULL, '$2y$10$E21tGrJYSH5oTW3ygLq1UOrQdJ2eE8MNt00beex9c8nkg2LUPjzny', NULL, '2022-11-07 10:10:11', '2022-11-07 10:10:11', 2, 6, 1),
(8, 'ELENGA Darcia', '068747870', 'el.elenga@gmail.com', NULL, '$2y$10$doWewkpTDJmVNUbX7uM/hOssJdp.ARoaDzL5rmOd6Oeqz7.Jz6acy', NULL, '2022-11-11 10:04:06', '2022-11-11 10:04:06', 4, 1, 1),
(9, 'AKIELE Danhy', '069918144', 'dany.akiele.de@gmail.com', NULL, '$2y$10$uAj6MyprLXDXTamiz/ncOesEITI55eukj4gg3TJGAlNspfiknjUo2', NULL, '2022-11-11 10:06:41', '2022-11-11 10:06:41', 5, 1, 1),
(10, 'NDANTSOMI Jean-Baptiste', '068767996', 'ndantsomi@gmail.com', NULL, '$2y$10$MNJwGWl4v2nI5JyTTFAo0OSRZAHYurtMFGRWtbEFCaTK4HYTg2Az.', NULL, '2022-11-11 10:10:11', '2022-11-11 10:10:11', 8, 1, 1),
(11, 'NDENGUETH Gavel', '066173257', 'ndenguethgavel@gmail.com', NULL, '$2y$10$WrEFA5wnvGZRw21Mj9kyVuKRJgIQzCJMDcwDBbsVkilbluvujxTMi', NULL, '2022-11-11 10:36:58', '2022-11-11 10:36:58', 6, 0, 1),
(12, 'MBANI Freddy', '068444838', 'chanrestonhfreddy@gmail.com', NULL, '$2y$10$lfbtGMM/qTBH4a6mK1O7Le3iRodmuZxqDEkFl0BI37zcEY.yW.KzS', NULL, '2022-11-11 10:40:44', '2022-11-11 10:40:44', 6, 0, 1),
(13, 'NKITA Jacques Detaud', '069886612', 'nkitadetaud@gmail.com', NULL, '$2y$10$Ild.ImFkiL6bl6IQdHGWTuQvuu5JxQV9tuz8vWEIgkgN08h7sXSZW', NULL, '2022-11-11 10:43:04', '2022-11-11 10:43:04', 6, 0, 1),
(14, 'DOUTABOU MOUYAMA Ivan Yannick', '068051565', 'ivanyanickdoutabou@gmail.com', NULL, '$2y$10$CNbSoaNqGkwehqbPKlqsCeuQ4exodnsvu5L6D.42KHmCYC821ehrm', NULL, '2022-11-11 10:45:32', '2022-11-11 10:45:32', 6, 0, 1),
(15, 'TOUNTA Jud-Stella', '068661634', 'judstella@yahoo.fr', NULL, '$2y$10$Z0Isz8MNvIE9Q0glPm3hkOT5vnW.yTiksES3TkfrmdXqSXalGzCra', NULL, '2022-11-11 10:48:02', '2022-11-11 10:48:02', 6, 0, 1),
(16, 'SALABANZI Mey', '069275091', 'salabanzimeyadore@gmail.com', NULL, '$2y$10$Rmu/ffB44TR9N8pB9ogZ.uaNS882nm1x/ocB9gunY48KxPsuYkgSu', NULL, '2022-11-11 10:51:04', '2022-11-11 10:51:04', 6, 0, 1),
(17, 'OBAME Emmanuel', '069769652', 'eobame648@gmail.com', NULL, '$2y$10$mMpnGVln2B4CoR9IqUM1remcleTUeNBDYNAtwQxDBWTggG98Zg.3.', NULL, '2022-11-11 10:53:40', '2022-11-11 10:53:40', 6, 0, 1),
(18, 'MATOUMOUNA MBOUNGOU Sita Evrad', '064210086', 'evradmboungou1@gmail.com', NULL, '$2y$10$.y2OV7UAl3wfkHMpodg62uBv2slU45TErKqZfzTFNXIctLX1yzrR6', NULL, '2022-11-11 10:56:44', '2022-11-11 10:56:44', 6, 0, 1),
(19, 'GUETTE Frez Barol', '068131059', 'frezbarol75@gmail.com', NULL, '$2y$10$pSIfYP7UlSBha8qtXggVW.jf368mSs4LQbH0FstRiBgBWfCGEGsba', NULL, '2022-11-11 10:58:48', '2022-11-11 10:58:48', 6, 0, 1),
(20, 'NZAMBA Precieux Prince', '069618464', 'precieuxnzamba9@gmail.com', NULL, '$2y$10$YBnum8ngYpAsBvxw6nG6XubY0jXAEKm2Tz0vdUGEEnAHG646QIJge', NULL, '2022-11-11 11:00:57', '2022-11-11 11:00:57', 6, 0, 1),
(21, 'MOUKASSA Jeller', '060000001', 'jellermoukassa@gmail.com', NULL, '$2y$10$dye8i38dTS.0c2/qEW9v/OjsDz86OIejGprR2buE/NM1lIDq9mzwW', NULL, '2022-11-11 11:04:16', '2022-11-11 11:04:16', 6, 0, 1),
(22, 'OBAME Emmanuel (College)', '060000002', 'obame648@gmail.com', NULL, '$2y$10$ypl5KGLueCdiyTUJP6FhC.tJRVq0YGDy9inEqHI60xNgYc/7PYO82', NULL, '2022-11-11 11:07:28', '2022-11-11 11:07:28', 6, 0, 1),
(23, 'NGOMA-NGUIMBI Charden', '065836730', 'prof001@gmail.com', NULL, '$2y$10$z01nkRTBlyEE9.9jImCVk.cKLa7599cfuplLABT5ptDYTTN8x04kG', NULL, '2022-11-11 11:11:55', '2022-11-11 11:11:55', 6, 0, 1),
(24, 'IPEMOESSO Eudes', '066362754', 'prof002@gmail.com', NULL, '$2y$10$n0MqkF8jHxbuyTHY9Qf2tuivLtmWpg4az0EVma9EzvKdImEV7PgEm', NULL, '2022-11-11 11:14:31', '2022-11-11 11:14:31', 6, 0, 1),
(25, 'NGOUA Gaston', '060000003', 'prof003@gmail.com', NULL, '$2y$10$oMrxOINYaIc8UEe71jantuvuy6zd2VAJLeUSNw7z1H1OEtNMINFnW', NULL, '2022-11-11 11:17:59', '2022-11-11 11:17:59', 6, 0, 1),
(26, 'NDOMBO Junior', '064082068', 'prof004@gmail.com', NULL, '$2y$10$/RBXD2vlx1V5ryTmRH8ez.X632xpyXEj16dLklIi.0vGWv3dOUiku', NULL, '2022-11-11 11:19:52', '2022-11-11 11:19:52', 6, 0, 1),
(27, 'NGOSSOKO Darius Saturnin', '068902393', 'prof005@gmail.com', NULL, '$2y$10$ZT/rgTlhbc/h3fSC0l49wud5QYktA32MGNJSKG47cylPUn0CsnzGy', NULL, '2022-11-11 11:23:45', '2022-11-11 11:23:45', 6, 0, 1),
(28, 'MACKITA-DZONDO Mither Fraland', '064885599', 'prof006@gmail.com', NULL, '$2y$10$7SV1820WPyWy7ugxPII25.wjhHvRT7DfTHhaI638J9JHy.lJJrpCi', NULL, '2022-11-11 11:25:35', '2022-11-11 11:25:35', 6, 0, 1),
(29, 'OYI OYOUA Harnod Mithra', '069325392', 'prof007@gmail.com', NULL, '$2y$10$DPV5cMY.qx4NQARJLEFuk.AiFgPPmIlhOFkqAAdG2.8Vaq93sSERe', NULL, '2022-11-11 11:27:52', '2022-11-11 11:27:52', 6, 0, 1),
(30, 'OYI OYOUA Harnod Mithra (College)', '060000004', 'prof008@gmail.com', NULL, '$2y$10$Uf5f9uA4fmRKDcVuTLydaekgBICa3BsJvRZt7cp6FHpaXEzCf/0.a', NULL, '2022-11-11 11:29:39', '2022-11-11 11:29:39', 6, 0, 1),
(31, 'AKOUE Francis', '064720034', 'prof009@gmail.com', NULL, '$2y$10$NdzUR5RE/cTzdTu/FbwayeGzn1PClG5h.e7UAUHsDP1vwthiLj1hi', NULL, '2022-11-11 11:32:20', '2022-11-11 11:32:20', 6, 0, 1),
(32, 'LOUBAKI Lionel Porcelas', '064069549', 'prof0010@gmail.com', NULL, '$2y$10$A0n.WYoEyhKsJPAJcYJ5LO.yH5N/YNVMu0khVqw2l9e1H4N7UYcLi', NULL, '2022-11-11 11:34:29', '2022-11-11 11:34:29', 6, 0, 1),
(33, 'LOUBAKI Lionel Porcelas', '060000006', 'prof0011@gmail.com', NULL, '$2y$10$xL4pZaasMoHumSca23dBLuGV9D7DPYTPCMzAJwN1lFVg.G1BBXHRa', NULL, '2022-11-11 11:36:17', '2022-11-11 11:36:17', 6, 0, 1),
(34, 'MPASSI Rufin Achille', '068048638', 'prof0012@gmail.com', NULL, '$2y$10$.FzwaBFp9JuO2RoteitCw.zzyVSsjsPPUIqnRpvImm1v9Hnminmdm', NULL, '2022-11-11 11:37:34', '2022-11-11 11:37:34', 6, 0, 1),
(35, 'MFOUKOU Serge', '064354393', 'prof0013@gmail.com', NULL, '$2y$10$fMAHCPItEgKdT.KcJvTuyOR4Al6G.Bk4GRui71KIvCiKpLBOc89kG', NULL, '2022-11-11 11:39:37', '2022-11-11 11:39:37', 6, 0, 1),
(36, 'IYEMBI Paterne', '066586528', 'prof0014@gmail.com', NULL, '$2y$10$yRTm.Mrtn1fiIj/SGfkMz.ilYIB7pOCimdfhaZGvO0AN9FpvqCi4.', NULL, '2022-11-11 11:41:53', '2022-11-11 11:41:53', 6, 0, 1),
(37, 'IYEMBI Paterne', '060000007', 'prof0015@gmail.com', NULL, '$2y$10$rHB5cIrSQCZI56700k4PfuiO5cn6OdfxK1GZUHDNA6/LJLm8agZ3m', NULL, '2022-11-11 11:43:15', '2022-11-11 11:43:15', 6, 0, 1),
(38, 'NGATALI Fabrice', '069262211', 'prof0016@gmail.com', NULL, '$2y$10$bp0dAnbIYxFU8LksO2rIH.XUk/AsgMnqKNJnGQt6qYQ73.xWTYUH6', NULL, '2022-11-11 11:47:49', '2022-11-11 11:47:49', 6, 0, 1),
(39, 'NGATALI Fabrice', '055420111', 'prof0017@gmail.com', NULL, '$2y$10$5RMqCfIcm8mZD/lTzN4fz.Ba1a7ujScVHu8sy21YOdi4GLIwmIDOy', NULL, '2022-11-11 11:49:21', '2022-11-11 11:49:21', 6, 0, 1),
(40, 'LOEMBHT Belor Joseph', '065854239', 'prof0018@gmail.com', NULL, '$2y$10$I4NRiUsXJDOQFzY6Ew4AKOWbgTBIAuu/d7w43tO5Hnbyn4QWNNi4K', NULL, '2022-11-11 12:51:15', '2022-11-11 12:51:15', 6, 0, 1),
(41, 'MALONGA Claise', '066928287', 'prof0019@gmail.com', NULL, '$2y$10$wgcMa3osDr3feziRDdLezeMx7Fpx3e71gBTQljOKnemnOMbDhL5Gy', NULL, '2022-11-11 12:53:08', '2022-11-11 12:53:08', 6, 0, 1),
(42, 'MASSALA Franck', '069749367', 'prof0020@gmail.com', NULL, '$2y$10$EipXTvH5GaTwIvxk76kmL.ZytGZyCN.80BDIFdsG0vBgTjn63/Hza', NULL, '2022-11-11 12:54:56', '2022-11-11 12:54:56', 6, 0, 1),
(43, 'PAMBOU  Noa', '066654198', 'pambounoa@gmail.com', NULL, '$2y$10$MIJN/H5177W1NKYFeF2aL.3rNL6Ypx0PsJpf/a.v.bFhR21o6w07K', NULL, '2022-11-11 21:25:39', '2023-10-05 12:47:23', 7, 1, 1),
(44, 'AKOUALA Steve', NULL, 'steve.akouala@gmail.com', NULL, '$2y$10$nXb235amJMZeZ6FXsZ.Q3uRTio6SINpuGNEHfUJ4Pv8dUzZXe4yYq', NULL, '2022-11-19 08:49:30', '2022-11-19 08:49:30', 2, 7, 1),
(45, 'ELISE', '069439644', 'info@ecole-lesdauphins.com', NULL, '$2y$10$.daUwzlKwW4chrhmPAphl.E8P3.YROaodFmyuERwCmQi0/6VjiEJK', NULL, '2022-11-19 09:12:32', '2022-11-19 09:12:32', 4, 7, 1),
(47, 'LIKIBI NGOMA Jaudrel Nanouche', '200', 'Jaudrellikibi186@gmail.com', NULL, '$2y$10$5lR45VS1EEB2w85kcYf5wOu.8x98ABC6QCfIsloXo4KpjG2eCDqeu', NULL, '2022-12-05 05:39:19', '2022-12-05 05:39:19', 6, 0, 1),
(48, 'BOUDZOUMOU LOUKENGO Tana Louise', '201', 'tanalouise@mail.com', NULL, '$2y$10$GwnBTe7JjwetDqi4zpWCNO2HASrCerrKbLEziDtsFRG3IzdsP7Vrq', NULL, '2022-12-05 05:41:07', '2022-12-05 05:41:07', 6, 0, 1),
(49, 'BETTE TIEMOUNAH Piersie Philippez Prince', '202', 'piersieprincebette@gmail.com', NULL, '$2y$10$2jkfMcOW3X84EAx0cPUpIeLPwBZp3ruuPavWzXq029i2s.NvhtFu6', NULL, '2022-12-05 05:43:40', '2022-12-05 05:43:40', 6, 0, 1),
(50, 'NSANGUI Henice Divine', '204', 'divnangui@gmail.com', NULL, '$2y$10$rodV3ulghPNvedC0PbrMQ.uZv.orS8LnFqtZwa0JSwkzTHC0Mw112', NULL, '2022-12-05 05:45:22', '2022-12-05 05:45:22', 6, 0, 1),
(51, 'MAMPOUYA MPAMBOU Dena Reine', '205', 'denareine@mail.com', NULL, '$2y$10$ejm0kP7vHg2CZtqmSTNh1uXWwOb0TrxQLJ5aoizfShLYugwsfpZOy', NULL, '2022-12-05 05:46:48', '2022-12-05 05:46:48', 6, 0, 1),
(52, 'BACKALA NANITELAMIO Judrick Emmany', '206', 'backalajudrick@gmail.com', NULL, '$2y$10$M0L.spAztjXAH5RyP4zL/eczYUMvUQH4ackpqrkIEyrJaANqrdJrK', NULL, '2022-12-05 05:50:42', '2022-12-05 05:50:42', 6, 0, 1),
(53, 'MFOULA Froelich Merveil', '207', 'MerveilMfoula7@gmail.com', NULL, '$2y$10$xl/Z0kCIA97mvjNLYcgCxObNhCu1cPQHL6i9OGRqgZjUhI0UBQDke', NULL, '2022-12-05 05:52:21', '2022-12-05 05:52:21', 6, 0, 1),
(54, 'NZAZI MAKONDOU Dachy Brunel Clevy', '208', 'DachyBrunel@mail.com', NULL, '$2y$10$rwRkM87CGVAdovFY6TGr3eKQPxrhu1BKiF7poCkmTur/1QWvWqS.a', NULL, '2022-12-05 05:54:24', '2022-12-05 05:54:24', 6, 0, 1),
(55, 'MFOULA Michel', '209', 'mfoulichel@gmail.com', NULL, '$2y$10$TbZaokVCwlciOYThsjtV8.9gEgsulGOek7lIkKTMa3/Exbl4pddai', NULL, '2022-12-05 05:56:21', '2022-12-05 05:56:21', 6, 0, 1),
(56, 'MAKAYA Fabrice Régis', '210', 'fabriceregis@mail.com', NULL, '$2y$10$SbOz11.LchPBA1sADAlZm.o9f8oKW1EDjeRKAUEU.apV2uLSwNCqS', NULL, '2022-12-05 05:58:20', '2022-12-05 05:58:20', 6, 0, 1),
(57, 'NZOUSSI MAHINDOU Freilghat', '211', 'Freilghat@mail.com', NULL, '$2y$10$fd7Sdh5kMmI9npPLx0B5WeCOMEOTqZ2huPDMbYG5XFv2G/l7Jmhf.', NULL, '2022-12-05 05:59:48', '2022-12-05 05:59:48', 6, 0, 1),
(58, 'YILA -', '212', 'yila@mail.com', NULL, '$2y$10$/ToW8Q15IRDwU4Wv7tNB8e6Q12Dxm1LSl58/hoW4YrpC1ULFaiFCO', NULL, '2022-12-05 06:01:09', '2022-12-05 06:01:09', 6, 0, 1),
(59, 'BOUKOUANGOU Claude Jackson', '213', 'Claudej.BOUKOUANGOU@gmail.com', NULL, '$2y$10$5qsE0I4UWkCsqdhhEgiBmeSW2LAIeFRfHAYAVkx2xyQkOxhIEQMOK', NULL, '2022-12-05 06:02:57', '2022-12-05 06:02:57', 6, 0, 1),
(62, 'x', '435', 'p435@mail.com', NULL, '$2y$10$r0j1Lq9Lwh9Y4ZL/8sczseGLSQKcz7WH.0HDuoXyHlnK2RtRqMeyS', NULL, '2022-12-15 14:32:36', '2022-12-15 14:32:36', 7, 5, 1),
(63, 'x', '436', 'p436@mail.com', NULL, '$2y$10$xo.gpJ1.UNuZWVZGLFEy9eVVrpBPBPKHAZCe1Bhq6UCtC.uAjnRvC', NULL, '2022-12-15 14:40:34', '2022-12-15 14:40:34', 7, 5, 1),
(64, 'x', '437', 'p437@mail.com', NULL, '$2y$10$4H4ftueJokZ3dRdQjO7oc.Qsg9CjyXK50BjCzGAsOUr.9ne51UhHS', NULL, '2022-12-15 14:41:52', '2022-12-15 14:41:52', 7, 5, 1),
(65, 'x', '438', NULL, NULL, '$2y$10$IpdBMi6klfbPsK6001agIe1FIF50ql3BiC9mYJwEV.6ns65.eQZUe', NULL, '2022-12-15 14:43:03', '2022-12-15 14:43:03', 7, 5, 1),
(66, 'x', '439', 'p439@mail.com', NULL, '$2y$10$UdNFj.t2MFxKuC60FSYRrOwy7HfAdk2L9DTJkzonBd8AbLbiDvJNO', NULL, '2022-12-15 14:51:19', '2022-12-15 14:51:19', 7, 5, 1),
(67, 'x', '440', 'p440@mail.com', NULL, '$2y$10$zXckFKK3//D4syeqt7vNJuaGvY6jFDJmkrOKDKjRNKJfsmrYfG4rG', NULL, '2022-12-15 14:52:34', '2022-12-15 14:52:34', 7, 5, 1),
(68, 'x', '441', 'p441@mail.com', NULL, '$2y$10$vNyKLWDzd.LVJc0NddnyquYAHjf8lur15XbL23U.nt6WJfnVv7J.u', NULL, '2022-12-15 14:53:40', '2022-12-15 14:53:40', 7, 5, 1),
(69, 'x', '442', 'p442@mail.com', NULL, '$2y$10$upEAe3zCG/JL1Dn.oWYA5ei3KNszZagH.zTpYW3gCPDYS4C2DLkQG', NULL, '2022-12-15 14:54:54', '2022-12-15 14:54:54', 7, 5, 1),
(70, 'x', '443', 'p443@mail.com', NULL, '$2y$10$LWxo.zglr2W3h6aKrmCqfubsRSMhJTrAPcGf0WBeNV1IkkFwhte9C', NULL, '2022-12-15 14:56:08', '2022-12-15 14:56:08', 7, 5, 1),
(71, 'x', '444', 'p444@mail.com', NULL, '$2y$10$q7XVSDoM4/Nz8IBK1YPZReViYkw5D10P7zyLc9.okYw7oNtXOpeau', NULL, '2022-12-15 14:57:16', '2022-12-15 14:57:16', 7, 5, 1),
(72, 'x', '445', 'p445@mail.com', NULL, '$2y$10$BZckJn3aYp1fdOKZO26FAOJeoRtIZ4jxGEAnc8a6QHJiuJMb17iE.', NULL, '2022-12-15 14:58:22', '2022-12-15 14:58:22', 7, 5, 1),
(73, 'x', '446', 'p446@mail.com', NULL, '$2y$10$E3TtGcp4fiMXs7ND5XjqpOcX0qFT7TXPEfvGIAmp4KLDaOXGMmIqm', NULL, '2022-12-15 14:59:32', '2022-12-15 14:59:32', 7, 5, 1),
(74, 'x', '447', 'p447@mail.com', NULL, '$2y$10$kGhbMmzCofNuFtMxCs5KD.sF.tKfDn8kzH7Nsq5BApyttJp.KaQWS', NULL, '2022-12-15 15:01:02', '2022-12-15 15:01:02', 7, 5, 1),
(75, 'x', '448', 'p448@mail.com', NULL, '$2y$10$G3m7vytDwO7WYdPIwbkqtucYd6oOruxLPQXZLSbUOakwzY0FuC5nG', NULL, '2022-12-15 15:02:05', '2022-12-15 15:02:05', 7, 5, 1),
(76, 'x', '449', 'p449@mail.com', NULL, '$2y$10$4eC.P/pbdYulfzRNAqBF/O9W6ymKUdTfAkoBPGBllVR.saKU0.inC', NULL, '2022-12-15 15:03:50', '2022-12-15 15:03:50', 7, 5, 1),
(77, 'x', '450', 'p450@mail.com', NULL, '$2y$10$6wiuClfQezy./lhClbljD.CqDrbWZM9t87.hs4iHxdVVAIMLnV/ZW', NULL, '2022-12-15 15:05:16', '2022-12-15 15:05:16', 7, 5, 1),
(78, 'x', '451', 'p451@mail.com', NULL, '$2y$10$anyQObQ7/0a8aJhYvRgS7enqMBOf6.kA/pg6rN8LGQtI7iPe/LanO', NULL, '2022-12-15 15:06:50', '2022-12-15 15:06:50', 7, 5, 1),
(79, 'x', '452', 'p452@mail.com', NULL, '$2y$10$Fhwiqsl/FCuuG4STtDsta.bF8H7I5qfTPehv7w01HOh/eu3mI5sE2', NULL, '2022-12-15 15:07:58', '2022-12-15 15:07:58', 7, 5, 1),
(80, 'x', '453', 'p453@mail.com', NULL, '$2y$10$/sJg8xB/UqD8bwGNw55pvu6hQ3DhxqabX2syNqXiytFFcyQUy94/G', NULL, '2022-12-15 15:08:57', '2022-12-15 15:08:57', 7, 5, 1),
(81, 'x', '454', 'p454@mail.com', NULL, '$2y$10$Ar5i8wpRtLhGa/hEVXKK7.L1yKNq9KJp8yBTRJ.fXIbjdfZs4TYIu', NULL, '2022-12-15 15:10:15', '2022-12-15 15:10:15', 7, 5, 1),
(82, 'x', '455', 'p455@mail.com', NULL, '$2y$10$CuK0ZWvlqdzGYhfn3LD4.eyny60OIKnZpdVCBj51p5xXI95yt/E0y', NULL, '2022-12-15 15:11:11', '2022-12-15 15:11:11', 7, 5, 1),
(83, 'x', '456', 'p456@mmail.com', NULL, '$2y$10$lu9zLItoptoZ9E0VM1vqhuBnDSYlr/plQgjIGaCM7QI.hRlSEVXgK', NULL, '2022-12-15 15:12:21', '2022-12-15 15:12:21', 7, 5, 1),
(84, 'x', '457', 'p457@mail.com', NULL, '$2y$10$fPGgJyV2YTl6kKNfGhPrwuoFAdtsULDCH2oHmqsC3UHHlN9pB1aY2', NULL, '2022-12-15 15:14:03', '2022-12-15 15:14:03', 7, 5, 1),
(85, 'x', '458', 'p458@mail.com', NULL, '$2y$10$Nryy.szCy7DxZIzsUU.O8uquL5XHFq0g5rPQzlKI.QI7QMtHqD0sy', NULL, '2022-12-15 15:15:09', '2022-12-15 15:15:09', 7, 5, 1),
(86, 'x', '459', 'p459@mail.com', NULL, '$2y$10$Q2AlqYoQUQvvqHfYobmf..9Hkm3BzITtS.1Q4gdMtzCUZNAgmY7Fm', NULL, '2022-12-15 15:16:27', '2022-12-15 15:16:27', 7, 5, 1),
(87, 'x', '460', 'p460@mail.com', NULL, '$2y$10$e03VTLkO6Xi/RCS7w0n7kefLmEn8N6veiZMIJhySE3NWjVYBk242m', NULL, '2022-12-15 15:17:50', '2022-12-15 15:17:50', 7, 5, 1),
(88, 'x', '461', 'p461@mail.com', NULL, '$2y$10$Mpr4fXUrR4nr0QLd3qeA5OqmqLU0H23jLLZqgMnfHgJV7AvkfasxO', NULL, '2022-12-15 15:19:03', '2022-12-15 15:19:03', 7, 5, 1),
(89, 'x', '462', 'p462@mail.com', NULL, '$2y$10$0HpOKnJVT22BI0ZrnGJ30.tKQIG76EnhQ7bh6HJ8XPKWuyQBUnjHi', NULL, '2022-12-15 15:20:23', '2022-12-15 15:20:23', 7, 5, 1),
(90, 'x', '463', 'p463@mail.com', NULL, '$2y$10$5xndhFLPy9j6AWZbpEAC8O8FNCAN8iCfigkhlKTtSk4BqkwQPLx8.', NULL, '2022-12-15 15:21:54', '2022-12-15 15:21:54', 7, 5, 1),
(91, 'x', '464', 'p464@mail.com', NULL, '$2y$10$vHaYCGZ8CIplakONH47MuuBHWxHW3RBGXU6GDlxMogNGCYdGQcRH.', NULL, '2022-12-15 15:23:12', '2022-12-15 15:23:12', 7, 5, 1),
(92, 'x', '465', 'p465@mail.com', NULL, '$2y$10$xZBK97xFVbX3Deu2fJorpeY.aJVBkIz7sEi6RLbkgVDF6juc1oRq6', NULL, '2022-12-15 15:24:26', '2022-12-15 15:24:26', 7, 5, 1),
(93, 'x', '466', 'p466@mail.com', NULL, '$2y$10$4K7rfoj9OWGFpX6D8gtdpezXFnxWVtsWlUow78FfvuFvx84RL5pQm', NULL, '2022-12-15 15:25:28', '2022-12-15 15:25:28', 7, 5, 1),
(94, 'x', '467', 'p467@mail.com', NULL, '$2y$10$cL311rta/Upm1mHIeRDoy.1D7s2L2bva4Oznx/7qF/G4SpezkPP/S', NULL, '2022-12-15 15:26:29', '2022-12-15 15:26:29', 7, 5, 1),
(95, 'x', '468', 'p468@mail.com', NULL, '$2y$10$qHVsrlsyEcjNuc0jzUHkqe9AB2nQA.2xdv/jIhsgRCv6Vn7iMKf9u', NULL, '2022-12-15 15:27:39', '2022-12-15 15:27:39', 7, 5, 1),
(96, 'x', '469', 'p469@mail.com', NULL, '$2y$10$GXd1TLS.7bzwAPtGx9GqKOuZVWQEiJTfHci0nvy3K9ax304/9cN.a', NULL, '2022-12-15 15:28:57', '2022-12-15 15:28:57', 7, 5, 1),
(97, 'x', '470', 'p470@mail.com', NULL, '$2y$10$X4WMkRKLIwz98I0WXU2Z3eMbXe9bNNL9n6.c5hLP0mYtSsM6Y4jyC', NULL, '2022-12-15 15:30:23', '2022-12-15 15:30:23', 7, 5, 1),
(98, 'x', '471', 'p471@mail.com', NULL, '$2y$10$oy0l.urB4f5zVBfDOkTB8OidwVHIEC3ZXEqJpQErdKk6yaWKi7.YC', NULL, '2022-12-15 15:32:19', '2022-12-15 15:32:19', 7, 5, 1),
(99, 'x', '472', 'p472@mail.com', NULL, '$2y$10$L4XTklp2BMYA/Ij3lK.7mul6Wp9krY3vQqUXr0nuAjiuXE6c5EGSq', NULL, '2022-12-15 15:33:38', '2022-12-15 15:33:38', 7, 5, 1),
(100, 'x', '473', 'p473@mail.com', NULL, '$2y$10$q4IHJjzRXRsaJPf13Y5ZyOEElXuVb35NYGcBiwi4XWnSaPfOWjSG.', NULL, '2022-12-15 15:34:38', '2022-12-15 15:34:38', 7, 5, 1),
(101, 'x', '474', 'p474@mail.com', NULL, '$2y$10$pzvp3ty1pO/9QDVayHLo..OVnf2g.X4Mk8vZBITaFc8qTXK8VM7ji', NULL, '2022-12-15 15:35:39', '2022-12-15 15:35:39', 7, 5, 1),
(102, 'x', '475', 'p475@mail.com', NULL, '$2y$10$wRVPTophyUyLb59o5ixa6eetFQ8Ejr24bLw/vkMjNJo0.HTsmGFS6', NULL, '2022-12-15 15:36:51', '2022-12-15 15:36:51', 7, 5, 1),
(103, 'x', '476', 'p476@mail.com', NULL, '$2y$10$l0E5gUHGAQqOEAt7YzLnq.075R9IAZj.yxFe.u2GmI0D2BKhoemB.', NULL, '2022-12-15 15:37:50', '2022-12-15 15:37:50', 7, 5, 1),
(104, 'x', '477', 'p477@mail.com', NULL, '$2y$10$8YUiqf5ygPELcz.i5hdV8evR6CGDjS2rpdWoe05EE07O3YL/Bu3zO', NULL, '2022-12-15 15:39:05', '2022-12-15 15:39:05', 7, 5, 1),
(105, 'x', '478', 'p478@mail.com', NULL, '$2y$10$.Y0bkJuhdYplVGMoIHsv0uS9FJR8ACvb6iNIbS21DcHsOCKdI1Oqu', NULL, '2022-12-15 15:40:07', '2022-12-15 15:40:07', 7, 5, 1),
(106, 'x', '479', 'p479@mail.com', NULL, '$2y$10$vyZYUyAkdagNhwiKMh7pgOfQie22nFUV.EAInpvYliY4JbQNiHhYC', NULL, '2022-12-15 15:41:08', '2022-12-15 15:41:08', 7, 5, 1),
(107, 'x', '480', 'p480@mail.com', NULL, '$2y$10$i3F8wTe8sW4srA8RWyNZVO1d74/8sksirC6cb1oZOnFwv6rZUgO32', NULL, '2022-12-15 15:42:11', '2022-12-15 15:42:11', 7, 5, 1),
(108, 'x', '481', 'p481@mail.com', NULL, '$2y$10$MN1DpWAS85Y1KMUfkFkTA.zM100z4z.EAz2uVkw/.PZMFG8Hsdohi', NULL, '2022-12-15 15:43:07', '2022-12-15 15:43:07', 7, 5, 1),
(109, 'x', '482', 'p482@mail.com', NULL, '$2y$10$AI.upfKJXKzsqW9mg2V22e/4Lyj1id6ILvxEesmCzgKInTWiweKSK', NULL, '2022-12-15 15:44:18', '2022-12-15 15:44:18', 7, 5, 1),
(110, 'x', '483', 'p483@mail.com', NULL, '$2y$10$UMUPkuMe9wC6oDKLjRqpPu2bwCJJ3mE.oaV6b78/TumRhf9czJkZK', NULL, '2022-12-15 15:45:53', '2022-12-15 15:45:53', 7, 5, 1),
(111, 'x', '484', 'p484@mail.com', NULL, '$2y$10$mcLqYcZPfMaOtE0eHpftDuOiJko0RiZTPd0iolF3l8ri7oTxSgdra', NULL, '2022-12-15 15:46:51', '2022-12-15 15:46:51', 7, 5, 1),
(112, 'x', '485', 'p485@mail.com', NULL, '$2y$10$fhFxr760hZFB7O3/XS8mLuu/IrCJrmofvbXvyUQE4Ek1WSsS45e2e', NULL, '2022-12-15 15:48:20', '2022-12-15 15:48:20', 7, 5, 1),
(113, 'x', '486', 'p486@mail.com', NULL, '$2y$10$hgElemLa3k1EJ7dOufynLOqSZdoCJtPG7Ou51s8z2mg9LtSxvbjY6', NULL, '2022-12-15 15:49:25', '2022-12-15 15:49:25', 7, 5, 1),
(114, 'x', '487', 'p487@mail.com', NULL, '$2y$10$R294aT8PO2vAPgWx29plReV4QU9qhJYbQ/FeAT8tQ0WJ0Cmg5Q0xC', NULL, '2022-12-15 15:50:46', '2022-12-15 15:50:46', 7, 5, 1),
(115, 'x', '488', 'p488@mail.com', NULL, '$2y$10$TLIyfX/BmSP/Egpsi1yXpeM..WfnF7xQ43khTjfPUKYOxLeVDp2Ny', NULL, '2022-12-15 16:11:31', '2022-12-15 16:11:31', 7, 5, 1),
(116, 'x', '489', 'p489@mail.com', NULL, '$2y$10$668LdG/12e8TkubQ0HckrOoOEk8T4ARFzx7meqOa/h7uHt9/zu70G', NULL, '2022-12-15 16:12:42', '2022-12-15 16:12:42', 7, 5, 1),
(117, 'x', '490', 'p490@mail.com', NULL, '$2y$10$/ZuJWKIwsPtFGKqGiE2GKOoYQIStpjPMEJD4i5t2wkUKNX3TBkabm', NULL, '2022-12-15 16:14:08', '2022-12-15 16:14:08', 7, 5, 1),
(118, 'x', '491', 'p491@mail.com', NULL, '$2y$10$xbGWVLDmMd4QIxxmQBcyJ.dKiqTAJ7Cdd3PxR4eanZNhVPZ.VRVJ6', NULL, '2022-12-15 16:15:11', '2022-12-15 16:15:11', 7, 5, 1),
(119, 'x', '492', 'p492@mail.com', NULL, '$2y$10$NoFCY5S3AfY6SvmQOWPUgOY06CenLMfOdyp8u9SspHaSjqmP7WmAa', NULL, '2022-12-15 16:16:11', '2022-12-15 16:16:11', 7, 5, 1),
(120, 'x', '493', 'p493@mail.com', NULL, '$2y$10$BFveO04FGGEEeDXEVXrfM.eaptQhoyW0EVqik1RWJ0bbrxwHjoygy', NULL, '2022-12-15 16:17:51', '2022-12-15 16:17:51', 7, 5, 1),
(121, 'x', '494', 'p494@mail.com', NULL, '$2y$10$ILYX5u4pqYxXTbTwYFc.IuEANUS1out51dX78m/97CfztdAPyw/n6', NULL, '2022-12-15 16:18:56', '2022-12-15 16:18:56', 7, 5, 1),
(122, 'x', '495', 'p495@mail.com', NULL, '$2y$10$K9WKCDsBv41BVuMY5PIyFeNvgRwfxABpMT3M43bzOQlgGPSp1AoUC', NULL, '2022-12-15 16:20:11', '2022-12-15 16:20:11', 7, 5, 1),
(123, 'x', '496', 'p496@mail.com', NULL, '$2y$10$em1.k4efCUeYhEDnUUwWYurb2wryz9X6oIeustGuuMpllnXnmgbSi', NULL, '2022-12-15 16:21:07', '2022-12-15 16:21:07', 7, 5, 1),
(124, 'x', '497', 'p497@mail.com', NULL, '$2y$10$zJ1xHljztCTSpIj.RlPDOu5Kd3HFi3gzu.OyUULYvAX2JeMBt6sAu', NULL, '2022-12-15 16:22:26', '2022-12-15 16:22:26', 7, 5, 1),
(125, 'x', '498', 'p498@mail.com', NULL, '$2y$10$Ij4T/KnAcCUgXVZrMelBjOwJHRxOD7mqKkCwsG6Z9rv9OsR1SrwyO', NULL, '2022-12-15 16:23:50', '2022-12-15 16:23:50', 7, 5, 1),
(126, 'x', '499', 'p499@mail.com', NULL, '$2y$10$EXzcN0fX9WFdE00eYaORYudt9mqR.7oDoUiVSAIxDRUqYcnoiu4L.', NULL, '2022-12-15 16:24:51', '2022-12-15 16:24:51', 7, 5, 1),
(127, 'x', '500', 'p500@mail.com', NULL, '$2y$10$jj.psWmTNJoP5nnx/tcTxOyx1Dh/Btlx1rRGju1e0zZgfUPVl9I.W', NULL, '2022-12-15 16:25:56', '2022-12-15 16:25:56', 7, 5, 1),
(128, 'x', '501', 'p501@mail.com', NULL, '$2y$10$b/Eo..Ftv6ujyU47WlNUUuGaeC7YmB9RZ/dW54EoXgoFl0LwoZPSO', NULL, '2022-12-15 16:26:53', '2022-12-15 16:26:53', 7, 5, 1),
(129, 'x', '502', 'p502@mail.com', NULL, '$2y$10$jCi3DUNlSxX/35rn1qf8Ge186Elz1o7tdwUyV2kMAUTVNHn497oFm', NULL, '2022-12-15 16:28:32', '2022-12-15 16:28:32', 7, 5, 1),
(130, 'x', '503', 'p503@mail.com', NULL, '$2y$10$q/WkoOtbDSOje9WkUde7lO3wFYzBJqkH66R5osaalkleSod2v3LTO', NULL, '2022-12-15 16:29:38', '2022-12-15 16:29:38', 7, 5, 1),
(131, 'x', '504', 'p504@mail.com', NULL, '$2y$10$24xyi8mJTeMw5TWEVo43muUcgxf5Bb/qUR6AZ5Vpab6xspYpJsHWO', NULL, '2022-12-15 16:30:59', '2022-12-15 16:30:59', 7, 5, 1),
(132, 'x', '505', 'p505@mail.com', NULL, '$2y$10$25pfgTnTuJRcghNxqj8PlubAzbaCZ984gOUt21H.7ife9AOGKMzpy', NULL, '2022-12-15 16:34:37', '2022-12-15 16:34:37', 7, 5, 1),
(133, 'x', '506', 'p506@mail.com', NULL, '$2y$10$DORqHs/7oUZVFp8wQE/RCuiuipsiENFqenQL8qIc.i4bNikANqhlK', NULL, '2022-12-15 16:47:15', '2022-12-15 16:47:15', 7, 5, 1),
(134, 'x', '507', 'p507@mail.com', NULL, '$2y$10$pJ1krw/Kawk3eYvEofQd3.KBPYULOZ7./OPho7ZAA2QwTw/iBiN82', NULL, '2022-12-15 16:48:33', '2022-12-15 16:48:33', 7, 5, 1),
(135, 'x', '508', 'p508@mail.com', NULL, '$2y$10$LzjjE2OdctYmALpoO1s0zuqmZfIzWNwE.qlhUPQi.wo27xSXk6D0.', NULL, '2022-12-15 16:49:42', '2022-12-15 16:49:42', 7, 5, 1),
(136, 'x', '509', 'p509@mail.com', NULL, '$2y$10$G3FgiB0UbFC96D0eGhqYg.TOSavJcLJoBPXNWJ/SD69DdSCW7k9KW', NULL, '2022-12-15 16:50:40', '2022-12-15 16:50:40', 7, 5, 1),
(137, 'x', '510', 'p510@mail.com', NULL, '$2y$10$wA78QwSs5QFT3ibYDxHKIOJnIuYL.n2IAdTipdDCv1fNzds7NmFQK', NULL, '2022-12-15 16:51:49', '2022-12-15 16:51:49', 7, 5, 1),
(138, 'x', '511', 'p511@mail.com', NULL, '$2y$10$Mutu/OCLREE2l1rSl8vKfOqE/LQ5R0VpdIPMGeFa49KgMJY4uh1BS', NULL, '2022-12-15 16:53:21', '2022-12-15 16:53:21', 7, 5, 1),
(139, 'x', '512', 'p512@mail.com', NULL, '$2y$10$xu.0f/w.2P46Tl9UbeJbCefDrMZ0yKcAelkun4vaZMXOW/.YAQgkO', NULL, '2022-12-15 16:54:33', '2022-12-15 16:54:33', 7, 5, 1),
(140, 'x', '513', 'p513@mail.com', NULL, '$2y$10$8bKrhkgQJwpiFCrzqXU5y.HMsBSNbE3nGDYynbW3x6VkikZwXpGXe', NULL, '2022-12-15 16:55:31', '2022-12-15 16:55:31', 7, 5, 1),
(141, 'x', '514', 'p514@mail.com', NULL, '$2y$10$4SrecSUXjydKI.N2pDaE1eZAzNtY48eWGmFhokg/MEgEIvGB3mDmq', NULL, '2022-12-15 16:56:34', '2022-12-15 16:56:34', 7, 5, 1),
(142, 'x', '515', 'p515@mail.com', NULL, '$2y$10$EeYZis4sLDyjyLIpE6xHrOxmyW7GZuGpNxHzcCXj3ylEtjQwjV8H2', NULL, '2022-12-15 16:57:55', '2022-12-15 16:57:55', 7, 5, 1),
(143, 'x', '516', 'p516@mail.com', NULL, '$2y$10$q31tpe0ZYsFJbaPr6ZasROjaGkJxLYEsihun6GhmGbLb1zNry8osi', NULL, '2022-12-15 16:59:19', '2022-12-15 16:59:19', 7, 5, 1),
(144, 'x', '517', 'p517@mail.com', NULL, '$2y$10$cJSDgAHlK31sERfdak5BnuxV2IsBFdnPx7fB.VxQoZHdQyKi7Mkz.', NULL, '2022-12-15 17:00:56', '2022-12-15 17:00:56', 7, 5, 1),
(145, 'x', '518', 'p518@mail.com', NULL, '$2y$10$T9dBFPICc6HoLWMV1rAl6eoTlV/iMUdJJ5qIbcFWid5MEUxYykhSi', NULL, '2022-12-15 17:02:03', '2022-12-15 17:02:03', 7, 5, 1),
(146, 'x', '519', 'p519@mail.com', NULL, '$2y$10$/UW8f/SjYnS17Gbba0UCkuj8PUs648jl7BpOllCMgTL3GZ1H5aEGS', NULL, '2022-12-15 17:03:36', '2022-12-15 17:03:36', 7, 5, 1),
(147, 'x', '520', 'p520@mail.com', NULL, '$2y$10$lFfXZTkKwrMBFGYyV6CV8OHqJzMi9eWKdEtcajubOzNtq3TO1aSde', NULL, '2022-12-15 17:04:40', '2022-12-15 17:04:40', 7, 5, 1),
(148, 'x', '521', 'p521@mail.com', NULL, '$2y$10$4oo0F/URbvORzz/Pkq6YyuDE7gNnh74BhhWw/f6RUGGj7GZnDdtOK', NULL, '2022-12-15 17:06:17', '2022-12-15 17:06:17', 7, 5, 1),
(149, 'x', '522', 'p522@mail.com', NULL, '$2y$10$yz0Y8FBoiLvoZ7KQxeUmCe/hqd9HI3CIWKfogxsZ1.E64fIN27li6', NULL, '2022-12-15 17:20:57', '2022-12-15 17:20:57', 7, 5, 1),
(150, 'x', '523', 'p523@mail.com', NULL, '$2y$10$lrORD3If6X7YsxjqqKQfQeoFTNkyOX19D0W0/YVGSnQ6pasQL5bWy', NULL, '2022-12-15 17:22:08', '2022-12-15 17:22:08', 7, 5, 1),
(151, 'x', '524', 'p524@mail.com', NULL, '$2y$10$NWIE5wTrUrN9tNuYgdZ5.uhK9flBAwH3Impstr3VaIgFNk7Ye7iIS', NULL, '2022-12-15 17:23:10', '2022-12-15 17:23:10', 7, 5, 1),
(152, 'x', '525', 'p525@mail.com', NULL, '$2y$10$mJw2T2uGAOQBKeXzGmYN/.w.ywEqA9iC8OU18bS5NhdwMGHvZYN6m', NULL, '2022-12-15 17:24:07', '2022-12-15 17:24:07', 7, 5, 1),
(153, 'x', '526', 'p526@mail.com', NULL, '$2y$10$tyCxdUWp0IfYemfeX0Z2HuWuGErmmXq0srzRha1bNHwj3Y76HgCbe', NULL, '2022-12-15 17:25:17', '2022-12-15 17:25:17', 7, 5, 1),
(154, 'x', '527', 'p527@mail.com', NULL, '$2y$10$lb9gs1Dp1fnGQrA4u9HvyuH8k.vUudhLiRtxNMCvbtzCylJe8gnmu', NULL, '2022-12-15 17:26:32', '2022-12-15 17:26:32', 7, 5, 1),
(155, 'x', '528', 'p528@mail.com', NULL, '$2y$10$cdeSoTTwgETuhgo7vWJ1suwyKUIBwBvYaOcaddGrw/j54rNCBVAgi', NULL, '2022-12-15 17:27:22', '2022-12-15 17:27:22', 7, 5, 1),
(156, 'x', '529', 'p529@mail.com', NULL, '$2y$10$1GSTP5h6yv5KXgTV6.WzbeKWupIzPg9AuYYqSZvg/A3J0CWrHFBq.', NULL, '2022-12-15 17:29:00', '2022-12-15 17:29:00', 7, 5, 1),
(157, 'x', '530', 'p530@mail.com', NULL, '$2y$10$GCbWzajycxiJNMGv5fGGuOauoZ815fORdTfo1FQxjDrtKZgUUeO5S', NULL, '2022-12-15 17:30:05', '2022-12-15 17:30:05', 7, 5, 1),
(158, 'x', '531', 'p531@mail.com', NULL, '$2y$10$Yrc8Mt0Cfnl3Qek93XKv3.lY5lCg906Sw0/Eh0zt2xTgvVMWbjvCi', NULL, '2022-12-15 17:31:10', '2022-12-15 17:31:10', 7, 5, 1),
(159, 'x', '532', 'p532@mail.com', NULL, '$2y$10$ihM7QzFcsuSEb.t13J4ktO2PaNXRluQ8WrzZOsEW8.QlLv9809GB2', NULL, '2022-12-15 17:32:18', '2022-12-15 17:32:18', 7, 5, 1),
(160, 'x', '533', 'p533@mail.com', NULL, '$2y$10$KuZVnhpoUX/QhixP6Xn2fOb4MmeXAbsYE7V5kpED0s3uhxx5GTjKa', NULL, '2022-12-15 17:33:36', '2022-12-15 17:33:36', 7, 5, 1),
(161, 'x', '534', 'p534@mail.com', NULL, '$2y$10$5iC5SqlH2DN0rSZFz6gxm.YZWdkt/7OCrxxKOSrH8JPJmcNkAMEiW', NULL, '2022-12-15 17:34:41', '2022-12-15 17:34:41', 7, 5, 1),
(162, 'x', '535', 'p535@mail.com', NULL, '$2y$10$xRsfXfJ/4RzDGON63.kUSOHnP6O2E75zvCAx68e8MPnKzyzW2kT3K', NULL, '2022-12-15 17:35:40', '2022-12-15 17:35:40', 7, 5, 1),
(165, 'NSANA Gildas', NULL, 'jewels.dirgeneral@gmail.com', NULL, '$2y$10$z.DZoE8XOEAfCQHdDq332O7fEsrNX3KGrwAdiaXJsa/.H0Il.QWpa', NULL, '2023-05-20 11:45:18', '2023-05-20 11:45:18', 2, 8, 1),
(166, 'Louembet Marie Thérèse', NULL, 'cepl1pn@gmail.com', NULL, '$2y$10$qFeMxqHH1ZFZDxbm9Hq7U.WvneuzRqfd3Y2.8GqrHUogbl085.nYa', NULL, '2023-05-31 14:46:54', '2023-05-31 14:46:54', 2, 9, 1),
(167, 'MAVOUNGOU Aurelien', '066271234', 'aurelienmavoungou19@gmail.com', NULL, '$2y$10$SQVqRJnG4mH2CQu8S2ZmZOZPxOyXgkGTqjvApOJ8HzpJald6x3gji', NULL, '2023-06-14 07:12:42', '2023-06-14 07:12:42', 5, 9, 1),
(168, 'POATY NZINGA Delphine', '065880517', 'poatynzingadelphine@gmail.com', NULL, '$2y$10$3Qh4Gch.tcKTNa3ZmWmORO3BM3NjuVFEzV3nXSsMu/gBKmdXwKoUe', NULL, '2023-06-14 07:27:12', '2023-06-14 07:27:12', 4, 9, 1),
(169, 'LOEMBA NIAMBI Jean Richard', '055307841', 'loembajeanrichard22@gmail.com', NULL, '$2y$10$TiQw88lS88ixfmzvhEWrJeiMvuwNCRktxOwtpjqklpArThIbuAal2', NULL, '2023-06-14 07:41:50', '2023-06-14 07:41:50', 8, 9, 1),
(172, 'MADZOUMOU Kimberley', '065026914', 'kimberleymadzoumou@gmail.com', NULL, '$2y$10$wvg5LRXm99UWLO3e4CrutOrBdnDu.cgC9Rm9AXijMBVjbGUsRP2iC', NULL, '2023-07-01 07:00:24', '2023-07-01 07:00:24', 4, 5, 1),
(173, 'KAYA Victor', '065068809', 'kayavictor@mail.com', NULL, '$2y$10$8dSXzgSSmejsZ75/AQ6vdufiOx2oiyG2G3vaNnprwJUR9Oo6f9IAa', NULL, '2023-07-01 07:04:50', '2023-07-01 07:04:50', 5, 5, 1),
(174, 'MBOUMINA Burel', '065908787', 'burel1999@icloud.com', NULL, '$2y$10$7XTVqcr4432qWedToHsGFusQp1Ml24TyaAFuudaftikycMUhAsa12', NULL, '2023-07-01 07:12:03', '2023-07-01 07:12:03', 8, 5, 1),
(175, 'KIDIBA MATASSALA Bienvenu', '055159890', 'kidibabienvenu@mail.com', NULL, '$2y$10$zgOzUQ7iEHMdcvBLvBfTke0T/cK3Tv8pfkHqij.S42IfW/lX5CryC', NULL, '2023-07-01 07:59:34', '2023-07-01 07:59:34', 6, 0, 1),
(176, 'MBERI Juslain', '068396518', 'mberijuslain@mail.com', NULL, '$2y$10$IVo3tFARvluPlB.SL0sz5.pNwj/6cqVkwKMZZROxqw148idQQbtGG', NULL, '2023-07-01 08:06:55', '2023-07-01 08:06:55', 6, 0, 1),
(177, 'NDZOUSSI MAYINDOU Freilghat', '064494161', 'ndzoussifreilghat@mail.com', NULL, '$2y$10$l7vPlFiLqimzjQWSQ5TNuelcr096vi/AFbR2d/g0zDCrl.riLMGKy', NULL, '2023-07-01 08:09:02', '2023-07-01 08:09:02', 6, 0, 1),
(178, 'Chirac-Bilombo', NULL, 'chiracbilombo@gmail.com', NULL, '$2y$10$612VQP9TIqEvvOA4OXqPoeGyXxMwFusjkSdBq3ySGUkgssGXWBURG', NULL, '2023-07-29 08:57:40', '2023-07-29 08:57:40', 2, 10, 1),
(179, 'Mapembi Kelly', '066794665', 'mapembikelly@gmail.com', NULL, '$2y$10$kh2LQmUay9UrusbXbfHwuel5FcIELycTrPF6KQ81NSo/gzh/JUKSe', NULL, '2023-07-29 09:09:10', '2023-07-29 09:09:10', 4, 10, 1),
(180, 'Mapembi Kelly (D.E)', '044767538', 'mapembikellyde@gmail.com', NULL, '$2y$10$JZ7GAPNFw5opllSqtYTsk.sNWNVUlI01CKjkqKZgWWrza6JXpw17m', NULL, '2023-07-29 09:11:42', '2023-07-29 09:11:42', 5, 10, 1),
(181, 'Chirac-Bilombo', '067444638', 'chiracbilombosg@gmail.com', NULL, '$2y$10$0BWqjUJ3Itd1RTCl/nmZM.A1AhvjZ0Iz8/i9Qx78lYijmNsHKQRxG', NULL, '2023-07-29 09:14:03', '2023-07-29 09:14:03', 8, 10, 1),
(182, 'BIYO Basile Felicien', NULL, 'felicienbiyot70@gmail.com', NULL, '$2y$10$Rfs.i47jtn0bDVGR6TWRkO4nzqt55tDnN4XRCmvCQA5j0aoxCj6Qy', NULL, '2023-08-14 07:40:51', '2023-08-14 07:40:51', 2, 11, 1),
(183, 'Mme OUABELOUA Gaëlle', '069560441', 'biboligaelle@gmail.com', NULL, '$2y$10$8kwgkSnALiaavBX1nhV6meV.kp52E3/f2Jw3AZdrPIvtGGGrYgmeK', NULL, '2023-08-14 08:09:15', '2023-08-14 08:09:15', 4, 11, 1),
(184, 'KOUANDZI NGOUALA Maxime Côme', '066601777', 'maximekouandzi@gmail.com', NULL, '$2y$10$OToRT7Zc.3BH83nafEeZPOKpie0d9wM9h85fWAxBRJujFz00.KE4O', NULL, '2023-08-14 08:11:04', '2023-08-14 08:11:04', 5, 11, 1),
(185, 'KOUANDZI NGOUALA Maxime Côme', '056936191', 'surveillant.jf@mail.com', NULL, '$2y$10$LQOm47JRQ6PUQ2AXIkllu.eu97ipxcOS3CKeM5pf7/hJWEyDiyKOS', NULL, '2023-08-14 08:15:05', '2023-08-14 08:15:05', 8, 11, 1),
(186, 'BASSOUKIDI Roland', '055359501', 'tbouang@expressafrique-congo.com', NULL, '$2y$10$rPRFNxaic6UnXkfHZRhvjezM7frsRD5iZ8MkNGjgkSqF54RkY8Yv.', NULL, '2023-08-23 06:43:56', '2023-08-23 06:43:56', 7, 11, 1),
(187, 'KOUBAKA Arielle', '068909125', 'koubakaarielle@gmail.com', NULL, '$2y$10$C59KwWClj04pQ231bnMU0ew/77lMP6gZOutToCoRcsQaGRnZq4SiO', NULL, '2023-08-23 06:55:01', '2023-08-23 06:55:01', 7, 11, 1),
(188, 'DIAMAMBOU Glodi', '068372999', 'diamambouglodi@gmail.com', NULL, '$2y$10$sh0gcZ7KHIGFn1OdUVB/geKicA/XoqChg/QwKDfHln8Epw1ATHaDW', NULL, '2023-08-23 08:44:24', '2023-08-23 08:44:24', 6, 0, 1),
(189, 'DAMBA-DAMBA Karl Lezin', '066808810', 'karldamba9@gmail.com', NULL, '$2y$10$UCYNUXeOUTOw7ZWoL/vm0Oee.3H9F0UG55Y5KE7AjwhMviNvhnW9C', NULL, '2023-09-06 16:13:53', '2023-09-06 16:13:53', 6, 0, 1),
(190, 'BATOLA MOULOLO Clauffel Ghrâce', '065324345', 'clauffelbatola@gmail.com', NULL, '$2y$10$56a22CY17L7xLoZRHmeYUeFvyPal4MulEqrT2k/YRqeWTuGlkpamq', NULL, '2023-09-06 16:16:34', '2023-09-06 16:16:34', 6, 0, 1),
(191, 'BANZOUZI Alain', '067874809', 'banzouzialain@mail.com', NULL, '$2y$10$ALpMccBchj9BJrp.i3IhUuJD5psl9L07WEV8lTflle4kQ4ldKuGqC', NULL, '2023-09-06 20:40:39', '2023-09-06 20:40:39', 6, 0, 1),
(192, 'BOUALA LOUKOUBAMA Jhostavie Fils Jaspinis', '064409287', 'gpjhostaviebouala1995@gmail.com', NULL, '$2y$10$JaJ2GTcptgdq.syifx5WWu9lzAm8Je61KwK.tOTTBLqhZSblNbuk2', NULL, '2023-09-06 20:43:25', '2023-09-06 20:43:25', 6, 0, 1),
(193, 'KIMBEMBE Andre Brian', '066642704', 'kimbembeandre@mail.com', NULL, '$2y$10$2j/Y4VSuy1IKvUXWOsAf3eEJ1vtsppNU3vg/nlMZKaF.X8NS6cGdO', NULL, '2023-09-06 20:45:41', '2023-09-06 20:45:41', 6, 0, 1),
(194, 'MASSAKA Aristide', '055641306', 'massakaaristide@mail.com', NULL, '$2y$10$G.m7G.uQNr9orDAjaN0YZOlS9qwb7QgopZty6khL1B05sJMn1kfoi', NULL, '2023-09-06 20:57:25', '2023-09-06 20:57:25', 6, 0, 1),
(195, 'MOUKISSI Bonheur Lidwin', '066031446', 'bonheurmoukissi@gmail.com', NULL, '$2y$10$yI3KoQq2Kz.47ttONuWDTeL45lZCiFF8Z7wz9XcU0zWmTA78R.tza', NULL, '2023-09-06 21:00:13', '2023-09-06 21:00:13', 6, 0, 1),
(196, 'M\'POUO Bhely Anselme', '055234483', 'bhelyanselme@mail.com', NULL, '$2y$10$tiWhcrd.g6zy1JBCODdcGuL1TK1TGOwj1RVsWEgjfM.NS/HfTPQne', NULL, '2023-09-06 21:02:32', '2023-09-06 21:02:32', 6, 0, 1),
(197, 'NGOMA WANDO Chela Elven Vanny', '064195676', 'ngomawando@gmail.com', NULL, '$2y$10$9VI4Gafo9HdSbRO.3p6i9u4VCLvXp/3O61cMeI3Aoh0MBGDjk3XuG', NULL, '2023-09-06 21:04:43', '2023-09-06 21:04:43', 6, 0, 1),
(198, 'OUADIABANTOU MALONGA Grace Clebi', '066720957', 'malongagraceclebi@mail.com', NULL, '$2y$10$yvarK2QgumL5sgAhVxyycOiwMyoQozH.Yf3jKs4cIhJt3z7lMQolW', NULL, '2023-09-06 21:08:38', '2023-09-06 21:08:38', 6, 0, 1),
(199, 'NTSOUMOU SAYA Chauman Iver', '066289591', 'ntsoumousaya@mail.com', NULL, '$2y$10$OYIQBjmaDpJISNPiY91nLe7utfDOFjIVEPxL27g5xtZA8cL/pLK9O', NULL, '2023-09-06 21:12:02', '2023-09-06 21:12:02', 6, 0, 1),
(200, 'TCHICAMBOU Mauriac', '055785228', 'mauriacexcellent@gmail.com', NULL, '$2y$10$ybeiaxHSuXk8MI2Kv2ixlOQmLpqrRZfGJXMxxzW/Y9zynld/z8.C6', NULL, '2023-09-06 21:15:34', '2023-09-06 21:15:34', 6, 0, 1),
(204, 'MILANDOU MBOUMINA Ghyslain', '056604433', 'ghysmboumina@gmail', NULL, '$2y$10$jINuvI2laAANDUUJkAkhJe9fuIDqJQHx6IAyGvE.0tnRnUz4vLZri', NULL, '2023-09-16 08:21:52', '2023-09-16 08:21:52', 7, 5, 1),
(205, 'NDAMBA Taylor', '069397242', 'ndambataylor@gmail.com', NULL, '$2y$10$rt4xue8VeuPmRaGe0Nknd.v6O1zOtQpkUdzy8XLg.jhdWM/e/mtEu', NULL, '2023-09-16 10:07:38', '2023-09-16 10:07:38', 7, 5, 1),
(206, 'MAKOYO   Jolida', '065624813', 'makolojolida@gmail.com', NULL, '$2y$10$Shzi1RHrF84DfL9ZUMI6l.pGTfLhYqKmLi7irpWwWGgYwkq52Zpiq', NULL, '2023-09-19 09:21:09', '2023-09-19 09:21:09', 7, 5, 1),
(207, 'KOUKA  Channel  Delhynn', '0', 'koukachannel@gmail.com', NULL, '$2y$10$OvASFNvoi8zgg/mMzgKpp.6DUYEiuogEg551boGni.6YaHN6qnTfq', NULL, '2023-09-19 10:37:14', '2023-09-19 10:37:14', 7, 5, 1),
(208, 'BIBILA Jeansly Wilton', '068774277', 'bibila@gmail.com', NULL, '$2y$10$HnseOZOLthPrtsA0pYxN2Oq6u6YXkMhn.1FIiGrQnCDrWgTQTDTJe', NULL, '2023-09-26 13:16:42', '2023-09-26 13:16:42', 7, 5, 1),
(209, 'POUAPOUA  BRINDA', '069234512', 'pouapoua@gmail.com', NULL, '$2y$10$lzlsw39GhbFqfL4jPNc3yuHicUsZ85g2D091v3C735V1/4MCd1wYS', NULL, '2023-09-26 13:25:19', '2023-09-26 13:25:19', 7, 5, 1),
(210, 'MABIKA  Nelly', '055536022', 'mabika@gmail.com', NULL, '$2y$10$xe8eb3PHQUwyZYSHuspDx.R5UR.4J5QNS0p1ciyvdWumBco1prGha', NULL, '2023-09-26 13:34:16', '2023-09-26 13:34:16', 7, 5, 1),
(211, 'LIPOUANGA  Ginette', '050856090', 'lipouangaginette@gmail', NULL, '$2y$10$aaxT0Thyg5oodBvWDti8GuBtSVDdSQiE1te.pIIeccx6O4KStQHse', NULL, '2023-09-28 11:53:50', '2023-09-28 11:53:50', 7, 5, 1),
(212, 'BOUETOUMOUSSA  MASSENGO  Patrick', '066258038', 'bouetoumoussapatrick@gmail', NULL, '$2y$10$V2sDG6hAaGaTw4TQ3enrm.8UXYCa7Q684Nq3dm5XEnMXUGO7NA1dO', NULL, '2023-09-28 12:09:01', '2023-09-28 12:09:01', 7, 5, 1),
(213, 'NGOUMA TSATY  Stirn', '069275042', 'ngoumatsaty@gmail', NULL, '$2y$10$lIg3N5RdZ2rJsSx8oW2K..jzL7RqtJU18pNj.tsaDqrwKVvq8QtaS', NULL, '2023-09-28 12:50:20', '2023-09-28 12:50:20', 7, 5, 1),
(214, 'TAMBA MBOUNGOU Malcom Hernan', '068448093', 'hermatamba@gmail', NULL, '$2y$10$8ghhhHiJ04PacaTNT4pDZeWfcdT70R2Xc9Y0RIK7sg9FItxxQmMv6', NULL, '2023-09-28 14:18:46', '2023-09-28 14:18:46', 7, 5, 1),
(217, 'MALONGUI  LOKO Chris  Emery', '064771200', 'emeryloko@gmail.com', NULL, '$2y$10$ULdQGJlTMMOZTOzyfhxTVO.7TKzGT2aYn0rYfi73BFkr36RGmojtO', NULL, '2023-09-30 09:57:17', '2023-09-30 09:57:17', 6, 0, 1),
(218, 'PEDRO  Joao', '02244922993954', 'pedrojoao@gmail.com', NULL, '$2y$10$VPcLeKKDPjNIzpcwvMO/ru9fzaFpOMhAm2rW0sC92tJApggzZ54F.', NULL, '2023-10-02 12:37:52', '2023-10-02 12:37:52', 7, 5, 1),
(221, 'MAPAKOU  Grace', '050040974', 'mapakou@gmail.com', NULL, '$2y$10$SPYIYnomersOlg57KsIAAeCSzT/HOmdAiKFDXuMPc6B8Lnztdk45u', NULL, '2023-10-03 06:56:21', '2023-10-03 06:56:21', 7, 5, 1),
(222, 'TATANGA  Puchella', '064409995', 'tatngapuchella@gmail.com', NULL, '$2y$10$z5Blo5RIN0bFHu0MmfED1uyzJDuN/z0wlaXrShjchrqPKtzKKa1Bm', NULL, '2023-10-03 07:07:05', '2023-10-03 07:07:05', 7, 5, 1),
(224, 'NGAMBI  MAMA', '064112300', 'ngambimama@gmail.com', NULL, '$2y$10$Pvmklxrp0bDgCtHtmQCPOuVjOpsWSGnrL7Qg1ABsv.93zZgVOKjBm', NULL, '2023-10-03 07:33:45', '2023-10-03 07:33:45', 7, 5, 1),
(225, 'NSIKA  Arlette  Ghislaine', '057162628', 'nsikaarlette@gmail.com', NULL, '$2y$10$eoKJEOoSK/LVAvxOBRKsD.HmaWmrKuuirkaTeWdxHLAeF4TpxLlii', NULL, '2023-10-03 07:45:07', '2023-10-03 07:45:07', 7, 5, 1),
(226, 'MPIAYA  Friday', '066690529', 'mpiayafriday@gmail.com', NULL, '$2y$10$hW9nEVWJ69EjoidiHBe6UOTELmLaLcyJFO82tm9WH0JYCsu8KylxG', NULL, '2023-10-03 07:51:10', '2023-10-03 07:51:10', 7, 5, 1),
(227, 'DIAFOUKA  Pedruche', '064960488', 'diafoukapedruche@g', NULL, '$2y$10$BmuNCm7Vl4CIlt/fRs/smuz0F9qkwTxEjVFG.rdhorVIbB3JHLFfK', NULL, '2023-10-03 08:03:00', '2023-10-03 08:03:00', 7, 5, 1),
(228, 'NSOUMBOU Aude', '069333139', 'nsoumbouaude@gmail.com', NULL, '$2y$10$ZN7m.//SRtcajupKycznSeEaC6VQg6l9qGNntcpzY43tZRdt3gVPe', NULL, '2023-10-05 08:24:10', '2023-10-05 08:24:10', 7, 5, 1),
(230, 'NIAKATIBILA', '057500941', 'niakatibila@gmail.com', NULL, '$2y$10$Hk/W/rlpQnVp1PSVTxHDCOWUWrRD4ZnmDM5FIPnnjpr6qCUdWvCea', NULL, '2023-10-05 09:29:34', '2023-10-05 09:29:34', 7, 5, 1),
(231, 'MABOUNGOU  Droctové', '044497040', 'maboungoudroctove@gmail.com', NULL, '$2y$10$zK/ulQ78bE5zEmiqVlni6Oqm4lWZLH7pjxwjmU2QX5Wdq4CduOdo6', NULL, '2023-10-05 10:03:01', '2023-10-05 10:03:01', 7, 5, 1),
(232, 'BAY  Ahreis', '069514444', 'bayahreis@gmail.com', NULL, '$2y$10$lTMxUZfoFWBQWeisiDClEOEmuQfVZUSx2.HO/CwBN90tbduu9mB8u', NULL, '2023-10-05 10:27:23', '2023-10-05 10:27:23', 7, 5, 1),
(233, 'BABINGUI  Natacha', '068563086', 'babinguinatacha@gmail.com', NULL, '$2y$10$Th8PNyYti71X5Q74pBOMPOMAzL312d1FWFgPGx/sOcojuZHr5B0Y.', NULL, '2023-10-05 10:35:08', '2023-10-05 10:35:08', 7, 5, 1),
(234, 'NDALA  Firma', '055703092', 'ndalafirma@gmail.com', NULL, '$2y$10$nIITcE4xwj/EO5E81vWTs.UvB8I6p.IBWLzHJAGaiQoxgLfDyP8Z2', NULL, '2023-10-05 11:09:28', '2023-10-05 11:09:28', 7, 5, 1),
(235, 'NTOUNTA  MBEMBA  Sylvain', '066546320', 'ntountasylvain@gmail.com', NULL, '$2y$10$3.MHp/VqoHzgTBhxM5Vy9.Sx0azkYmF2ZLt0e57zJSDo6DwRPPVhS', NULL, '2023-10-05 11:54:41', '2023-10-05 11:54:41', 7, 5, 1),
(236, 'TCHIMBAKALA  Roland   Rodrigue', '066263999', 'tchimbakalaroland@gmail.com', NULL, '$2y$10$fLovNAD4j7ZKS9xuYw0Aw.Us9k15cwcLoyksF1rGmWrLYcGlS6IeG', NULL, '2023-10-05 12:00:50', '2023-10-05 12:00:50', 7, 5, 1),
(238, 'MIAYILAMANA  Alphonse', '057290366', 'miayilamanaalphonse@gmail.com', NULL, '$2y$10$GPUn0MVVPHRQsXBNGJMDA.T/ArT9O3pd0DUaCikXWfGSZEsA14Vhq', NULL, '2023-10-05 12:29:06', '2023-10-05 12:29:06', 7, 5, 1),
(239, 'MABOUNGOU Droctové', '044497040', 'mahoungoudroctove@gmail.com', NULL, '$2y$10$f4Fxq1upKVM4g581oEB0W.wpNx49FajCqHPVwW0fJ4yxSIdv7Pawu', NULL, '2023-10-05 12:37:06', '2023-10-05 12:37:06', 7, 5, 1),
(240, 'PAMBOU  Noa', '066654198', NULL, NULL, '$2y$10$h/AIQ4ouyj4b30H1cRhMjupGk4lPUNmHjCF.Ji.QGBirFCyuxkcv2', NULL, '2023-10-05 12:45:38', '2023-10-05 12:45:38', 7, 5, 1),
(241, 'MALONGA  Chardelle', '067861695', 'malongachardelle@gmail.com', NULL, '$2y$10$9f00aBZNCXNG/7zshfuFE.2sWh/0RGZMW2LQglEwL9Ct4oKJ/KAiW', NULL, '2023-10-06 12:45:04', '2023-10-06 12:45:04', 7, 5, 1),
(242, 'MANTSA  Marcelain', '069685368', 'mantsamarcelain@gmail.com', NULL, '$2y$10$T0uzV3HEJIvw78xvhqQqGupk8Ttui8wfLAXr5G1Ui970AWhdO5WL.', NULL, '2023-10-09 12:34:17', '2023-10-09 12:34:17', 7, 5, 1),
(243, 'NSANA  Francky', '069595402', 'nsanafrancky@gmail.com', NULL, '$2y$10$lDBI8csq8JaXn7DbacuP6u2HMY9V.m89Uo56SyKxSrLnaLAtjcSKK', NULL, '2023-10-09 12:49:44', '2023-10-09 12:49:44', 7, 5, 1),
(244, 'NGOULOU  TSEKE Franck Eric', '057750823', 'ngouloufranck@gmail.com', NULL, '$2y$10$LyxJ4RkIegG0ZbfFxyabA..Xa4UQzTirSvvPD6l2AN3ibhYGvhgo.', NULL, '2023-10-09 13:10:46', '2023-10-09 13:10:46', 7, 5, 1),
(245, 'LOUBACKY  Jean  Sylvain', '055402909', 'loubackyjean@gmail.com', NULL, '$2y$10$pzHw8ogo7ciygQD.tPsK2uHe.mOMIw36kv3Is9aCO7wpYALL332L6', NULL, '2023-10-09 13:19:33', '2023-10-09 13:19:33', 7, 5, 1),
(246, 'MBAMA  Justin', '064686763', 'mbamajustin@gmail.com', NULL, '$2y$10$XNoz7eODcMiponp9r2MtQu.YDg3pFB0xT.rLY/835LWdUQ2BeCwa2', NULL, '2023-10-09 13:30:52', '2023-10-09 13:30:52', 7, 5, 1),
(247, 'NGUIMBI  Ketty', '065523919', 'nguimbiketty@gmail.com', NULL, '$2y$10$3FD5OcC0c9.oMJNnldy2UemYeZpNQplnwGgtcCuzYPnxoq7pz5a9.', NULL, '2023-10-09 13:35:35', '2023-10-09 13:35:35', 7, 5, 1),
(248, 'KANI  Idricha', '055073895', 'kaniidricha@gmail.com', NULL, '$2y$10$aykRsAvJs9YY81/ORhmTHen.mztc3GfREhl9sJ33WbOqp/Pkg3kwy', NULL, '2023-10-09 13:58:42', '2023-10-09 13:58:42', 7, 5, 1),
(249, 'IPOUNA  MENGO  Kevin Gildas', '066353157', 'ipounamengokevin@gmail.com', NULL, '$2y$10$L6emWda3gpqShIOk4R6JkuqHwkrpl70PpAEGB6UgKS0cINKPZCAV.', NULL, '2023-10-09 14:04:32', '2023-10-09 14:04:32', 7, 5, 1),
(250, 'NGOUNDOU  juverline', '068848385', 'ngoundoujuverline@gmail', NULL, '$2y$10$1FhIsjMD33r9YvZ.3Q8dP.O.nIOrDx8e6jdk44NldmiRVp4SZGJ9y', NULL, '2023-10-09 14:14:27', '2023-10-09 14:14:27', 7, 5, 1),
(251, 'MANGOFO  Rachalle', '065151911', 'mangoforachelle@gmail.com', NULL, '$2y$10$.UU.SOi5nHd9hieRO1i/h.EfDsdfpbtAdGclPbhHdlH85K0Rq.2ne', NULL, '2023-10-09 14:24:00', '2023-10-09 14:24:00', 7, 5, 1),
(252, 'MASSAMBA  Davy', '065758919', 'massambadavy@gmail.com', NULL, '$2y$10$OrPcGYdeXeye2C.B.I7/Y.anES5/3hCEazS43IkzdOYgk2dRvH1em', NULL, '2023-10-09 14:56:11', '2023-10-09 14:56:11', 7, 5, 1),
(253, 'MALONGA  Guch', '064686763', 'malongaguch@gmail.com', NULL, '$2y$10$/eRd0V1OcNAryN2JsmrcYuEAMO7TzB1vHzdp/l2fy0DKZ9Z7JVlMe', NULL, '2023-10-09 15:01:46', '2023-10-09 15:01:46', 7, 5, 1),
(254, 'KATOUDI Brigitte Aline', '065935046', 'katoudibrigitte@mail.com', NULL, '$2y$10$344cJmBHN.p5EpOCy518/ONcO7R1kUGJ.xg5M/b/KlZ6j7uYhs2fO', NULL, '2023-10-10 08:09:15', '2023-10-10 08:09:15', 7, 5, 1),
(255, 'MBOUKI Myria', '066683506', 'mboukimyria@gmail.com', NULL, '$2y$10$9Q0KJZFAw.BbvWVMxLQrFuB9QpT2l.ygcRv1Uk9IPOLJutDjJ1tWq', NULL, '2023-10-10 08:13:32', '2023-10-10 08:13:32', 7, 5, 1),
(256, 'NGOUARI Gael', '065282630', 'ngouarigael@mail.com', NULL, '$2y$10$/jau2q.CUR/.IpsLbT.A9eVW.sHhsoau4vioxJVZgJlwO6H6TakY2', NULL, '2023-10-10 10:42:16', '2023-10-10 10:42:16', 6, 0, 1),
(257, 'KAYA Victor', '069963813', 'kayavictor@prof.com', NULL, '$2y$10$U0kPK.y432fRY8jtqR2XJuMEGU/F0Xxa5AACRTIvNXa2WKwaq0/cu', NULL, '2023-10-10 10:45:37', '2023-10-10 10:45:37', 6, 0, 1),
(258, 'MOUITI Destin', '123456789', 'mouitidestin@mail.com', NULL, '$2y$10$YOoGod2lA5/ij9uy8FBOg.Hs.fSwNVdEZrwh6YrllNA/O54MVMzFi', NULL, '2023-10-10 10:49:11', '2023-10-10 10:49:11', 6, 0, 1),
(259, 'TSOLANI  Paul', '066685535', 'tsolanipaul@gmail.com', NULL, '$2y$10$kKx1gV/uBZjW411UK/IauuacE9sQb66fWXU0PqTRxexWNRPVKv1om', NULL, '2023-10-11 12:11:36', '2023-10-11 12:11:36', 7, 5, 1),
(260, 'KIFALA  André', '069442463', 'kifalaandre@gmail.com', NULL, '$2y$10$56cqHiw2lAhVTmOoUj5mv../9zvKcVnIMx2jN7e6zl7RVMeEXUWDG', NULL, '2023-10-11 12:31:11', '2023-10-11 12:31:11', 7, 5, 1),
(261, 'MAVOUNGOU  Justice', '065632976', 'mavoungoujustice@gmail.com', NULL, '$2y$10$MO1HNIZz0TzActUqNKdGVepTy5pNYdxx60Ue8fl8mDzxX0hTxwMPy', NULL, '2023-10-11 12:52:16', '2023-10-11 12:52:16', 7, 5, 1),
(262, 'THINDILA  Valda', '067820849', 'thindilavalva@gmail.com', NULL, '$2y$10$fvNhHHpeZL7B6hop9CMs1.XSleT8mAE7/yfAGOhQHtUroeWNMgPPW', NULL, '2023-10-11 13:26:17', '2023-10-11 13:26:17', 7, 5, 1),
(265, 'NDEWA  Regis', '064470170', 'ndewaregis@gmail.com', NULL, '$2y$10$560it.egckh5QV24Jn9W6OYJjiYX/Ml9FDQMePgplPhIJS5BEfZ9O', NULL, '2023-10-11 13:52:05', '2023-10-11 13:52:05', 7, 5, 1),
(266, 'LANGA  Hermeland', '065058272', 'langahermeland@gmail.com', NULL, '$2y$10$9/ASAH39vH4Im68Dcuftae7LfC4hjssGD7OMSd4n3Vm4PT7whJd8i', NULL, '2023-10-12 08:51:45', '2023-10-12 08:51:45', 7, 5, 1),
(267, 'OKEMBA  Dally', '044317570', 'okembadally@gmail.com', NULL, '$2y$10$uil9Jzq2RpROMiN4xtM8nunG3ZO1afClgJEe8unUdaHnzqmj5n1Iu', NULL, '2023-10-14 08:27:58', '2023-10-14 08:27:58', 7, 5, 1),
(268, 'MAOUNGOU Eude  Harnot', '068203334', 'maoungoueude@gmail.com', NULL, '$2y$10$gXHmKotftAMytCghFv768OCl0ccGjclAKR3AGM1ao5Ow5FGrDDV26', NULL, '2023-10-16 11:11:05', '2023-10-16 11:11:05', 7, 5, 1),
(271, 'KOUTOTOUKILA  Josline  Grace', '064582946', 'koutotoukilajosline@gmail.com', NULL, '$2y$10$PhqONltY5eyMUHMg0mExx.YVxgOR8grA/GFltm2hF1TJC1uGSJVUa', NULL, '2023-10-18 11:07:23', '2023-10-18 11:07:23', 7, 5, 1),
(272, 'YEMBI  YEMBI  Jean  Rufin', '050977286', 'yembijean@gmail', NULL, '$2y$10$almaNTWqaSXQ3XJ1mVtDbOgIEeIkS1Dt0b9G7KPdZX29m9kRGAksi', NULL, '2023-10-18 11:19:27', '2023-10-18 11:19:27', 7, 5, 1),
(273, 'DIABOUNA  Brice', '057246475', 'diabounabrice@gmail.com', NULL, '$2y$10$mGB1aCo.EnOHJMq.0gPFY.MaSgRF3F3ULtmN.7yBJb.tIiY8U6J0C', NULL, '2023-10-18 11:24:53', '2023-10-18 11:24:53', 7, 5, 1),
(274, 'NGANGA  Alexia', '050989920', 'ngangaalexia@gmail', NULL, '$2y$10$yhEqoxVTGhBaxWG5mvkHHu5o57hdELxnmekX20zzez/w3jARl4awO', NULL, '2023-10-24 10:49:26', '2023-10-24 10:49:26', 7, 5, 1),
(275, 'BOUYOU  Odrique', '068803615', 'bouyouodrique@gmail', NULL, '$2y$10$XJYKJ3W9Sr/5iixSUXNwbONavMPv63U0chzT0zfoh1TvMdaV5ULl6', NULL, '2023-10-24 10:56:44', '2023-10-24 10:56:44', 7, 5, 1),
(276, 'TOGANOU  Chavel', '064249518', 'toganouchavel@gmail', NULL, '$2y$10$dZ0yW9wuOIy.uqr2wEFEk.r0aaZecjrcOiDmM7Cm2airuXJqDi6..', NULL, '2023-10-27 14:26:04', '2023-10-27 14:26:04', 7, 5, 1),
(277, 'BATANGOUNA  Lydia', '065771493', 'batangounalydia@gmail', NULL, '$2y$10$KrztEX1gWrkIFe5fBNnkPe/vR8bVSIUeONwrNJmOFAoS7W5f90zTO', NULL, '2023-10-27 14:32:37', '2023-10-27 14:32:37', 7, 5, 1),
(278, 'MAOUNGOU  Eude  Harnot', '068203334', 'maoungoueude@gmail', NULL, '$2y$10$T6K3ppbCrBJlC3F7zSCtN.bxVjzS3/cJXFNoROWwE93MqEJ5Cn.w2', NULL, '2023-11-02 12:45:54', '2023-11-02 12:45:54', 7, 5, 1),
(279, 'DEMBE  Amédé', '055330397', 'dembeamede@gmail', NULL, '$2y$10$VWTn3DxEe7UyGO8xOaRAke62ods5St8DgXWMguXabM9I4hkNmH046', NULL, '2023-11-02 12:53:40', '2023-11-02 12:53:40', 7, 5, 1),
(284, 'BIBILA  Jeancil  Wilton', '068774277', 'jeansilwilton@gmail', NULL, '$2y$10$O8Z269LSWFW/HEwYYszd.eJG8x1KPOHf4qlB1MstlRpXWLnvbeqCy', NULL, '2023-11-09 07:00:56', '2023-11-09 07:00:56', 7, 5, 1),
(285, 'NIMI Blanchard', NULL, 'nimiblanchard7@gmail.com', NULL, '$2y$10$FajbJrVwa3duWoZOOCh.EOO8bMElGJknBDDn5jXCfKyN9xks2tqAa', NULL, '2023-12-07 07:13:18', '2023-12-07 07:13:18', 2, 12, 1),
(286, 'NIMI Blanchard', '055808347', 'nimiblanchard@gmail.com', NULL, '$2y$10$xx4MkSgPnWCbPiyM4TrtYOybVlbBgAoPl3EwqVvb5fCtbgZgwfRq.', NULL, '2023-12-14 08:26:57', '2023-12-14 08:26:57', 5, 12, 1),
(287, 'BAHONDA Arsène Hervé Martial', '064604794', 'bahondaherve@gmail.com', NULL, '$2y$10$MEx0tlNpvmAop3stZ8RlTeZZgs0.OtYXoDqqCRmH0mnzBvNPiJHz2', NULL, '2023-12-14 09:34:15', '2023-12-14 09:34:15', 6, 0, 1),
(288, 'BOUNGOU JEAN PIERRE', '069569064', 'boungoujeanpierre@gmail.com', NULL, '$2y$10$ozZ1DLETFEu.Iim5i6r/1uK8HLNUfULt.cQpKyzPy4pM.WrizzCCS', NULL, '2023-12-14 09:50:02', '2023-12-14 09:50:02', 8, 12, 1),
(289, 'Mme PEMBELE', '066711328', 'pembele@gmail.com', NULL, '$2y$10$qoEogJlFKPcPWjcjMTymyeMEhv7Pq3yAk8g8LMLTuG4RKepsWLKKG', NULL, '2023-12-14 10:01:15', '2023-12-14 10:01:15', 4, 12, 1),
(290, 'LOUSSIEMO', '050587858', 'loussiemon@gmail.com', NULL, '$2y$10$8qio83SntWsUw8bgWHto3ubN4to9UADR1iwQMQFAcCYpCauVnAB7.', NULL, '2023-12-14 10:02:41', '2023-12-14 10:02:41', 4, 12, 1),
(291, 'NIMI Blanchard B', '055808347', 'nimiblanchardB@gmail', NULL, '$2y$10$TwXr3P3/cEsu1SnIiiboI.vE17vDSSlb.c1ybH8EZqi0D1JtSE8dC', NULL, '2024-01-13 13:11:30', '2024-01-13 13:11:30', 7, 12, 1),
(292, 'BOUBANGA Henri', '068992363', NULL, NULL, '$2y$10$EUXQmyg/IcLHjrB4h/1AiOEX2pzpfhj92TYh0chUJ.mdOLxxuY/vq', NULL, '2024-01-13 13:57:19', '2024-01-13 13:57:19', 7, 12, 1),
(293, 'YACOUBOU', '066525951', NULL, NULL, '$2y$10$TBvaqApSc8ExhGr3pZXveO4U8k2NWExuzR0Rue.BVAGIuhDcBBlJe', NULL, '2024-01-13 14:06:37', '2024-01-13 14:06:37', 7, 12, 1),
(294, 'MOUSSOUAMI', '055590678', NULL, NULL, '$2y$10$PGWGiTZNYcoHguhH5fb8Nuijv4XnWSVImrvX07/A2Hsrb4V8DxgTK', NULL, '2024-01-13 14:15:36', '2024-01-13 14:15:36', 7, 12, 1),
(295, 'MAVOUNGOU', '065910116', NULL, NULL, '$2y$10$Ox1EiAA1ez2KovYHDn8sr.eYUKMIfHh9HONfN9YseT8nMjdWCo5I6', NULL, '2024-01-13 14:20:51', '2024-01-13 14:20:51', 7, 12, 1),
(296, 'Pandzou Babela', '040364061', NULL, NULL, '$2y$10$zAaUKLxNeg1i5JZ91EeDxOxgWWd/SUhRT36YcRzOGy3LyGx4y9Ww2', NULL, '2024-01-13 14:27:14', '2024-01-13 14:27:14', 7, 12, 1),
(297, 'BANVI Jean Pierre', '064386417', NULL, NULL, '$2y$10$euyTfZW.okqCJTpg8drraekLCKgCSpSoBZPRutT.7lcxlpnBrsUkO', NULL, '2024-01-13 14:32:56', '2024-01-13 14:32:56', 7, 12, 1);
INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `ecole_id`, `actif`) VALUES
(298, 'MADOUKOU', '068171489', NULL, NULL, '$2y$10$lBnXCWZOfiQ8Redt1/ki3uGfPkyZJkKqDxwXfqu31A1slSrmX8d9e', NULL, '2024-01-13 14:36:19', '2024-01-13 14:36:19', 7, 12, 1),
(299, 'MADOUKOU GUY', '068171489', NULL, NULL, '$2y$10$tlmkPXMPNsO6cX4QHxMr0.Z6CO3O7kV82A799UxBI6g31U3ffqNRK', NULL, '2024-01-13 14:47:26', '2024-01-13 14:47:26', 7, 12, 1),
(300, 'NGANDZIAMI', '050751078', NULL, NULL, '$2y$10$LKt5vr32OJc7WYSNOpQzBeNTMlQXJym/modnzreZIgWxYAicrUjIW', NULL, '2024-01-13 15:01:28', '2024-01-13 15:01:28', 7, 12, 1),
(301, 'MBELE Christiane', '066684905', NULL, NULL, '$2y$10$nv4tZRQYbsbrAXCTpyIQSO9daIC8oEiNWqllyF.T6sqeaO4m8gfq.', NULL, '2024-01-13 15:28:44', '2024-01-13 15:28:44', 7, 12, 1),
(302, 'NDALA Nuffel', '068594142', NULL, NULL, '$2y$10$LstvrqVA/II6SS9C1sizSuyrtqpVZVsnXHaiX1sVvRM9ADUCxGKsW', NULL, '2024-01-13 15:35:15', '2024-01-13 15:35:15', 7, 12, 1),
(303, 'GOLION AMBONG', '057205138', NULL, NULL, '$2y$10$qyzoHeGF0tecDQO1wMcZiOpBZJs06x2xEnmzPSSdsD7rWElEuePH2', NULL, '2024-01-13 15:48:24', '2024-01-13 15:48:24', 7, 12, 1),
(304, 'GOLION AMBONG', '069342404', NULL, NULL, '$2y$10$IqVB3JCMSU8rWDWueLp/o.bXUSjPnh5GZqd9z48wiQJJiEAIB/WRO', NULL, '2024-01-13 15:54:01', '2024-01-13 15:54:01', 7, 12, 1),
(305, 'MIKISSI', '066513398', NULL, NULL, '$2y$10$SxOcH3i9ufIMn1qqxdGZT.ZU3sbDtaFK8VPz6Levjs6zAFr/mTqi6', NULL, '2024-01-13 16:19:25', '2024-01-13 16:19:25', 7, 12, 1),
(306, 'MAYOUMA MBOUMBOU', '068660017', NULL, NULL, '$2y$10$4MPVtp55IY4yDPtSP3Eaa.jIX/rrukS3wivyx8NiNP44299TqYYw6', NULL, '2024-01-13 16:26:55', '2024-01-13 16:26:55', 7, 12, 1),
(307, 'MISSIE', '053289191', NULL, NULL, '$2y$10$pR4K4QbzVRjdqT0fe4x.P.naBjYWVmkZhQTCVwBGC3yIcu7vHL3iK', NULL, '2024-01-13 16:31:35', '2024-01-13 16:31:35', 7, 12, 1),
(308, 'MISSIE', '055723095', NULL, NULL, '$2y$10$6xjlWj2vVl9N8IgJoXTwH.ZUXXZfes0iJrj0dCBDMFOITq0LRPEky', NULL, '2024-01-13 16:35:57', '2024-01-13 16:35:57', 7, 12, 1),
(309, 'MBANGO', '066562338', NULL, NULL, '$2y$10$noHOLPyC8/cXX1Q8ICpeauNDxrRQa2JP119kf8d3os3vlTzjYaH1O', NULL, '2024-01-13 16:39:58', '2024-01-13 16:39:58', 7, 12, 1),
(310, 'MABIALA', '066549240', NULL, NULL, '$2y$10$jz2/rTgrEKueX4ojEBfNiuh2jKzSnukxo0M6KfC0uCbgPHgj8j5s.', NULL, '2024-01-13 17:19:40', '2024-01-13 17:19:40', 7, 12, 1),
(311, 'Lingui', '069336648', NULL, NULL, '$2y$10$.PpSnVKzgYVx1Cp24Ama2e64SECvFZMdNCOcW45zj49GurpFenVLC', NULL, '2024-01-13 17:37:21', '2024-01-13 17:37:21', 7, 12, 1),
(312, 'SAMBA', '066839564', NULL, NULL, '$2y$10$hTEbu0X0tg2JFNmAK9zMxevYqs.uWg.8opSvacx2ojWMpjjB5cnjO', NULL, '2024-01-13 17:45:01', '2024-01-13 17:45:01', 7, 12, 1),
(313, 'NGOYILA', '066905448', NULL, NULL, '$2y$10$k2FkWrPO0cqCShXTU87FUuda9IjgdRxAJCXOcK5ncigrVlC7OB6CO', NULL, '2024-01-13 17:49:18', '2024-01-13 17:49:18', 7, 12, 1),
(314, 'AMBIERO', '069634091', NULL, NULL, '$2y$10$tJAO8VHhS3w7gRELFPjBOOiqjX.8CVUSg.gC/aBuvLe8R86GWxGX6', NULL, '2024-01-13 17:53:13', '2024-01-13 17:53:13', 7, 12, 1),
(315, 'LELO Antoine', '068156422', NULL, NULL, '$2y$10$L6KaW6/0SpL9Zke9MgOzF.8i7CCuhJ9bCJTwLv73kUi6pBsmeItpu', NULL, '2024-01-13 17:56:44', '2024-01-13 17:56:44', 7, 12, 1),
(316, 'NGANIAMA', '066748718', NULL, NULL, '$2y$10$.wirmY4N/eZIrF9.OQZvde0nFWsL7c8S83FCJZlSqkApgvdE9Gv3.', NULL, '2024-01-13 18:00:23', '2024-01-13 18:00:23', 7, 12, 1),
(317, 'BOUANGA Arnaud', '069145515', NULL, NULL, '$2y$10$VdQyg.KDQkYfZdPqAVMWs.P4i5D2a8gIwZXdUJKarH5uUnUQdyUCK', NULL, '2024-01-13 18:26:51', '2024-01-13 18:26:51', 7, 12, 1),
(318, 'MAKOSSO Ange', '069200916', NULL, NULL, '$2y$10$DPC43vBzL9eziE0abtwlN.TZK6WteZebH46oJi6MD8qxVk2vphbx2', NULL, '2024-01-13 18:30:25', '2024-01-13 18:30:25', 7, 12, 1),
(319, 'MAKOSSO Ange', '068973722', NULL, NULL, '$2y$10$6iLV82h.q/wl2tiScDPRzOSBe/jfPQ90e2K1OJBcZ50fCGmZLzvdy', NULL, '2024-01-13 18:35:44', '2024-01-13 18:35:44', 7, 12, 1),
(320, 'ATSONO', '066580891', NULL, NULL, '$2y$10$f9FxvPjwK2li9CCz86LTquPKyJGXbv167cK7xmCgiDFB5Dh8W5Mzy', NULL, '2024-01-13 18:40:47', '2024-01-13 18:40:47', 7, 12, 1),
(321, 'EYAMBA Narcisse', '066353496', NULL, NULL, '$2y$10$C22qXx4XEg32xz9ijzGb.ue0D17iqLQqlpAJ/ILSbI2DDKGSau7R6', NULL, '2024-01-13 18:47:32', '2024-01-13 18:47:32', 7, 12, 1),
(322, 'ALELI Charlène', '068077722', NULL, NULL, '$2y$10$iW7wuc2y9I.sL8pk2MtMC.0011ij0KPuxUj0306Zgrt4hcOQXZ8L2', NULL, '2024-01-13 18:52:02', '2024-01-13 18:52:02', 7, 12, 1),
(323, 'IBOUANGA Igor', '066278736', NULL, NULL, '$2y$10$2gSEMmf9ccDMDo/cwWhUu.Kq6qD9cxgfUO7qasZLC3aS6BRji/bPG', NULL, '2024-01-13 18:56:06', '2024-01-13 18:56:06', 7, 12, 1),
(324, 'TSATY Jacques', '069022085', NULL, NULL, '$2y$10$WiMP5dpLLGH7p6MVOxZtWeEYsHMFjfP1pZ8kl8HU.81kPppQhM7R2', NULL, '2024-01-13 18:59:55', '2024-01-13 18:59:55', 7, 12, 1),
(325, 'IBOUANGA', '066821658', NULL, NULL, '$2y$10$H6.qRqICARnYi2GZ6w/Ruuo06aBZ71frQopJofZtaI45yCgBm2h1C', NULL, '2024-01-13 19:03:47', '2024-01-13 19:03:47', 7, 12, 1),
(326, 'Founga Jerimoth', '050203022', NULL, NULL, '$2y$10$YNGO5hzNG1marVIluz6CTuR9lgInTYbACh.Ypbo/Pked7ICcW6hLe', NULL, '2024-01-13 19:09:18', '2024-01-13 19:09:18', 7, 12, 1),
(327, 'TCHIKAYA', '055811593', NULL, NULL, '$2y$10$tRZ8eXa3A8ZQPbncobC1/u2XuwAwPW6sLEwf6xqAGPZRcf.Hijzum', NULL, '2024-01-13 19:13:19', '2024-01-13 19:13:19', 7, 12, 1),
(328, 'KOUEMISS', '064120578', NULL, NULL, '$2y$10$oC8bn.k0AMt8rSW3bQvQ3OGSFic96D3BTTfph4PPvrzfBngNNDkZS', NULL, '2024-01-14 14:47:00', '2024-01-14 14:47:00', 7, 12, 1),
(329, 'ONINA', '068883855', NULL, NULL, '$2y$10$t5TrLNPJFUag196XBQCTM.wjmrBrfp/HzGy4VCdj4E/pNSpd2U0PC', NULL, '2024-01-14 14:51:08', '2024-01-14 14:51:08', 7, 12, 1),
(330, 'NGALESSAMI', '055811593', NULL, NULL, '$2y$10$qmp.noY6H2/DhTeQ/80Qe.C1q0pMLquRJTZ9DEwN1d4U7ag2LTZOq', NULL, '2024-01-14 14:55:42', '2024-01-14 14:55:42', 7, 12, 1),
(331, 'MIMI', '055811593', NULL, NULL, '$2y$10$cZQZ4OyYL7gOLT9t/Ajs1.IZwvAzBMJcda9oL4yX5lwsmrogOW/rG', NULL, '2024-01-14 15:02:50', '2024-01-14 15:02:50', 7, 12, 1),
(332, 'LOEMBA Hortense', '055338411', NULL, NULL, '$2y$10$akczOTZxXxJNcv.iPR.E6.cyZqxsL9zYYvVpvdRY8/hyUspD4YVYu', NULL, '2024-01-14 15:07:03', '2024-01-14 15:07:03', 7, 12, 1),
(333, 'AMEBI CHRISTIAN', '068310707', NULL, NULL, '$2y$10$a9lrtd7Ru6bNfdUoyu9lguuqraPERSZ0sZml5ecR81SimFjq9.GSG', NULL, '2024-01-14 15:13:44', '2024-01-14 15:13:44', 7, 12, 1),
(334, 'KILOKO IDRIS', '055906319', NULL, NULL, '$2y$10$BcHAxuFkVMNK3G14JIHZoenppwCqLEiAm4rfYkDz3E7bXiXaqvoGe', NULL, '2024-01-14 15:17:02', '2024-01-14 15:17:02', 7, 12, 1),
(335, 'MBONZI DESTAIN', '069271320', NULL, NULL, '$2y$10$qJehSx5M1vu7XTrncrJOHerxAnEU7ofUGeahWgeMeV3V.mUTtGxiO', NULL, '2024-01-14 15:20:07', '2024-01-14 15:20:07', 7, 12, 1),
(336, 'NGAKOMONO GOGEL', '069829221', NULL, NULL, '$2y$10$TruaaLty3/gpKbdeJWO4Q.bdNeeVfNJdwAsRw2Joyvg3BnHnFW/Ma', NULL, '2024-01-14 15:24:46', '2024-01-14 15:24:46', 7, 12, 1),
(337, 'MATSONI JEAN', '066742618', NULL, NULL, '$2y$10$p6slahuj/eFNX7TGW6dQgODZsiH2QB8NVOBjsYi3sNJNJDHIAnEUy', NULL, '2024-01-14 15:28:51', '2024-01-14 15:28:51', 7, 12, 1),
(338, 'KIMBMBE JUDACE', '066562675', NULL, NULL, '$2y$10$6qmKc9BVHgwIV.R8/b4N4uwRV.jSskVHtDXLX.pz/24qOg2OQvz/S', NULL, '2024-01-14 15:32:07', '2024-01-14 15:32:07', 7, 12, 1),
(339, 'KIMBEMBE', '066562665', NULL, NULL, '$2y$10$VYu/Cr8sV7M1F6Ayg8s.5uuGNCMcxOVFhTyV8jfH85KVR0iDg.mde', NULL, '2024-01-14 15:35:53', '2024-01-14 15:35:53', 7, 12, 1),
(340, 'NGANGA BEN', '066984498', NULL, NULL, '$2y$10$R.vSEa6eo.WHqA60BLe1ou.pXp3jv2A5fAqdlNc1xcJQpV2RvQmbC', NULL, '2024-01-14 15:39:56', '2024-01-14 15:39:56', 7, 12, 1),
(341, 'NGUIE CRHIST', '066747579', NULL, NULL, '$2y$10$M00NXpRgFw9SNlBQ8FLZRub6OfywgAYwgflNBwRVHqlbjFl.MdvEW', NULL, '2024-01-14 15:43:19', '2024-01-14 15:43:19', 7, 12, 1),
(342, 'BOUANGA', '055624046', NULL, NULL, '$2y$10$3U1wSitznZBn8j7ogAuVzerM55BzWb7GdRCNcPmrXdhLhICbtztZK', NULL, '2024-01-14 15:47:24', '2024-01-14 15:47:24', 7, 12, 1),
(343, 'MOUNGALA GUY', '066252531', NULL, NULL, '$2y$10$ek16mfOeV0uMkgsmPnnwJeYdGQIlscus/.r2ukQHUGnm.1iN5IQY2', NULL, '2024-01-14 15:51:06', '2024-01-14 15:51:06', 7, 12, 1),
(344, 'MISSAMOU', '055141658', NULL, NULL, '$2y$10$d3QhcaUSRN9QiEDntV5RUuwTo4XTGzWpj4ifzykoibys2tghp2C5W', NULL, '2024-01-14 15:54:29', '2024-01-14 15:54:29', 7, 12, 1),
(345, 'ADOU', '069084301', NULL, NULL, '$2y$10$6TR70XN9Rq8FjimKFOhd9uFQmybVR64Z9Ix/IlWmQw4ADuHtdlAym', NULL, '2024-01-14 15:58:57', '2024-01-14 15:58:57', 7, 12, 1),
(346, 'MBOUKA', '065671615', NULL, NULL, '$2y$10$3SJkEdc7NRHTDYtWjpXwSOoYUj58YQ47QQ9EWlyOletiQHBuQhrxC', NULL, '2024-01-14 16:01:59', '2024-01-14 16:01:59', 7, 12, 1),
(347, 'MARTHY', '068168452', NULL, NULL, '$2y$10$ndtDHQ/wbBaYaTKUTeuMd.hH2HtfHFdGqyIq6aMx4M9XiUIUnrTEi', NULL, '2024-01-14 16:05:22', '2024-01-14 16:05:22', 7, 12, 1),
(348, 'NKAYA DIEUDONNE', '064002522', NULL, NULL, '$2y$10$c2dUUokq/TNQUa8yVmSgZevWNkQ5B/.Lze9gUa/xwgA1HRa6BGfYy', NULL, '2024-01-14 16:08:57', '2024-01-14 16:08:57', 7, 12, 1),
(349, 'NIMI ARISTIDE', '064002522', NULL, NULL, '$2y$10$IdeVVpAMKF.aiokWgPtGkOB3zKukQQbkvu.Wb5qaXbBd0o8SHlOo.', NULL, '2024-01-14 16:20:02', '2024-01-14 16:20:02', 7, 12, 1),
(350, 'NGUILA', '069539147', NULL, NULL, '$2y$10$YwyOD3y0OrhF0nqX1DyWy.KzcqZGGhwPTO77Rkp80FLfZsm7A.IOu', NULL, '2024-01-14 16:24:25', '2024-01-14 16:24:25', 7, 12, 1),
(351, 'KETTY', '067141841', NULL, NULL, '$2y$10$D9k2G8ZfyGxDvkcAvtbbre6.LaXFKlSopyRvoDbdInCIV08RodWMG', NULL, '2024-01-14 16:28:37', '2024-01-14 16:28:37', 7, 12, 1),
(352, 'V', '0', NULL, NULL, '$2y$10$16cfY6mcMpb4ga/cbq6RGeNz7/0tMFMJWOWqUtDyRA9W8fk3uDoda', NULL, '2024-01-14 16:39:45', '2024-01-14 16:39:45', 7, 12, 1),
(353, 'MALONGA CHRISTIAN', '068978722', NULL, NULL, '$2y$10$9xGp6nc/E409QWTpKTKMWuXraV1cJlILI4qfa66CWyNP/i6QmQBwO', NULL, '2024-01-14 16:43:34', '2024-01-14 16:43:34', 7, 12, 1),
(354, 'OMBOMI', '069383719', NULL, NULL, '$2y$10$wP2zEFpcEESgfWWYDuKTS.HFYq6LXKF0hDX6BCKUy7XUH5upolD6.', NULL, '2024-01-14 16:59:54', '2024-01-14 16:59:54', 7, 12, 1),
(355, 'KIBAMBA', '057478703', NULL, NULL, '$2y$10$m1IMEgjJyM0VC8SOeK4EjOwjFfm66H4EQb7FkJ6q1vf.oV1/spGPW', NULL, '2024-01-14 17:04:42', '2024-01-14 17:04:42', 7, 12, 1),
(356, 'BATELA', '069456295', NULL, NULL, '$2y$10$C2RFSXbkElpa9qy7ZT18yugYstfLA0BX3c5RlB5nJD5UGGB39sPlK', NULL, '2024-01-14 17:07:57', '2024-01-14 17:07:57', 7, 12, 1),
(357, 'M\'FOUNA', '066643645', NULL, NULL, '$2y$10$vT4qcrqE11FSyokqo0XC.uP5ZCQZFjx0zrUiuDABCI/f9lhJ/tubq', NULL, '2024-01-14 17:11:20', '2024-01-14 17:11:20', 7, 12, 1),
(358, 'KOMBO  Arnaud', '066386714', NULL, NULL, '$2y$10$YWOGNPz5m3DFOIMP85vVA.Aroe3ZEeZGe62mK2EWflyoxqTi.V7UW', NULL, '2024-01-14 17:16:12', '2024-01-14 17:16:12', 7, 12, 1),
(359, 'TSAPI', '066383340', NULL, NULL, '$2y$10$sAuFwUuwxlRCZJYiPUeg6.YtSIaxU9s86DjfJHJ0Bv06ttOOK3BSC', NULL, '2024-01-14 17:20:00', '2024-01-14 17:20:00', 7, 12, 1),
(360, 'MAKAYA PLACIDE', '053718989', NULL, NULL, '$2y$10$Q5c1/aQDC1ywkOgBFhpdUuq1wzihABRZ1wQNJbgYIa6MfaReBExAK', NULL, '2024-01-14 17:24:51', '2024-01-14 17:24:51', 7, 12, 1),
(361, 'PEMBELE Rapaël', '066711328', NULL, NULL, '$2y$10$fqYhDCMmugdv1xxOjFbuk.faMRsGUINMazozJbryhYHk/GuGWOSZS', NULL, '2024-01-14 17:29:30', '2024-01-14 17:29:30', 7, 12, 1),
(362, 'DABIRA', '066009760', NULL, NULL, '$2y$10$.0hJmbFeX5uweXgVkxl.meS2pqVaOSRPqieA5VQ.9hR1Kfu2DS4yS', NULL, '2024-01-14 17:33:13', '2024-01-14 17:33:13', 7, 12, 1),
(363, 'ATSOUTSOULA', '069604615', NULL, NULL, '$2y$10$t2zf7JXse9f38T7O57ROuuSY5Los5kceF6qzT9Ov.KUoVGT7RO2Au', NULL, '2024-01-14 17:37:07', '2024-01-14 17:37:07', 7, 12, 1),
(364, 'BAMBAGHA', '069949493', NULL, NULL, '$2y$10$3kJfzOewdA30BQOns6dj8eTivAIgfG5k26ngVIvir8VSVhx.VUXBu', NULL, '2024-01-14 17:40:49', '2024-01-14 17:40:49', 7, 12, 1),
(365, 'KIZIBOUKOU DESTIN', '069565437', NULL, NULL, '$2y$10$EM5hykqxnkLslJcDGc7k1elNJZ1T4t7tCz2dh5WAVhOs4iP/954Ca', NULL, '2024-01-14 17:44:42', '2024-01-14 17:44:42', 7, 12, 1),
(366, 'POATY  ANICET', '065239197', NULL, NULL, '$2y$10$zquhjK.1uLRmsIAfQ4XjS.lxMSAr67UT2bInW9ZElGjBqTzBr/6/i', NULL, '2024-01-14 17:49:08', '2024-01-14 17:49:08', 7, 12, 1),
(367, 'EWAKE', '066026251', NULL, NULL, '$2y$10$uTMm2coHGUZaInJiFIsJ5ux/meFTcXGv7uEJ27S42YwkJD7q7Ck26', NULL, '2024-01-14 17:53:22', '2024-01-14 17:53:22', 7, 12, 1),
(368, 'EWAKE BRIEL', '066026251', NULL, NULL, '$2y$10$TwVJ2c1NWy1uZrsYtEdxIuoeOqW4LN1FSqvOov3KGn.kCGTzFyru6', NULL, '2024-01-14 17:56:26', '2024-01-14 17:56:26', 7, 12, 1),
(369, 'MITORY', '069633878', NULL, NULL, '$2y$10$fgMImzZm2BoSIvLr5w55B.U8Wy6jjIFkDvBtA5GDqP/Gj57lIXk2q', NULL, '2024-01-14 18:04:25', '2024-01-14 18:04:25', 7, 12, 1),
(370, 'NGOUONIMBA', '069561695', NULL, NULL, '$2y$10$bAh0a24XR2GeFoYShzAbteSRWAZDlRldCPT/B68Q91qv1DjJdamwm', NULL, '2024-01-14 18:07:45', '2024-01-14 18:07:45', 7, 12, 1),
(371, 'ATSONO', '055515929', NULL, NULL, '$2y$10$rWsQHz5DXalguRBGRm05DOdnWlxn2s2zqKj1ggIAqPs54pZTH1ifG', NULL, '2024-01-14 18:13:18', '2024-01-14 18:13:18', 7, 12, 1),
(372, 'MIKISSI Brice', '066513398', NULL, NULL, '$2y$10$9wVXW1wltngii5.er6ECB.wN7lH4a21c0DZgEruLNBREcy3qghbEO', NULL, '2024-01-14 18:21:58', '2024-01-14 18:21:58', 7, 12, 1),
(373, 'BOUBANGA Henri', '069730122', NULL, NULL, '$2y$10$PlL30gUais2pfvVcC5Ilm.kc5v7dfGYmjpDRbtE33Tn/sD3VyrGV.', NULL, '2024-01-14 18:26:44', '2024-01-14 18:26:44', 7, 12, 1),
(374, 'MBERI  BILONGO Arnold', '242068933631', 'arnoldmberibilongo@gmail.com', NULL, '$2y$10$YTzk8nBCBuqtl36iZVOOo.Pz3bbpUgkW/rmhMhESWTluab3dGwNOy', NULL, '2024-01-15 12:07:31', '2024-01-15 12:07:31', 6, 0, 1),
(375, 'MAKOSSO Christ Emex', '242065524078', 'christemexmakosso@gmail.com', NULL, '$2y$10$h/Zsl0fHqzE.W4COWml/2OV4ElIO95Kgi0/6SGrhL.LDGeyFAuEfy', NULL, '2024-01-15 12:25:14', '2024-01-15 12:25:14', 6, 0, 1),
(376, 'BOULINGUI Abdel', '242066953496', 'abdelboulingui@gmail.com', NULL, '$2y$10$Npb37znaJaOKMxRxUxy3ge6kH5LyUcfkymJI5LFgIuoCWrEEqlUVy', NULL, '2024-01-15 12:28:22', '2024-01-15 12:28:22', 6, 0, 1),
(377, 'MASSEMBO NGOMA Odilon', '242069116801', 'odilonngomamassembo@gmail.com', NULL, '$2y$10$DCSlkay0FlLmZIytz5XE0.9q42XQEpCl4kb1Q7Wy0vpA.I1gi/Bb6', NULL, '2024-01-15 12:37:53', '2024-01-15 12:37:53', 6, 0, 1),
(378, 'PAMBOU Cerick', '242069515867', 'cerickpambou007@gmail.com', NULL, '$2y$10$9ayD4KfQwgstbbR9uWbHO.DZ9/GFK2w4M1c.YqmvVPF6iG5TORPY6', NULL, '2024-01-15 12:52:02', '2024-01-15 12:52:02', 6, 0, 1),
(383, 'MIENAHOU Chiria', '242066664715', 'chiriamienahou@gmail.com', NULL, '$2y$10$kGUQ7pAFr8USWPaW5j017eUz8r3W9lQcJDGs2Z.W2S2XzBVaoxaZK', NULL, '2024-01-15 13:12:59', '2024-01-15 13:12:59', 6, 0, 1),
(384, 'KENGUET Jean Norbert', '242066797907', 'jeannorbertkenguet@gmail.com', NULL, '$2y$10$A9Iv9tmU2aAkmvTo8dWa1eGRMFTo7TT7eJLtLyrmL8iTfoSnwh2yi', NULL, '2024-01-15 13:16:45', '2024-01-15 13:16:45', 6, 0, 1),
(385, 'NZAOU Armel', '242066930095', 'armelnzaou@gmail.com', NULL, '$2y$10$IA5b1a.QO/aQMoMMmvx5d.52LUgJv4VOEmtufV.mqceU0ixuhdIVi', NULL, '2024-01-15 13:19:22', '2024-01-15 13:19:22', 6, 0, 1),
(386, 'MAKANI Gildas', '242064289012', 'gildasmakani@gmail.com', NULL, '$2y$10$HmeELl431r.m6AwNj1qEp.LwNSjZ/baDeoyNj1AvpchHGc.tDK6GO', NULL, '2024-01-15 13:21:50', '2024-01-15 13:21:50', 6, 0, 1),
(387, 'DAMBA KIESSE', '242066217065', 'marcellinkiesse@gmail.com', NULL, '$2y$10$CxGXdIodxv.7AaUr/m6c2ucEpbyGOlFdz5UivBnchZ416AcWdMDO2', NULL, '2024-01-15 13:24:32', '2024-01-15 13:24:32', 6, 0, 1),
(388, 'VOUVOU Serge', '242056050640', 'sergevouvou@gmail.com', NULL, '$2y$10$x/rq/0pSu11IHCttLILnLucfBbhU8tIXkJHTSBG1OzRM1zpBZWA1C', NULL, '2024-01-15 13:27:34', '2024-01-15 13:27:34', 6, 0, 1),
(389, 'MADINGOU Diack  Jalèse', '066203477', 'jalesediackmading@gmail.com', NULL, '$2y$10$gqfxpcrH2gEJswNG9Zb0T.9xMNKaq9rizLSe0YBC5xlPo3ueAz24y', NULL, '2024-01-15 13:32:36', '2024-01-15 13:32:36', 6, 0, 1),
(390, 'KIKOLO Aurelien', '242066420375', 'aurelienfabricekikolo@gmail.com', NULL, '$2y$10$DwDh0xqYbt1xDljX8xR9PeszpXIwefogm8.UlXony5jSFJdGkU8ga', NULL, '2024-01-15 14:31:41', '2024-01-15 14:31:41', 6, 0, 1),
(391, 'BAKANAOKO Pense', '242064875437', 'pensebakanaoko@gmail.com', NULL, '$2y$10$bnQEEau4BqlkSjXQLPXqzu2JjdShhUN/EBBhAhkTfDYs6KLYZJ/te', NULL, '2024-01-15 14:33:52', '2024-01-15 14:33:52', 6, 0, 1),
(392, 'MABONDZO Chessant', '242066283117', 'chessantmabondzo@gmail.com', NULL, '$2y$10$NC7c0UkWNBvJPAIIcjibP.bmNiLsVJR21Prpx.ji3aKp3z3iKChTW', NULL, '2024-01-15 14:36:52', '2024-01-15 14:36:52', 6, 0, 1),
(393, 'MAKOUANGOU MISSIE R.', '242067530775', 'mmakouangou@gmail.com', NULL, '$2y$10$ealC5n2FDcZipWYiRaDYs./JRHNdxJ2SQj2v0pYnbD8.SrHhh/1ye', NULL, '2024-01-15 14:40:11', '2024-01-15 14:40:11', 6, 0, 1),
(394, 'MADINGOU Haudilon', '242066446499', 'haudilonmadingou@gmail.com', NULL, '$2y$10$S/FnG8tgNPTeExIPNfCm.Ojz0xu3z0wvRtB0v04cLrOGvlFT6tPw.', NULL, '2024-01-15 14:42:16', '2024-01-15 14:42:16', 6, 0, 1),
(395, 'MISSENGUE Edgard', '242069256878', 'edgardmissengue@gmail.com', NULL, '$2y$10$/GWdrVC/XxoGBssP.lG/tOQ3AyxPoI4rjAx5Zv5mX8sXCCJB2HKPy', NULL, '2024-01-15 14:44:16', '2024-01-15 14:44:16', 6, 0, 1),
(396, 'NGUIMBI Léon M.', '242069891602', 'magloirenguimbi@gmail.com', NULL, '$2y$10$E2ifKv2PhcwDQS/beTTI2.2/rTttZrcRpGhTGXniQzAwVhvSSw5Vq', NULL, '2024-01-15 14:47:29', '2024-01-15 14:47:29', 6, 0, 1),
(397, 'BAWOULA Casimir', '242066544658', 'casimirbawoula@gmail.com', NULL, '$2y$10$iVWpiUbpxBOOyWtlJXnXFOZPhpuz1QfvxNrhrX5/A.7M2vc.W6gUe', NULL, '2024-01-15 14:49:52', '2024-01-15 14:49:52', 6, 0, 1),
(398, 'BAMBELA LOUKAYA Nazaire', '242057696677', 'nazairebambela@gmail.com', NULL, '$2y$10$3wHl/VnrndI0M8JOiGzntuBMElLhfzX/P6u3u2eAVDS662yRdV7Ze', NULL, '2024-01-15 14:52:08', '2024-01-15 14:52:08', 6, 0, 1),
(399, 'LOUTOUMENI Mayithé', '242068018709', 'mayitheloutoumeni@gmail.com', NULL, '$2y$10$gVXLXHRdPx2d3ySTdIrPj.yhb158E3QDDYOLcJq3HxHK5bnjBy/RK', NULL, '2024-01-15 14:55:03', '2024-01-15 14:55:03', 6, 0, 1),
(400, 'TCHILOUEMBA Orphet', '242064075501', 'orphettchiloemba@gmail.com', NULL, '$2y$10$k9cjwyAB4UKSDzJ3XgM3ber/Lcdw/cfSNtWaFgxMJAjc..cyyiPvu', NULL, '2024-01-15 14:57:08', '2024-01-15 14:57:08', 6, 0, 1),
(401, 'BAZZA Dollestino', '242068213200', 'dollestinobazza@gmail.com', NULL, '$2y$10$RW0eKVnsrZDRIkRtQ3pCy.IDLlCLmDe3UcP97Zy9E57vS/m8zA5pO', NULL, '2024-01-15 15:00:28', '2024-01-15 15:00:28', 6, 0, 1),
(402, 'MASSAMBA Destinat  Aristone', '242068715905', 'destinetaristone@gmail.com', NULL, '$2y$10$RDo9eKpIUIcegJP/1q4KneaDkbtPBnDM/yotz3Z7NFk.LNZJGppmm', NULL, '2024-01-15 15:06:13', '2024-01-15 15:06:13', 6, 0, 1),
(403, 'BOURAÏMA Islamiath', '242040083810', 'islamiathbouraima@gmail.com', NULL, '$2y$10$Xy51ngRLzxNGqsZUWcR/Ke3ukkO/pQONwNZII5DheUrj9PUQl7Q9q', NULL, '2024-01-15 15:10:23', '2024-01-15 15:10:23', 6, 0, 1),
(404, 'KPANOU Alfred', '242068043884', 'alfredkpanou@gmail.com', NULL, '$2y$10$aZDx4efFCAYXAQkJOUlU3.ZIKH9bZqfJNqWNxHRyDQE5Qv3mM07T.', NULL, '2024-01-15 15:12:59', '2024-01-15 15:12:59', 6, 0, 1),
(405, 'LOEMBA Jacques', '242064605070', 'jacquesloemba@gmail.com', NULL, '$2y$10$RfU1wQha6o0/meWLlgKZ4OvqR1PHQjmMzemfa5K/pBjlJGFuEOb9e', NULL, '2024-01-15 15:41:12', '2024-01-15 15:41:12', 6, 0, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abscences`
--
ALTER TABLE `abscences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `annee_acads`
--
ALTER TABLE `annee_acads`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `appuie_cours`
--
ALTER TABLE `appuie_cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories_depenses`
--
ALTER TABLE `categories_depenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories_entrees`
--
ALTER TABLE `categories_entrees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `depenses`
--
ALTER TABLE `depenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diplomes`
--
ALTER TABLE `diplomes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecolages`
--
ALTER TABLE `ecolages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ecoles`
--
ALTER TABLE `ecoles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `eleves`
--
ALTER TABLE `eleves`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `emploie_temps`
--
ALTER TABLE `emploie_temps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entrees`
--
ALTER TABLE `entrees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ligne_emploi_temps`
--
ALTER TABLE `ligne_emploi_temps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ligne_releve_notes`
--
ALTER TABLE `ligne_releve_notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matieres`
--
ALTER TABLE `matieres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mois`
--
ALTER TABLE `mois`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `niveaux`
--
ALTER TABLE `niveaux`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parent_ecoles`
--
ALTER TABLE `parent_ecoles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `pointages`
--
ALTER TABLE `pointages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prof_ecole`
--
ALTER TABLE `prof_ecole`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `programmes_ecoles`
--
ALTER TABLE `programmes_ecoles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `programmes_ecoles_lignes`
--
ALTER TABLE `programmes_ecoles_lignes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `programmes_national`
--
ALTER TABLE `programmes_national`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `programmes_national_lignes`
--
ALTER TABLE `programmes_national_lignes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rapport_cours`
--
ALTER TABLE `rapport_cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rapport_jours`
--
ALTER TABLE `rapport_jours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `releve_notes`
--
ALTER TABLE `releve_notes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `releve_traites`
--
ALTER TABLE `releve_traites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sexes`
--
ALTER TABLE `sexes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suivi_paiements`
--
ALTER TABLE `suivi_paiements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tranche_horaires`
--
ALTER TABLE `tranche_horaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trimestres`
--
ALTER TABLE `trimestres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trimestre_ecoles`
--
ALTER TABLE `trimestre_ecoles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `types_enseignements`
--
ALTER TABLE `types_enseignements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abscences`
--
ALTER TABLE `abscences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `annee_acads`
--
ALTER TABLE `annee_acads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `appuie_cours`
--
ALTER TABLE `appuie_cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories_depenses`
--
ALTER TABLE `categories_depenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `categories_entrees`
--
ALTER TABLE `categories_entrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `depenses`
--
ALTER TABLE `depenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `diplomes`
--
ALTER TABLE `diplomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `ecolages`
--
ALTER TABLE `ecolages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `ecoles`
--
ALTER TABLE `ecoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `eleves`
--
ALTER TABLE `eleves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT pour la table `emploie_temps`
--
ALTER TABLE `emploie_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `entrees`
--
ALTER TABLE `entrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT pour la table `ligne_emploi_temps`
--
ALTER TABLE `ligne_emploi_temps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=625;

--
-- AUTO_INCREMENT pour la table `ligne_releve_notes`
--
ALTER TABLE `ligne_releve_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `matieres`
--
ALTER TABLE `matieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `mois`
--
ALTER TABLE `mois`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `niveaux`
--
ALTER TABLE `niveaux`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `parent_ecoles`
--
ALTER TABLE `parent_ecoles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT pour la table `pointages`
--
ALTER TABLE `pointages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `profs`
--
ALTER TABLE `profs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `prof_ecole`
--
ALTER TABLE `prof_ecole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT pour la table `programmes_ecoles`
--
ALTER TABLE `programmes_ecoles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `programmes_ecoles_lignes`
--
ALTER TABLE `programmes_ecoles_lignes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT pour la table `programmes_national`
--
ALTER TABLE `programmes_national`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `programmes_national_lignes`
--
ALTER TABLE `programmes_national_lignes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT pour la table `rapport_cours`
--
ALTER TABLE `rapport_cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT pour la table `rapport_jours`
--
ALTER TABLE `rapport_jours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `releve_notes`
--
ALTER TABLE `releve_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `releve_traites`
--
ALTER TABLE `releve_traites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `salles`
--
ALTER TABLE `salles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sexes`
--
ALTER TABLE `sexes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `suivi_paiements`
--
ALTER TABLE `suivi_paiements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=437;

--
-- AUTO_INCREMENT pour la table `tranche_horaires`
--
ALTER TABLE `tranche_horaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `trimestres`
--
ALTER TABLE `trimestres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `trimestre_ecoles`
--
ALTER TABLE `trimestre_ecoles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `types_enseignements`
--
ALTER TABLE `types_enseignements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
