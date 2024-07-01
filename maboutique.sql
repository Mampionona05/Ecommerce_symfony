-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 04 juil. 2023 à 11:30
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maboutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D4E6F81A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(6, 10, 'test1', 'test1', 'test1', 'test1', 'dfqdff', '645', 'test1', 'AO', '00685106851'),
(13, 8, 'Jules III', 'test', 'test', 'Société', 'Rue mahamasina 56', '101', 'Antananarivo', 'MG', '0548800545'),
(14, 8, 'Ambohitrimanjaka', 'Hery Mampionona', 'RAKOTOARIMANANA', 'Randevteam', 'ABE 62 II Bis Antanetibe Ambohitrimanjaka', '101', 'Antananarivo', 'MG', '0349000942'),
(15, 16, 'Tsimbazaza', 'Axel', 'Mampionona', NULL, 'TSZ 85 ter', '101', 'Antananarivo', 'MG', '1234567890');

-- --------------------------------------------------------

--
-- Structure de la table `carrier`
--

DROP TABLE IF EXISTS `carrier`;
CREATE TABLE IF NOT EXISTS `carrier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(3, 'DHL Madagascar', 'Le leader mondial du transport et de la logistique. DHL offre un portefeuille inégalé de services de logistique.', 1250000),
(4, 'FedEx Madagascar', 'FedEx propose une large gamme de services adaptés aux besoins des entreprises et des particuliers', 1350000);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(5, 'Broderies'),
(6, 'Instrument de musique'),
(7, 'Poterie'),
(8, 'Vannerie'),
(9, 'Landy'),
(10, 'Sculpture en bois'),
(11, 'Sculpture en pierre');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230417190239', '2023-04-17 19:05:01', 1336),
('DoctrineMigrations\\Version20230419070546', '2023-04-19 07:06:27', 1940),
('DoctrineMigrations\\Version20230427154101', '2023-04-27 15:42:48', 2567),
('DoctrineMigrations\\Version20230427162500', '2023-04-27 16:25:34', 3296),
('DoctrineMigrations\\Version20230523144904', '2023-05-23 14:49:50', 3020),
('DoctrineMigrations\\Version20230524180854', '2023-05-24 18:09:14', 2355),
('DoctrineMigrations\\Version20230524183501', '2023-05-24 18:35:40', 5300),
('DoctrineMigrations\\Version20230527091950', '2023-05-27 09:20:21', 2080),
('DoctrineMigrations\\Version20230607155658', '2023-06-07 15:57:33', 1181),
('DoctrineMigrations\\Version20230608151534', '2023-06-08 15:19:23', 1739),
('DoctrineMigrations\\Version20230628091113', '2023-06-28 09:11:47', 12299),
('DoctrineMigrations\\Version20230703124325', '2023-07-03 12:44:00', 6272);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5299398A76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `user_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session_id`, `state`) VALUES
(1, 8, '2023-05-28 16:45:07', 'Chronopost', 15, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '', '', 0),
(2, 8, '2023-06-02 08:05:23', 'Chronopost', 15, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '', '', 0),
(3, 8, '2023-06-07 08:08:03', 'Colissimo', 10, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '', '', 0),
(4, 8, '2023-06-07 10:21:05', 'Colissimo', 10, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '', '', 0),
(5, 8, '2023-06-08 13:22:42', 'Colissimo', 10, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '08062023-6481d622cba19', '', 0),
(6, 8, '2023-06-08 13:23:22', 'Colissimo', 10, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '08062023-6481d64ab5e7a', '', 0),
(7, 8, '2023-06-08 15:02:59', 'Colissimo', 10, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '08062023-6481eda393992', '', 0),
(8, 8, '2023-06-08 15:05:22', 'Colissimo', 10, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '08062023-6481ee3292b20', '', 0),
(9, 8, '2023-06-08 18:51:44', 'Chronopost', 1490, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '08062023-64822340726ae', '', 0),
(10, 8, '2023-06-08 18:51:53', 'Chronopost', 1490, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '08062023-648223497a28d', '', 0),
(11, 8, '2023-06-08 18:53:14', 'Chronopost', 1490, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '08062023-6482239a30a32', '', 0),
(12, 8, '2023-06-09 06:51:13', 'Colissimo', 990, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '09062023-6482cbe1b55ac', '', 0),
(13, 8, '2023-06-09 08:59:43', 'Colissimo', 990, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '09062023-6482e9ff72653', '', 0),
(14, 8, '2023-06-09 09:07:49', 'Colissimo', 990, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '09062023-6482ebe56d634', '', 0),
(15, 8, '2023-06-09 11:05:33', 'Colissimo', 990, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '09062023-6483077d50fc8', '', 0),
(16, 8, '2023-06-09 11:07:11', 'Chronopost', 1490, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '09062023-648307dfce9af', '', 0),
(17, 8, '2023-06-09 11:08:40', 'Chronopost', 1490, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '09062023-64830838e7c45', '', 0),
(18, 8, '2023-06-09 11:15:29', 'Chronopost', 1490, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '09062023-648309d178b61', '', 0),
(19, 8, '2023-06-09 11:16:45', 'Chronopost', 1490, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '09062023-64830a1dd97c9', '', 0),
(20, 8, '2023-06-09 12:29:29', 'Colissimo', 990, 'Mon Pote<br/>59629+562<br/>Rien<br/>65 rue de ma maison<br/>6363 Pekin<br/>CN', '09062023-64831b292417d', '', 0),
(21, 8, '2023-06-14 15:01:01', 'Colissimo', 990, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '14062023-6489d62d3f004', '', 0),
(22, 8, '2023-06-15 17:00:34', 'Chronopost', 1490, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b43b27d5e7', '', 0),
(23, 8, '2023-06-15 17:05:30', 'Chronopost', 1490, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b44da05679', '', 0),
(24, 8, '2023-06-15 17:07:26', 'Colissimo', 990, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '15062023-648b454e5cded', '', 0),
(25, 8, '2023-06-15 17:07:40', 'Colissimo', 990, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '15062023-648b455c799fb', '', 0),
(26, 8, '2023-06-15 17:08:12', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b457c19280', '', 0),
(27, 8, '2023-06-15 17:15:58', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b474ee3ee9', '', 0),
(28, 8, '2023-06-15 17:17:31', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b47ab9fadb', '', 0),
(29, 8, '2023-06-15 17:18:45', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b47f545537', '', 0),
(30, 8, '2023-06-15 17:19:52', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b48384531d', '', 0),
(31, 8, '2023-06-15 17:20:39', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b48674bc97', '', 0),
(32, 8, '2023-06-15 17:21:57', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b48b57e8d7', '', 0),
(33, 8, '2023-06-15 17:25:39', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b499305c4c', '', 0),
(34, 8, '2023-06-15 17:26:19', 'Colissimo', 990, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '15062023-648b49bbdddf2', '', 0),
(35, 8, '2023-06-22 15:28:54', 'Chronopost Madagascar', 1500000, 'Jack Ripper<br/>0865009846<br/>rue 88 de Marseille<br/>645 Marseille<br/>FR', '22062023-649468b600762', '', 2),
(36, 8, '2023-06-30 07:35:04', 'TNT Madagascar', 1200000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e85a8f100e', '', 0),
(37, 8, '2023-06-30 08:12:07', 'TNT Madagascar', 1200000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e8e570e294', '', 0),
(38, 8, '2023-06-30 08:13:14', 'TNT Madagascar', 1200000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e8e9ad2447', '', 0),
(39, 8, '2023-06-30 08:15:48', 'TNT Madagascar', 1200000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e8f3443d5a', '', 0),
(40, 8, '2023-06-30 08:16:55', 'TNT Madagascar', 1200000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e8f77e5406', '', 0),
(41, 8, '2023-06-30 08:17:17', 'TNT Madagascar', 1200000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e8f8d7ca48', '', 0),
(42, 8, '2023-06-30 08:19:27', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e900f07a3f', '', 0),
(43, 8, '2023-06-30 08:29:05', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e9251e754c', 'cs_test_b1kXQEGgnCCBOh4RtnzfaKjekcetReuguNA1npo2DbskbMX9lxWH2WtWWt', 0),
(44, 8, '2023-06-30 08:31:20', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e92d88b840', '', 0),
(45, 8, '2023-06-30 08:58:17', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e9929b9760', '', 0),
(46, 8, '2023-06-30 08:58:59', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649e9953c8e13', '', 0),
(47, 8, '2023-06-30 09:30:58', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649ea0d29d327', 'https://checkout.stripe.com/c/pay/cs_test_b1PHVGGKl1MShOO4dvGGhw76B4UjHuc4rzrZr9CFMGi253gHznntbT024U#fidkdWxOYHwnPyd1blpxYHZxWjA0S0JhdEZNTT1jQjFXTHQ3c11kTUp8akBRU2NXVWx9cEdtXVBScmw8VjdVdXVzTlM8fXJwTVBdfVN1QTx3SEpDYWczQF9pSnFwZFZuSjxPYjZOQX8xSXI8NTVScDUzaF', 0),
(48, 8, '2023-06-30 09:53:25', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649ea6150b27f', '', 0),
(49, 8, '2023-06-30 09:56:31', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649ea6cfa1d3f', '', 0),
(50, 8, '2023-06-30 10:06:39', 'DHL Madagascar', 1250000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649ea92f9ab9e', '', 0),
(51, 8, '2023-06-30 10:07:26', 'Chronopost Madagascar', 1500000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649ea95e93558', '', 0),
(52, 8, '2023-06-30 10:12:41', 'Chronopost Madagascar', 1500000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649eaa99832ba', '', 0),
(53, 8, '2023-06-30 10:14:39', 'Chronopost Madagascar', 1500000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649eab0fdf0ea', '', 1),
(56, 8, '2023-06-30 10:55:05', 'FedEx Madagascar', 1350000, 'test test<br/>0548800545<br/>Société<br/>Rue mahamasina 56<br/>101 Antananarivo<br/>MG', '30062023-649eb489235cf', '', 1),
(57, 8, '2023-07-03 07:08:35', 'Chronopost Madagascar', 1500000, 'Hery Mampionona RAKOTOARIMANANA<br/>0349000942<br/>Randevteam<br/>ABE 62 II Bis Antanetibe Ambohitrimanjaka<br/>101 Antananarivo<br/>MG', '03072023-64a273f347335', '', 1),
(58, 16, '2023-07-03 07:52:02', 'DHL Madagascar', 1250000, 'Axel Mampionona<br/>1234567890<br/>TSZ 85 ter<br/>101 Antananarivo<br/>MG', '03072023-64a27e22395fd', '', 1),
(59, 8, '2023-07-03 08:05:13', 'FedEx Madagascar', 1350000, 'Hery Mampionona RAKOTOARIMANANA<br/>0349000942<br/>Randevteam<br/>ABE 62 II Bis Antanetibe Ambohitrimanjaka<br/>101 Antananarivo<br/>MG', '03072023-64a28139bf3f2', '', 1),
(61, 16, '2023-07-03 08:09:53', 'DHL Madagascar', 1250000, 'Axel Mampionona<br/>1234567890<br/>TSZ 85 ter<br/>101 Antananarivo<br/>MG', '03072023-64a28251120de', '', 3),
(62, 16, '2023-07-03 08:18:54', 'FedEx Madagascar', 1350000, 'Axel Mampionona<br/>1234567890<br/>TSZ 85 ter<br/>101 Antananarivo<br/>MG', '03072023-64a2846ea3d8b', '', 2),
(63, 16, '2023-07-03 08:52:36', 'DHL Madagascar', 1250000, 'Axel Mampionona<br/>1234567890<br/>TSZ 85 ter<br/>101 Antananarivo<br/>MG', '03072023-64a28c5407c9d', '', 1),
(64, 16, '2023-07-03 09:03:40', 'FedEx Madagascar', 1350000, 'Axel Mampionona<br/>1234567890<br/>TSZ 85 ter<br/>101 Antananarivo<br/>MG', '03072023-64a28eec199c4', '', 1),
(65, 16, '2023-07-03 09:09:09', 'FedEx Madagascar', 1350000, 'Axel Mampionona<br/>1234567890<br/>TSZ 85 ter<br/>101 Antananarivo<br/>MG', '03072023-64a290350b98e', '', 0),
(66, 8, '2023-07-04 06:59:27', 'DHL Madagascar', 1250000, 'Hery Mampionona RAKOTOARIMANANA<br/>0349000942<br/>Randevteam<br/>ABE 62 II Bis Antanetibe Ambohitrimanjaka<br/>101 Antananarivo<br/>MG', '04072023-64a3c34fe9429', NULL, 0),
(67, 8, '2023-07-04 08:01:08', 'FedEx Madagascar', 1350000, 'Hery Mampionona RAKOTOARIMANANA<br/>0349000942<br/>Randevteam<br/>ABE 62 II Bis Antanetibe Ambohitrimanjaka<br/>101 Antananarivo<br/>MG', '04072023-64a3d1c4450b8', NULL, 1),
(68, 8, '2023-07-04 08:05:05', 'DHL Madagascar', 1250000, 'Hery Mampionona RAKOTOARIMANANA<br/>0349000942<br/>Randevteam<br/>ABE 62 II Bis Antanetibe Ambohitrimanjaka<br/>101 Antananarivo<br/>MG', '04072023-64a3d2b1da5b0', NULL, 1),
(69, 8, '2023-07-04 08:11:14', 'DHL Madagascar', 1250000, 'Hery Mampionona RAKOTOARIMANANA<br/>0349000942<br/>Randevteam<br/>ABE 62 II Bis Antanetibe Ambohitrimanjaka<br/>101 Antananarivo<br/>MG', '04072023-64a3d4226564c', NULL, 0),
(70, 16, '2023-07-04 08:14:59', 'DHL Madagascar', 1250000, 'Axel Mampionona<br/>1234567890<br/>TSZ 85 ter<br/>101 Antananarivo<br/>MG', '04072023-64a3d503686a7', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `my_order_id` int NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_845CA2C1BFCDF877` (`my_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_details`
--

INSERT INTO `order_details` (`id`, `my_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(1, 1, 'Le manteau Famille', 1, 7990, 7990),
(2, 1, 'Le Bonnet du skieur', 2, 1200, 2400),
(3, 2, 'Bonnet Rouge', 2, 900, 1800),
(4, 3, 'Le manteau du soirée', 1, 6900, 6900),
(5, 3, 'L\'écharpe du loveur', 1, 1900, 1900),
(6, 4, 'Le manteau du soirée', 1, 6900, 6900),
(7, 4, 'L\'écharpe du loveur', 1, 1900, 1900),
(8, 5, 'Le Bonnet du skieur', 2, 1200, 2400),
(9, 5, 'Le T-Shirt manche longue', 1, 1490, 1490),
(10, 6, 'Le Bonnet du skieur', 2, 1200, 2400),
(11, 6, 'Le T-Shirt manche longue', 1, 1490, 1490),
(12, 7, 'Le manteau Famille', 1, 7990, 7990),
(13, 7, 'L\'écharpe du loveur', 2, 1900, 3800),
(14, 8, 'Le manteau Famille', 1, 7990, 7990),
(15, 8, 'L\'écharpe du loveur', 2, 1900, 3800),
(16, 9, 'Le manteau Famille', 1, 7990, 7990),
(17, 9, 'L\'écharpe du loveur', 2, 1900, 3800),
(18, 10, 'Le manteau Famille', 1, 7990, 7990),
(19, 10, 'L\'écharpe du loveur', 2, 1900, 3800),
(20, 11, 'Le manteau Famille', 1, 7990, 7990),
(21, 11, 'L\'écharpe du loveur', 2, 1900, 3800),
(22, 12, 'Bonnet Rouge', 2, 900, 1800),
(23, 12, 'L\'écharpe du loveur', 1, 1900, 1900),
(24, 13, 'Bonnet Rouge', 2, 900, 1800),
(25, 13, 'L\'écharpe du loveur', 1, 1900, 1900),
(26, 14, 'Bonnet Rouge', 2, 900, 1800),
(27, 14, 'L\'écharpe du loveur', 1, 1900, 1900),
(28, 15, 'Bonnet Rouge', 1, 900, 900),
(29, 16, 'Bonnet Rouge', 1, 900, 900),
(30, 17, 'Bonnet Rouge', 1, 900, 900),
(31, 18, 'Bonnet Rouge', 1, 900, 900),
(32, 19, 'Bonnet Rouge', 1, 900, 900),
(33, 20, 'Bonnet Rouge', 1, 900, 900),
(34, 21, 'Le manteau Famille', 1, 7990, 7990),
(35, 22, 'Bonnet Rouge', 2, 900, 1800),
(36, 23, 'Bonnet Rouge', 2, 900, 1800),
(37, 24, 'Bonnet Rouge', 2, 900, 1800),
(38, 25, 'Bonnet Rouge', 2, 900, 1800),
(39, 26, 'Bonnet Rouge', 2, 900, 1800),
(40, 26, 'Le manteau du soirée', 1, 6900, 6900),
(41, 27, 'Bonnet Rouge', 2, 900, 1800),
(42, 27, 'Le manteau du soirée', 1, 6900, 6900),
(43, 28, 'Bonnet Rouge', 2, 900, 1800),
(44, 28, 'Le manteau du soirée', 1, 6900, 6900),
(45, 29, 'Bonnet Rouge', 2, 900, 1800),
(46, 29, 'Le manteau du soirée', 1, 6900, 6900),
(47, 30, 'Bonnet Rouge', 2, 900, 1800),
(48, 30, 'Le manteau du soirée', 1, 6900, 6900),
(49, 31, 'Bonnet Rouge', 2, 900, 1800),
(50, 31, 'Le manteau du soirée', 1, 6900, 6900),
(51, 32, 'Bonnet Rouge', 2, 900, 1800),
(52, 32, 'Le manteau du soirée', 1, 6900, 6900),
(53, 33, 'Bonnet Rouge', 2, 900, 1800),
(54, 33, 'Le manteau du soirée', 1, 6900, 6900),
(55, 34, 'Bonnet Rouge', 2, 900, 1800),
(56, 34, 'Le manteau du soirée', 1, 6900, 6900),
(57, 35, 'Arona raphia', 1, 2500000, 2500000),
(58, 36, 'Arona raphia', 1, 2500000, 2500000),
(59, 37, 'Arona raphia', 1, 2500000, 2500000),
(60, 38, 'Arona raphia', 1, 2500000, 2500000),
(61, 39, 'Arona raphia', 1, 2500000, 2500000),
(62, 40, 'Arona raphia', 1, 2500000, 2500000),
(63, 41, 'Arona raphia', 1, 2500000, 2500000),
(64, 42, 'Arona raphia', 1, 2500000, 2500000),
(65, 43, 'Arona raphia', 1, 2500000, 2500000),
(66, 44, 'Arona raphia', 1, 2500000, 2500000),
(67, 45, 'Arona raphia', 1, 2500000, 2500000),
(68, 46, 'Arona raphia', 1, 2500000, 2500000),
(69, 47, 'Arona raphia', 1, 2500000, 2500000),
(70, 48, 'Arona raphia', 1, 2500000, 2500000),
(71, 49, 'Arona raphia', 1, 2500000, 2500000),
(72, 50, 'Arona raphia', 1, 2500000, 2500000),
(73, 51, 'Arona raphia', 1, 2500000, 2500000),
(74, 52, 'Arona raphia', 1, 2500000, 2500000),
(75, 53, 'Arona raphia', 1, 2500000, 2500000),
(76, 56, 'Des sculptures en pierre', 1, 7500000, 7500000),
(77, 56, 'L\'écharpe en Landy', 1, 1200000, 1200000),
(78, 57, 'Pannière', 2, 500000, 1000000),
(79, 58, 'Arona raphia', 2, 2500000, 5000000),
(80, 59, 'Pannière', 2, 500000, 1000000),
(81, 61, 'Statue en bois', 1, 4000000, 4000000),
(82, 62, 'Des sculptures en pierre', 1, 7500000, 7500000),
(83, 63, 'L\'écharpe en Landy', 1, 1200000, 1200000),
(84, 64, 'L\'écharpe en Landy', 1, 1200000, 1200000),
(85, 65, 'Pannière', 1, 500000, 500000),
(86, 66, 'Arona raphia', 2, 2500000, 5000000),
(87, 67, 'Arona raphia', 2, 2500000, 5000000),
(88, 67, 'L\'écharpe en Landy', 2, 1200000, 2400000),
(89, 68, 'Statue en bois', 2, 4000000, 8000000),
(90, 68, 'Panière', 1, 500000, 500000),
(91, 70, 'Christaux noir', 1, 5000000, 5000000);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_best` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `price`, `is_best`) VALUES
(12, 5, 'Panière', 'broderie-1', '39c102fdaa21fb74ebe58f65edc1917d221204d2.jpg', 'Le meilleur pannière pour la table', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 500000, 0),
(14, 6, 'Valiha', 'valiha', 'efdb9d629295842624b0ba35e3881829563af340.jpg', 'L\'instrument de musique le plus populaire de Madagascar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 5000000, 1),
(18, 10, 'Statue en bois', 'statue-en-bois', '0ad35e1794dd33b584a0f9120cfc792ae2643345.jpg', 'Les deux personnes en statue', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 4000000, 0),
(19, 8, 'Arona raphia', 'arona-raphia', 'bf037d65976fcac2727aa270cbe9969e8faada2e.jpg', 'Le meilleur vannerie du moment', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 2500000, 0),
(20, 9, 'L\'écharpe en Landy', 'lecharpe-en-landy', 'd8a10d33afb486b3087435d2327324f75de247cc.jpg', 'L\'écharpe parfait en landy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 1200000, 1),
(21, 11, 'Des sculptures en pierre', 'des-sculptures-en-pierre', '9a8f1e837b2eab160a063c5d5a6b3a94840ef989.jpg', 'Les magnifiques pierre de Madagascar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 7500000, 0),
(22, 6, 'Flûte', 'flûte', 'a635a145ec84fa6f9be1090952a09605fb8da6cc.jpg', 'L\'instrument de musique le plus cool de Madagascar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 1000000, 1),
(23, 8, 'Arona raphia noir', 'arona-raphia-noir', '21a5798b4c0948d4378c4e6e6830e3029cbc5c05.jpg', 'Le meilleur arona raphia noir', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 2000000, 1),
(24, 11, 'Christaux noir', 'christaux-noir', '7e2098035b3d55a4f65b3d623276844954e05cfc.jpg', 'Le magnifique pierre précieux de Madagascar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..', 5000000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(8, 'rak.herymampionona@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$AWSzQ6tnJtY02zZ2YNJeWe/7eezQDJIZTVToqaKBiFVfMBtwbXqyu', 'Hery Mampionona', 'RAKOTOARIMANANA'),
(10, 'test1@test1.com', '[]', '$2y$13$VyNXR5mo./ShKH6uVxyONeO9A20g3If318XINKuXl9X4NkZz9amtC', 'test1', 'test1'),
(16, 'axelmampionona@gmail.com', '[]', '$2y$13$4p6P6f420G5gi2T84hd5Uu4W4mmrKeelW297nXs6E6UaTX2Xm4ep.', 'Axel', 'Mampionona');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C1BFCDF877` FOREIGN KEY (`my_order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
