-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 17 mai 2021 à 13:25
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsbsymfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `delegue`
--

CREATE TABLE `delegue` (
  `id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delegue`
--

INSERT INTO `delegue` (`id`, `password`, `username`) VALUES
(6, '$2y$13$SirORBsyhSBOo7U7zDcTh.TaSKVNU3eVk.xLSO9SeQHf3YpIMuFWK', 'ydonat');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE `praticien` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coef_notoriete` double NOT NULL,
  `coef_confiance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `praticien`
--

INSERT INTO `praticien` (`id`, `type_id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `coef_notoriete`, `coef_confiance`) VALUES
(301, 401, 'Philippe', 'Agnès', '71, impasse de Gomes\n47929 Laportenec', '81 316', 'Gosselin', 3, 3),
(302, 402, 'Dumont', 'Patrick', '6, impasse Bernard Mallet\n62 636 Roux', '71026', 'Bouvet', 2, 1),
(303, 403, 'Mallet', 'Aimée', '9, impasse Pereira\n07 887 Texier', '51 541', 'Roussel-sur-Marion', 1, 2),
(304, 401, 'Dupont', 'Honoré', '73, rue Delahaye\n28182 Texiernec', '53 295', 'Boucher', 2, 3),
(305, 402, 'Merle', 'Gérard', '2, boulevard de Girard\n00 258 Pereira', '33 455', 'Herve', 2, 2),
(306, 403, 'Fleury', 'Grégoire', '9, rue Claude Carre\n24 232 Duboisnec', '10109', 'Legendre', 3, 3),
(307, 401, 'Mace', 'Pierre', '32, boulevard Michel Vallee\n44 809 Carpentier', '18522', 'Huet', 3, 3),
(308, 402, 'Germain', 'Laurence', '5, boulevard de Guichard\n59435 Meunier', '43206', 'Vidal-sur-Benard', 2, 3),
(309, 403, 'Girard', 'Mathilde', '5, place de Delattre\n67 025 Barbe', '56655', 'Lucas', 1, 2),
(310, 401, 'Remy', 'Renée', '925, rue Lecoq\n21008 Dufour-sur-Martins', '86467', 'Lebreton-la-Forêt', 1, 3),
(311, 402, 'Allain', 'Matthieu', '10, place Véronique Roger\n99777 GuyonBourg', '86 224', 'Chartier', 1, 1),
(312, 403, 'Maillot', 'Arthur', '71, avenue de Raynaud\n99078 Breton-sur-Mer', '10674', 'Letellierboeuf', 1, 1),
(313, 401, 'Humbert', 'Joseph', '23, boulevard Théophile Ruiz\n84 477 Bourgeois', '95 597', 'Camus', 1, 2),
(314, 402, 'Baudry', 'Martin', 'place de Torres\n17 464 Barbier-sur-Mathieu', '04 401', 'Peron', 2, 3),
(315, 403, 'Lemaitre', 'Jérôme', '82, rue Colette Valentin\n81 811 Morel', '41 101', 'Ledouxnec', 2, 1),
(316, 401, 'Launay', 'Vincent', '51, rue de Grenier\n05468 Michaud', '19 221', 'Barre', 1, 2),
(317, 402, 'Martel', 'Christophe', '21, place André Gerard\n91331 Joly', '89 788', 'Morel-la-Forêt', 2, 1),
(318, 403, 'Michel', 'Patrick', '8, chemin de Bernard\n43 225 Sauvage-sur-Roger', '57082', 'Chartier', 1, 3),
(319, 401, 'Meunier', 'Inès', '17, impasse Georges\n20 671 Tessier-la-Forêt', '55 394', 'Mace-la-Forêt', 3, 3),
(320, 402, 'Evrard', 'Adèle', '9, place Roy\n70 116 AubertBourg', '65275', 'Gerard', 1, 2),
(321, 403, 'Lefevre', 'Luc', '1, boulevard Roland Gonzalez\n11 910 Michaudnec', '47 815', 'Blancboeuf', 1, 2),
(322, 401, 'Leclercq', 'Aimé', '63, avenue Huet\n00248 Joly-les-Bains', '49055', 'Jean', 1, 2),
(323, 402, 'Chevalier', 'Aimée', 'avenue Gérard Maillot\n34 896 Lecomte', '96 266', 'Lemonnier', 2, 1),
(324, 403, 'Peron', 'Bertrand', '866, avenue Colette Renard\n20961 Meyer-sur-Guyot', '03100', 'Ferrandnec', 1, 3),
(325, 401, 'Lebon', 'Brigitte', '788, chemin de Guerin\n57695 Ramos', '12934', 'Lemoine-les-Bains', 3, 2),
(326, 402, 'Maillet', 'Pénélope', '93, place Rocher\n61 215 Simondan', '06605', 'Da Costanec', 1, 3),
(327, 403, 'Reynaud', 'Gilbert', '41, rue de Lopes\n86217 Guyon', '91 754', 'Dumas-les-Bains', 3, 2),
(328, 401, 'Jourdan', 'Philippe', '7, impasse Marie\n58528 Deschamps', '25659', 'Poirier', 2, 3),
(329, 402, 'Philippe', 'Cécile', '29, chemin Roger Durand\n35 188 Marie-sur-Ramos', '41841', 'Royerdan', 3, 3),
(330, 403, 'Adam', 'Joseph', 'rue Thérèse Allain\n50 368 Julien', '86325', 'Gilbertdan', 3, 3),
(331, 401, 'Blanchard', 'Gabrielle', 'boulevard Alves\n55 450 Fabre-sur-Bernard', '52 538', 'MarieBourg', 2, 1),
(332, 402, 'Lenoir', 'Martine', '758, impasse Lopez\n15207 Reynec', '61 029', 'Fournier', 1, 1),
(333, 403, 'Vasseur', 'Guillaume', '28, chemin de Lefort\n35825 ChretienBourg', '02 073', 'Fernandes', 2, 2),
(334, 401, 'Masson', 'Zacharie', '89, rue de Fernandes\n18780 Picard', '50739', 'Pineau', 1, 1),
(335, 402, 'Leveque', 'Marc', '62, impasse de Marques\n44 034 Delaunay-les-Bains', '70 783', 'Hubert-la-Forêt', 3, 2),
(336, 403, 'Girard', 'Alix', 'impasse Édith Herve\n37181 Lambert', '02196', 'JulienBourg', 2, 3),
(337, 401, 'Evrard', 'Jérôme', '873, place Bazin\n91 292 HamelBourg', '57 676', 'Cordier', 1, 2),
(338, 402, 'Bernier', 'Benoît', '97, chemin Olivie Valette\n88064 Jourdan', '24134', 'Mahe-les-Bains', 2, 3),
(339, 403, 'Duval', 'Raymond', '37, impasse de Evrard\n18 099 TecherBourg', '74 246', 'Langlois', 3, 1),
(340, 401, 'Parent', 'Margaud', '8, boulevard Alfred Vaillant\n39 546 Fabre-les-Bains', '60794', 'Charles-sur-Mer', 3, 2),
(341, 402, 'Boulay', 'Clémence', '9, place Laetitia Simon\n06399 SalmonVille', '70 447', 'Thibault', 2, 2),
(342, 403, 'Clement', 'Hugues', '87, avenue Mace\n90 458 Allain', '64764', 'Delattre', 1, 2),
(343, 401, 'Berthelot', 'Julien', '8, avenue de Faure\n89 153 Marin-sur-Mer', '89314', 'LeleuBourg', 2, 2),
(344, 402, 'Hardy', 'Aimé', '2, rue de Dos Santos\n42 990 Bonnin-la-Forêt', '56764', 'LecomteVille', 1, 2),
(345, 403, 'Moreno', 'Xavier', '149, place Guy Dupuis\n27700 Humbert-sur-Berger', '01 371', 'TorresVille', 2, 1),
(346, 401, 'Tanguy', 'Thierry', '10, chemin Pires\n41 279 Peltiernec', '39 891', 'Leduc-sur-Carlier', 1, 2),
(347, 402, 'Rodrigues', 'Brigitte', '37, place Lucy Baudry\n89944 Riou-la-Forêt', '16 961', 'Bessonboeuf', 1, 2),
(348, 403, 'Lefort', 'Nathalie', '25, rue Élise Robin\n66 942 Regnier', '18 916', 'Bonneau-les-Bains', 3, 2),
(349, 401, 'Grenier', 'Marine', '6, impasse Roland Petitjean\n30837 Besnard-les-Bains', '14677', 'Duval', 2, 1),
(350, 402, 'Guilbert', 'Joséphine', '23, impasse de Hebert\n60 240 Gaillard-sur-Toussaint', '00317', 'Maillet-sur-Colin', 2, 3),
(351, 403, 'Lecoq', 'Martine', 'rue Hélène Rodriguez\n27 302 Denis-sur-Pottier', '48 143', 'Raynaudboeuf', 1, 1),
(352, 401, 'Benard', 'Olivie', '895, rue Delaunay\n48300 BoucherVille', '40526', 'Lucas', 1, 2),
(353, 402, 'Jean', 'Marcel', '91, chemin Nathalie Clerc\n37 395 RobinVille', '97881', 'Parent-la-Forêt', 2, 2),
(354, 403, 'Leconte', 'Suzanne', '53, avenue de Buisson\n30 288 Delahaye', '62 365', 'Cohen', 2, 3),
(355, 401, 'Maury', 'Xavier', '79, impasse Paul\n10337 Becker', '18067', 'CaronVille', 2, 1),
(356, 402, 'Ribeiro', 'Léon', '94, rue Dorothée Nicolas\n15709 LacroixBourg', '10 007', 'Meyer', 2, 3),
(357, 403, 'Leclerc', 'Suzanne', 'impasse de Bourdon\n40 596 Marie-sur-Pineau', '04 716', 'Perrier-sur-Diaz', 3, 1),
(358, 401, 'Tanguy', 'André', 'impasse William Jourdan\n02 175 Delorme', '43193', 'Charpentier', 3, 1),
(359, 402, 'Arnaud', 'Astrid', '29, place Marchand\n57 112 Jacques-sur-Martinez', '43219', 'Jourdan', 2, 3),
(360, 403, 'Gautier', 'Anne', '99, place Susan Besson\n05010 Jacob', '56 090', 'Bernard-les-Bains', 2, 1),
(361, 401, 'Paris', 'Tristan', 'impasse de Laroche\n47 712 Fouquet', '84142', 'Baron', 1, 1),
(362, 402, 'Robin', 'Claudine', '1, avenue Roger Morin\n23 884 Weberdan', '10 041', 'Devaux', 3, 1),
(363, 403, 'Fontaine', 'Zoé', '50, chemin Maury\n67 332 Lemonnier', '33 826', 'Potier', 1, 1),
(364, 401, 'Mace', 'Mathilde', '23, boulevard Guilbert\n30574 Dupre-la-Forêt', '28933', 'Morvan', 3, 2),
(365, 402, 'Bonneau', 'Simone', '696, avenue de Lebon\n74 646 Chauvin', '59 175', 'Blanc-la-Forêt', 3, 2),
(366, 403, 'Vallet', 'Timothée', '90, boulevard Danielle Fischer\n03758 Thierry-la-Forêt', '33027', 'Huet', 2, 3),
(367, 401, 'Lambert', 'Catherine', '89, place Schmitt\n15254 Bertin-sur-Marie', '00555', 'De Sousa-la-Forêt', 1, 2),
(368, 402, 'Godard', 'Gilbert', '97, chemin Robert Gregoire\n38726 Dupre-la-Forêt', '07 570', 'Gaudin', 1, 2),
(369, 403, 'Guillot', 'Renée', '12, avenue de Guilbert\n89 486 Marynec', '50850', 'Meunier', 1, 3),
(370, 401, 'Guillet', 'Sébastien', 'boulevard de Arnaud\n84271 David', '59169', 'Ribeironec', 1, 3),
(371, 402, 'Paul', 'Noël', '88, place Dumont\n96 376 GimenezVille', '25 785', 'Martel', 3, 1),
(372, 403, 'Bernard', 'Roger', 'rue Célina Collet\n46046 Godard-sur-Mer', '14815', 'Hebert-sur-Da Silva', 2, 3),
(373, 401, 'Chevallier', 'Augustin', '77, rue Danielle Rocher\n60907 Durand', '96 163', 'Benard-les-Bains', 2, 1),
(374, 402, 'Carpentier', 'Léon', '1, avenue Victor Royer\n92 532 LejeuneVille', '25 101', 'Torres', 2, 3),
(375, 403, 'Begue', 'Xavier', '70, boulevard Margaud Bodin\n47296 Moreno', '10379', 'Vaillant-sur-Louis', 3, 2),
(376, 401, 'Guillot', 'Thérèse', '70, rue de Descamps\n56304 Blot', '69 622', 'Pierre', 2, 1),
(377, 402, 'Bodin', 'Margaud', '951, rue Olivie Mendes\n87 077 Paris-sur-Bernard', '72 741', 'Mullernec', 2, 3),
(378, 403, 'Lopez', 'Benoît', '70, rue Timothée Duhamel\n07 030 Letellierboeuf', '65650', 'Rolland-les-Bains', 1, 1),
(379, 401, 'Salmon', 'Louise', '292, boulevard de Dupuis\n76 115 GuichardVille', '40 897', 'Mary', 1, 3),
(380, 402, 'Descamps', 'Capucine', '38, boulevard Élisabeth Brun\n30194 Pichon', '68 281', 'Michaud-sur-Francois', 1, 2),
(381, 403, 'Bonnet', 'Jeannine', '58, chemin de Robert\n32 961 Leconte-la-Forêt', '42799', 'Bernard', 3, 3),
(382, 401, 'Fernandez', 'Benoît', '33, avenue Louis Guyot\n41786 Renard', '42301', 'Laurent', 1, 2),
(383, 402, 'Pasquier', 'Jérôme', '49, rue de Legros\n97927 Pichon', '21 408', 'ChartierVille', 1, 1),
(384, 403, 'Gomes', 'Astrid', '92, place de Becker\n17943 Normand', '41431', 'Pruvost-les-Bains', 2, 3),
(385, 401, 'Neveu', 'Agnès', '690, rue de Barbe\n23778 Pineau', '34 760', 'Guillet-sur-Mer', 1, 1),
(386, 402, 'Lambert', 'Robert', '678, boulevard Denis\n39 987 Blanchet', '70 771', 'Blanchet', 2, 3),
(387, 403, 'Boucher', 'Louis', '86, rue René Poirier\n59871 NormandBourg', '07690', 'Rodrigues', 1, 1),
(388, 401, 'Mary', 'Julien', '44, boulevard Vincent Berthelot\n68268 Mercier', '77910', 'Chauvetnec', 1, 1),
(389, 402, 'Legendre', 'Olivie', 'rue de Antoine\n28 923 Thomas', '60 999', 'Vasseur', 3, 2),
(390, 403, 'Gerard', 'Sophie', '68, impasse Mathilde Cordier\n96 342 Chauvet', '05514', 'Launay-la-Forêt', 1, 3),
(391, 401, 'Rousseau', 'Roland', '222, boulevard Ollivier\n70535 Collet', '49 400', 'Perrin', 2, 1),
(392, 402, 'Hoarau', 'Alexandre', '38, chemin Poulain\n64130 Chevallierboeuf', '75420', 'BlondelBourg', 1, 3),
(393, 403, 'Pascal', 'Patricia', '8, chemin de Reynaud\n21 424 Maurice', '05 169', 'Boulanger-les-Bains', 3, 1),
(394, 401, 'Bruneau', 'Agnès', '172, rue Honoré Clerc\n54093 Bourgeois', '41 244', 'Raymond', 2, 1),
(395, 402, 'Laporte', 'Françoise', '78, avenue Jérôme Ferreira\n64115 Foucher', '41149', 'Torresdan', 2, 3),
(396, 403, 'Roux', 'Jeanne', '33, boulevard Robert\n80 631 Lemaire-sur-Lejeune', '86 601', 'Barbe', 1, 3),
(397, 401, 'Moreau', 'Caroline', 'avenue Gomes\n70850 Barbe', '66 144', 'Gilbert', 3, 3),
(398, 402, 'Lebrun', 'Émile', '69, impasse Becker\n64743 Bernier', '87683', 'Parisnec', 3, 2),
(399, 403, 'Dupre', 'Simone', '5, rue de Fabre\n89 131 Durand', '01426', 'Devaux', 2, 2),
(400, 401, 'Paris', 'Édouard', '74, boulevard Roux\n99 123 Meyer', '64695', 'Dupuy-sur-Roger', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

CREATE TABLE `rapport_visite` (
  `id` int(11) NOT NULL,
  `visiteur_id` int(11) NOT NULL,
  `bilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_visite` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_rapport` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`id`, `visiteur_id`, `bilan`, `date_visite`, `date_rapport`, `etat`) VALUES
(201, 201, 'Ut voluptatem id sapiente veniam veritatis dolore. Sit vero reprehenderit ipsa molestiae. Voluptatum animi qui quia unde rerum corporis ut. Est ut dolorem eaque id asperiores saepe ut.', '1980-10-15', '2000-04-19', 1),
(202, 202, 'Dolorem unde quaerat voluptate modi unde atque facilis. Et quisquam nihil atque fuga provident commodi dolor. Aut sapiente iusto perferendis possimus iste soluta rerum. Amet sed aut et ea non qui ea.', '1991-02-13', '2009-07-22', 0),
(203, 203, 'Laboriosam dicta rerum sed aliquid. Modi saepe ea porro omnis dolor voluptas itaque. Ea a et qui. Aut blanditiis nemo atque quo perspiciatis rerum similique.', '1987-10-12', '1983-02-16', 0),
(204, 201, 'Ut nemo hic repellendus nisi incidunt alias. Et iste perspiciatis dignissimos iure animi voluptas facilis officiis. Sed ut repellendus distinctio dignissimos quibusdam ut.', '1991-05-16', '1982-04-25', 0),
(205, 202, 'Blanditiis quaerat doloribus quo commodi commodi dolor. Aut quibusdam vero ut delectus soluta et iusto. Quia consequatur ipsum non eos facilis.', '2017-09-24', '1976-10-04', 0),
(206, 203, 'Et itaque dolor laborum rerum. Voluptatem velit incidunt velit sed et animi maxime. Voluptatem soluta temporibus odio cumque sunt dolor. Et ut ea iure maxime accusantium. Aut dolorem illo doloremque eos.', '1973-12-09', '1978-09-18', 1),
(207, 201, 'Velit recusandae non aliquam ut fugiat et. Cupiditate consequatur aspernatur non modi. Est eveniet voluptatum accusamus dolores officiis veritatis minima.', '2020-08-10', '1988-07-07', 0),
(208, 202, 'Ut omnis porro animi voluptatibus ad reprehenderit voluptatem. Autem consequuntur dignissimos ut similique ipsa non. Esse ut blanditiis dolor velit vero eos.', '2013-03-13', '2015-01-04', 1),
(209, 203, 'Accusamus quo sed quibusdam aut accusantium. Laudantium unde quia perspiciatis sunt voluptatem. Totam nisi optio magni dolorem. Quos impedit soluta eaque nobis. Quia dolores sint mollitia repudiandae. Veniam qui saepe voluptatibus dolores est.', '2013-11-05', '2016-02-04', 1),
(210, 201, 'Iste iste assumenda earum repellat natus accusantium. Amet eligendi consequuntur laborum possimus omnis. Odio voluptatem a provident ratione blanditiis minus recusandae.', '2007-11-19', '2000-12-29', 1),
(211, 202, 'Non odio excepturi velit molestiae. In eum ducimus velit placeat molestias. Reprehenderit similique ut doloribus consequuntur provident dicta. Accusamus autem et ut eum aut nihil quia.', '1986-12-17', '1999-07-07', 1),
(212, 203, 'Impedit error nemo facere consequatur illum ipsam nihil. Sapiente optio et itaque eos eius sint corporis placeat. Ut cupiditate consequatur blanditiis quia. Doloribus nemo hic laborum et iure.', '1977-07-09', '1988-09-16', 1),
(213, 201, 'Veniam consectetur assumenda vel. Aperiam autem voluptatem aperiam odio qui voluptas. Totam et eveniet itaque nemo vel adipisci.', '2014-04-03', '1973-06-09', 0),
(214, 202, 'Rem ut voluptas laudantium consectetur reiciendis. Modi voluptates pariatur tempora enim nihil nesciunt. Aut qui distinctio facilis nam nostrum velit suscipit.', '1983-04-23', '2001-03-19', 0),
(215, 203, 'Occaecati et et esse perspiciatis voluptatibus accusamus tempora magni. Facilis incidunt qui necessitatibus alias. Qui atque voluptatum aut.', '2015-03-06', '2004-04-22', 1),
(216, 201, 'Molestiae quos eos blanditiis esse aliquid libero. Porro sint qui iure et a. Sed aut quo minima ipsam ea. Ut vitae deleniti sed pariatur saepe aliquid. Iste iste hic fugit repellendus. Corrupti aspernatur est dolorem eveniet.', '1995-06-09', '2016-01-29', 0),
(217, 202, 'Ut expedita a beatae cumque. Quam similique quia similique debitis magnam non repudiandae repellat. Voluptatem deserunt dolores voluptatum illum eligendi rem ut. Temporibus quia repellat soluta ducimus.', '2010-12-07', '1971-12-02', 0),
(218, 203, 'Omnis qui rem repellat similique optio. Eum consequatur similique vitae fugiat omnis repudiandae cupiditate. Nulla assumenda beatae nihil sed. Laborum quos maxime labore illo tempora quod.', '1988-07-19', '1979-04-01', 0),
(219, 201, 'Saepe magnam ut deserunt odit vel natus iste. Numquam rerum minima sint. Quod quidem dolorem ducimus id debitis perspiciatis similique.', '2002-05-01', '1998-08-23', 0),
(220, 202, 'Eius temporibus ipsum inventore sint sunt architecto. Nam libero expedita quisquam omnis natus cum. Architecto suscipit sit voluptas non voluptatem deserunt asperiores.', '1975-12-01', '1981-05-11', 0),
(221, 203, 'Ut quam sint ut neque. Sint qui voluptatum temporibus eum. Voluptas temporibus voluptas animi et alias dicta repellendus. Dolor dolores sunt sed adipisci et. Dolor quibusdam vel voluptatum in aut voluptas.', '2008-03-26', '2018-08-05', 1),
(222, 201, 'Provident eaque ex quis eius explicabo. Omnis alias harum voluptatum doloremque deserunt rerum. Error ipsa temporibus dolorem et. Fugit qui consequatur omnis possimus impedit nihil possimus est.', '2004-03-16', '2019-12-30', 0),
(223, 202, 'Vel debitis natus hic deserunt nihil officia repellendus. Repellendus occaecati alias occaecati. Non nam sed nemo autem sunt. Quod qui qui sint corrupti. Illo sint rerum eum dolorem qui excepturi consequatur nemo. Et accusamus dolore laborum.', '2017-02-17', '1996-08-08', 1),
(224, 203, 'Cupiditate dignissimos expedita atque dolorem exercitationem. Modi quos aut consequatur et. Officiis eligendi cumque id est doloribus.', '1986-12-20', '1994-03-18', 0),
(225, 201, 'A quia tenetur sunt explicabo atque quo. Placeat sequi tenetur iusto consequuntur nihil ut id ullam. Eos dolor assumenda quasi qui quasi omnis a. Exercitationem id odio commodi.', '2007-02-04', '1995-11-30', 0),
(226, 202, 'Iure cupiditate saepe quidem animi necessitatibus. Repellat ut est eligendi suscipit cumque neque. Sint consequatur soluta est praesentium vitae aspernatur at sit. Adipisci quaerat voluptatem cupiditate eius.', '1982-03-20', '1970-08-26', 1),
(227, 203, 'Rem voluptas voluptatem harum sed. Consectetur officia quis consequatur corrupti. Doloribus qui voluptate doloremque ea neque tempore ut. Debitis dignissimos corrupti quam iste possimus.', '1978-09-03', '2016-05-11', 0),
(228, 201, 'Doloribus molestiae tempora aut magnam. Corrupti voluptas necessitatibus qui est eius dicta aut enim. Ut recusandae sit qui id ut. Provident animi sequi sunt vitae rerum. Sit illo aliquam ipsum maxime delectus deleniti iusto.', '1977-06-20', '1986-07-24', 0),
(229, 202, 'Aliquid provident rem dolor incidunt. Adipisci sed dolore non. Laudantium deserunt pariatur enim aperiam ratione repellat pariatur ut. Iusto rerum eveniet distinctio reprehenderit iste.', '1984-10-11', '1998-11-14', 1),
(230, 203, 'Amet nisi excepturi quisquam ut. Veniam eos quae et optio. Autem ducimus aliquam nemo facilis optio cumque. Dolorem libero soluta optio alias eos ea explicabo. Amet maiores dolores nam quia voluptas nihil ab. Non earum iusto aliquam est qui harum porro.', '2020-10-04', '1973-04-13', 0),
(231, 201, 'Ut odit earum debitis debitis. Explicabo blanditiis blanditiis eos quia. Iusto quam ut velit adipisci. Et aut tempora aliquid assumenda harum itaque.', '1974-10-05', '1980-08-17', 0),
(232, 202, 'Ratione earum facere quia eius. Quos inventore quia repellendus odio molestiae aut aut molestiae.', '2004-01-11', '2003-11-25', 0),
(233, 203, 'Consequatur consequatur deleniti cumque aut aspernatur deleniti cumque perspiciatis. Est dignissimos dicta velit consectetur voluptatem vero omnis. Assumenda impedit corrupti placeat exercitationem non aut voluptatum id.', '1995-09-11', '2003-07-03', 0),
(234, 201, 'Et ex rerum sequi voluptatem. Odit vel culpa dolores quos commodi eaque incidunt. Qui voluptas quis sequi et sit inventore fugiat.', '1997-12-21', '1983-12-17', 1),
(235, 202, 'Aut aut eaque odit voluptatem. Minima mollitia quo velit temporibus saepe sit. Voluptates ipsam minus sed doloremque. Et autem qui non aliquid. Facere totam occaecati voluptatem omnis animi.', '1972-08-21', '2003-04-23', 1),
(236, 203, 'Itaque eos id fuga consequatur. Ea dolores ea dolores quam natus. Tenetur aliquam voluptatibus eos deserunt. Dignissimos nemo odit ut id voluptatem facere velit. Et velit dolor aut ut aut totam eos. Consectetur aliquam quidem fugiat.', '1987-12-21', '2016-04-05', 0),
(237, 201, 'Architecto hic dolor nisi corporis ullam qui. Et nesciunt omnis quos quisquam eveniet quia repudiandae. Adipisci aperiam ratione non sequi minima. Debitis necessitatibus repellendus tempora perspiciatis.', '1997-02-15', '2005-01-05', 0),
(238, 202, 'Voluptas aut ipsam voluptatem nesciunt. Enim ut non et molestiae. Aut et et eius omnis doloribus. Velit mollitia cumque et voluptas dolor possimus qui. Magnam et tenetur incidunt. Perferendis nihil tempore numquam quaerat. Dolores cum in in iure.', '1989-01-14', '1974-08-25', 0),
(239, 203, 'Nam asperiores ut voluptates. Fugit ut quia totam qui ut dolores veritatis. Ex dolor architecto non quae beatae velit voluptatem. Consequatur nihil consequatur numquam error est explicabo ducimus.', '1997-07-31', '2006-11-11', 1),
(240, 201, 'Odio nesciunt adipisci reprehenderit. Autem possimus pariatur sed eveniet rerum. Et sapiente quibusdam optio impedit non. Dignissimos aut id optio. Sed illum veritatis qui rem laboriosam ut sunt veniam.', '2002-04-04', '1987-12-02', 1),
(241, 202, 'Quaerat voluptatem qui praesentium. Recusandae est nulla quia error quae. Temporibus laboriosam sapiente odit quis ea perspiciatis quis qui. Illum excepturi voluptas repellat rerum nulla ipsa vel provident.', '2006-04-19', '2004-12-14', 1),
(242, 203, 'Culpa accusamus ut rerum dolor rerum. Est officia qui ut. Explicabo dolores ut in. Perferendis unde aut deserunt.', '1998-04-28', '2009-06-06', 1),
(243, 201, 'Eum nemo dolorem nemo dolorem rerum. Suscipit vel quae qui ipsam blanditiis. Voluptatem cum vel quia nihil quaerat at. Architecto debitis rem nihil ab cumque. Voluptatem pariatur itaque accusantium iusto natus quibusdam. Et quia et at maiores nobis qui.', '1993-10-23', '2012-06-17', 0),
(244, 202, 'Fugiat eos cum voluptatem. Sequi fugit sequi vel vel omnis. Labore soluta aut magni veritatis. Adipisci ad labore iure ad quam explicabo. Incidunt doloremque sint ut velit tempora consequatur ab quo.', '1978-03-26', '1983-01-27', 0),
(245, 203, 'Fuga itaque ab iusto. Odio veniam soluta distinctio totam est. Qui iste consequatur sint voluptas quisquam nihil iste.', '1985-09-09', '1998-01-04', 1),
(246, 201, 'Sed maxime ipsum porro et numquam. Quia eos non eaque corporis ullam eos. Cum pariatur similique velit deserunt quaerat et autem. Est qui magni dolores non.', '2013-11-08', '1996-04-14', 1),
(247, 202, 'Explicabo recusandae sed dolores hic sed reiciendis vitae. Nemo voluptatem alias veritatis nobis perferendis id et. Adipisci vel adipisci consequatur.', '2013-08-31', '2019-08-04', 0),
(248, 203, 'Ab qui occaecati quia possimus quas inventore. Delectus accusantium eum itaque sit aliquam vel. Reiciendis maiores repellat voluptates.', '1988-03-31', '2004-03-15', 1),
(249, 201, 'Qui voluptatum sit laborum ea expedita officiis. Voluptatem molestiae ducimus id nulla ab fugit qui. Occaecati quidem consequatur eum quasi qui voluptatibus. Dolores est qui quos et et sapiente.', '2007-02-14', '1989-09-25', 1),
(250, 202, 'Dolores non rem error rerum corrupti ut aut. Voluptas nihil labore dolorem est provident ex nam rem.', '1996-11-05', '1983-12-02', 0),
(251, 203, 'Nesciunt aut ducimus doloribus voluptates voluptas. Quo et quaerat minima rerum nihil. Debitis tempore rem nihil omnis velit deserunt voluptate inventore. Ut qui unde qui aliquid. Adipisci est omnis et enim asperiores. Odit voluptates optio sint.', '2013-07-14', '2010-01-27', 0),
(252, 201, 'Dolor dolor sapiente pariatur consequuntur quas ea sunt. Eveniet laboriosam ut nobis quia cum qui laboriosam sed. Est hic perferendis non maiores quae ratione. Velit fuga exercitationem ipsam odit non officiis.', '1983-07-25', '1986-03-10', 0),
(253, 202, 'Provident rem explicabo iure ipsa et omnis voluptatem. Laudantium iste ut voluptas unde aut. Nemo voluptatem non assumenda magnam nulla et vitae. Ea facilis molestias ipsa voluptatem eum nobis eum aut.', '1999-05-10', '1991-08-17', 1),
(254, 203, 'Ut quisquam provident maiores magni sint in aliquid. Pariatur nihil porro mollitia. Rerum nihil non rerum et blanditiis.', '2017-02-18', '1971-03-17', 0),
(255, 201, 'Aliquam nihil eveniet culpa maiores ipsa at laboriosam. Aliquam molestiae quia et soluta fugit aut quia. Aut veritatis exercitationem fugit dolorum autem qui.', '2013-09-03', '2007-11-21', 1),
(256, 202, 'Dolores dolores natus quaerat. Eveniet est amet aperiam et aut ipsum. Odit minima soluta repellendus autem veritatis inventore rerum.', '1999-08-28', '1994-05-09', 1),
(257, 203, 'Ducimus qui quod culpa libero sed. Vero et dolorum facilis in sunt aut. Excepturi et cumque laboriosam tempore eum nemo neque.', '1985-05-14', '1985-11-05', 0),
(258, 201, 'Eaque quia sit eum praesentium et commodi. Recusandae voluptatum voluptatem maiores sit. Quasi ipsa nulla labore et. Aut rerum velit eaque aliquid facilis. Dicta nulla consequatur est et deserunt. Animi accusamus qui ut vitae numquam aliquid consequatur.', '2005-05-25', '1972-04-24', 0),
(259, 202, 'Alias consequatur sit quis ut saepe quia. Ea blanditiis dolorem ad laborum illum. Quasi est eum mollitia dolor sit delectus qui. Sed et consectetur praesentium totam.', '1979-01-14', '2010-07-12', 1),
(260, 203, 'Ducimus et tenetur ab hic doloremque. Blanditiis et expedita reprehenderit deserunt ex sint vel minima. Modi sed fugiat nemo qui. Modi nesciunt aspernatur cum.', '1991-10-28', '2011-06-27', 0),
(261, 201, 'Consequatur voluptas quidem modi quasi alias veniam eius eveniet. Iure est omnis consequatur sapiente. Quasi facere molestias modi eaque dolores. Qui dolor beatae fuga velit deleniti impedit.', '2020-07-16', '2015-09-01', 1),
(262, 202, 'Molestias repudiandae est omnis. Vero tempora iusto eveniet sed illo. Dignissimos voluptatem occaecati ducimus libero reprehenderit maxime.', '2018-09-09', '2014-06-26', 0),
(263, 203, 'Ratione quo repellendus deserunt numquam debitis. Animi esse omnis ut. Et magnam ut eos ut est. Blanditiis aliquam sunt labore sint.', '1985-11-03', '1980-08-05', 1),
(264, 201, 'Dolor distinctio et et et in ipsum. Reiciendis in et aliquam rerum nam. Maxime vel excepturi perspiciatis necessitatibus officiis.', '1999-04-19', '1993-08-07', 1),
(265, 202, 'Totam mollitia qui ratione et veritatis. Expedita cupiditate nobis consectetur ad voluptatem quidem. Dolorem tempora et quod error beatae qui ut. Dolor provident sit modi sequi enim illum.', '1992-01-29', '2009-03-02', 0),
(266, 203, 'Id possimus consectetur ab et totam. Quia suscipit velit totam rerum eius atque. Ad id et sed et ut quasi modi.', '2020-07-25', '1979-01-18', 0),
(267, 201, 'Modi assumenda eos ipsam voluptatibus cupiditate laborum odio. Est aut consequatur dignissimos similique nisi. Nemo autem quia totam voluptas reprehenderit. Porro ipsum cum qui ipsa veritatis.', '2010-06-30', '1999-05-31', 1),
(268, 202, 'Odit cumque sapiente assumenda. Consequatur et unde dolorem repellendus voluptatem. Fuga deleniti accusamus nemo eos eum. Libero officia et adipisci sit iusto id.', '2004-01-04', '1981-06-10', 0),
(269, 203, 'Odit fugiat aut quis iste. Odit architecto eos quasi iure. Omnis et nesciunt inventore assumenda ut corporis eos voluptates.', '1970-12-06', '2008-08-25', 0),
(270, 201, 'Reiciendis quia ipsum quas dolores ut. Quia qui tenetur quod natus consequuntur quia. Dolor unde aut ut rerum. Iure laboriosam earum porro iste ab veniam maxime. Nobis minus soluta harum minima dicta aut delectus.', '1990-06-02', '1985-06-04', 1),
(271, 202, 'Impedit labore sit non omnis quia. Voluptatum dolores accusantium consequatur enim. Sit est omnis doloribus ut et et dolor ab. Aliquam et et sint recusandae nisi. Facilis in doloribus ut non.', '1973-12-06', '1993-08-28', 0),
(272, 203, 'Exercitationem perferendis earum autem id eos. Nisi debitis voluptates dolores ipsam porro animi. Porro velit nostrum sint qui accusamus veritatis rerum praesentium.', '1978-06-14', '1991-09-29', 0),
(273, 201, 'Provident consequatur ipsum maxime voluptatem aut. Vel iure ut debitis ut. Odit vel eos totam quaerat rerum corrupti. Molestiae doloremque maiores quaerat.', '1984-08-08', '1992-11-04', 0),
(274, 202, 'Nisi dolor autem tempora officiis. Minus illo non alias facilis occaecati et. Facilis mollitia culpa dolores odit aut et.', '1998-08-26', '2001-01-09', 0),
(275, 203, 'Ipsa voluptatem nobis voluptas esse. Mollitia ipsam tempora dignissimos aliquam officia voluptatem.', '2009-11-15', '2018-01-21', 1),
(276, 201, 'Esse veritatis facere officia et nemo eum. Iure officiis minima omnis dolorem aspernatur eos enim non. Facilis molestiae exercitationem sit molestiae ratione. Magnam esse et aut.', '1970-01-29', '1973-01-06', 0),
(277, 202, 'Voluptatibus pariatur recusandae aspernatur atque. Quis expedita aliquam qui pariatur. Est enim suscipit consequuntur rerum corporis eveniet eum. Natus maxime illum sit debitis iusto debitis nihil voluptas.', '1971-11-23', '1982-02-09', 0),
(278, 203, 'Alias quidem rem omnis autem ut saepe. Fugiat et qui aspernatur et pariatur illum. Sapiente mollitia qui itaque unde dolores molestias. Suscipit dolor earum porro voluptas.', '2017-09-01', '1984-03-03', 1),
(279, 201, 'Et doloribus harum voluptatum dignissimos ducimus nostrum deserunt. Laboriosam voluptatem aut minima nisi eveniet omnis voluptate. Repudiandae aliquam est est ad velit deserunt assumenda.', '2007-03-11', '2014-08-16', 1),
(280, 202, 'Quasi provident quia aut quia sit vitae fugit. Quae nesciunt alias cum quia placeat eos. Sunt sunt esse tempora saepe quos. Quis esse labore illum omnis perspiciatis mollitia veritatis. Pariatur qui minima nesciunt.', '2003-09-13', '1970-05-29', 1),
(281, 203, 'Est veritatis aut omnis quisquam voluptatibus facere a ipsum. Omnis est inventore soluta cumque. Labore vitae ipsa debitis accusantium iste delectus eum. Eum minima quia quia qui perspiciatis.', '2016-08-10', '2014-07-31', 0),
(282, 201, 'Tempora reiciendis voluptatum numquam consequatur expedita quo. Et eum dolorum eaque. Necessitatibus rerum eaque mollitia ut.', '1980-12-17', '2001-04-08', 0),
(283, 202, 'Alias aperiam quidem sit explicabo vitae quo et. Recusandae cum sint doloremque dolorum. Quis molestias ratione qui excepturi. Tempore amet natus voluptas id id ut.', '2007-05-12', '1973-08-04', 1),
(284, 203, 'Similique quia perferendis asperiores consequatur libero. Et et molestiae illum fuga. Saepe et veniam corrupti ut qui. Facere vel earum harum soluta dolorem.', '1970-04-14', '2013-03-11', 0),
(285, 201, 'Nisi rerum assumenda voluptates quas consequuntur iste. Ut impedit facilis asperiores qui eum necessitatibus. Blanditiis enim exercitationem et aut quia eum. Incidunt voluptas unde voluptates inventore tempora nemo consequatur.', '1986-01-21', '2006-07-13', 1),
(286, 202, 'Qui praesentium qui cumque mollitia minima mollitia voluptatum. Molestiae nemo enim possimus ipsam ut. Perspiciatis saepe porro officiis quidem in veritatis blanditiis.', '1971-10-02', '2011-07-11', 0),
(287, 203, 'Nulla sint rerum deserunt sapiente ducimus dolorem. Assumenda sed placeat assumenda ut accusamus vero quia.', '1999-08-22', '1981-06-28', 1),
(288, 201, 'Deleniti mollitia maxime officiis dignissimos incidunt dolor quae. Quia ipsam maiores voluptates. Fugit vitae temporibus odio ut quam dolor enim. Quaerat ut qui qui voluptas rerum nemo et.', '1995-04-30', '1999-04-01', 0),
(289, 202, 'Velit et et doloremque nulla et dolorem. Ipsam qui dicta autem aut et sit. Aut tempore consectetur odit iste possimus omnis. Eos aut et alias reprehenderit qui. Dolorem debitis eaque eos id.', '1984-08-10', '1989-10-17', 1),
(290, 203, 'Ducimus velit sint libero laboriosam voluptas. Est quo et iure voluptatum fugiat perferendis dolores. Maxime amet impedit consequatur hic blanditiis. Soluta ab ut ut expedita recusandae ea placeat.', '1993-11-17', '1984-02-11', 1),
(291, 201, 'Quia nemo similique adipisci. Quia recusandae et tempore debitis. Et nemo doloremque unde laborum impedit. Nam ex placeat quis et explicabo sequi earum. Consequatur dolores vel culpa aspernatur in. Sed ut dolor dolor alias nemo nisi est.', '1975-08-24', '1989-10-08', 1),
(292, 202, 'Quia eaque praesentium nulla qui dolorem voluptas ratione et. Magni iusto earum eum nihil sit saepe nemo. Dolorem in sapiente pariatur voluptas aperiam reiciendis nulla. Autem quia voluptatem et nostrum.', '2013-04-17', '1981-11-22', 0),
(293, 203, 'Dicta praesentium rerum voluptatem id iure repellat labore. Dolores reiciendis corporis id facere dicta. Qui sed itaque animi rerum expedita atque facere.', '2012-09-22', '2004-10-07', 1),
(294, 201, 'Delectus voluptas quos quas adipisci quae. Quia quam possimus vel autem. Natus rem ut recusandae deserunt quas ea est. Officia dolorem totam laboriosam nemo quam rerum.', '1977-05-27', '1995-03-13', 0),
(295, 202, 'Molestias sunt harum dolorem ipsum. Soluta voluptate odio unde suscipit vero vero sed. Dolorem possimus quidem dolor eius natus odit quis. Ut dolores ut animi aut.', '1994-11-29', '1998-01-29', 1),
(296, 203, 'Iste nostrum ut officia doloribus illum delectus dicta illum. Neque corrupti earum ex voluptatem sed quia quis. Dicta quia labore nemo possimus impedit.', '1995-10-09', '1983-07-22', 0),
(297, 201, 'Enim magnam quidem corrupti eos aut quia. Eum inventore molestiae nemo cum placeat cupiditate quos. Et mollitia dolor voluptatem asperiores corporis aut quasi eveniet. Optio dolorum atque nobis voluptas facere est.', '1992-12-23', '2018-12-08', 1),
(298, 202, 'Nesciunt nesciunt et possimus aut. Occaecati dolorem enim minus eaque molestiae fuga eos. Iusto explicabo deserunt sit reprehenderit a necessitatibus aspernatur. Nihil aut occaecati velit quo.', '2001-06-21', '1988-07-30', 0),
(299, 203, 'Molestiae magnam omnis enim dolorum error consectetur nemo. Qui delectus voluptatem rerum alias. Est non accusantium quod neque quam pariatur eos numquam. Quia consequatur ullam doloremque totam minima in qui expedita.', '2014-05-04', '1996-02-16', 1),
(300, 201, 'Impedit accusamus aliquid impedit voluptatem voluptate et reprehenderit. Non fugiat illo esse voluptates accusantium. Aliquid vero maxime in voluptatum sint distinctio corporis.', '2009-07-12', '1975-10-08', 0),
(301, 201, 'fesses', 'fesses', 'fesses', 1),
(302, 201, 'fesses', 'fesses', 'fesses', 0),
(303, 201, 'fesses', 'fesses', 'fesses', 1),
(304, 201, 'fesses2001', 'hier', 'hier', 1),
(305, 201, 'Test2', '12/12/2021', '14/12/2021', 1);

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE `type_praticien` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `type_praticien`
--

INSERT INTO `type_praticien` (`id`, `libelle`, `lieu`) VALUES
(401, 'aliquid', 'Mercier'),
(402, 'et', 'Jacobboeuf'),
(403, 'eligendi', 'Gaillard'),
(404, 'harum', 'Boutin-sur-Clement'),
(405, 'veniam', 'Morel'),
(406, 'aperiam', 'Devaux-les-Bains'),
(407, 'dolor', 'Perret'),
(408, 'pariatur', 'Lemaitredan'),
(409, 'expedita', 'Delannoy'),
(410, 'ut', 'Leleunec'),
(411, 'fugit', 'Rossi-les-Bains'),
(412, 'perferendis', 'Guillaume'),
(413, 'quo', 'Rodriguez'),
(414, 'et', 'Clerc'),
(415, 'animi', 'Peltier'),
(416, 'porro', 'Petitjean'),
(417, 'ipsam', 'Allard-sur-Dupuy'),
(418, 'molestiae', 'Dupuis-sur-Mer'),
(419, 'autem', 'Langlois'),
(420, 'ratione', 'Mathieu'),
(421, 'illum', 'Paris'),
(422, 'minima', 'Moulin'),
(423, 'voluptas', 'Techerboeuf'),
(424, 'adipisci', 'Boulanger'),
(425, 'a', 'Gimenez'),
(426, 'corrupti', 'Giraud-sur-Chauvin'),
(427, 'explicabo', 'Michel-la-Forêt'),
(428, 'molestiae', 'Regnier'),
(429, 'dolorum', 'Ribeiro-sur-Pinto'),
(430, 'in', 'Hubert'),
(431, 'qui', 'Langlois'),
(432, 'quo', 'Hamel-sur-Guillet'),
(433, 'vel', 'Marieboeuf'),
(434, 'dolorem', 'Besnard'),
(435, 'voluptate', 'Klein'),
(436, 'laborum', 'Clement-sur-Lemonnier'),
(437, 'explicabo', 'Diallo-sur-Devaux'),
(438, 'minima', 'Laurent-les-Bains'),
(439, 'itaque', 'Le Rouxboeuf'),
(440, 'aut', 'Mahe'),
(441, 'sed', 'Breton-les-Bains'),
(442, 'illo', 'Lebon'),
(443, 'consequatur', 'PhilippeBourg'),
(444, 'pariatur', 'AdamVille'),
(445, 'aut', 'Klein'),
(446, 'distinctio', 'Fleury-sur-Bazin'),
(447, 'omnis', 'Augerboeuf'),
(448, 'voluptas', 'Munoz'),
(449, 'ut', 'Torres'),
(450, 'repellendus', 'Pereznec'),
(451, 'totam', 'Mauricenec'),
(452, 'sunt', 'Lefort'),
(453, 'architecto', 'De Sousa'),
(454, 'at', 'Charles-sur-Samson'),
(455, 'qui', 'Delaunay-les-Bains'),
(456, 'assumenda', 'GerardVille'),
(457, 'quas', 'Charpentier'),
(458, 'quia', 'Aubert-les-Bains'),
(459, 'voluptatem', 'Neveu'),
(460, 'quam', 'Gonzalez'),
(461, 'qui', 'Huet'),
(462, 'natus', 'Berthelot'),
(463, 'dolor', 'Pires'),
(464, 'adipisci', 'Lecomte-sur-Mer'),
(465, 'sit', 'Schneider'),
(466, 'et', 'Monnier'),
(467, 'facilis', 'Fleury'),
(468, 'voluptatem', 'Renault'),
(469, 'vero', 'Cousin-sur-Alexandre'),
(470, 'sint', 'Boutin'),
(471, 'et', 'Poirier-sur-Bernier'),
(472, 'et', 'Menardboeuf'),
(473, 'qui', 'Pelletier'),
(474, 'modi', 'Le Goff'),
(475, 'quia', 'Leclercq-sur-Mer'),
(476, 'quis', 'Peltier'),
(477, 'quidem', 'Noel'),
(478, 'quae', 'Chauveau'),
(479, 'nobis', 'Bouvet'),
(480, 'quia', 'Rodrigueznec'),
(481, 'commodi', 'Hardy-sur-Collet'),
(482, 'qui', 'Bernier-sur-Mer'),
(483, 'ut', 'Arnaudnec'),
(484, 'occaecati', 'Bouvier-sur-Dubois'),
(485, 'et', 'Guilbert-sur-Perrot'),
(486, 'itaque', 'Dos Santos-sur-Aubert'),
(487, 'repellat', 'Duhamel'),
(488, 'ex', 'Bourgeois'),
(489, 'voluptatem', 'Fontaine'),
(490, 'quos', 'Mace'),
(491, 'voluptas', 'Perez-sur-Mer'),
(492, 'voluptate', 'Cohen'),
(493, 'non', 'Legendre'),
(494, 'excepturi', 'Julien-sur-Mer'),
(495, 'praesentium', 'Toussaint-la-Forêt'),
(496, 'blanditiis', 'Hervenec'),
(497, 'unde', 'Huet'),
(498, 'eos', 'Bouvet'),
(499, 'ut', 'Noeldan'),
(500, 'aliquam', 'Ramosdan');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `id` int(11) NOT NULL,
  `praticien_id` int(11) NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mdp` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `praticien_id`, `nom`, `prenom`, `adresse`, `cp`, `ville`, `login`, `mdp`) VALUES
(201, 301, 'Dupuy', 'Lucy', '93, chemin Petitjean\n64435 LefortBourg', '12046', 'VaillantBourg', 'velit', '%mYV.Q$FPH#Ct;]\"IJ'),
(202, 302, 'Lecoq', 'Élodie', '292, rue Marcel Moreno\n95922 Lefort-sur-Rousseau', '59 087', 'Deschampsdan', 'aperiam', '@@+N1z\"'),
(203, 303, 'Courtois', 'Antoinette', 'impasse André Meyer\n48 964 Roussel-la-Forêt', '96 839', 'Perrin', 'repellendus', '$\'Ll#A:/RPFHS#|\\<[z:M+B\"'),
(204, 301, 'Durand', 'Alexandrie', '75, place Léon Loiseau\n09942 Denisnec', '10811', 'Gautier', 'eligendi', '$,0S|y;V{|CxUA+y%C5n!SEV+'),
(205, 302, 'Perrot', 'Anne', '40, avenue Philippine Lefebvre\n11 079 Blanc', '86 010', 'Gauthier', 'sequi', 'dDLB,Mb@qoSw.Id@F'),
(206, 303, 'Rocher', 'Benoît', '71, impasse Étienne Camus\n59 200 Fontaineboeuf', '97 153', 'BuissonVille', 'neque', 'w<qk|eQAhN%!eGGSo*[(?Y'),
(207, 301, 'Dijoux', 'Jeanne', '7, boulevard Barre\n99 987 Delahaye', '00 490', 'Denis', 'ut', 'YXvkj7>>\"%IL'),
(208, 302, 'Muller', 'Marie', '27, rue Gallet\n36 630 Evrard-sur-Rey', '08 750', 'Petit-sur-Gomes', 'est', '1VYthwAW0*N5H?|H'),
(209, 303, 'Aubert', 'Isabelle', '320, place de Boulanger\n41047 ChauvinBourg', '78059', 'LeclercBourg', 'sit', '{PUMh%[AB`0_ulX'),
(210, 301, 'Gregoire', 'Corinne', '32, boulevard Lucie Jacob\n68 911 Foucher-sur-Mer', '26 156', 'Charrier-la-Forêt', 'animi', 'iNWqI<s$r0AMx{15;1-IOY'),
(211, 302, 'Blanchard', 'Guy', '39, rue Meunier\n97892 Delmas-la-Forêt', '40388', 'Gaillard-sur-Carlier', 'nihil', 'q%E\'kB]w'),
(212, 303, 'Grenier', 'Patrick', '98, chemin de Noel\n66679 Briand-sur-Gosselin', '79157', 'Tanguyboeuf', 'aut', 'x`/ljuWdz!i.v{o'),
(213, 301, 'Bonnet', 'Adélaïde', '448, chemin Élise Parent\n34249 Legros-la-Forêt', '08990', 'Leconte', 'ut', 'G:^]{i?cF_FuIOm'),
(214, 302, 'Lacombe', 'Théodore', '34, place Denis Roussel\n91559 Valletnec', '15175', 'Pottier', 'ut', '*$@PKd'),
(215, 303, 'Texier', 'Alice', '5, rue Bernard\n98 185 Richard', '64664', 'Moreau', 'eos', 'g{$Q+T;f}kyNP^gr'),
(216, 301, 'Richard', 'Alexandre', '4, chemin Muller\n46112 Reynaud', '05864', 'Rousset-sur-Guichard', 'molestiae', 'MZU6h%MX4dwQx@}'),
(217, 302, 'Evrard', 'Diane', '24, place de Durand\n75635 Delahayedan', '70 585', 'Vincent', 'aliquid', '>Zy|h;[>0[zH]h>,Rm8j>9U'),
(218, 303, 'Leclerc', 'Christelle', '244, place de Valentin\n22 686 MarquesVille', '76957', 'Denisdan', 'ut', 'JR&p'),
(219, 301, 'Muller', 'Martin', '88, impasse Martins\n12183 Lebrun', '23902', 'Guillou', 'necessitatibus', 'Hou^&'),
(220, 302, 'Hoareau', 'Philippe', '815, impasse de Maillard\n53187 Mace', '98978', 'Godard', 'aut', 'rp[tSMjU|:H5\\c!N'),
(221, 303, 'Thierry', 'Charles', '28, avenue de Giraud\n70690 Lombard', '42 108', 'Fleury', 'pariatur', ',\"k3+8:OGI3{d0'),
(222, 301, 'Julien', 'Roland', '2, rue Hélène Legendre\n22596 Dupuynec', '32 654', 'Delannoy-la-Forêt', 'adipisci', '5U^(?ZMMic\"|%653/l:p'),
(223, 302, 'Giraud', 'Catherine', '26, place de Bonnet\n84 197 Vasseur-sur-Le Goff', '32 202', 'Picard', 'voluptatem', '^MKS_[:?sEER3Q`oL'),
(224, 303, 'Mallet', 'Nicole', '740, place de Joseph\n94 104 Fontaine', '77568', 'Didier', 'repudiandae', 'w&zv`!'),
(225, 301, 'Charrier', 'Émile', '13, rue de Lefebvre\n58163 MoreauBourg', '18 723', 'Gonzalez', 'ullam', 'VR(m-\'?'),
(226, 302, 'Gosselin', 'Marc', '18, impasse Masse\n61 175 DelormeVille', '75 931', 'Le Goff', 'mollitia', '9x}k(!\'Pa$M??-?BU:bmTm'),
(227, 303, 'Fabre', 'André', '1, rue de Moreau\n63835 Chauvetboeuf', '47 367', 'Salmon', 'ut', 'hkIemW~Tm|4|\"'),
(228, 301, 'Jourdan', 'Eugène', '28, place de Lefevre\n83432 Pottier-les-Bains', '41 069', 'Valette', 'quo', '`w-\"ywCJHDJ,!So/5r'),
(229, 302, 'Fouquet', 'Olivier', 'place Bonnin\n53 114 Renard', '39 562', 'Roux-la-Forêt', 'ipsam', 'NaXkIn+M{NbXn1'),
(230, 303, 'Dijoux', 'Adrienne', '17, rue de Gauthier\n59 363 Ollivier', '38164', 'Deschamps-sur-Mer', 'delectus', 'wqUkipkfTHQ7DwZ;Ch'),
(231, 301, 'Louis', 'Françoise', 'boulevard Muller\n62240 Bigot', '09 306', 'Vidal', 'minima', '2!NY/q)(7bFh`EQHj^c@?RG_='),
(232, 302, 'Dupont', 'Jeannine', '44, impasse de Bousquet\n98 381 Martinez-sur-Baron', '74620', 'Delaunay', 'soluta', 'RRFSk'),
(233, 303, 'Diallo', 'Aimé', '82, rue René Voisin\n03891 Durand', '80 678', 'Lamynec', 'error', 'NQfSrTCJ7As^7n0,Sy'),
(234, 301, 'Royer', 'Brigitte', '93, boulevard Lenoir\n23681 Baudry-les-Bains', '89 021', 'Pereiraboeuf', 'ducimus', 'Tfd1Fj\"^{sm'),
(235, 302, 'Martel', 'Christine', '829, boulevard Barbe\n04866 Morel', '56963', 'Langloisnec', 'dolores', 'Lda,'),
(236, 303, 'Garcia', 'William', '487, place Rémy Lenoir\n87313 Grondin-sur-Auger', '25 902', 'Weber', 'explicabo', '0A^t'),
(237, 301, 'Pons', 'Benoît', 'avenue Charpentier\n07 454 BernardVille', '33 846', 'Lemoinedan', 'veniam', 'r>rsJ51MP4tc'),
(238, 302, 'Faure', 'Jérôme', '90, rue Philippe\n08506 Gaillard-les-Bains', '09 645', 'Hoareau-sur-Vasseur', 'voluptatem', '\'~%7F&[tE0GhammI]f9'),
(239, 303, 'Normand', 'Michèle', '2, rue de Richard\n21906 Giraud', '65 126', 'Mace', 'vel', 'O3)DwD]WH]5pLuW87Hq]wH'),
(240, 301, 'Samson', 'Philippine', '19, chemin Amélie Payet\n22 854 Turpin', '37601', 'Blanchard', 'et', '&w#@&A/*;_sud^(kbU(}},;'),
(241, 302, 'Gros', 'Anouk', '362, impasse de Munoz\n14204 Peltier-sur-Paul', '50448', 'Blot', 'ea', 'm]ce,jp$6qwr2s<)sj'),
(242, 303, 'Blanchard', 'Alex', '58, rue Richard Bonneau\n10 717 Morvan-sur-Leleu', '31660', 'CollinVille', 'vel', 'mU,<5'),
(243, 301, 'Bertin', 'Françoise', '91, place Benoit\n15721 Jacquesnec', '26 421', 'Regnier-la-Forêt', 'ipsam', '{0HT~\"'),
(244, 302, 'Pruvost', 'Luc', '44, avenue de Traore\n14 444 Muller-sur-Guichard', '09645', 'Lefebvre', 'nisi', 'f`q=JEg\"g+_63xOI.OwM='),
(245, 303, 'Maillet', 'Danielle', '59, rue Jacques Rodrigues\n38867 Chauveau', '25215', 'Lacombeboeuf', 'autem', 'ND~qp^^[DI~QDwJXWwE'),
(246, 301, 'Lopez', 'Timothée', '55, rue Caroline Leleu\n14 964 Clerc', '58 524', 'Mendes-la-Forêt', 'asperiores', '.fF8T'),
(247, 302, 'Michaud', 'Aimée', 'impasse Gérard Thibault\n42019 Baron-sur-Delorme', '98 719', 'Lecomte-la-Forêt', 'necessitatibus', 'rON+]u1aNYz5\\x'),
(248, 303, 'Lefevre', 'Adrien', 'rue de Olivier\n85977 Ferrand', '04827', 'Fernandez', 'vitae', '*a7/e2fi=a[/4M'),
(249, 301, 'Rodriguez', 'Henriette', '98, rue Besson\n61 439 Couturier', '41410', 'Vallee', 'officiis', ':>CHr?~0xKQf!P7sn4'),
(250, 302, 'Leclercq', 'Roger', '429, chemin Chevallier\n20123 Laurent', '38149', 'Lebrun', 'voluptatem', '}0tzQEw\'X!TGi_^xPDJt'),
(251, 303, 'Paul', 'Luce', 'boulevard Philippine Lambert\n91 783 Bruneau', '37 543', 'Leclercq', 'consequatur', 'T/XRD'),
(252, 301, 'Roussel', 'Valentine', '17, chemin Denis Mercier\n30 707 Guerinnec', '20 631', 'Laporte-les-Bains', 'sunt', 'cB0;[L_kPxZ9&l'),
(253, 302, 'Fischer', 'Jacqueline', '15, rue de Roche\n63 629 Pelletier', '77288', 'Marieboeuf', 'assumenda', '_x27+6#'),
(254, 303, 'De Sousa', 'Valentine', '17, boulevard de Rodriguez\n49 126 CoulonVille', '99 785', 'Collinnec', 'quasi', 'l-Ig!,H#BmuM_x\\='),
(255, 301, 'Wagner', 'Amélie', '881, chemin Denise Chartier\n49233 Rodrigues', '49139', 'Bigot', 'adipisci', 'PW[u6?'),
(256, 302, 'Leroy', 'Jules', '84, impasse Bertrand Maillot\n11 833 Voisin', '88 155', 'Moreau-sur-Marchal', 'cum', 'HPe;mze(j,CVz+m@-}'),
(257, 303, 'Huet', 'Dominique', '14, impasse de Bodin\n01 121 NguyenVille', '90 838', 'Alves', 'quam', '/IbB}-*N?3U9O'),
(258, 301, 'Verdier', 'Isabelle', '43, rue de Lesage\n27 981 Normanddan', '00 582', 'Bouchet', 'consequuntur', 'u^y`_8hR|,fL'),
(259, 302, 'Launay', 'David', 'boulevard Garcia\n69585 Rousset', '52906', 'Berthelot-la-Forêt', 'earum', 'B?<>z>vD&1S$&v3C4:D'),
(260, 303, 'Chartier', 'Lucas', 'rue de Renard\n20 676 Merle-la-Forêt', '33 786', 'Noel-sur-Costa', 'fugiat', '|B&$A6>rrY]|-K?2x/'),
(261, 301, 'Lecomte', 'Adélaïde', '79, rue Clémence Roussel\n98 547 Leconte-les-Bains', '61662', 'Guibert-sur-Delannoy', 'tempore', 'T3&$q8'),
(262, 302, 'Chretien', 'Virginie', 'impasse de Tanguy\n73 190 LegendreVille', '12 347', 'Delmas-les-Bains', 'optio', '24#&.\"XTW]+RG/bS^ajP<Wmm'),
(263, 303, 'Marques', 'Édith', '54, rue de Barbe\n97009 Traore', '78249', 'Rousset-sur-Nicolas', 'dolor', 'BcB\\?>:(]|!s%Q$*'),
(264, 301, 'Rodriguez', 'Henriette', '79, place de Renard\n11 315 Clement', '50 030', 'Gaudin', 'debitis', 'Zf=1daPIKrhL/[MfDIy'),
(265, 302, 'Diaz', 'Christiane', 'rue de Courtois\n06320 Renault-sur-Lemoine', '38 950', 'De Sousa-sur-Grondin', 'occaecati', '/f+fr'),
(266, 303, 'Benard', 'Dominique', '36, rue Gerard\n93244 Mercier', '96 522', 'Jourdan', 'nisi', 'nG[piZ!o=O)'),
(267, 301, 'Da Costa', 'Madeleine', '9, impasse Diallo\n95 621 Rousset', '70 499', 'Mathieu', 'autem', 'k(KNLzr0/bfzW|Uxm9O~H'),
(268, 302, 'Guillet', 'Jean', 'impasse Albert\n05862 Remy-les-Bains', '17566', 'Besnarddan', 'nisi', '(|F1|2_0qCB>l]MC^*{0T='),
(269, 303, 'Hamel', 'Gabriel', 'chemin de Adam\n42 961 Laporte-les-Bains', '90240', 'Aubert', 'aut', 'ru,Y8$dG%/BQf)Iq4n'),
(270, 301, 'Allard', 'Jérôme', '46, impasse de Chevalier\n31 003 Gautier', '40 277', 'Marie-les-Bains', 'placeat', '`Sg\\'),
(271, 302, 'Martins', 'Léon', '86, rue Claude Lacroix\n90 835 Gillet', '90 118', 'Regnier', 'qui', '-ld%t3Wxd'),
(272, 303, 'Bruneau', 'Célina', '26, place Leleu\n82 112 Rossiboeuf', '24230', 'Ferreira', 'vitae', '[APO.l|^?])_(\"'),
(273, 301, 'Bailly', 'Emmanuel', '607, avenue Texier\n95 129 Antoine', '52 272', 'Charpentier', 'qui', 'gBx|*$TE.R'),
(274, 302, 'Petitjean', 'Georges', '40, impasse de Reynaud\n57 525 Rodriguez', '62 581', 'Roussel', 'magnam', '-j3?tS'),
(275, 303, 'Roux', 'Jeanne', '73, impasse Giraud\n86 085 Duhamel', '26 021', 'Colin-sur-Carlier', 'qui', '-gJ{W.{EMD<khG1\"3x'),
(276, 301, 'Petitjean', 'Jean', 'chemin de Maillet\n46318 Morvan', '29695', 'Menard', 'libero', 'q?b0AYL\"xAAY#%^]z8C1uk'),
(277, 302, 'Lemonnier', 'Margaux', '845, place Marques\n31 861 Bruneaunec', '16 989', 'CordierBourg', 'tenetur', 'lK9j\')&a=:('),
(278, 303, 'Blondel', 'Laetitia', 'boulevard Marc Bouvier\n17 241 Massedan', '51795', 'Vallee', 'in', 'Q$&YOPm6'),
(279, 301, 'Meyer', 'François', '50, chemin Pelletier\n92782 Andre-sur-Olivier', '16 484', 'Maillet', 'iure', 'vDF|>qz'),
(280, 302, 'Lagarde', 'Claudine', '4, place de Gillet\n77 127 Dupre', '70 803', 'Devaux-sur-Marques', 'corrupti', 't<{46Zrt#FY\'N:'),
(281, 303, 'Thomas', 'Timothée', '195, chemin de Moreau\n32156 Duvalnec', '21 323', 'Jacquetdan', 'maiores', '68{kVv\\53T5H\':$!4>dKx^?3'),
(282, 301, 'Legendre', 'Nicole', '91, rue Levy\n38101 Evrard', '01346', 'Laine', 'molestias', '_HxP\'5(Y'),
(283, 302, 'Jean', 'Margaret', '94, rue Jérôme Allard\n69 487 Loiseau', '67790', 'Delaunay-sur-Raynaud', 'possimus', '!HOnOp'),
(284, 303, 'Joly', 'Marine', '310, rue de Bertrand\n75 144 Dufour', '42 177', 'Lefebvreboeuf', 'quibusdam', '>XR`)fygUF:%2nmX>'),
(285, 301, 'Leblanc', 'Claudine', '874, rue de Leroy\n17267 Maurice-sur-Mer', '81959', 'Daniel', 'consectetur', 's$faa#('),
(286, 302, 'Fischer', 'Théophile', '65, place de Goncalves\n57 189 Lemaitre-sur-Bruneau', '48 362', 'Maillot-sur-Clerc', 'et', 'B0)cfg&\'t\'=r?9[<%J7#'),
(287, 303, 'Fernandes', 'Laurent', '14, rue Aimé Riou\n68387 Begue-sur-Mer', '43 768', 'Blanc', 'nulla', 'i[XRvs,j2'),
(288, 301, 'Besnard', 'Luc', '45, impasse Gregoire\n87361 Faure', '84463', 'Lecomte', 'exercitationem', 'L@w?'),
(289, 302, 'Poirier', 'Joseph', '95, avenue Roche\n76 421 Charpentiernec', '55 435', 'Nicolasnec', 'ducimus', 'uc(D[Fp)txG+<ny%)v,'),
(290, 303, 'Clerc', 'Gilles', '4, chemin Prevost\n90839 Vaillant', '85237', 'Texier', 'et', 'tJ$r\"tj[wA$_[jE`km]0V'),
(291, 301, 'Morin', 'Olivier', '91, rue de Imbert\n72386 Rioudan', '31 542', 'Leblanc-sur-Bernier', 'rerum', ')`KoQ5!%47!Xs'),
(292, 302, 'Pottier', 'Richard', '91, rue de Lecoq\n03 275 Begue', '22694', 'Valette-sur-Schneider', 'odio', '|0oEhB5r46=ju+n(jy'),
(293, 303, 'Durand', 'Patrick', '29, rue Georges\n84572 Morvan', '07 976', 'Dos Santosdan', 'praesentium', '\\WEs#uQRZ~1ZSss)9#^;55_J'),
(294, 301, 'Lemoine', 'Claudine', '21, place de Ledoux\n51 340 Klein-sur-Roussel', '52828', 'Petit-la-Forêt', 'iusto', 'vuysw<X\\[A{v-%PGgr;+='),
(295, 302, 'Briand', 'Pauline', '1, avenue Le Goff\n09179 Hoarau-la-Forêt', '22 193', 'Boyer-sur-Clerc', 'explicabo', ',<gJnlk?!&v)/3$\'ar'),
(296, 303, 'Maurice', 'Olivie', '37, rue Audrey Aubert\n58 914 Turpin', '39 913', 'Imbert', 'quae', ')yH0Gj3@Gn|HvM\\{8]m:YdW'),
(297, 301, 'Lucas', 'Nathalie', '84, rue de Texier\n82683 Delmas', '42 763', 'Delaunay', 'natus', '.^2q_8S'),
(298, 302, 'Godard', 'Philippe', '10, rue de Olivier\n76 775 Turpin', '46430', 'Hamel', 'molestiae', '=X\"_/Un@SIG~;j0JYy'),
(299, 303, 'Vallet', 'Susan', '3, chemin de Marechal\n45712 Barthelemy-les-Bains', '28087', 'Clerc', 'est', 'h(Lc1&hH\"YMx)ha/'),
(300, 301, 'De Oliveira', 'Alice', 'boulevard de Bonnet\n40 849 Gillet', '03149', 'Vincent', 'dolorem', '3+.K\'Ctt');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `delegue`
--
ALTER TABLE `delegue`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9A27D3C54C8C93` (`type_id`);

--
-- Index pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D1D741717F72333D` (`visiteur_id`);

--
-- Index pour la table `type_praticien`
--
ALTER TABLE `type_praticien`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4EA587B82391866B` (`praticien_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `delegue`
--
ALTER TABLE `delegue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `praticien`
--
ALTER TABLE `praticien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT pour la table `type_praticien`
--
ALTER TABLE `type_praticien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT pour la table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `FK_D9A27D3C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type_praticien` (`id`);

--
-- Contraintes pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD CONSTRAINT `FK_D1D741717F72333D` FOREIGN KEY (`visiteur_id`) REFERENCES `visiteur` (`id`);

--
-- Contraintes pour la table `visiteur`
--
ALTER TABLE `visiteur`
  ADD CONSTRAINT `FK_4EA587B82391866B` FOREIGN KEY (`praticien_id`) REFERENCES `praticien` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
