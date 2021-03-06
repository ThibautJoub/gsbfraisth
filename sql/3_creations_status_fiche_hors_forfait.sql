SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Structure de la table `StatutHorsForfait`
--

CREATE TABLE IF NOT EXISTS `StatutHorsForfait` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `StatutHorsForfait`
--

INSERT INTO `StatutHorsForfait` (`id`, `libelle`) VALUES
(1, 'En attente des justificatifs'),
(2, 'Validée'),
(3, 'Remboursée'),
(4, 'Refusée');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

ALTER TABLE `LigneFraisHorsForfait` ADD `statut` INT(11) NOT NULL DEFAULT 1;

ALTER TABLE `LigneFraisHorsForfait` ADD CONSTRAINT `FK_LigneHorsForfait_StatutHorsForfait` FOREIGN KEY (`statut`) REFERENCES `StatutHorsForfait`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
