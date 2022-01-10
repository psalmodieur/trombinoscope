-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8080
-- Generation Time: Dec 10, 2021 at 03:31 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trombinoscope`
--

-- --------------------------------------------------------

--
-- Table structure for table `personne`
--

CREATE TABLE `personne` (
  `id_personne` int(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `id_statut` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `photo`, `id_genre`, `id_statut`) VALUES
(1, 'LUCAS', 'Lucas', 'lucaslustosa', 1, 1),
(2, 'ADAM', 'Thierry', 'adamthierry', 1, 1),
(3, 'BOREL', 'Bertrand', 'borelbertrand', 1, 1),
(4, 'BOUCLY', 'Kévin', 'bouclykevin', 1, 1),
(5, 'CORLAY', 'Morgan', 'corlaymorgan', 1, 1),
(6, 'COROLLER', 'Loïc', 'corollerloic', 1, 1),
(7, 'FAUDEIL', 'Nathan', 'faudeilnathan', 1, 1),
(8, 'GAVANCHA CASSIANO', 'Fabio', 'gavanchafabio', 1, 1),
(9, 'GUICHOUX', 'Quentin', 'guichouxquentin', 1, 1),
(10, 'HELLER', 'Romain', 'hellerromain', 1, 1),
(11, 'IKHENECHE', 'Nacira', 'ikhenechenacira', 2, 1),
(12, 'LANNURIEN', 'Victor', 'lannurienvictor', 1, 1),
(13, 'LAXALDE', 'Ewen', 'laxaldeewen', 1, 1),
(14, 'LE DEM', 'Maïna', 'ledemmaina', 2, 1),
(15, 'LEPELLEY', 'Perrine', 'lepelleyperrine', 2, 1),
(16, 'LE ROCH', 'Gwenn', 'lerochgwenn', 1, 1),
(17, 'NAFOUSSI', 'Hichem', 'nafoussihichem', 1, 1),
(18, 'PENFEUNTEUN', 'Sylvia', 'penfeunteunsylvia', 2, 1),
(19, 'PLESSIS', 'Loïc', 'plessisloic', 1, 1),
(20, 'POIRIER', 'Hervé', 'poirierherve', 1, 1),
(21, 'SANCHEZ', 'Pauline', 'sanchezpauline', 2, 1),
(22, 'SEPEHRI', 'Shima', 'sepehrishima', 2, 1),
(23, 'TANGUY', 'Erwan', 'tanguyerwan', 1, 1),
(24, 'TANGUY', 'Franky', 'tanguyfranky', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_personne`),
  ADD KEY `id_statut` (`id_statut`),
  ADD KEY `id_genre` (`id_genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_personne` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `personne`
--
ALTER TABLE `personne`
  ADD CONSTRAINT `personne_ibfk_1` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`),
  ADD CONSTRAINT `personne_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
