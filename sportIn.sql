-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 04 mars 2021 à 15:44
-- Version du serveur :  5.7.24
-- Version de PHP : 8.0.2

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
('DoctrineMigrations\\Version20210303160407', '2021-03-03 16:04:56', 1029),
('DoctrineMigrations\\Version20210304154148', '2021-03-04 15:42:03', 17072);

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
-- Structure de la table `event_category`
--

CREATE TABLE `event_category` (
  `event_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_challenge`
--

CREATE TABLE `user_challenge` (
  `user_id` int(11) NOT NULL,
  `challenge_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_event`
--

CREATE TABLE `user_event` (
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0155143A76ED395` (`user_id`);

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
-- Index pour la table `event_category`
--
ALTER TABLE `event_category`
  ADD PRIMARY KEY (`event_id`,`category_id`),
  ADD KEY `IDX_40A0F01171F7E88B` (`event_id`),
  ADD KEY `IDX_40A0F01112469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_challenge`
--
ALTER TABLE `user_challenge`
  ADD PRIMARY KEY (`user_id`,`challenge_id`),
  ADD KEY `IDX_D7E904B5A76ED395` (`user_id`),
  ADD KEY `IDX_D7E904B598A21AC6` (`challenge_id`);

--
-- Index pour la table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`user_id`,`event_id`),
  ADD KEY `IDX_D96CF1FFA76ED395` (`user_id`),
  ADD KEY `IDX_D96CF1FF71F7E88B` (`event_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `FK_C0155143A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `event_category`
--
ALTER TABLE `event_category`
  ADD CONSTRAINT `FK_40A0F01112469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_40A0F01171F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_challenge`
--
ALTER TABLE `user_challenge`
  ADD CONSTRAINT `FK_D7E904B598A21AC6` FOREIGN KEY (`challenge_id`) REFERENCES `challenge` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D7E904B5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_event`
--
ALTER TABLE `user_event`
  ADD CONSTRAINT `FK_D96CF1FF71F7E88B` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D96CF1FFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
