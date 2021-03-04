-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 04 mars 2021 à 06:15
-- Version du serveur :  5.7.24
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sportin`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `sponsors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xp_events` int(11) NOT NULL,
  `category_sport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `type`, `xp_events`, `category_sport`, `category_event`) VALUES
(1, 'test1616', 2, 'ski', 'événement'),
(2, 'test1617', 2, 'parachutisme', 'Défis');

-- --------------------------------------------------------

--
-- Structure de la table `challenge`
--

CREATE TABLE `challenge` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `participant` int(11) NOT NULL,
  `organisateur` int(11) NOT NULL,
  `xp_winner` int(11) NOT NULL,
  `arbitre` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `date_validation` datetime NOT NULL,
  `date_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `challenge`
--

INSERT INTO `challenge` (`id`, `type`, `pseudo`, `participant`, `organisateur`, `xp_winner`, `arbitre`, `created_at`, `date_validation`, `date_fin`) VALUES
(1, 'test1606', 'lo', 1, 1, 2, 1, '2021-03-02 00:00:00', '2021-04-01 00:00:00', '2021-12-01 00:00:00');

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
('DoctrineMigrations\\Version20210225142607', '2021-02-25 14:26:39', 708),
('DoctrineMigrations\\Version20210225143937', '2021-02-25 14:39:53', 93),
('DoctrineMigrations\\Version20210225152147', '2021-02-25 15:21:58', 66),
('DoctrineMigrations\\Version20210225152451', '2021-02-25 15:24:59', 81),
('DoctrineMigrations\\Version20210225152846', '2021-02-25 15:28:52', 91),
('DoctrineMigrations\\Version20210226102053', '2021-02-26 10:21:24', 114),
('DoctrineMigrations\\Version20210226102613', '2021-02-26 10:26:21', 80),
('DoctrineMigrations\\Version20210226102751', '2021-02-26 10:27:57', 100),
('DoctrineMigrations\\Version20210301134719', '2021-03-01 13:54:46', 1478),
('DoctrineMigrations\\Version20210301135335', '2021-03-01 15:31:59', 967),
('DoctrineMigrations\\Version20210301152210', '2021-03-01 15:34:01', 801),
('DoctrineMigrations\\Version20210303160407', '2021-03-03 16:04:56', 1029);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_events` datetime NOT NULL,
  `categories_events` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_players` int(11) NOT NULL,
  `xp_events` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `title`, `contents`, `date_events`, `categories_events`, `member_players`, `xp_events`, `user_id`, `created_at`) VALUES
(1, 'Match foot', 'match en nocturne', '2021-03-04 00:00:00', 'événements', 10, 1, 1, '2020-03-03 00:00:00'),
(2, 'courir', 'marathon', '2021-05-12 00:00:00', 'challange', 1, 3, 1, '2021-03-01 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xp_points` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `nb_events` int(11) NOT NULL,
  `rgpd` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `birth_date` datetime NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`, `xp_points`, `level`, `nb_events`, `rgpd`, `created_at`, `is_verified`, `birth_date`, `gender`, `description`) VALUES
(1, 'fff@sfr.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$U2hmcXFwOU42VjFDSHV0Mw$8ISp+T2aZXVuQ3AP+Pyz1QrFxQb3nEEfEEfmIGD4D8E', 'fff', 0, 0, 0, 1, '2021-03-03 08:46:12', 0, '1957-01-01 00:00:00', 'Homme', ''),
(2, 'lo@sfr.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UE83dFo1TDdudGF4NGIzeQ$3aU8SfgXJ+Na6zA79R7x3o6OAknsiazG+SZHRjvXtLo', 'lo', 0, 0, 0, 1, '2021-03-03 09:22:36', 0, '1958-01-01 00:00:00', 'Femme', ''),
(3, 'lolo@sfr.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$WUdCanRFTDVMd04wLjA2TQ$q/q77SsBPOq3DIjZupR7humpIxhsqEUGlC8gS4P230I', 'lolo', 0, 0, 0, 1, '2021-03-03 09:28:23', 0, '1950-01-01 00:00:00', 'Homme', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `challenge`
--
ALTER TABLE `challenge`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `challenge`
--
ALTER TABLE `challenge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
